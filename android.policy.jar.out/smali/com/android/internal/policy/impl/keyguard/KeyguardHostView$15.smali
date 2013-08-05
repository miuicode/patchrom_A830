.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


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
    .line 2172
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 7
    .parameter "faces"
    .parameter "camera"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2176
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 2177
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFaceDetection(), len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1stF width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    aget-object v1, p1, v4

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_2

    .line 2180
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFaceDetectionSuccessed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2181
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFaceDetectionSuccessed:Z
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2602(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 2182
    const-string v1, "KeyguardHostView"

    const-string v2, "find first face, so get unlock~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const-string v2, "com.lenovo.facedetection.unlock.success"

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sendFaceDetectionBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Ljava/lang/String;)V

    .line 2185
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLenovoFaceUnlockRunning:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3202(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 2186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 2188
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 2189
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 2190
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2201
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStopDetectionBroadcastRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2202
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStopDetectionBroadcastRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2205
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_2

    .line 2206
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 2211
    :cond_2
    return-void

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "KeyguardHostView"

    const-string v2, "~onFaceDetection stop facedetection err!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2195
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 2196
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0
.end method
