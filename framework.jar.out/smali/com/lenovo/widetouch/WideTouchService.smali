.class public Lcom/lenovo/widetouch/WideTouchService;
.super Ljava/lang/Object;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;,
        Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;,
        Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENTER_WIDE_TOUCH_DELAY:J = 0x12cL

.field private static final ENTER_WIDE_TOUCH_DEVIATION:J = 0x32L

.field private static final GESTURE_MAX_TIME_MS:I = 0x4e20

.field private static final GESTURE_MOVE_MAX_WIDTH:I = 0x1f4

.field private static final GESTURE_MOVE_MIN_WIDTH:I = 0x64

.field private static final HIDE_WIDE_TOUCH_WINDOW_DELAY:J = 0xc8L

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_WIDE_TOUCH_WINDOW:I = 0x4

.field private static final MSG_SHOW_WIDE_TOUCH_WINDOW:I = 0x3

.field public static final PERSIST_INPUT_AREA_SETTING:Ljava/lang/String; = "persist.sys.input.area"

.field private static final TAG:Ljava/lang/String; = "WideTouchService"

.field private static final WIDE_TOUCH_IMPROVED_AREA:I = 0x2e


# instance fields
.field mConfigurationReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mIsEnabled:Z

.field private mIsInWideTouchMode:Z

.field private mIsKeyguardShowing:Z

.field private mIsWideTouchWindowShowed:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

.field mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

.field private mTouchDownTime:J

.field private mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

.field private mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowHeight:I

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mWindowManagerService:Landroid/view/IWindowManager;

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 6
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsWideTouchWindowShowed:Z

    .line 83
    iput-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    .line 84
    iput-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsKeyguardShowing:Z

    .line 86
    iput-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    .line 142
    new-instance v2, Lcom/lenovo/widetouch/WideTouchService$1;

    invoke-direct {v2, p0}, Lcom/lenovo/widetouch/WideTouchService$1;-><init>(Lcom/lenovo/widetouch/WideTouchService;)V

    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    const-string v2, "WideTouchService"

    const-string v3, "FloatWindowService onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    .line 320
    iput-object p3, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 322
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    .line 323
    iput-object p2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 324
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 326
    new-instance v2, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;-><init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V

    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    .line 329
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 331
    .local v1, outSize:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 332
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    .line 333
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    .line 335
    const-string v2, "WideTouchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWindowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWindowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 344
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 345
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 346
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 347
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 352
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 357
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 358
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 360
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "WideTouchService"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->realShowWideTouchWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->realHideWideTouchWindow()V

    return-void
.end method

.method private disablePointerLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    .line 431
    const-string v0, "WideTouchService"

    const-string v1, "disablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->dispose()V

    .line 436
    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 441
    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 445
    :cond_3
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/widetouch/WideTouchService;->setInputArea(Ljava/lang/String;)V

    .line 448
    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->scheduleHideWideTouchWindow()V

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 3

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    .line 386
    const-string v0, "WideTouchService"

    const-string v1, "enablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "PointerLocationView"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 391
    new-instance v0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;-><init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    .line 396
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->setInputAreaToSetting()V

    goto :goto_0
.end method

.method private realHideWideTouchWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    const-string v0, "WideTouchService"

    const-string/jumbo v1, "realHideWideTouchWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsWideTouchWindowShowed:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 495
    iput-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsWideTouchWindowShowed:Z

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->setInputAreaToSetting()V

    .line 502
    iput-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    .line 503
    return-void
.end method

.method private realShowWideTouchWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 471
    const-string v0, "WideTouchService"

    const-string/jumbo v1, "realShowWideTouchWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsWideTouchWindowShowed:Z

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iput-boolean v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsWideTouchWindowShowed:Z

    .line 482
    :cond_0
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/widetouch/WideTouchService;->setInputArea(Ljava/lang/String;)V

    .line 485
    iput-boolean v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    .line 486
    return-void
.end method

.method private scheduleHideWideTouchWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 463
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->removeMessages(I)V

    .line 464
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-virtual {v0, v3}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 468
    return-void
.end method

.method private scheduleShowWideTouchWindow()V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->removeMessages(I)V

    .line 458
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 459
    return-void
