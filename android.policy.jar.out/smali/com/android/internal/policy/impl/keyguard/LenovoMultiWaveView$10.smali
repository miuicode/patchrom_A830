.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$10;
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
    .line 2167
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 2171
    return-void
.end method
