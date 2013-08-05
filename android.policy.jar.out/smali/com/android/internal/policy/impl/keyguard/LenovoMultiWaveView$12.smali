.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$12;
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
    .line 2422
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

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

    .line 2424
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "mIntersectAnimResetListener onAnimationEnd"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const/4 v1, 0x6

    move v3, v2

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1900(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;IIIFF)V

    .line 2426
    return-void
.end method