.end method

.method private setInputArea(Ljava/lang/String;)V
    .locals 3
    .parameter "areaSetting"

    .prologue
    .line 416
    const-string v0, "WideTouchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInputArea :areaSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string/jumbo v0, "persist.sys.input.area"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private setInputAreaToSetting()V
    .locals 4

    .prologue
    .line 403
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 404
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v2, "wide_touch_area_setting"

    const/16 v3, 0xaa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 408
    .local v0, areaSetting:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/widetouch/WideTouchService;->setInputArea(Ljava/lang/String;)V

    .line 409
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->sendEmptyMessage(I)Z

    .line 423
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->sendEmptyMessage(I)Z

    .line 378
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 301
    .local v0, outSize:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 302
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    .line 303
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    .line 305
    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchService;->updateSettings()V

    .line 306
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .prologue
    .line 364
    const-string v1, "WideTouchService"

    const-string/jumbo v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x3040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widetouch/WideTouchWindow;

    iput-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    .line 370
    new-instance v0, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;-><init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/os/Handler;)V

    .line 373
    .local v0, settingsObserver:Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;
    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;->observe()V

    .line 374
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "paramMotionEvent"

    .prologue
    const/high16 v7, 0x4248

    const/4 v9, 0x3

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 185
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 186
    .local v2, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 187
    .local v4, rawY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXW()F

    move-result v3

    .line 188
    .local v3, rawXW:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYW()F

    move-result v5

    .line 191
    .local v5, rawYW:F
    const/16 v6, 0xc

    if-eq v0, v6, :cond_0

    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v6, :cond_1

    .line 193
    :cond_0
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    if-eqz v6, :cond_1

    .line 194
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mWideTouchWindow:Lcom/lenovo/widetouch/WideTouchWindow;

    invoke-virtual {v6, p1}, Lcom/lenovo/widetouch/WideTouchWindow;->onInputTouchEvent(Landroid/view/MotionEvent;)Z

    .line 198
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 291
    :cond_2
    :goto_0
    :pswitch_0
    const/4 v6, 0x0

    return v6

    .line 202
    :pswitch_1
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v6}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsKeyguardShowing:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsKeyguardShowing:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-virtual {v6, v9}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 211
    const-string v6, "WideTouchService"

    const-string v7, "Wide touch mode detect!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mDownX:F

    .line 214
    iput v4, p0, Lcom/lenovo/widetouch/WideTouchService;->mDownY:F

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mTouchDownTime:J

    .line 218
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->scheduleShowWideTouchWindow()V

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Landroid/os/RemoteException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsKeyguardShowing:Z

    goto :goto_1

    .line 234
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_2
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-virtual {v6, v9}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 235
    iget v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mDownX:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mDownY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 237
    :cond_3
    const-string v6, "WideTouchService"

    const-string v7, "Move before enter wide touch mode, abort"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-virtual {v6, v9}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->removeMessages(I)V

    goto :goto_0

    .line 242
    :cond_4
    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v6, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->scheduleHideWideTouchWindow()V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v6, :cond_5

    .line 251
    const-string v6, "WideTouchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AREA_UP: rawXW = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rawYW = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_5
    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v6, :cond_6

    .line 256
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->scheduleHideWideTouchWindow()V

    .line 260
    :cond_6
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-virtual {v6, v9}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 272
    :pswitch_4
    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v6, :cond_7

    .line 273
    const-string v6, "WideTouchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CANCEL: rawXW = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rawYW = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_7
    iget-boolean v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsInWideTouchMode:Z

    if-eqz v6, :cond_8

    .line 277
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->scheduleHideWideTouchWindow()V

    .line 281
    :cond_8
    iget-object v6, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-virtual {v6, v9}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 507
    iget-object v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 509
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v3, "wide_touch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 514
    .local v0, newSetting:Z
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    if-le v2, v3, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchService;->enable()V

    .line 519
    :goto_1
    return-void

    .end local v0           #newSetting:Z
    :cond_0
    move v0, v2

    .line 509
    goto :goto_0

    .line 517
    .restart local v0       #newSetting:Z
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchService;->disable()V

    goto :goto_1
.end method
