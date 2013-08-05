.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LenovoMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startWaveAnimation()V
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
    .line 1096
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setRadius(F)V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->access$1200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 1100
    return-void
.end method
