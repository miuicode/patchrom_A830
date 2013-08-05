.class final Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;
.super Ljava/lang/Object;
.source "LenovoMultiWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntersectAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 2449
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mShouldDoIntersectAnim:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$2502(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z

    .line 2455
    :cond_0
    return-void
.end method
