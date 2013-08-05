.class public Lcom/android/internal/policy/impl/LenovoHeadsetManager;
.super Ljava/lang/Object;
.source "LenovoHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;
    }
.end annotation


# static fields
.field private static final FACTORY_MODE_PACKAGE_LENOVO:Ljava/lang/String; = "com.lenovo.factorymode"

.field private static final FACTORY_MODE_PACKAGE_MTK:Ljava/lang/String; = "com.mediatek.factorymode"

.field private static final FM_ACTIVITY_LENOVO:Ljava/lang/String; = "com.lenovo.fm"

.field private static final FM_ACTIVITY_MTK:Ljava/lang/String; = "com.mediatek.FMRadio"

.field private static final HEADSET_COMMAND_DOUBLE_CLICK:Ljava/lang/String; = "SS"

.field private static final HEADSET_COMMAND_LONG_CLICK:Ljava/lang/String; = "L"

.field private static final HEADSET_COMMAND_SINGLE_CLICK:Ljava/lang/String; = "S"

.field private static final HEADSET_COMMAND_TRIBLE_CLICK:Ljava/lang/String; = "SSS"

.field private static final HEADSET_EVENT_LONG_CLICK:C = 'L'

.field private static final HEADSET_EVENT_SHORT_CLICK:C = 'S'

.field private static final HEADSET_PLUGGED_IN_STATE_FILE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final IN_CALL_ACTIVITY:Ljava/lang/String; = "com.android.phone.InCallScreen"

.field private static final KEY_EVENT_DOUBLE_CLICK:I = 0x2

.field private static final KEY_EVENT_LONG_CLICK:I = 0xa

.field private static final KEY_EVENT_NONE:I = 0x0

.field private static final KEY_EVENT_SINGLE_CLICK:I = 0x1

.field private static final KEY_EVENT_TRIBLE_CLICK:I = 0x3

.field private static final MUSIC_ACTIVITY:Ljava/lang/String; = "com.android.music"

.field private static final MUSIC_ACTIVITY_LENOVO:Ljava/lang/String; = "com.lenovo.music"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PLAYER_TYPE_DEFAULT:I = 0x1

.field private static final PLAYER_TYPE_FM:I = 0x2

.field private static final PLAYER_TYPE_MUSIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LenovoHeadsetManager"

.field private static final TIME_COMMAND_END:I = 0x12c

.field private static final TIME_LONG_CLICK:I = 0x3e8

.field private static final TIME_NOT_RESPONSE_AFTER_PHONE_IDLE:J = 0x7d0L

.field private static final TIME_SLEEP_AFTER_BROADCAST:J = 0xaL


# instance fields
.field private bIgnorUpAfterLongPress:Z

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetCommand:Ljava/lang/String;

.field private final mHeadsetCommandEnd:Ljava/lang/Runnable;

.field private final mHeadsetLongPress:Ljava/lang/Runnable;

.field private mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mLastPhoneIdleTime:J

.field mPhoneStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    .line 83
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->bIgnorUpAfterLongPress:Z

    .line 87
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mLastPhoneIdleTime:J

    .line 111
    new-instance v2, Lcom/android/internal/policy/impl/LenovoHeadsetManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$1;-><init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetLongPress:Ljava/lang/Runnable;

    .line 117
    new-instance v2, Lcom/android/internal/policy/impl/LenovoHeadsetManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$2;-><init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommandEnd:Ljava/lang/Runnable;

    .line 123
    new-instance v2, Lcom/android/internal/policy/impl/LenovoHeadsetManager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$3;-><init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v2, Lcom/android/internal/policy/impl/LenovoHeadsetManager$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$4;-><init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    .line 157
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHandler:Landroid/os/Handler;

    .line 159
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 161
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "LenovoHeadsetManager.mBroadcastWakeLock"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    const-string v2, "LenovoHeadsetManager.mKeyWakeLock"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->onHeadsetLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->onHeadsetCommandEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/LenovoHeadsetManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mLastPhoneIdleTime:J

    return-wide p1
.end method

