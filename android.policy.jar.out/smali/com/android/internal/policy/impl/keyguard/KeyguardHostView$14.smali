.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;
.super Ljava/lang/Thread;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->openFaceUnlockCameraThread()V
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
    .line 2063
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2066
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2067
    const-string v1, "KeyguardHostView"

    const-string v2, "start loopRun"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLooper:Landroid/os/Looper;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2902(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/os/Looper;)Landroid/os/Looper;

    .line 2070
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 2071
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2072
    const-string v1, "KeyguardHostView"

    const-string v2, "open camera success~~"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2074
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2076
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2077
    const-string v1, "KeyguardHostView"

    const-string v2, "openFaceUnlockCameraThread: quit."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :goto_0
    return-void

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to open camera."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0
.end method
