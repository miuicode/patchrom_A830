#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

echo "original dir: $2"
echo "target dir:$1"


if [ $1 = "MiuiSystemUI" ];then
    cp $1/interface.patch out/
    cd out 
    ../../tools/rmline.sh MiuiSystemUI/smali/com/android/systemui/statusbar/CommandQueue.smali	
    $GIT_APPLY interface.patch
    cd ..
fi

if [ $1 = "Settings" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    cp $1/MiuiDeviceInfoSettings.patch out/
    cd out
    ../../tools/rmline.sh Settings/smali/com/android/settings/DevelopmentSettings.smali
#    $GIT_APPLY MiuiDeviceInfoSettings.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "MiuiDeviceInfoSettings patch fail"
        exit 1
    done
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW
fi


