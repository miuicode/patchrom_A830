.class Lcom/lenovo/SmartRoll/SmartRollAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRollAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/SmartRoll/SmartRollAnimation;->onResultSupportAndChanged(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollAnimation;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    iput-object p2, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "anim"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->val$finisher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 189
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mViewDeaultfLayerType:I
    invoke-static {v1}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$000(Lcom/lenovo/SmartRoll/SmartRollAnimation;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    return-void
.end method
