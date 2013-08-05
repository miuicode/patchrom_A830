.class Lcom/android/server/AkgService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method private constructor <init>(Lcom/android/server/AkgService;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AkgService;Lcom/android/server/AkgService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/android/server/AkgService$ScreenReceiver;-><init>(Lcom/android/server/AkgService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/AkgService;->screenOff:Z
    invoke-static {v0, v1}, Lcom/android/server/AkgService;->access$1602(Lcom/android/server/AkgService;Z)Z

    .line 390
    const-string v0, "AkgService"

    const-string v1, "SCREEN TURNED OFF on BroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/AkgService;->access$100(Lcom/android/server/AkgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/AkgService;->access$1800(Lcom/android/server/AkgService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/server/AkgService;->access$1700(Lcom/android/server/AkgService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #setter for: Lcom/android/server/AkgService;->screenOff:Z
    invoke-static {v0, v3}, Lcom/android/server/AkgService;->access$1602(Lcom/android/server/AkgService;Z)Z

    .line 396
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #setter for: Lcom/android/server/AkgService;->mSlpProcess:Z
    invoke-static {v0, v3}, Lcom/android/server/AkgService;->access$1302(Lcom/android/server/AkgService;Z)Z

    .line 397
    const-string v0, "AkgService"

    const-string v1, "SCREEN TURNED ON on BroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/AkgService;->access$100(Lcom/android/server/AkgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/AkgService;->access$1800(Lcom/android/server/AkgService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/server/AkgService;->access$1700(Lcom/android/server/AkgService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/AkgService;->access$1900(Lcom/android/server/AkgService;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method
