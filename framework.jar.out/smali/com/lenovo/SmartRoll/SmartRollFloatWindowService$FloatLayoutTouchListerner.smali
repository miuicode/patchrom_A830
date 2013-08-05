.class Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;
.super Ljava/lang/Object;
.source "SmartRollFloatWindowService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatLayoutTouchListerner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter
    .parameter "smartRollFloatWindowService"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
