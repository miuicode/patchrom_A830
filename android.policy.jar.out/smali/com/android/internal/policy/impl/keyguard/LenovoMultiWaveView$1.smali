.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;
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
    .line 213
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$100(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)F

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$300(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;IFF)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    .line 217
    return-void
.end method
