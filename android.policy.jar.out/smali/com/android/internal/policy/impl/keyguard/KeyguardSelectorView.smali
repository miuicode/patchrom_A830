.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.super Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final INCOMING_INDICATOR_ON_LOCKSCREEN:Ljava/lang/String; = "incoming_indicator_on_lockscreen"

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "KeyguardSelectorView"

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

.field private mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mLenovoGlowPadView:Landroid/view/View;

.field private mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

.field mLenovoMultiWaveViewOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

.field mLenovoOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiGlowView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiGlowView$OnTriggerListener;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveViewOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v1, :cond_0

    .line 351
    const-class v1, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTargets()V
    .locals 18

    .prologue
    .line 563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    .line 564
    .local v3, currentUserHandle:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 565
    .local v7, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    .line 566
    .local v6, disabledFeatures:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v14

    if-eqz v14, :cond_4

    and-int/lit8 v14, v6, 0x2

    if-eqz v14, :cond_4

    const/4 v13, 0x1

    .line 568
    .local v13, secureCameraDisabled:Z
    :goto_0
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v13, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 570
    .local v1, cameraDisabledByAdmin:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    .line 571
    .local v10, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v5

    .line 574
    .local v5, disabledBySimState:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v15, "ic_lockscreen_camera"

    const-string v16, "drawable"

    const v17, 0x10802df

    invoke-static/range {v14 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 577
    .local v9, idCameraDrw:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v15, "ic_action_assist_generic"

    const-string v16, "drawable"

    const v17, 0x1080294

    invoke-static/range {v14 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 581
    .local v8, idAssistDrw:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v2

    .line 587
    .local v2, cameraTargetPresent:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v12

    .line 593
    .local v12, searchTargetPresent:Z
    if-eqz v1, :cond_6

    .line 594
    const-string v14, "SecuritySelectorView"

    const-string v15, "Camera disabled by Device Policy"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "user_setup_complete"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v4, 0x1

    .line 603
    .local v4, currentUserSetup:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v15, "search"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/16 v16, -0x2

    invoke-virtual/range {v14 .. v16}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_8

    const/4 v11, 0x1

    .line 606
    .local v11, searchActionAvailable:Z
    :goto_4
    if-nez v1, :cond_2

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    if-nez v4, :cond_9

    :cond_2
    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    .line 608
    if-nez v5, :cond_3

    if-eqz v11, :cond_3

    if-eqz v12, :cond_3

    if-nez v4, :cond_a

    :cond_3
    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateResources()V

    .line 611
    return-void

    .line 566
    .end local v1           #cameraDisabledByAdmin:Z
    .end local v2           #cameraTargetPresent:Z
    .end local v4           #currentUserSetup:Z
    .end local v5           #disabledBySimState:Z
    .end local v8           #idAssistDrw:I
    .end local v9           #idCameraDrw:I
    .end local v10           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v11           #searchActionAvailable:Z
    .end local v12           #searchTargetPresent:Z
    .end local v13           #secureCameraDisabled:Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 568
    .restart local v13       #secureCameraDisabled:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 595
    .restart local v1       #cameraDisabledByAdmin:Z
    .restart local v2       #cameraTargetPresent:Z
    .restart local v5       #disabledBySimState:Z
    .restart local v8       #idAssistDrw:I
    .restart local v9       #idCameraDrw:I
    .restart local v10       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .restart local v12       #searchTargetPresent:Z
    :cond_6
    if-eqz v5, :cond_1

    .line 596
    const-string v14, "SecuritySelectorView"

    const-string v15, "Camera disabled by Sim State"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 598
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 603
    .restart local v4       #currentUserSetup:Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 606
    .restart local v11       #searchActionAvailable:Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 608
    :cond_a
    const/4 v14, 0x0

    goto :goto_6
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 686
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 688
    return-void
.end method

.method public getActivityLauncher()Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getGlowPadView()Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLenovoMultiWaveView()Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    return-object v0
.end method

.method public getMultiGlowPadView()Lcom/android/internal/widget/multiwaveview/MultiGlowView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 780
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetPresent(I)Z
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-nez v2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v1

    .line 534
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isThemeProject()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isUseDefault()Z

    move-result v2

    if-nez v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getTargetPosition(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->getTargetPosition(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiGlowView$OnTriggerListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->onFinishInflate()V

    .line 367
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v11, "glow_pad_view"

    const-string v12, "id"

    const v13, 0x10202b1

    invoke-static {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, glowPadView:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, contextClientOld:Landroid/content/Context;
    instance-of v10, v4, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;

    if-eqz v10, :cond_3

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/LenovoStaticUtility1;->getKeyguardClientContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .local v1, contextClient:Landroid/content/Context;
    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/LenovoStaticUtility1;->replaceUnlockView(Landroid/content/Context;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .local v9, viewClient:Landroid/view/View;
    if-eqz v9, :cond_0

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    instance-of v10, v4, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;

    if-eqz v10, :cond_5

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;

    .end local v4           #glowPadView:Landroid/view/View;
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;)V

    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiGlowView$OnTriggerListener;

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiGlowView$OnTriggerListener;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v11, "keyguard_selector_view_frame"

    const-string v12, "id"

    const v13, 0x10202fd

    invoke-static {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v3

    .local v3, dmLocked:Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v10, :cond_a

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v3, :cond_9

    const/4 v10, 0x4

    :goto_3
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->setVisibility(I)V

    :goto_4
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "incoming_indicator_on_lockscreen"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const-string v10, "SecuritySelectorView"

    const-string v11, "constructor infalte newevent feature related views"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v10, p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->setLockScreenView(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V

    const v10, 0x10202fe

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 478
    .local v7, unLockPanel:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 479
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x2070011

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 480
    const v10, 0x20e0043

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 482
    .local v8, unReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
    if-eqz v3, :cond_e

    const/4 v10, 0x4

    :goto_5
    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->setVisibility(I)V

    .line 483
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getQueryBaseTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->updateQueryBaseTimeAndRefreshUnReadNumber(J)V

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v10, v8}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->syncUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #unLockPanel:Landroid/view/ViewGroup;
    .end local v8           #unReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
    :cond_2
    :goto_6
    return-void

    .line 381
    .end local v0           #bouncerFrameView:Landroid/view/View;
    .end local v1           #contextClient:Landroid/content/Context;
    .end local v3           #dmLocked:Z
    .end local v9           #viewClient:Landroid/view/View;
    .restart local v4       #glowPadView:Landroid/view/View;
    :cond_3
    instance-of v10, v4, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v10, :cond_4

    move-object v10, v4

    check-cast v10, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    move-object v10, v4

    check-cast v10, Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    goto/16 :goto_0

    .restart local v1       #contextClient:Landroid/content/Context;
    .restart local v9       #viewClient:Landroid/view/View;
    :cond_5
    instance-of v10, v4, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v10, :cond_6

    .line 410
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    .end local v4           #glowPadView:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;)V

    goto/16 :goto_1

    .line 414
    .restart local v4       #glowPadView:Landroid/view/View;
    :cond_6
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    .end local v4           #glowPadView:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;)V

    goto/16 :goto_1

    .line 422
    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v10, :cond_8

    .line 423
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveViewOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;)V

    goto/16 :goto_2

    .line 427
    :cond_8
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    check-cast v10, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;

    invoke-interface {v10, v11}, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;)V

    goto/16 :goto_2

    .line 453
    .restart local v0       #bouncerFrameView:Landroid/view/View;
    .restart local v3       #dmLocked:Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 456
    :cond_a
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v10, :cond_c

    .line 457
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v3, :cond_b

    const/4 v10, 0x4

    :goto_7
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    const/4 v10, 0x0

    goto :goto_7

    .line 461
    :cond_c
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    if-eqz v3, :cond_d

    const/4 v10, 0x4

    :goto_8
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    const/4 v10, 0x0

    goto :goto_8

    .line 482
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v7       #unLockPanel:Landroid/view/ViewGroup;
    .restart local v8       #unReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 491
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #unLockPanel:Landroid/view/ViewGroup;
    .end local v8           #unReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
    :cond_f
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v10, :cond_11

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "incoming_indicator_on_lockscreen"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 493
    const-string v10, "SecuritySelectorView"

    const-string v11, "constructor infalte newevent feature related views"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v10, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setLockScreenView(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V

    .line 495
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v11, "keyguard_unlock_panel"

    const-string v12, "id"

    const v13, 0x10202fe

    invoke-static {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 497
    .restart local v7       #unLockPanel:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 499
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v11, "keyguard_unread_event_view"

    const-string v12, "layout"

    const v13, 0x2070011

    invoke-static {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 501
    .local v6, layoutId:I
    const/4 v10, 0x1

    invoke-virtual {v5, v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 503
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v11, "unread_event_view"

    const-string v12, "id"

    const v13, 0x20e0043

    invoke-static {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 506
    .restart local v8       #unReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
    if-eqz v3, :cond_10

    const/4 v10, 0x4

    :goto_9
    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->setVisibility(I)V

    .line 507
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getQueryBaseTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->updateQueryBaseTimeAndRefreshUnReadNumber(J)V

    .line 509
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    .line 510
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v10, v8}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->syncUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    goto/16 :goto_6

    .line 506
    :cond_10
    const/4 v10, 0x0

    goto :goto_9

    .line 515
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #layoutId:I
    .end local v7           #unLockPanel:Landroid/view/ViewGroup;
    .end local v8           #unReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
    :cond_11
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    goto/16 :goto_6
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 732
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInfoCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPortraitEnable(Z)Z

    .line 737
    :cond_0
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hdmiPortraitEnable disable done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateClipChildren(Z)V

    .line 744
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 749
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInfoCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPortraitEnable(Z)Z

    .line 754
    :cond_0
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hdmiPortraitEnable enable done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateClipChildren(Z)V

    .line 761
    :cond_1
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateKeyguardLayerVisibility(Z)V

    .line 823
    :cond_0
    return-void

    .line 821
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->reset(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->reset(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoGlowPadView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewInterface;->reset(Z)V

    goto :goto_0
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 522
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateKeyguardLayerVisibility(Z)V

    .line 694
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 698
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 773
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiGlowPadView:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->ping()V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 13

    .prologue
    const v12, 0x10802df

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v11, 0x1080294

    .line 618
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_0

    .line 619
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v9, "search"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v10, -0x2

    invoke-virtual {v6, v9, v10}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v4

    .line 621
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 625
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 627
    .local v0, component:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    if-eqz v6, :cond_2

    .line 629
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    const-string v9, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v6, v0, v9, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v5

    .line 633
    .local v5, replaced:Z
    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    const-string v9, "com.android.systemui.action_assist_icon"

    invoke-virtual {v6, v0, v9, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 636
    const-string v6, "SecuritySelectorView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t grab icon from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #replaced:Z
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    if-eqz v6, :cond_5

    .line 660
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v12, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setEnableTarget(IZ)V

    .line 662
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v9, :cond_4

    :goto_2
    invoke-virtual {v6, v11, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setEnableTarget(IZ)V

    .line 680
    :cond_1
    :goto_3
    return-void

    .line 641
    .restart local v0       #component:Landroid/content/ComponentName;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v6, :cond_0

    .line 642
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v9, "ic_action_assist_generic"

    const-string v10, "drawable"

    invoke-static {v6, v9, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 644
    .local v1, idAssistDr:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const-string v9, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v6, v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v5

    .line 647
    .restart local v5       #replaced:Z
    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    const-string v9, "com.android.systemui.action_assist_icon"

    invoke-virtual {v6, v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 649
    const-string v6, "SecuritySelectorView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t grab icon from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #idAssistDr:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #replaced:Z
    :cond_3
    move v6, v8

    .line 660
    goto :goto_1

    :cond_4
    move v7, v8

    .line 662
    goto :goto_2

    .line 667
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    if-eqz v6, :cond_1

    .line 668
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v9, "ic_lockscreen_camera"

    const-string v10, "drawable"

    invoke-static {v6, v9, v10, v12}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 671
    .local v3, idCameraDrw:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v9, "ic_action_assist_generic"

    const-string v10, "drawable"

    invoke-static {v6, v9, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 673
    .local v2, idAssistDrw:I
    const-string v6, "SecuritySelectorView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LenovoMultiWaveViewMethods, updateResources() idCameraDrw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mCameraDisabled = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v6, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v9, v3, v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setEnableTarget(IZ)V

    .line 676
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLenovoMultiWaveView:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v9, :cond_7

    :goto_5
    invoke-virtual {v6, v2, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setEnableTarget(IZ)V

    goto/16 :goto_3

    :cond_6
    move v6, v8

    .line 675
    goto :goto_4

    :cond_7
    move v7, v8

    .line 676
    goto :goto_5
.end method