.method private doCallKey(I)Z
    .locals 9
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, isInCall:Z
    invoke-static {}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 324
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_6

    .line 326
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 328
    :goto_0
    const-string v5, "LenovoHeadsetManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-nez v1, :cond_4

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mLastPhoneIdleTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 333
    const-string v4, "LenovoHeadsetManager"

    const-string v5, "within TIME_NOT_RESPONSE_AFTER_PHONE_IDLE, not reponse"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_1
    return v3

    :cond_0
    move v1, v4

    .line 326
    goto :goto_0

    .line 339
    :cond_1
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.InCallScreen"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->isProcessActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 340
    const-string v4, "LenovoHeadsetManager"

    const-string v5, "in com.android.phone.InCallScreen , ignore key"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    :goto_2
    move v3, v1

    .line 415
    goto :goto_1

    :cond_3
    move v3, v4

    .line 346
    goto :goto_1

    .line 349
    :cond_4
    sparse-switch p1, :sswitch_data_0

    .line 402
    :try_start_1
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "not handled key event"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 351
    :sswitch_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "doCallKey: CALL KEY_EVENT_SINGLE_CLICK while ringing: Answer the call!"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 355
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->playSound(Z)V

    goto :goto_2

    .line 356
    :cond_5
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "doCallKey: CALL KEY_EVENT_SINGLE_CLICK while isOffhook: End the call!"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 362
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->playSound(Z)V

    goto :goto_2

    .line 392
    :sswitch_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "doCallKey: CALL KEY_EVENT_LONG_CLICK while ringing: End the call!"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 396
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->playSound(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 412
    :cond_6
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "telephonyService is null"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private doFmKey(I)Z
    .locals 4
    .parameter "keyEvent"

    .prologue
    .line 476
    const/4 v0, 0x1

    .line 478
    .local v0, isInFm:Z
    const-string v1, "LenovoHeadsetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInFm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz v0, :cond_0

    .line 481
    sparse-switch p1, :sswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 483
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doFmPlayPause()V

    goto :goto_0

    .line 487
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doFmStop()V

    goto :goto_0

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private doFmPlayPause()V
    .locals 3

    .prologue
    const/16 v2, 0x55

    .line 498
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 499
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendFmBroadcast(Landroid/view/KeyEvent;)V

    .line 501
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 502
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendFmBroadcast(Landroid/view/KeyEvent;)V

    .line 503
    return-void
.end method

.method private doFmStop()V
    .locals 3

    .prologue
    const/16 v2, 0x56

    .line 508
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 509
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendFmBroadcast(Landroid/view/KeyEvent;)V

    .line 511
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 512
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendFmBroadcast(Landroid/view/KeyEvent;)V

    .line 513
    return-void
.end method

.method private doMusicKey(I)Z
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, isInMusic:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->getAudioService()Landroid/media/AudioManager;

    move-result-object v0

    .line 443
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 446
    const-string v2, "LenovoHeadsetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInMusic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 471
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 451
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doMusicPlayPause()V

    goto :goto_0

    .line 455
    :sswitch_1
    if-eqz v1, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doMusicNext()V

    goto :goto_0

    .line 461
    :sswitch_2
    if-eqz v1, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doMusicPrevious()V

    goto :goto_0

    .line 466
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doMusicStop()V

    goto :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method private doMusicNext()V
    .locals 3

    .prologue
    const/16 v2, 0x57

    .line 538
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 539
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 541
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 542
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 543
    return-void
.end method

.method private doMusicPlayPause()V
    .locals 3

    .prologue
    const/16 v2, 0x55

    .line 518
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 519
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 521
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 522
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 523
    return-void
.end method

.method private doMusicPrevious()V
    .locals 3

    .prologue
    const/16 v2, 0x58

    .line 548
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 549
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 551
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 552
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 553
    return-void
.end method

.method private doMusicStop()V
    .locals 3

    .prologue
    const/16 v2, 0x56

    .line 528
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 529
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 531
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 532
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendMusicBroadcast(Landroid/view/KeyEvent;)V

    .line 533
    return-void
.end method

.method private findMostRecentPlayer()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 654
    const/4 v3, 0x1

    .line 656
    .local v3, player:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 658
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 659
    const-string v6, "LenovoHeadsetManager"

    const-string v7, "Unable to find ACTIVITY_SERVICE."

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 686
    .end local v3           #player:I
    .local v4, player:I
    :goto_0
    return v4

    .line 664
    .end local v4           #player:I
    .restart local v3       #player:I
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 665
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 666
    .local v5, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v5, :cond_2

    .line 667
    const-string v6, "LenovoHeadsetManager"

    const-string v7, "runningTaskInfo == null"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 669
    :cond_2
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    .line 670
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, packageName:Ljava/lang/String;
    const-string v6, "com.android.music"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.lenovo.music"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 675
    :cond_3
    const/4 v3, 0x1

    .end local v2           #packageName:Ljava/lang/String;
    .end local v5           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    :goto_2
    move v4, v3

    .line 686
    .end local v3           #player:I
    .restart local v4       #player:I
    goto :goto_0

    .line 677
    .end local v4           #player:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #player:I
    .restart local v5       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    const-string v6, "com.mediatek.FMRadio"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.lenovo.fm"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 680
    :cond_6
    const/4 v3, 0x2

    .line 681
    goto :goto_2
.end method

.method private getAudioService()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 598
    .local v0, audioService:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 599
    const-string v1, "LenovoHeadsetManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 587
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 589
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 590
    const-string v1, "LenovoHeadsetManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    return-object v0
.end method

.method private isHeadsetPluggedIn()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 300
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 301
    .local v0, buffer:[C
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/h2w/state"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 304
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 305
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 307
    .local v1, curState:I
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .line 316
    .end local v0           #buffer:[C
    .end local v1           #curState:I
    .end local v3           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    :cond_0
    :goto_0
    return v5

    .line 309
    :catch_0
    move-exception v2

    .line 310
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v6, "LenovoHeadsetManager"

    const-string v7, "isHeadsetPluggedIn : not found while attempting to determine initial switch state"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 313
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "LenovoHeadsetManager"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private isProcessActive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 630
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 631
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "Unable to find ACTIVITY_SERVICE."

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    :goto_0
    return v2

    .line 636
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 637
    .local v1, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v1, :cond_2

    .line 638
    const-string v3, "LenovoHeadsetManager"

    const-string v4, "runningTaskInfo == null"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    if-eqz p2, :cond_3

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isProcessExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 605
    iget-object v6, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 607
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 608
    const-string v6, "LenovoHeadsetManager"

    const-string v7, "Unable to find ACTIVITY_SERVICE."

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 624
    :cond_0
    :goto_0
    return v3

    .line 612
    :cond_1
    const/4 v3, 0x0

    .line 613
    .local v3, ready:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 614
    .local v4, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_2

    .line 615
    const-string v6, "LenovoHeadsetManager"

    const-string v7, "runningAppInfo == null"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 616
    goto :goto_0

    .line 618
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 619
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 620
    const/4 v3, 0x1

    .line 621
    goto :goto_0
.end method

.method private onHeadsetCommandEnd()V
    .locals 5

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, keyEvent:I
    const-string v2, "LenovoHeadsetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHeadsetCommandEnd: mHeadsetCommand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->isHeadsetPluggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const-string v2, "LenovoHeadsetManager"

    const-string v3, "onHeadsetCommandEnd: isHeadsetPluggedIn return false"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 291
    :cond_2
    :goto_0
    return-void

    .line 257
    :cond_3
    const-string v2, "S"

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 258
    const/4 v0, 0x1

    .line 268
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doCallKey(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    const-string v2, "LenovoHeadsetManager"

    const-string v3, "onHeadsetCommandEnd: handle by CALL"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_5
    :goto_2
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 259
    :cond_6
    const-string v2, "SS"

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    const/4 v0, 0x2

    goto :goto_1

    .line 261
    :cond_7
    const-string v2, "SSS"

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 262
    const/4 v0, 0x3

    goto :goto_1

    .line 263
    :cond_8
    const-string v2, "L"

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    const/16 v0, 0xa

    goto :goto_1

    .line 271
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->findMostRecentPlayer()I

    move-result v1

    .line 273
    .local v1, player:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 274
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doFmKey(I)Z

    .line 276
    const-string v2, "LenovoHeadsetManager"

    const-string v3, "onHeadsetCommandEnd: handle by FM"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_a
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 278
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->doMusicKey(I)Z

    .line 280
    const-string v2, "LenovoHeadsetManager"

    const-string v3, "onHeadsetCommandEnd: handle by MUSIC"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onHeadsetLongPress()V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->bIgnorUpAfterLongPress:Z

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->onHeadsetCommandEnd()V

    .line 232
    return-void
.end method

.method private playSound(Z)V
    .locals 0
    .parameter "successSound"

    .prologue
    .line 693
    return-void
.end method

.method private sendFmBroadcast(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x0

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM_BUTTON"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 570
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->playSound(Z)V

    .line 573
    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private sendMusicBroadcast(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x0

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LENOVO_MEDIA_BUTTON"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 561
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->playSound(Z)V

    .line 564
    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    const/4 v6, 0x0

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 582
    return-void
.end method


# virtual methods
.method public interceptHeadsetKeyBeforeQueueing(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    const-string v2, "com.mediatek.factorymode"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->isProcessActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v1, "LenovoHeadsetManager"

    const-string v2, "In com.mediatek.factorymode , ignore key"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return v0

    .line 183
    :cond_0
    const-string v2, "com.lenovo.factorymode"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->isProcessActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v1, "LenovoHeadsetManager"

    const-string v2, "In com.lenovo.factorymode , ignore key"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 189
    const-string v2, "LenovoHeadsetManager"

    const-string v3, "Headset key down"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->isHeadsetPluggedIn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    const-string v0, "LenovoHeadsetManager"

    const-string v2, "interceptHeadsetKeyBeforeQueueing: isHeadsetPluggedIn return false"

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommandEnd:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->bIgnorUpAfterLongPress:Z

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetLongPress:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    move v0, v1

    .line 220
    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 207
    const-string v0, "LenovoHeadsetManager"

    const-string v2, "Headset key up"

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->bIgnorUpAfterLongPress:Z

    if-nez v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x53

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommand:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mHeadsetCommandEnd:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
