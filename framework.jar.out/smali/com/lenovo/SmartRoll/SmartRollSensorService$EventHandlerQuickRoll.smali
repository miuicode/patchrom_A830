.class Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;
.super Landroid/os/Handler;
.source "SmartRollSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandlerQuickRoll"
.end annotation


# static fields
.field private static final ACTION_COOL_DOWN_TIME:I = 0x1f4

.field private static final ACTION_RECOGANIZED_TIME:I = 0x352

.field public static final EVENT_MSG_ACCE_CHANGE:I = 0x1

.field public static final EVENT_MSG_CHANGE_RTL:I = 0x3

.field public static final EVENT_MSG_COOL_DOWN:I = 0x64

.field public static final EVENT_MSG_RESET:I = 0x0

.field public static final EVENT_MSG_STABLE_ACCE_CHANGE:I = 0x2

.field private static final PREPARE_CHANGE_RTL_TIME:I = 0xc8

.field private static final STATUS_STEP_IDLE:I = 0x0

.field private static final STATUS_STEP_WAIT_FOR_COOL_DOWN:I = 0x64

.field private static final STATUS_STEP_XY_HIGH:I = 0x1

.field private static final STATUS_STEP_Z_HIGH:I = 0x2

.field private static final X_TO_Z_MAX_TIME_MS:I = 0x28a

.field private static final X_TO_Z_MIN_TIME_MS:I = 0x3c


# instance fields
.field private mStableHighAccAxis:I

.field private mStatus:I

.field private mX_HIGH_SIGN:I

.field private mX_HIGH_TIME_STAMP:I

.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;


# direct methods
.method constructor <init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 403
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 440
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 441
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    .line 443
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_TIME_STAMP:I

    .line 444
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_SIGN:I

    return-void
.end method

