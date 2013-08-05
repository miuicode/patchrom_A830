.class Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
.super Landroid/os/Handler;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LenovoBatteryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EneaWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LenovoBatteryManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LenovoBatteryManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LenovoBatteryManagerService;Lcom/android/server/LenovoBatteryManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 253
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    :pswitch_0
    return-void

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V
    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->access$400(Lcom/android/server/LenovoBatteryManagerService;I)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
