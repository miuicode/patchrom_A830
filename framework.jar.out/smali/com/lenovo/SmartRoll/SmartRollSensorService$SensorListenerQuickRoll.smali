.class Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;
.super Ljava/lang/Object;
.source "SmartRollSensorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListenerQuickRoll"
.end annotation


# static fields
.field private static final A_G_DIFFERENCE_FACTOR:F = 3.0f

.field protected static final BRAND_NEW_SENSOR_EVENT_MS:I = 0x4b0

.field protected static final G_VALUE:F = 9.8f

.field private static final HIGH_ACCE_VALUE:F = 16.0f

.field private static final LOW_ACCE_VALUE:F = 6.0f

.field protected static final OVER_HIGH_A:I = 0xa

.field private static final OVER_HIGH_ACCE_VALUE:F = 25.0f

.field protected static final OVER_LOW_A:I = -0xa

.field protected static final STABLE_HIGH_ACC_TIME_MS:I = 0x28a

.field private static final TIME_SMOOTH_FACTOR:I = 0x64

.field protected static final X_N_HIG_A:I = -0x1

.field protected static final X_P_HIG_A:I = 0x1

.field protected static final Y_N_HIG_A:I = -0x2

.field protected static final Y_P_HIG_A:I = 0x2

.field protected static final Z_N_HIG_A:I = -0x3

.field protected static final Z_P_HIG_A:I = 0x3


# instance fields
.field private lastHighAcceAxis:I

.field private lastHightAccTimeStamp:I

.field private lastSmoothTimeStamp:I

.field private lastSmoothX:F

.field private lastSmoothY:F

.field private lastSmoothZ:F

.field private stableHightAccAxis:I

.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 181
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothX:F

    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothY:F

    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothZ:F

    .line 236
    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    .line 237
    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHightAccTimeStamp:I

    .line 239
    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->stableHightAccAxis:I

    return-void
.end method

.method private onAcceChange(II)V
    .locals 3
    .parameter "highAcceChange"
    .parameter "timestamp"

    .prologue
    .line 387
    const-string v0, "SmartRollService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcceChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    const/4 v1, 0x1

    #calls: Lcom/lenovo/SmartRoll/SmartRollSensorService;->sendMsgToHandlerQuickRoll(III)V
    invoke-static {v0, v1, p1, p2}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$300(Lcom/lenovo/SmartRoll/SmartRollSensorService;III)V

    .line 391
    return-void
.end method