.method private coolDownInMs(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/16 v1, 0x64

    .line 647
    invoke-virtual {p0, v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->removeMessages(I)V

    .line 649
    invoke-virtual {p0, v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 650
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    return-void
.end method

.method private onMsgAcceChange(II)V
    .locals 3
    .parameter "acceChange"
    .parameter "timestamp"

    .prologue
    const/4 v2, 0x3

    .line 506
    invoke-virtual {p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->removeMessages(I)V

    .line 508
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    .line 533
    :goto_0
    return-void

    .line 513
    :cond_0
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, -0xa

    if-ne p1, v0, :cond_2

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0

    .line 520
    :cond_2
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 522
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgAcceChange_X_Y_Stable(II)V

    goto :goto_0

    .line 523
    :cond_4
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 525
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgAcceChange_X_Y_Stable(II)V

    goto :goto_0

    .line 526
    :cond_6
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_8

    .line 529
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgAcceChange_Z_Stable(II)V

    goto :goto_0

    .line 531
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0
.end method

.method private onMsgAcceChange_X_Y_Stable(II)V
    .locals 4
    .parameter "acceChange"
    .parameter "timestamp"

    .prologue
    const/4 v2, 0x1

    .line 541
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    .line 574
    :goto_0
    return-void

    .line 544
    :cond_0
    const/4 v1, -0x3

    if-ne p1, v1, :cond_2

    .line 545
    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    if-nez v1, :cond_1

    .line 546
    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 549
    iput p2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_TIME_STAMP:I

    .line 550
    iput p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_SIGN:I

    .line 552
    const/16 v1, 0x352

    invoke-direct {p0, v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->coolDownInMs(I)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0

    .line 556
    :cond_2
    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    if-ne p1, v1, :cond_5

    .line 557
    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_TIME_STAMP:I

    sub-int v0, p2, v1

    .line 559
    .local v0, timeDifference:I
    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    if-ne v1, v2, :cond_4

    .line 560
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_3

    .line 561
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 563
    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_SIGN:I

    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    invoke-direct {p0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->prepareChangeRtl(II)V

    goto :goto_0

    .line 565
    :cond_3
    const-string v1, "SmartRollService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp too short! Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0

    .line 569
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0

    .line 572
    .end local v0           #timeDifference:I
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0
.end method

.method private onMsgAcceChange_Z_Stable(II)V
    .locals 5
    .parameter "acceChange"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 582
    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    .line 586
    :cond_0
    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    if-nez v2, :cond_3

    .line 587
    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    .line 590
    :cond_1
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 593
    iput p2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_TIME_STAMP:I

    .line 594
    iput p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_SIGN:I

    .line 596
    const/16 v2, 0x352

    invoke-direct {p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->coolDownInMs(I)V

    .line 624
    :cond_2
    :goto_0
    return-void

    .line 600
    :cond_3
    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    if-eq v2, v0, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0

    .line 605
    :cond_4
    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, -0x3

    if-ne p1, v2, :cond_2

    .line 607
    :cond_5
    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_TIME_STAMP:I

    sub-int v1, p2, v2

    .line 609
    .local v1, timeDifference:I
    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    if-ne v2, p1, :cond_2

    .line 611
    const/16 v2, 0x3c

    if-lt v1, v2, :cond_7

    .line 612
    iput v4, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 614
    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_SIGN:I

    mul-int/2addr v2, v3

    if-lez v2, :cond_6

    .line 615
    .local v0, isLeftToRight:Z
    :goto_1
    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mX_HIGH_SIGN:I

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->prepareChangeRtl(II)V

    goto :goto_0

    .line 614
    .end local v0           #isLeftToRight:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 617
    :cond_7
    const-string v2, "SmartRollService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timestamp too short! Only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    goto :goto_0
.end method

.method private onMsgChangeRtl(II)V
    .locals 2
    .parameter "fromAxis"
    .parameter "toAxis"

    .prologue
    .line 631
    const-string v0, "SmartRollService"

    const-string/jumbo v1, "onMsgChangeRtl!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->resetInMs(I)V

    .line 635
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    #calls: Lcom/lenovo/SmartRoll/SmartRollSensorService;->changeRtl(II)V
    invoke-static {v0, p1, p2}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$400(Lcom/lenovo/SmartRoll/SmartRollSensorService;II)V

    .line 636
    return-void
.end method

.method private onMsgCoolDown()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->waitForCoolDown()V

    .line 628
    return-void
.end method

.method private onMsgReset()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 497
    return-void
.end method

.method private prepareChangeRtl(II)V
    .locals 3
    .parameter "fromAxis"
    .parameter "toAxis"

    .prologue
    .line 663
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 666
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 667
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 668
    return-void
.end method

.method private resetInMs(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->removeMessages(I)V

    .line 640
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->removeMessages(I)V

    .line 642
    invoke-virtual {p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 643
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 644
    return-void
.end method

.method private waitForCoolDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 654
    const/16 v1, 0x64

    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 656
    invoke-virtual {p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->removeMessages(I)V

    .line 658
    invoke-virtual {p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 659
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 447
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 448
    .local v0, arg:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 449
    .local v2, timestamp:I
    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    .line 451
    .local v1, oldStatus:I
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 479
    const-string v3, "SmartRollService"

    const-string v4, "handleMessage : unknown message"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    if-nez v1, :cond_0

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 486
    const-string v3, "SmartRollService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage : edge detected when mStableHighAccAxis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    const-string v3, "SmartRollService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", before : mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", after : mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 454
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgReset()V

    goto :goto_0

    .line 459
    :sswitch_1
    iput v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->mStableHighAccAxis:I

    goto :goto_0

    .line 464
    :sswitch_2
    invoke-direct {p0, v0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgAcceChange(II)V

    goto :goto_0

    .line 469
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgChangeRtl(II)V

    goto :goto_0

    .line 474
    :sswitch_4
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->onMsgCoolDown()V

    goto :goto_0

    .line 451
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
