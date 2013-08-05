.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;
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
    .line 2087
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    .line 2090
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFakeHandleDrawableOutListener mPendingDragViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragViewState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1600(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimating:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1702(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z

    .line 2094
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->eventX:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->eventY:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->velocityX:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->velocityY:F

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1900(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;IIIFF)V

    .line 2095
    return-void
.end method
