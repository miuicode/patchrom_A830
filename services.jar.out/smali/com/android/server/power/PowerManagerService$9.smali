.class Lcom/android/server/power/PowerManagerService$9;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3271
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 13
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 3275
    const-string v9, "PowerManagerService"

    const-string v10, "_________FaceDetectionListener________"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    if-eqz p1, :cond_2

    array-length v9, p1

    if-lez v9, :cond_2

    .line 3277
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onFaceDetection(), len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",1stF width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget-object v11, v11, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget-object v9, v9, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/16 v10, 0x1f4

    if-lt v9, v10, :cond_2

    .line 3280
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mFaceDetectionSuccessed:Z
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3281
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mFaceDetectionSuccessed:Z
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$4202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3282
    const-string v9, "PowerManagerService"

    const-string v10, "find first face, so get unlock~~~~~"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v10, "com.lenovo.facedetection.unlock.success"

    #calls: Lcom/android/server/power/PowerManagerService;->sendFaceDetectionBroadcast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 3285
    :try_start_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mLenovoSmartStandbyRunning:Z
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$4702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3286
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3287
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->stopPreview()V

    .line 3288
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 3289
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 3290
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$4602(Lcom/android/server/power/PowerManagerService;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3300
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 3301
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mStopDetectionBroadcastRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3302
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mStopDetectionBroadcastRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0xc8

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3307
    :cond_1
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)I

    move-result v8

    .line 3308
    .local v8, screenOffTimeout:I
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I
    invoke-static {v9, v8}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;I)I

    move-result v7

    .line 3309
    .local v7, screenDimDuration:I
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->getButtonLightDurationLocked(I)I
    invoke-static {v9, v8}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;I)I

    move-result v6

    .line 3310
    .local v6, screenButtonLightDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3311
    .local v4, now:J
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "----------success-----------now ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mLastUserActivityTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "screenDimDuration ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #setter for: Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J
    invoke-static {v9, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$5202(Lcom/android/server/power/PowerManagerService;J)J

    .line 3313
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v9

    int-to-long v11, v8

    add-long/2addr v9, v11

    int-to-long v11, v7

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x7d0

    sub-long/2addr v9, v11

    const-wide/16 v11, 0xc8

    sub-long v2, v9, v11

    .line 3314
    .local v2, nextTimeout:J
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$5376(Lcom/android/server/power/PowerManagerService;I)I

    .line 3315
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3316
    .local v1, msg:Landroid/os/Message;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3317
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3321
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #nextTimeout:J
    .end local v4           #now:J
    .end local v6           #screenButtonLightDuration:I
    .end local v7           #screenDimDuration:I
    .end local v8           #screenOffTimeout:I
    :cond_2
    return-void

    .line 3292
    :catch_0
    move-exception v0

    .line 3293
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v9, "PowerManagerService"

    const-string v10, "~onFaceDetection stop facedetection err!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3295
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 3296
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$4602(Lcom/android/server/power/PowerManagerService;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto/16 :goto_0
.end method
