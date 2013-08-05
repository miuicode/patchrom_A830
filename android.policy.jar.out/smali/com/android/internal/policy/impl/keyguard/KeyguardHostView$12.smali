.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1993
    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~Wait detection success timeout, clear notification~, mFaceDetectionSuccessed =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFaceDetectionSuccessed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFaceDetectionSuccessed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const-string v1, "com.lenovo.facedetection.unlock.stop"

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sendFaceDetectionBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Ljava/lang/String;)V

    .line 1998
    :cond_0
    return-void
.end method
