.class Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;
.super Landroid/os/Handler;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method private constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;-><init>(Lcom/lenovo/widetouch/WideTouchService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    #calls: Lcom/lenovo/widetouch/WideTouchService;->enablePointerLocation()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$000(Lcom/lenovo/widetouch/WideTouchService;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    #calls: Lcom/lenovo/widetouch/WideTouchService;->disablePointerLocation()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$100(Lcom/lenovo/widetouch/WideTouchService;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    #calls: Lcom/lenovo/widetouch/WideTouchService;->realShowWideTouchWindow()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$200(Lcom/lenovo/widetouch/WideTouchService;)V

    goto :goto_0

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    #calls: Lcom/lenovo/widetouch/WideTouchService;->realHideWideTouchWindow()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$300(Lcom/lenovo/widetouch/WideTouchService;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
