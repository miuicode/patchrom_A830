.class Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LenovoBatteryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUValueSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LenovoBatteryManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LenovoBatteryManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 189
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, -0x1

    .line 192
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    #getter for: Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LenovoBatteryManagerService;->access$200(Lcom/android/server/LenovoBatteryManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, cpuValue:I
    if-ne v0, v5, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v2, "LenovoBatteryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPUValueSettingsObserver.onChange,cpuValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    #getter for: Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    invoke-static {v2}, Lcom/android/server/LenovoBatteryManagerService;->access$300(Lcom/android/server/LenovoBatteryManagerService;)Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v5}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 201
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    #getter for: Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    invoke-static {v2}, Lcom/android/server/LenovoBatteryManagerService;->access$300(Lcom/android/server/LenovoBatteryManagerService;)Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
