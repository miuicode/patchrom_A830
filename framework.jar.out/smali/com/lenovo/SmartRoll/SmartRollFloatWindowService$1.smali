.class Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartRollFloatWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->onConfigurationChanged()V

    .line 121
    :cond_0
    return-void
.end method
