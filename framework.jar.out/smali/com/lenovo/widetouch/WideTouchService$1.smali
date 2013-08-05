.class Lcom/lenovo/widetouch/WideTouchService$1;
.super Landroid/content/BroadcastReceiver;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchService;->onConfigurationChanged()V

    .line 147
    :cond_0
    return-void
.end method