.method private onStableAcceChange(I)V
    .locals 3
    .parameter "stableAcceChange"

    .prologue
    .line 394
    const-string v0, "SmartRollService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStableAcceChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    #calls: Lcom/lenovo/SmartRoll/SmartRollSensorService;->sendMsgToHandlerQuickRoll(III)V
    invoke-static {v0, v1, p1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$300(Lcom/lenovo/SmartRoll/SmartRollSensorService;III)V

    .line 397
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 383
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 243
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v7, v12

    .line 245
    .local v7, timestamp:I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v9, v12, v13

    .line 246
    .local v9, x:F
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v10, v12, v13

    .line 247
    .local v10, y:F
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v11, v12, v13

    .line 249
    .local v11, z:F
    mul-float v12, v9, v9

    mul-float v13, v10, v10

    add-float/2addr v12, v13

    mul-float v13, v11, v11

    add-float v3, v12, v13

    .line 250
    .local v3, a_square:F
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    .line 253
    .local v1, a:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothTimeStamp:I

    sub-int v6, v7, v12

    .line 255
    .local v6, timeEllipse:I
    const/16 v12, 0x4b0

    if-gt v6, v12, :cond_0

    if-gez v6, :cond_2

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothX:F

    .line 259
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothY:F

    .line 260
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothZ:F

    .line 261
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothTimeStamp:I

    .line 263
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    #calls: Lcom/lenovo/SmartRoll/SmartRollSensorService;->sendMsgToHandlerQuickRoll(III)V
    invoke-static {v12, v13, v14, v15}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$300(Lcom/lenovo/SmartRoll/SmartRollSensorService;III)V

    .line 267
    const-string v12, "SmartRollService"

    const-string/jumbo v13, "timeEllipse > BRAND_NEW_SENSOR_EVENT_MS, smooth re-initiate"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    const/high16 v12, 0x41c8

    cmpl-float v12, v1, v12

    if-lez v12, :cond_4

    .line 302
    const-string v12, "SmartRollService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "a_over_high_filter = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1

    .line 306
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    .line 308
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->onAcceChange(II)V

    .line 377
    :cond_1
    :goto_1
    return-void

    .line 270
    :cond_2
    const/high16 v12, 0x41c8

    cmpg-float v12, v1, v12

    if-gez v12, :cond_3

    .line 273
    const v12, 0x42c0147b

    const v13, 0x42c0147b

    const/high16 v14, 0x4040

    const v15, 0x411ccccd

    sub-float/2addr v15, v1

    mul-float/2addr v14, v15

    const v15, 0x411ccccd

    sub-float/2addr v15, v1

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    div-float v2, v12, v13

    .line 276
    .local v2, a_g_factor:F
    mul-float/2addr v9, v2

    .line 277
    mul-float/2addr v10, v2

    .line 278
    mul-float/2addr v11, v2

    .line 281
    add-int/lit8 v8, v6, 0x64

    .line 283
    .local v8, totalTime:I
    int-to-float v12, v7

    mul-float/2addr v12, v9

    const/high16 v13, 0x42c8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothX:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v8

    div-float v9, v12, v13

    .line 284
    int-to-float v12, v7

    mul-float/2addr v12, v10

    const/high16 v13, 0x42c8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothY:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v8

    div-float v10, v12, v13

    .line 285
    int-to-float v12, v7

    mul-float/2addr v12, v11

    const/high16 v13, 0x42c8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothZ:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v8

    div-float v11, v12, v13

    .line 287
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothX:F

    .line 288
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothY:F

    .line 289
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothZ:F

    .line 290
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothTimeStamp:I

    goto/16 :goto_0

    .line 293
    .end local v2           #a_g_factor:F
    .end local v8           #totalTime:I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothTimeStamp:I

    add-int/2addr v12, v7

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastSmoothTimeStamp:I

    goto/16 :goto_0

    .line 310
    :cond_4
    const/high16 v12, 0x4180

    cmpl-float v12, v1, v12

    if-lez v12, :cond_5

    .line 313
    const-string v12, "SmartRollService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "a_high_filter = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 315
    :cond_5
    const/high16 v12, 0x40c0

    cmpg-float v12, v1, v12

    if-gez v12, :cond_6

    .line 318
    const-string v12, "SmartRollService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "a_low_filter = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 326
    :cond_6
    add-float v12, v11, v11

    add-float/2addr v11, v12

    .line 327
    add-float v12, v9, v9

    add-float/2addr v12, v9

    add-float/2addr v9, v12

    .line 331
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 332
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 334
    .local v4, highAcc:F
    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-lez v12, :cond_8

    .line 335
    const/4 v5, 0x1

    .line 349
    .local v5, highAxis:I
    :goto_2
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v12, v12, v4

    if-lez v12, :cond_7

    .line 350
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 352
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_b

    .line 353
    const/4 v5, 0x3

    .line 360
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    if-eq v5, v12, :cond_c

    .line 362
    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    .line 363
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHightAccTimeStamp:I

    .line 364
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->onAcceChange(II)V

    .line 366
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    goto/16 :goto_1

    .line 337
    .end local v5           #highAxis:I
    :cond_8
    const/4 v5, -0x1

    .restart local v5       #highAxis:I
    goto :goto_2

    .line 340
    .end local v4           #highAcc:F
    .end local v5           #highAxis:I
    :cond_9
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 342
    .restart local v4       #highAcc:F
    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-lez v12, :cond_a

    .line 343
    const/4 v5, 0x2

    .restart local v5       #highAxis:I
    goto :goto_2

    .line 345
    .end local v5           #highAxis:I
    :cond_a
    const/4 v5, -0x2

    .restart local v5       #highAxis:I
    goto :goto_2

    .line 355
    :cond_b
    const/4 v5, -0x3

    goto :goto_3

    .line 369
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->stableHightAccAxis:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    if-eq v12, v13, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHightAccTimeStamp:I

    sub-int v12, v7, v12

    const/16 v13, 0x28a

    if-lt v12, v13, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->lastHighAcceAxis:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->stableHightAccAxis:I

    .line 373
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->stableHightAccAxis:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;->onStableAcceChange(I)V

    goto/16 :goto_1
.end method
