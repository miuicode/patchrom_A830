.class public Lcom/android/server/LenovoBatteryManagerService;
.super Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;,
        Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;
    }
.end annotation


# static fields
.field private static final AVAILABLE_CPU_FREQS:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

.field private static final CPU_MAX_FREQ:Ljava/lang/String; = "lenovo_scaling_max_freq"

.field private static final MAX_FREQ_SET_FILE_PTATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

.field private static final MESSAGE_SET:I = 0x0

.field private static final MSG_UPDATE_CPU_SETTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LenovoBatteryManagerService"

.field private static final package_action:Ljava/lang/String; = "action.boardcast.resume.activity.info"


# instance fields
.field private currentCABCStates:I

.field private currentPackageName:Ljava/lang/String;

.field private mAvailableFreqs:[Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

.field private patternValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 58
    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 59
    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LenovoBatteryManagerService$1;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;-><init>(Lcom/android/server/LenovoBatteryManagerService;Lcom/android/server/LenovoBatteryManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    .line 125
    const-string v0, "LenovoBatteryManagerService"

    const-string v1, "LenovoBatteryManagerService() init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LenovoBatteryManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LenovoBatteryManagerService;)Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LenovoBatteryManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V

    return-void
.end method

.method private static echo2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "value"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/server/LenovoBatteryManagerService;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 93
    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "file write successed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "file write failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized executePackageChange(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->isPackageChange(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    :try_start_1
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package changed: current package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPackageChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 241
    const-string v1, "LenovoBatteryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageChange, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    .line 245
    :cond_1
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readCPUFreqSerial()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 118
    :goto_0
    return-object v4

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, builder:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 109
    .local v2, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 113
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 112
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 115
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static readEchoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCABC(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 227
    return-void
.end method

.method private updateCPUSettingValue(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, isValueValid:Z
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCPUSettingValue,value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 210
    .local v5, tmp:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 211
    const/4 v3, 0x1

    .line 215
    .end local v5           #tmp:Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_3

    .line 216
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_1
    return-void

    .line 209
    .restart local v5       #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v5           #tmp:Ljava/lang/String;
    :cond_3
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The target value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but the available value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 220
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPatternValue()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    return v0
.end method

.method public initReceiver()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 137
    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "initReceiver() init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action.boardcast.resume.activity.info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "action.sys.unlock.proximity.status.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "action.batterysaving.killbackgroundservice"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;

    invoke-direct {v5, p0}, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cpu_freq"

    invoke-static {}, Lcom/android/server/LenovoBatteryManagerService;->readCPUFreqSerial()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    invoke-static {}, Lcom/android/server/LenovoBatteryManagerService;->readCPUFreqSerial()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, cpuValue:I
    if-ne v0, v6, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V

    goto :goto_0
.end method

.method public setPatternValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 134
    return-void
.end method
