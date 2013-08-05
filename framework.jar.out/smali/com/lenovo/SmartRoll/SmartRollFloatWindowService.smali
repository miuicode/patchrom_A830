.class public Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;
.super Ljava/lang/Object;
.source "SmartRollFloatWindowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;,
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;,
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;,
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final FLOAT_WINDOW_WIDTH:I = 0x14

.field private static final GESTURE_DOWN_MAX_X:I = 0x14

.field private static final GESTURE_MAX_TIME_MS:I = 0x15e

.field private static final GESTURE_MAX_WIDTH:I = 0xfa

.field private static final GESTURE_MIN_WIDTH:I = 0x14

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final SUPPORT_SHOW_WINDOW:Z = true

.field private static final TAG:Ljava/lang/String; = "SmartRollFloatWindowService"


# instance fields
.field mConfigurationReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mIsDownInWindow:Z

.field private mIsEnabled:Z

.field private mIsPaused:Z

.field private mIsSystemReady:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftFloatLayout:Landroid/view/View;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

.field mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

.field private mRightFloatLayout:Landroid/view/View;

.field private mTouchDownTime:J

.field private mWindowHeight:I

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    .line 65
    iput-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    .line 67
    iput-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsSystemReady:Z

    .line 116
    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;

    invoke-direct {v2, p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    const-string v2, "SmartRollFloatWindowService"

    const-string v3, "FloatWindowService onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 278
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    .line 280
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 282
    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    .line 285
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 287
    .local v1, outSize:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 288
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    .line 289
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    .line 291
    const-string v2, "SmartRollFloatWindowService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWindowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWindowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 300
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 302
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x14

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 303
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 304
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 307
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->disablePointerLocation()V

    return-void
.end method

.method private changeRtl(II)V
    .locals 3
    .parameter "fromAxis"
    .parameter "toAxis"

    .prologue
    .line 398
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 402
    .local v1, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->changeTopAppSmartRoll(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private disablePointerLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    .line 375
    const-string v0, "SmartRollFloatWindowService"

    const-string v1, "disablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;->dispose()V

    .line 380
    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 385
    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 3

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    .line 339
    const-string v0, "SmartRollFloatWindowService"

    const-string v1, "enablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x13

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 343
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SmartRollFloatWindowService_LEFT"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 351
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SmartRollFloatWindowService_RIGHT"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "PointerLocationView"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 360
    new-instance v0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->sendEmptyMessage(I)Z

    .line 367
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->sendEmptyMessage(I)Z

    .line 331
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 259
    .local v0, outSize:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 260
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    .line 261
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    .line 263
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 264
    return-void
.end method

.method public onSystemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x3040001

    .line 311
    const-string v1, "SmartRollFloatWindowService"

    const-string/jumbo v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsSystemReady:Z

    .line 316
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    .line 317
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    .line 319
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;

    invoke-direct {v2, p0, p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;

    invoke-direct {v2, p0, p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    new-instance v0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Landroid/os/Handler;)V

    .line 326
    .local v0, settingsObserver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;
    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;->observe()V

    .line 327
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "paramMotionEvent"

    .prologue
    const/4 v8, 0x3

    const/high16 v5, 0x41a0

    const/4 v7, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 176
    .local v1, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 178
    .local v2, rawY:F
    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 184
    :pswitch_1
    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    .line 185
    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownY:F

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mTouchDownTime:J

    .line 189
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    cmpg-float v3, v3, v5

    if-lez v3, :cond_1

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 191
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    .line 197
    :goto_1
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    if-le v3, v4, :cond_2

    .line 198
    iput-boolean v7, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    .line 201
    :cond_2
    const-string v3, "SmartRollFloatWindowService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsDownInWindow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_3
    iput-boolean v7, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    goto :goto_1

    .line 209
    :pswitch_2
    iget-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    if-eqz v3, :cond_0

    .line 211
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    .line 213
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "move too short"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_4
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x437a

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 216
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "move too long"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_5
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 219
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "not x direction"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mTouchDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x15e

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 222
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "time too long"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    :cond_7
    const-string v3, "SmartRollFloatWindowService"

    const-string v4, "SmartRoll gesture recogonized!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 228
    const/4 v3, 0x2

    invoke-direct {p0, v3, v8}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->changeRtl(II)V

    goto/16 :goto_0

    .line 231
    :cond_8
    const/4 v3, -0x2

    invoke-direct {p0, v3, v8}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->changeRtl(II)V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pauseSmartRoll()V
    .locals 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 435
    const-string v0, "SmartRollFloatWindowService"

    const-string/jumbo v1, "pauseSmartRoll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    .line 438
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 441
    :cond_0
    return-void
.end method

.method public resumeSmartRoll()V
    .locals 2

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "SmartRollFloatWindowService"

    const-string/jumbo v1, "pauseSmartRoll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    .line 451
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 453
    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 411
    iget-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsSystemReady:Z

    if-nez v3, :cond_0

    .line 427
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 417
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v3, "smart_roll"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 422
    .local v0, newSetting:Z
    :goto_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    if-le v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    if-nez v2, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->enable()V

    goto :goto_0

    .end local v0           #newSetting:Z
    :cond_1
    move v0, v2

    .line 417
    goto :goto_1

    .line 425
    .restart local v0       #newSetting:Z
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->disable()V

    goto :goto_0
.end method
