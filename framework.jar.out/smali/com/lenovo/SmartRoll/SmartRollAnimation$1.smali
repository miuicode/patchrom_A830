.class Lcom/lenovo/SmartRoll/SmartRollAnimation$1;
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


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "anim"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mHaveRollOvered:Z
    invoke-static {v0, v1}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$202(Lcom/lenovo/SmartRoll/SmartRollAnimation;Z)Z

    .line 171
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewSmartRoll:Z
    invoke-static {v1}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$300(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->dispatchSmartRoll(ZZ)Z

    .line 173
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$400(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 179
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    #setter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mViewDeaultfLayerType:I
    invoke-static {v0, v1}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$002(Lcom/lenovo/SmartRoll/SmartRollAnimation;I)I

    .line 155
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;->this$0:Lcom/lenovo/SmartRoll/SmartRollAnimation;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x309

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
