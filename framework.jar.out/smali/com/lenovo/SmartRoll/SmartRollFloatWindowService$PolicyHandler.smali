.class Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;
.super Landroid/os/Handler;
.source "SmartRollFloatWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;


# direct methods
.method private constructor <init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    #calls: Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->enablePointerLocation()V
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->access$000(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    #calls: Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->disablePointerLocation()V
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->access$100(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
