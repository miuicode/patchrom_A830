.class Lcom/android/server/AkgService$1;
.super Ljava/lang/Object;
.source "AkgService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method constructor <init>(Lcom/android/server/AkgService;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 381
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    .line 241
    .local v0, temp:J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 242
    .local v2, vec:D
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccSensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/AkgService;->access$100(Lcom/android/server/AkgService;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 244
    invoke-static {}, Lcom/android/server/AkgService;->access$200()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    .line 246
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v4, v5, v6}, Lcom/android/server/AkgService;->access$302(Lcom/android/server/AkgService;J)J

    .line 249
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v4

    if-nez v4, :cond_0

    .line 251
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/server/AkgService;->mTimestampS:J
    invoke-static {v4, v5, v6}, Lcom/android/server/AkgService;->access$502(Lcom/android/server/AkgService;J)J

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const-wide/16 v5, 0x0

    #setter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v4, v5, v6}, Lcom/android/server/AkgService;->access$602(Lcom/android/server/AkgService;J)J

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    invoke-static {}, Lcom/android/server/AkgService;->access$700()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 259
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 261
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 263
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v4, v5, v6}, Lcom/android/server/AkgService;->access$602(Lcom/android/server/AkgService;J)J

    .line 265
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 267
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 274
    :goto_1
    const-string v4, "AkgService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case 1 shake durtion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0xf4240

    div-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/android/server/AkgService;->access$800()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 277
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    invoke-static {v4}, Lcom/android/server/AkgService;->access$404(Lcom/android/server/AkgService;)I

    .line 310
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const-wide/16 v5, 0x0

    #setter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v4, v5, v6}, Lcom/android/server/AkgService;->access$302(Lcom/android/server/AkgService;J)J

    goto :goto_0

    .line 271
    :cond_4
    const-wide v4, 0x7fffffffffffffffL

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp1:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    add-long v0, v4, v6

    goto :goto_1

    .line 284
    :cond_5
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    .line 286
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 293
    :goto_3
    invoke-static {}, Lcom/android/server/AkgService;->access$900()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 295
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 297
    const-string v4, "AkgService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case 1 shake "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v6}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v4

    invoke-static {}, Lcom/android/server/AkgService;->access$1000()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 301
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/AkgService;->access$1100(Lcom/android/server/AkgService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 304
    :cond_6
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4, v5}, Lcom/android/server/AkgService;->access$402(Lcom/android/server/AkgService;I)I

    goto/16 :goto_2

    .line 290
    :cond_7
    const-wide v4, 0x7fffffffffffffffL

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    add-long v0, v4, v6

    goto :goto_3

    .line 315
    :cond_8
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 318
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    .line 320
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 327
    :goto_4
    invoke-static {}, Lcom/android/server/AkgService;->access$900()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 329
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 331
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestampS:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$500(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 332
    const-string v4, "AkgService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case 2 shake "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v6}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0xf4240

    div-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms VS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/AkgService;->access$1200()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)I

    move-result v4

    invoke-static {}, Lcom/android/server/AkgService;->access$1000()I

    move-result v5

    if-ne v4, v5, :cond_c

    invoke-static {}, Lcom/android/server/AkgService;->access$1200()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_c

    .line 336
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mSlpProcess:Z
    invoke-static {v4}, Lcom/android/server/AkgService;->access$1300(Lcom/android/server/AkgService;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 338
    const-string v4, "AkgService"

    const-string v5, "now go to sleep... "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/AkgService;->mSlpProcess:Z
    invoke-static {v4, v5}, Lcom/android/server/AkgService;->access$1302(Lcom/android/server/AkgService;Z)Z

    .line 340
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/AkgService;->access$1100(Lcom/android/server/AkgService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 352
    :cond_9
    :goto_5
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/AkgService;->mShakeCount:I
    invoke-static {v4, v5}, Lcom/android/server/AkgService;->access$402(Lcom/android/server/AkgService;I)I

    goto/16 :goto_0

    .line 324
    :cond_a
    const-wide v4, 0x7fffffffffffffffL

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mTimestamp0:J
    invoke-static {v6}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    add-long v0, v4, v6

    goto/16 :goto_4

    .line 344
    :cond_b
    const-string v4, "AkgService"

    const-string v5, "goToSleeping..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 349
    :cond_c
    const-string v4, "AkgService"

    const-string v5, "now rock & roll"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 359
    :cond_d
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mCheckThd:Z
    invoke-static {v4}, Lcom/android/server/AkgService;->access$1400(Lcom/android/server/AkgService;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 361
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccCheckVal:D
    invoke-static {v4}, Lcom/android/server/AkgService;->access$1500(Lcom/android/server/AkgService;)D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #setter for: Lcom/android/server/AkgService;->mAccCheckVal:D
    invoke-static {v4, v2, v3}, Lcom/android/server/AkgService;->access$1502(Lcom/android/server/AkgService;D)D

    .line 364
    const-string v4, "AkgService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new acc check value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mAccCheckVal:D
    invoke-static {v6}, Lcom/android/server/AkgService;->access$1500(Lcom/android/server/AkgService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
