.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$9;
.super Ljava/lang/Object;
.source "LenovoMultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 2161
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 2164
    return-void
.end method
