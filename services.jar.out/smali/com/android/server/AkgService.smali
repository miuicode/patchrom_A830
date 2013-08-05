.class public Lcom/android/server/AkgService;
.super Landroid/os/IAkgService$Stub;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AkgService$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DTAPEN_FILE:Ljava/lang/String; = "/sys/bus/platform/drivers/gsensor/lvenable"

.field private static final TAG:Ljava/lang/String; = "AkgService"

.field private static mCheckCount:I

.field private static mCheckDuration:J

.field private static mShakeDuration:J

.field private static mStillDuration:J

.field private static mThresholdH:D

.field private static mThresholdL:D


# instance fields
.field private mAccCheckVal:D

.field private mAccSensor:Landroid/hardware/Sensor;

.field private mAccSensorEnabled:Z

.field private final mAccSensorListener:Landroid/hardware/SensorEventListener;

.field private mCheckThd:Z

.field private final mContext:Landroid/content/Context;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetCc:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeCount:I

.field private mSlpProcess:Z

.field private mTimestamp0:J

.field private mTimestamp1:J

.field private mTimestampS:J

.field private screenOff:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/os/IAkgService$Stub;-><init>()V

    .line 236
    new-instance v0, Lcom/android/server/AkgService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AkgService$1;-><init>(Lcom/android/server/AkgService;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    .line 78
    iput-object p1, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    .line 79
    iput-boolean v2, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    .line 81
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;

    .line 85
    new-instance v0, Lcom/android/server/AkgService$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AkgService$ScreenReceiver;-><init>(Lcom/android/server/AkgService;Lcom/android/server/AkgService$1;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    const-wide/high16 v0, 0x4039

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AkgService;->setThreshold(D)V

    .line 88
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AkgService;->setShakeDuration(J)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/android/server/AkgService;->setCheckCount(I)V

    .line 92
    iput-boolean v2, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/server/AkgService;->mCheckThd:Z

    .line 95
    const-string v0, "AkgService"

    const-string v1, "start now..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AkgService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/server/AkgService;->mCheckCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/AkgService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Lcom/android/server/AkgService;->mCheckDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/AkgService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/AkgService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/AkgService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mCheckThd:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/AkgService;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/AkgService;->mAccCheckVal:D

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/AkgService;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/AkgService;->mAccCheckVal:D

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/server/AkgService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/AkgService;->screenOff:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/AkgService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AkgService;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AkgService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Lcom/android/server/AkgService;->mThresholdH:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/AkgService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/AkgService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/AkgService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/AkgService;->mShakeCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/AkgService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/server/AkgService;->mShakeCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/server/AkgService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/AkgService;->mShakeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AkgService;->mShakeCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AkgService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/AkgService;->mTimestampS:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/AkgService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/AkgService;->mTimestampS:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/AkgService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/AkgService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    return-wide p1
.end method

.method static synthetic access$700()D
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Lcom/android/server/AkgService;->mThresholdL:D

    return-wide v0
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Lcom/android/server/AkgService;->mShakeDuration:J

    return-wide v0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Lcom/android/server/AkgService;->mStillDuration:J

    return-wide v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 232
    invoke-super {p0}, Landroid/os/IAkgService$Stub;->finalize()V

    .line 233
    return-void
.end method

.method public getCheckCount()I
    .locals 1

    .prologue
    .line 205
    sget v0, Lcom/android/server/AkgService;->mCheckCount:I

    return v0
.end method

.method public getCheckThreshold()D
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mCheckThd:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AkgService;->mCheckThd:Z

    .line 161
    iget-wide v0, p0, Lcom/android/server/AkgService;->mAccCheckVal:D

    .line 165
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x408f380000000000L

    goto :goto_0
.end method

.method public getDoubleTapEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 210
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/bus/platform/drivers/gsensor/lvenable"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 212
    .local v2, result:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .line 215
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #result:I
    :cond_0
    :goto_0
    return v3

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    return v0
.end method

.method public getShakeDuration()J
    .locals 2

    .prologue
    .line 192
    sget-wide v0, Lcom/android/server/AkgService;->mShakeDuration:J

    return-wide v0
.end method

.method public getThreshold()D
    .locals 2

    .prologue
    .line 179
    sget-wide v0, Lcom/android/server/AkgService;->mThresholdH:D

    return-wide v0
.end method

.method public setCheckCount(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 196
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 198
    const/4 p1, 0x1

    .line 200
    :cond_0
    sput p1, Lcom/android/server/AkgService;->mCheckCount:I

    .line 201
    sget v0, Lcom/android/server/AkgService;->mCheckCount:I

    mul-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    sget-wide v2, Lcom/android/server/AkgService;->mShakeDuration:J

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/AkgService;->mStillDuration:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/AkgService;->mCheckDuration:J

    .line 202
    return-void
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 221
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/bus/platform/drivers/gsensor/lvenable"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 223
    .local v0, bytes:[B
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x31

    :goto_0
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 224
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 225
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 226
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 223
    .restart local v0       #bytes:[B
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    const/16 v2, 0x30

    goto :goto_0

    .line 227
    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 101
    const-string v2, "AkgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEnabled en="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v2, p0, Lcom/android/server/AkgService;->mCheckThd:Z

    if-nez v2, :cond_2

    .line 104
    if-eqz p1, :cond_1

    .line 105
    iget-boolean v2, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    if-nez v2, :cond_0

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    .line 107
    iget-object v2, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AkgService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 129
    .local v1, ret:Z
    :goto_1
    return v1

    .line 116
    .end local v1           #ret:Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    if-eqz v2, :cond_0

    .line 117
    iput-boolean v5, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    .line 118
    iget-object v2, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AkgService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-object v2, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #ret:Z
    goto :goto_1
.end method

.method public setShakeDuration(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 183
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 185
    const-wide/16 p1, 0x32

    .line 187
    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    sput-wide v0, Lcom/android/server/AkgService;->mShakeDuration:J

    .line 188
    const-wide/32 v0, 0x1e8480

    mul-long/2addr v0, p1

    sput-wide v0, Lcom/android/server/AkgService;->mStillDuration:J

    .line 189
    return-void
.end method

.method public setThreshold(D)V
    .locals 6
    .parameter "value"

    .prologue
    const-wide/high16 v4, 0x4024

    .line 170
    const-wide/high16 v0, 0x402e

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 172
    const-wide/high16 p1, 0x402e

    .line 174
    :cond_0
    sput-wide p1, Lcom/android/server/AkgService;->mThresholdH:D

    .line 175
    sub-double v0, p1, v4

    const-wide/high16 v2, 0x4010

    div-double/2addr v0, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/android/server/AkgService;->mThresholdL:D

    .line 176
    return-void
.end method

.method public startCheckThreshold()Z
    .locals 5

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AkgService;->mCheckThd:Z

    .line 143
    const-wide/high16 v1, 0x4026

    iput-wide v1, p0, Lcom/android/server/AkgService;->mAccCheckVal:D

    .line 144
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AkgService;->mResetCc:J

    .line 145
    const/4 v0, 0x1

    .line 152
    .local v0, ret:Z
    :goto_0
    return v0

    .line 149
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #ret:Z
    goto :goto_0
.end method
