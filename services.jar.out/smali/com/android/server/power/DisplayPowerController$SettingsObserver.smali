.class final Lcom/android/server/power/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 1683
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1684
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1689
    :try_start_0
    const-string v1, "PowerManagerDisplayController"

    const-string v3, "lincl1+++auto bright profile onChange"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1691
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    const-string v3, "smart_brightness_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    #setter for: Lcom/android/server/power/DisplayPowerController;->mScreenSmartBrightnessModeSetting:I
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$1602(Lcom/android/server/power/DisplayPowerController;I)I

    .line 1695
    const-string v1, "PowerManagerDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lincl1+++auto bright profile onchange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mScreenSmartBrightnessModeSetting:I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mScreenSmartBrightnessModeSetting:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;)I

    move-result v3

    #calls: Lcom/android/server/power/DisplayPowerController;->setSmartBrightnessMode(I)V
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$1700(Lcom/android/server/power/DisplayPowerController;I)V

    .line 1697
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessLevels:[I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1900(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLcdBacklightValues:[I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$2000(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v4

    #calls: Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$2100([I[I)Landroid/util/Spline;

    move-result-object v3

    #setter for: Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$1802(Lcom/android/server/power/DisplayPowerController;Landroid/util/Spline;)Landroid/util/Spline;

    .line 1698
    monitor-exit v2

    .line 1699
    return-void

    .line 1698
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
