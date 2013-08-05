.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LenovoMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 2176
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "mFakeHandleDrawableResetListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 2178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 2179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 2180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 2181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const/4 v1, 0x7

    move v3, v2

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1900(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;IIIFF)V

    .line 2182
    return-void
.end method
