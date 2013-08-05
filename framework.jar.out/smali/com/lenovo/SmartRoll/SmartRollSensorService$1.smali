.class Lcom/lenovo/SmartRoll/SmartRollSensorService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartRollSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    const/4 v2, 0x1

    #setter for: Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$102(Lcom/lenovo/SmartRoll/SmartRollSensorService;Z)Z

    .line 76
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    #calls: Lcom/lenovo/SmartRoll/SmartRollSensorService;->updateState()V
    invoke-static {v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$200(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V

    .line 77
    return-void

    .line 72
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    const/4 v2, 0x0

    #setter for: Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$102(Lcom/lenovo/SmartRoll/SmartRollSensorService;Z)Z

    goto :goto_0
.end method
