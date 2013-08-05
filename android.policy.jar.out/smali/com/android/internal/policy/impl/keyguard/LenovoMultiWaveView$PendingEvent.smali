.class Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;
.super Ljava/lang/Object;
.source "LenovoMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingEvent"
.end annotation


# instance fields
.field eventX:I

.field eventY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

.field velocityX:F

.field velocityY:F


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    return-void
.end method
