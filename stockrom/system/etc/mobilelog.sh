#!/system/bin/sh

# Tag the spawned child processes
export __TAG__=__MOBILE_LOG__

debug () {
 log -t MobileLogX $*
}

# Start log daemons
log_daemons () {
	# logcat logs
	logcat -v time -b main *:$logcat_level > $logpath/main.log &
	PIDS=$!
	logcat -v time -b radio *:$logcat_level > $logpath/radio.log &
	PIDS="$PIDS $!"
	logcat -v time -b system *:$logcat_level > $logpath/system.log &
	PIDS="$PIDS $!"
	logcat -v time -b events *:$logcat_level > $logpath/events.log &
	PIDS="$PIDS $!"
	
	# Kernel logs
	cat /proc/kmsg > $logpath/kmsg.log &
	PIDS="$PIDS $!"
	
	mount -t debugfs none /d
	
	# SMEM logs
	cat /d/smem_log/dump_voters > $logpath/smem_dump_voters.log &
	PIDS="$PIDS $!"
	cat /d/smem_log/dump_sym_cont > $logpath/smem_dump_sym_cont.log &
	PIDS="$PIDS $!"
	cat /d/smem_log/dump_static_sym_cont > $logpath/smem_dump_static_sym_cont.log &
	PIDS="$PIDS $!"
	#cat /d/smem_log/dump_power_sym_cont > $logpath/smem_dump_power_sym_cont.log &
	
	debug Daemons started, add to pids
	echo $PIDS >> $pid_file
}

kill_daemons () {
  local i
  for i in $*; do
  	if ldu -g __TAG__=__MOBILE_LOG__ /proc/$i/environ
  	then
  	  kill -9 $i
  	fi
  done
}

kill_all () {
	local kill_list
	
	kill_list=`cat $pid_file`	
	if $?
	then
	  kill_daemons $kill_list
	fi
	
	kill_list=`cat $main_pid_file`	
	if $?
	then
	  kill -9 $kill_list
	fi
}

handle_size_limit () {
  debug handle_size_limit ldu $logpath -l$limit
  if ! ldu $logpath -l$limit
  then
    next_dir=`cat NEXT_DIR`
    debug next_dir is $next_dir
    case $next_dir in
    	2)
    		next_next_dir=3
    		;;
    	3)
    		next_next_dir=4
    		;;
    	4)
    		next_next_dir=5
    		;;
    	5)
    		next_next_dir=1
    		;;
    	*)
    		next_dir=1
    		next_next_dir=2
    		;;
    esac
	debug next_dir is "$next_dir" next_next_dir is "$next_next_dir"
	
    # in case the dir is not there
    rm -r $logpath/old$next_dir
    mkdir $logpath/old$next_dir 0777 root root
    debug made dir old$next_dir, will stop $pid_file

    # stop daemons
	kill_daemons

    # compress and save
    debug compress
    gzip *
    debug move
    mv *.gz old$next_dir/
    echo $next_next_dir > NEXT_DIR

    # restart
    debug will now restart daemons
	log_daemons
  fi
}


CMDLINE=$0 $*
debug $CMDLINE starts mypid is $$
echo $CMDLINE starts > /data/mobilelog_tmp

# variables
logpath=`getprop service.mobilelog.savepath`
logcat_level=`getprop service.mobilelog.ll`
smem_level=`getprop service.mobilelog.sl`
binder_level=`getprop service.mobilelog.bl`
limit=`getprop service.mobilelog.limit`

# make working dir
mkdir /data/log 0777 root root

# Qxdm Log / mobile log different handling
pid_file="/data/log/PIDS"
main_pid_file="/data/log/MAIN_PID"
case $1 in
	qxdmlog)
		pid_file="/data/log/killqxdmlog.sh"
		;;
		
	stop)
		kill_all
		exit;
		;;
esac

# there can only be one instance
kill_all
case $1 in
	stop)
		exit
		;;
esac

# Add me to the pid file, so I can be killed later
echo $$ > $main_pid_file

# debug prints
debug logpath=$logpath=
debug logcat_level=$logcat_level=
debug smem_level=$smem_level=
debug binder_level=$binder_level=
debug limit=$limit=

# Handling for qxdmlog
case $1 in
	qxdmlog)
		if /system/bin/diag_mdlog -f /sdcard/Diag.cfg &
		then
			echo kill -9 $! > $pid_file
			echo rm $pid_file >> $pid_file
			am broadcast -a "android.action.QXDM_LOG_STARTED"
		fi
		exit
		;;
esac

# Parameter parse
case $logpath in
	SDCARD)
		logpath="/sdcard/log"
		;;

	"" | PHONE | *)
		logpath="/data/log"
		;;
esac

case $logcat_level in
	"")
		logcat_level=V
		;;
esac

case $limit in
	"" | 0)
		limit=200000000
		;;
esac

case $smem_level in
	"")
		smem_level=0
		;;
esac

case $binder_level in
	"")
		binder_level=0
		;;
esac

# Make sure the directory is readable even is USER build
mkdir $logpath 0777 root root
time=$(date +%Y%m%d-%H%M%S)
logpath=$logpath/$time
debug logpath_with_time=$logpath=
mkdir $logpath 0777 root root

# Start log daemons
log_daemons

# Last line in the exit script
# echo rm $pid_file >> $pid_file

# If we made here, we can say we started successfully
am broadcast -a "android.action.MOBILE_LOG_STARTED"

while true; do
  # Handle overlimit cases
  handle_size_limit

	case $binder_level in
		1)
			cat /d/binder/transaction_log >> $logpath/binder_transaction.log &
			cat /d/binder/state >> $logpath/binder_state.log &
		;;
	esac

	cat /d/smd/modem_err > $logpath/modem_err.log &
	cat /d/binder/transaction_log >> $logpath/binder_transaction.log &
	
	sleep 15
done
