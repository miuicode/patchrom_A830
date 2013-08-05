.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LenovoMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateHandle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

.field final synthetic val$delay:I

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->val$duration:I

    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->val$delay:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .parameter "animator"

    .prologue
    const/4 v7, 0x0

    .line 2111
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "fake handle drawable back Listener onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2000(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 2113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2000(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2100(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->val$duration:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->val$delay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2300(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2000(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 2121
    return-void
.end method
