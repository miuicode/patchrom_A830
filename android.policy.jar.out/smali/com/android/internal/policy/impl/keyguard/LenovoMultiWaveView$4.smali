.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;
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
    .line 239
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$600(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$600(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$700(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$602(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)I

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;ZZ)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$902(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z

    .line 247
    return-void
.end method
