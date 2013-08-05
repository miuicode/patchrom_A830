.class public Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;
.super Landroid/view/View;
.source "LenovoMultiWaveView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$SimpleOnGestureListener;,
        Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;,
        Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;,
        Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;,
        Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_TOUCH_STLOP:I = 0x3

.field private static final CALL_LOG_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CALL_LOG_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final DEBUG:Z = true

.field private static final DRAG_ANIMATION_DELAY:I = 0x32

.field private static final DRAG_ANIMATION_DURATION:I = 0x15e

.field private static final DRAG_BACK_ANIMATION_DELAY:I = 0x14

.field private static final DRAG_BACK_ANIMATION_DURATION:I = 0xc8

.field private static final EMAIL_CLASS_NAME:Ljava/lang/String; = "com.android.email.activity.Welcome"

.field private static final EMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final LENOVO_CALL_LOG_CLASS_NAME:Ljava/lang/String; = "com.lenovo.ideafriend.alias.DialtactsActivity"

.field private static final LENOVO_CALL_LOG_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.ideafriend"

.field private static final LENOVO_MMS_CLASS_NAME:Ljava/lang/String; = "com.lenovo.ideafriend.alias.MmsActivity"

.field private static final LENOVO_MMS_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.ideafriend"

.field private static final MMS_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LenovoMultiWaveView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final TOUCH_ANIM_BACK:I = 0x6

.field private static final TOUCH_DRAGGING:I = 0x3

.field private static final TOUCH_END:I = 0x7

.field private static final TOUCH_FLING:I = 0x4

.field private static final TOUCH_HANDLE_ANIM:I = 0x1

.field private static final TOUCH_INIT:I = 0x0

.field private static final TOUCH_INTERSECT:I = 0x2

.field private static final TOUCH_MOVE_INTERSECT_ANIM_THRESHOLD:F = 10.0f

.field private static final TOUCH_MOVE_TRIGGER_THRESHOLD:I = 0x3

.field private static final TOUCH_TRIGGER:I = 0x5

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActionCancel:Z

.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCheckForInterSectAnimation:Ljava/lang/Runnable;

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFakeHandleTargetX:F

.field private mCurrentFakeHandleTargetY:F

.field private mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDoingIntersectAnim:Z

.field private mDragSnapMargin:F

.field private mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

.field private mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

.field private mDragViewDoingTouch:Z

.field private mDragViewState:I

.field private mDragging:Z

.field private mFakeHandleAnimating:Z

.field private mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

.field private mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleRealX:F

.field private mFakeHandleRealY:F

.field private mFeedbackCount:I

.field private mFirstItemOffset:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlowPadViewState:I

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

.field private mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mHandlePosition:Landroid/graphics/Point;

.field private final mHistoryTouchXY:[I

.field private mHorizontalInset:I

.field private mInitDownMotionLocationX:I

.field private mInitDownMotionLocationY:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mLayoutListenerSet:Z

.field private mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

.field private mMagneticTargets:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewEventViewInLockScreenX:I

.field private mNewEventViewInLockScreenY:I

.field private final mNewEventViewLocationInLockScreen:[I

.field private mNewTargetResources:I

.field private mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private final mOwnerDragViewOffsets:[I

.field private final mOwnerLocationInLockScreen:[I

.field private final mOwnerNewEventViewOffset:[I

.field private final mOwnerRawLocation:[I

.field private final mOwnerRecepientOffsets:[I

.field private mPendingDragViewState:I

.field private mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

.field private final mPoint:Landroid/graphics/Point;

.field private mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mShouldDoIntersectAnim:Z

.field private mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$SimpleOnGestureListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTapTimeOut:Z

.field private mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTouchDropped:Z

.field private mTouchIntercepted:Z

.field private mTouchMoveIntersectAnimThreshold:F

.field private mTouchMoveTriggerThreshold:I

.field private mTouchRecepient:Landroid/view/View;

.field private final mTouchRecepientRawLocation:[I

.field private mTouchSlop:I

.field private mTouchSlopSqure:I

.field private mTouchTriggered:Z

.field private mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 444
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    sget-object v13, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 135
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 136
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 137
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 139
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 141
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 142
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 150
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    .line 151
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrationDuration:I

    .line 153
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    .line 159
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    .line 162
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    .line 163
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    .line 164
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFirstItemOffset:F

    .line 165
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMagneticTargets:Z

    .line 172
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActionCancel:Z

    .line 213
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 220
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 231
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 239
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 255
    const/16 v13, 0x30

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGravity:I

    .line 256
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInitialLayout:Z

    .line 277
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 294
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepientRawLocation:[I

    .line 297
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRawLocation:[I

    .line 301
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRecepientOffsets:[I

    .line 303
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewLocationInLockScreen:[I

    .line 305
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    .line 307
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    .line 315
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTempXY:[I

    .line 318
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    .line 322
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHistoryTouchXY:[I

    .line 329
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    .line 333
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$IntersectAnimationRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCheckForInterSectAnimation:Ljava/lang/Runnable;

    .line 336
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 343
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTempRect:Landroid/graphics/Rect;

    .line 346
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerDragViewOffsets:[I

    .line 354
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 356
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCanvas:Landroid/graphics/Canvas;

    .line 364
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapTimeOut:Z

    .line 409
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    .line 2087
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 2161
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$9;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2167
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$10;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 2174
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 2422
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 447
    .local v11, res:Landroid/content/res/Resources;
    sget-object v13, Lcom/android/internal/R$styleable;->LenovoMultiWaveView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 448
    .local v2, a:Landroid/content/res/TypedArray;
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    .line 449
    const/16 v13, 0xa

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    .line 450
    const/16 v13, 0xe

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFirstItemOffset:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFirstItemOffset:F

    .line 453
    const/16 v13, 0x9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrationDuration:I

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrationDuration:I

    .line 455
    const/16 v13, 0xb

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    .line 457
    const/16 v13, 0x10

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAllowScaling:Z

    .line 458
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 459
    .local v5, handle:Landroid/util/TypedValue;
    new-instance v14, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v5, :cond_0

    iget v13, v5, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-direct {v14, v11, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v14, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapRadius:F

    .line 462
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v14

    invoke-direct {v13, v11, v14}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 464
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAlwaysTrackFinger:Z

    .line 467
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMagneticTargets:Z

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMagneticTargets:Z

    .line 468
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInnerRadius:F

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInnerRadius:F

    .line 469
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v10

    .line 470
    .local v10, pointId:I
    if-eqz v10, :cond_1

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 474
    .local v9, pointDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 475
    .local v8, outValue:Landroid/util/TypedValue;
    const/16 v13, 0xd

    invoke-virtual {v2, v13, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 476
    iget v13, v8, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 477
    .local v4, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 478
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 479
    .local v3, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    const/4 v7, 0x0

    .local v7, k:I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    if-ge v7, v13, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 459
    .end local v3           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v4           #chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    .end local v6           #i:I
    .end local v7           #k:I
    .end local v8           #outValue:Landroid/util/TypedValue;
    .end local v9           #pointDrawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #pointId:I
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 470
    .restart local v10       #pointId:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 480
    .restart local v3       #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .restart local v4       #chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    .restart local v6       #i:I
    .restart local v7       #k:I
    .restart local v8       #outValue:Landroid/util/TypedValue;
    .restart local v9       #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v13, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    goto :goto_4

    .line 477
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 486
    .end local v3           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v4           #chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    .end local v6           #i:I
    .end local v7           #k:I
    :cond_4
    const/4 v13, 0x4

    invoke-virtual {v2, v13, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 487
    iget v13, v8, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->internalSetTargetResources(I)V

    .line 489
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 490
    :cond_6
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must specify at least one target drawable"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 494
    :cond_7
    const/4 v13, 0x2

    invoke-virtual {v2, v13, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 495
    iget v12, v8, Landroid/util/TypedValue;->resourceId:I

    .line 496
    .local v12, resourceId:I
    if-nez v12, :cond_8

    .line 497
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must specify target descriptions"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 499
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 503
    .end local v12           #resourceId:I
    :cond_9
    const/4 v13, 0x3

    invoke-virtual {v2, v13, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 504
    iget v12, v8, Landroid/util/TypedValue;->resourceId:I

    .line 505
    .restart local v12       #resourceId:I
    if-nez v12, :cond_a

    .line 506
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Must specify direction descriptions"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 508
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 511
    .end local v12           #resourceId:I
    :cond_b
    const/4 v13, 0x0

    const/16 v14, 0x30

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGravity:I

    .line 513
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 515
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrationDuration:I

    if-lez v13, :cond_c

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setVibrateEnabled(Z)V

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->assignDefaultsIfNeeded()V

    .line 520
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-direct {v13, v9}, Lcom/android/internal/policy/impl/keyguard/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInnerRadius:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->makePointCloud(FF)V

    .line 525
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 526
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    .line 528
    return-void

    .line 515
    :cond_c
    const/4 v13, 0x0

    goto :goto_5
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->refreshPositions()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;IIIFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mShouldDoIntersectAnim:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapTimeOut:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapTimeOut:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private activateHandle(II)V
    .locals 10
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v9, 0x1

    const v6, 0x3ecccccd

    const/high16 v8, 0x3f80

    const/4 v5, 0x0

    .line 2050
    const-string v1, "LenovoMultiWaveView"

    const-string v2, "activateHandle"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-nez v1, :cond_0

    .line 2054
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 2056
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ic_lockscreen_fake_handle"

    const-string v3, "drawable"

    const v4, 0x2020062

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2058
    .local v0, idFakeHandle:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 2062
    .end local v0           #idFakeHandle:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 2063
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 2064
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 2065
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 2066
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 2067
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    .line 2068
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    .line 2070
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2071
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 2072
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 2073
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 2075
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 2076
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    div-int/lit8 v3, p1, 0x2

    int-to-long v3, v3

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ease"

    aput-object v7, v5, v6

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string v7, "delay"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "scaleX"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "scaleY"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "alpha"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "onUpdate"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "onComplete"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2084
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 2085
    return-void

    .line 2060
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 693
    return-void
.end method

.method private animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "x"
    .parameter "y"
    .parameter "onCompleteListener"

    .prologue
    .line 2031
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animDragView duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    int-to-long v2, p1

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "translationX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "translationY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    aput-object p5, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2042
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 2046
    :goto_0
    return-void

    .line 2044
    :cond_0
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "animDragView mDragView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private animHandlerBack(II)V
    .locals 6
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 2391
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "animHandlerBack"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2393
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateHandle(II)V

    .line 2394
    return-void
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1724
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1725
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1726
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1727
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1730
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1731
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1734
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->announceText(Ljava/lang/String;)V

    .line 1725
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1737
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1740
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1741
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->sendAccessibilityEvent(I)V

    .line 1742
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1743
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1440
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    .line 1443
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1444
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    .line 1448
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1449
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInnerRadius:F

    .line 1452
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1455
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getLayoutDirection()I

    move-result v1

    .line 1456
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1458
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1467
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHorizontalInset:I

    .line 1470
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1479
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVerticalInset:I

    .line 1482
    :goto_1
    return-void

    .line 1460
    :pswitch_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHorizontalInset:I

    goto :goto_0

    .line 1463
    :pswitch_2
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHorizontalInset:I

    goto :goto_0

    .line 1472
    :sswitch_0
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVerticalInset:I

    goto :goto_1

    .line 1475
    :sswitch_1
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVerticalInset:I

    goto :goto_1

    .line 1458
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1470
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V
    .locals 5
    .parameter "newEventView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2310
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewLocationInLockScreen:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 2312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 2313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 2314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 2315
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeOwnerNewEventViewMotionOffset mOwnerLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewParentLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_0
    return-void
.end method

.method private computeScaleFactor(IIII)F
    .locals 7
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "actualWidth"
    .parameter "actualHeight"

    .prologue
    const/high16 v4, 0x3f80

    .line 1492
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAllowScaling:Z

    if-nez v5, :cond_0

    .line 1528
    :goto_0
    return v4

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getLayoutDirection()I

    move-result v1

    .line 1495
    .local v1, layoutDirection:I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1497
    .local v0, absoluteGravity:I
    const/high16 v2, 0x3f80

    .line 1498
    .local v2, scaleX:F
    const/high16 v3, 0x3f80

    .line 1504
    .local v3, scaleY:F
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_0

    .line 1510
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1511
    int-to-float v5, p3

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1516
    :cond_1
    :pswitch_1
    and-int/lit8 v5, v0, 0x70

    sparse-switch v5, :sswitch_data_0

    .line 1522
    if-le p2, p4, :cond_2

    .line 1523
    int-to-float v5, p4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1528
    :cond_2
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private converDragViewStateCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 2666
    packed-switch p1, :pswitch_data_0

    .line 2684
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2668
    :pswitch_0
    const-string v0, "TOUCH_INIT"

    goto :goto_0

    .line 2670
    :pswitch_1
    const-string v0, "TOUCH_HANDLE_ANIM"

    goto :goto_0

    .line 2672
    :pswitch_2
    const-string v0, "TOUCH_INTERSECT"

    goto :goto_0

    .line 2674
    :pswitch_3
    const-string v0, "TOUCH_DRAGGING"

    goto :goto_0

    .line 2676
    :pswitch_4
    const-string v0, "TOUCH_FLING"

    goto :goto_0

    .line 2678
    :pswitch_5
    const-string v0, "TOUCH_TRIGGER"

    goto :goto_0

    .line 2680
    :pswitch_6
    const-string v0, "TOUCH_ANIM_BACK"

    goto :goto_0

    .line 2682
    :pswitch_7
    const-string v0, "TOUCH_END"

    goto :goto_0

    .line 2666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private deactivateHandle(II)V
    .locals 8
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v7, 0x0

    .line 2100
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "deactivateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 2103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "y"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;II)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 2123
    return-void
.end method

.method private deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 707
    return-void
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 754
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 755
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 756
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 757
    .local v2, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    .end local v2           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    .line 760
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 793
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->vibrate()V

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 787
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1709
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0xc8

    const/4 v3, 0x0

    .line 796
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    .line 797
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    move v1, v2

    .line 799
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 800
    const-string v2, "LenovoMultiWaveView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish with target hit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->highlightSelected(I)V

    .line 805
    const/16 v2, 0x4b0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v4, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 809
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActionCancel:Z

    if-nez v2, :cond_0

    .line 810
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dispatchTriggerEvent(I)V

    .line 815
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 828
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActionCancel:Z

    if-nez v2, :cond_2

    .line 829
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setGrabbedState(I)V

    .line 834
    :cond_2
    return-void

    .end local v1           #targetHit:Z
    :cond_3
    move v1, v3

    .line 797
    goto :goto_0

    .line 821
    .restart local v1       #targetHit:Z
    :cond_4
    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v6, v4, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 823
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private doIntersectAnimation()V
    .locals 12

    .prologue
    const/16 v2, 0x32

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    .line 2398
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "doIntersectAnimation"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    float-to-int v1, v1

    add-int v6, v0, v1

    .line 2401
    .local v6, targetX:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    float-to-int v1, v1

    add-int v7, v0, v1

    .line 2402
    .local v7, targetY:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v9

    add-int/2addr v6, v0

    .line 2403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    .line 2404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v11

    add-int/2addr v7, v0

    .line 2405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v7, v0

    .line 2406
    const/16 v1, 0x15e

    int-to-float v3, v6

    int-to-float v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 2409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const-wide/16 v3, 0x15e

    const/16 v5, 0x12

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v5, v9

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v8, v5, v11

    const/4 v8, 0x2

    const-string v9, "delay"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x4

    const-string v8, "x"

    aput-object v8, v5, v2

    const/4 v2, 0x5

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v2, 0x6

    const-string v8, "y"

    aput-object v8, v5, v2

    const/4 v2, 0x7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0x8

    const-string v8, "scaleX"

    aput-object v8, v5, v2

    const/16 v2, 0x9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xa

    const-string v8, "scaleY"

    aput-object v8, v5, v2

    const/16 v2, 0xb

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xc

    const-string v8, "alpha"

    aput-object v8, v5, v2

    const/16 v2, 0xd

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xe

    const-string v8, "onUpdate"

    aput-object v8, v5, v2

    const/16 v2, 0xf

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v5, v2

    const/16 v2, 0x10

    const-string v8, "onComplete"

    aput-object v8, v5, v2

    const/16 v2, 0x11

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 2420
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 3
    .parameter "v"
    .parameter "destCanvas"
    .parameter "pruneToDrawable"

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTempRect:Landroid/graphics/Rect;

    .line 2595
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2597
    const/4 v1, 0x0

    .line 2599
    .local v1, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2600
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2601
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2602
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2603
    return-void
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 538
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method private freeFling(FF)V
    .locals 6
    .parameter "velX"
    .parameter "velY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2386
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeFling velX="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", velY="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v1, 0x6

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V

    .line 2388
    return-void
.end method

.method private getAngle(FI)F
    .locals 2
    .parameter "alpha"
    .parameter "i"

    .prologue
    .line 1647
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFirstItemOffset:F

    int-to-float v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1760
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1761
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v0, 0x0

    .line 1766
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 532
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 533
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getRingHeight()F
    .locals 4

    .prologue
    .line 1553
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .locals 4

    .prologue
    .line 1549
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 1714
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 1719
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 1717
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getSliceAngle()F
    .locals 4

    .prologue
    .line 1651
    const-wide v0, -0x3fe6de04abbbd2e8L

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1748
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1749
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const/4 v0, 0x0

    .line 1754
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;
    .locals 7
    .parameter "zoomIn"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "scaleXFrom"
    .parameter "scaleXTo"
    .parameter "scaleYFrom"
    .parameter "scaleYTo"

    .prologue
    .line 2301
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    const/4 v6, 0x1

    aput p3, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2302
    .local v0, pvhAlphaZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p4, v5, v6

    const/4 v6, 0x1

    aput p5, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2303
    .local v1, pvhScaleXZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p6, v5, v6

    const/4 v6, 0x1

    aput p7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2304
    .local v2, pvhScaleYZoom:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2305
    .local v3, targetViewAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2306
    return-object v3
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 1261
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    if-eqz v1, :cond_0

    const-string v1, "LenovoMultiWaveView"

    const-string v2, "** Handle CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    .line 1266
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1267
    .local v0, actionIndex:I
    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    .line 1268
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    .line 1269
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1234
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1235
    .local v1, eventX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1236
    .local v2, eventY:F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    .line 1237
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1238
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    .line 1243
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->doShakeAnimation()V

    .line 1250
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 40
    .parameter "event"

    .prologue
    .line 1272
    const/4 v7, -0x1

    .line 1273
    .local v7, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    .line 1274
    .local v13, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 1275
    .local v28, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1276
    .local v18, ntargets:I
    const/16 v32, 0x0

    .line 1277
    .local v32, x:F
    const/16 v33, 0x0

    .line 1278
    .local v33, y:F
    const/4 v6, 0x0

    .line 1279
    .local v6, activeAngle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointerId:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1281
    .local v5, actionIndex:I
    const/16 v34, -0x1

    move/from16 v0, v34

    if-ne v5, v0, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    add-int/lit8 v34, v13, 0x1

    move/from16 v0, v34

    if-ge v15, v0, :cond_c

    .line 1286
    if-ge v15, v13, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v15}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v11

    .line 1288
    .local v11, eventX:F
    :goto_2
    if-ge v15, v13, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v15}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v12

    .line 1291
    .local v12, eventY:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    move/from16 v34, v0

    sub-float v30, v11, v34

    .line 1292
    .local v30, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    move/from16 v34, v0

    sub-float v31, v12, v34

    .line 1293
    .local v31, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v34

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v29, v0

    .line 1294
    .local v29, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    move/from16 v34, v0

    cmpl-float v34, v29, v34

    if-lez v34, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    move/from16 v34, v0

    div-float v19, v34, v29

    .line 1295
    .local v19, scale:F
    :goto_4
    mul-float v16, v30, v19

    .line 1296
    .local v16, limitX:F
    mul-float v17, v31, v19

    .line 1297
    .local v17, limitY:F
    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    .line 1299
    .local v9, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    move/from16 v34, v0

    if-nez v34, :cond_2

    .line 1300
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->trySwitchToFirstTouchState(FF)Z

    .line 1303
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    move/from16 v34, v0

    if-eqz v34, :cond_b

    .line 1305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSnapMargin:F

    move/from16 v35, v0

    sub-float v21, v34, v35

    .line 1306
    .local v21, snapRadius:F
    mul-float v20, v21, v21

    .line 1308
    .local v20, snapDistance2:F
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5
    move/from16 v0, v18

    if-ge v14, v0, :cond_b

    .line 1309
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1311
    .local v22, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFirstItemOffset:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    int-to-double v0, v14

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3fe0

    sub-double v36, v36, v38

    const-wide/high16 v38, 0x4000

    mul-double v36, v36, v38

    const-wide v38, 0x400921fb54442d18L

    mul-double v36, v36, v38

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    add-double v26, v34, v36

    .line 1312
    .local v26, targetMinRad:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFirstItemOffset:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    int-to-double v0, v14

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3fe0

    add-double v36, v36, v38

    const-wide/high16 v38, 0x4000

    mul-double v36, v36, v38

    const-wide v38, 0x400921fb54442d18L

    mul-double v36, v36, v38

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    add-double v24, v34, v36

    .line 1313
    .local v24, targetMaxRad:D
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->isEnabled()Z

    move-result v34

    if-eqz v34, :cond_6

    .line 1314
    cmpl-double v34, v9, v26

    if-lez v34, :cond_3

    cmpg-double v34, v9, v24

    if-lez v34, :cond_5

    :cond_3
    const-wide v34, 0x401921fb54442d18L

    add-double v34, v34, v9

    cmpl-double v34, v34, v26

    if-lez v34, :cond_4

    const-wide v34, 0x401921fb54442d18L

    add-double v34, v34, v9

    cmpg-double v34, v34, v24

    if-lez v34, :cond_5

    :cond_4
    const-wide v34, 0x401921fb54442d18L

    sub-double v34, v9, v34

    cmpl-double v34, v34, v26

    if-lez v34, :cond_a

    const-wide v34, 0x401921fb54442d18L

    sub-double v34, v9, v34

    cmpg-double v34, v34, v24

    if-gtz v34, :cond_a

    :cond_5
    const/4 v8, 0x1

    .line 1320
    .local v8, angleMatches:Z
    :goto_6
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v34

    cmpl-float v34, v34, v20

    if-lez v34, :cond_6

    .line 1321
    move v7, v14

    .line 1322
    neg-double v0, v9

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v6, v0

    .line 1308
    .end local v8           #angleMatches:Z
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 1286
    .end local v9           #angleRad:D
    .end local v11           #eventX:F
    .end local v12           #eventY:F
    .end local v14           #i:I
    .end local v16           #limitX:F
    .end local v17           #limitY:F
    .end local v19           #scale:F
    .end local v20           #snapDistance2:F
    .end local v21           #snapRadius:F
    .end local v22           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v24           #targetMaxRad:D
    .end local v26           #targetMinRad:D
    .end local v29           #touchRadius:F
    .end local v30           #tx:F
    .end local v31           #ty:F
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    goto/16 :goto_2

    .line 1288
    .restart local v11       #eventX:F
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    goto/16 :goto_3

    .line 1294
    .restart local v12       #eventY:F
    .restart local v29       #touchRadius:F
    .restart local v30       #tx:F
    .restart local v31       #ty:F
    :cond_9
    const/high16 v19, 0x3f80

    goto/16 :goto_4

    .line 1314
    .restart local v9       #angleRad:D
    .restart local v14       #i:I
    .restart local v16       #limitX:F
    .restart local v17       #limitY:F
    .restart local v19       #scale:F
    .restart local v20       #snapDistance2:F
    .restart local v21       #snapRadius:F
    .restart local v22       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .restart local v24       #targetMaxRad:D
    .restart local v26       #targetMinRad:D
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 1327
    .end local v14           #i:I
    .end local v20           #snapDistance2:F
    .end local v21           #snapRadius:F
    .end local v22           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v24           #targetMaxRad:D
    .end local v26           #targetMinRad:D
    :cond_b
    move/from16 v32, v16

    .line 1328
    move/from16 v33, v17

    .line 1285
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1331
    .end local v9           #angleRad:D
    .end local v11           #eventX:F
    .end local v12           #eventY:F
    .end local v16           #limitX:F
    .end local v17           #limitY:F
    .end local v19           #scale:F
    .end local v29           #touchRadius:F
    .end local v30           #tx:F
    .end local v31           #ty:F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    .line 1335
    const/16 v34, -0x1

    move/from16 v0, v34

    if-eq v7, v0, :cond_13

    .line 1336
    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    .line 1337
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->moveHandleTo(FFZ)V

    .line 1344
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidateGlobalRegion(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    .line 1346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v7, :cond_12

    .line 1348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_e

    .line 1349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    move/from16 v34, v0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1350
    .restart local v22       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v34, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->hasState([I)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 1351
    sget-object v34, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1353
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMagneticTargets:Z

    move/from16 v34, v0

    if-eqz v34, :cond_e

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPosition(IFF)V

    .line 1358
    .end local v22           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_e
    const/16 v34, -0x1

    move/from16 v0, v34

    if-eq v7, v0, :cond_14

    .line 1359
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1360
    .restart local v22       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v34, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->hasState([I)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 1361
    sget-object v34, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1363
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMagneticTargets:Z

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v7, v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPosition(IFFF)V

    .line 1366
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 1367
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v23

    .line 1368
    .local v23, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->announceText(Ljava/lang/String;)V

    .line 1370
    .end local v23           #targetContentDescription:Ljava/lang/String;
    :cond_11
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 1375
    .end local v22           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    goto/16 :goto_0

    .line 1339
    :cond_13
    const/16 v34, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    .line 1340
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->moveHandleTo(FFZ)V

    goto/16 :goto_7

    .line 1372
    :cond_14
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/high16 v36, 0x3f80

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_8
.end method

.method private handleTouchCancel(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2446
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 2447
    return-void
.end method

.method private handleTrigger(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .locals 9
    .parameter "newEventView"

    .prologue
    .line 2460
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    if-eqz v5, :cond_0

    .line 2461
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    const/4 v6, -0x1

    invoke-interface {v5, p1, v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 2463
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2464
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getResourceId()I

    move-result v4

    .line 2465
    .local v4, resourceId:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ic_newevent_smsmms"

    const-string v7, "drawable"

    const v8, 0x2020072

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2467
    .local v2, drwSms:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ic_newevent_phone"

    const-string v7, "drawable"

    const v8, 0x2020071

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2469
    .local v1, drwPhone:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ic_newevent_email"

    const-string v7, "drawable"

    const v8, 0x2020070

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2471
    .local v0, drwEmail:I
    if-ne v4, v2, :cond_1

    .line 2474
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lenovo.ideafriend"

    const-string v7, "com.lenovo.ideafriend.alias.MmsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2476
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->launchActivity(Landroid/content/Intent;)V

    .line 2506
    :goto_0
    return-void

    .line 2477
    :cond_1
    if-ne v4, v1, :cond_2

    .line 2480
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lenovo.ideafriend"

    const-string v7, "com.lenovo.ideafriend.alias.DialtactsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2481
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "vnd.android.cursor.dir/calls"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2483
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2484
    :cond_2
    if-ne v4, v0, :cond_3

    .line 2485
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.email"

    const-string v7, "com.android.email.activity.Welcome"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2486
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2488
    :cond_3
    const-string v5, "LenovoMultiWaveView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTrigger unknown resource id, resourceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1253
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    if-eqz v1, :cond_0

    const-string v1, "LenovoMultiWaveView"

    const-string v2, "** Handle RELEASE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1255
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointerId:I

    if-ne v1, v2, :cond_1

    .line 1256
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    .line 1258
    :cond_1
    return-void
.end method

.method private hideAllNewEventViews()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 2269
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "hideAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2272
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 2273
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2274
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2276
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2277
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2272
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2279
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_0
    return-void
.end method

.method private hideChevrons()V
    .locals 5

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 1662
    .local v1, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1663
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1664
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1665
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_0

    .line 1666
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 1663
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1669
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method

.method private hideOtherNewEventViews()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 2237
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "hideOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2240
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2241
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2242
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eq v11, v0, :cond_0

    .line 2243
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2245
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2246
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2240
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2249
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_1
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 14
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 851
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 854
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAnimatingTargets:Z

    .line 855
    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    .line 856
    .local v1, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    .line 858
    .local v0, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v6, 0x3f80

    .line 859
    .local v6, targetScale:F
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 860
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v3, :cond_3

    .line 861
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 862
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 863
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    int-to-long v8, v1

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    invoke-static {v5, v8, v9, v10}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 855
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v6           #targetScale:F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 856
    .restart local v1       #duration:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 858
    .restart local v0       #delay:I
    :cond_2
    const v6, 0x3f4ccccd

    goto :goto_2

    .line 872
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v6       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v4, 0x3f80

    .line 873
    .local v4, ringScaleTarget:F
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v9, v1

    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "scaleY"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "onComplete"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 883
    return-void

    .line 872
    .end local v4           #ringScaleTarget:F
    :cond_4
    const/high16 v4, 0x3f00

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 843
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 844
    if-eq v0, p1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 839
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideUnselected(I)V

    .line 840
    return-void
.end method

.method private hitInCenterRing(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2000
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    sub-float v0, p1, v2

    .line 2001
    .local v0, tx:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    sub-float v1, p2, v2

    .line 2002
    .local v1, ty:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getScaledTapRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1922
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return v5

    .line 1927
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchIntercepted:Z

    .line 1928
    .local v3, shouldIntercept:Z
    packed-switch v0, :pswitch_data_0

    .line 1940
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_0

    .line 1941
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1944
    .local v1, containerEvent:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRecepientOffsets:[I

    aget v5, v6, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRecepientOffsets:[I

    aget v4, v6, v4

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1945
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepient:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1946
    .local v2, retValue:Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v5, v2

    .line 1947
    goto :goto_0

    .line 1930
    .end local v1           #containerEvent:Landroid/view/MotionEvent;
    .end local v2           #retValue:Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hitInCenterRing(FF)Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .line 1931
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setShouldIntercept(Z)V

    goto :goto_1

    :cond_2
    move v3, v5

    .line 1930
    goto :goto_2

    .line 1935
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setShouldIntercept(Z)V

    goto :goto_1

    .line 1928
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private internalSetTargetResources(I)V
    .locals 7
    .parameter "resourceId"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 940
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetResourceId:I

    .line 941
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 942
    .local v0, count:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v3

    .line 943
    .local v3, maxWidth:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v2

    .line 944
    .local v2, maxHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 945
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 946
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 947
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    if-ne v5, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    if-eq v5, v2, :cond_2

    .line 950
    :cond_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    .line 951
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    .line 952
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->requestLayout()V

    .line 957
    :goto_1
    return-void

    .line 954
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPositions(FF)V

    .line 955
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateChevronPositions(FF)V

    goto :goto_1
.end method

.method private invlidateGlobalRegion(Landroid/view/View;)V
    .locals 9
    .parameter "childView"

    .prologue
    const/4 v6, 0x0

    .line 2430
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2431
    .local v3, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2432
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2433
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 2434
    move-object v2, p0

    .line 2435
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2436
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2437
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2438
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2443
    :cond_0
    return-void
.end method

.method private isAcivityForeground(Landroid/content/ComponentName;)Z
    .locals 9
    .parameter "componentname"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2547
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    .line 2548
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2550
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2551
    .local v3, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2552
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2553
    .local v2, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_1

    .line 2554
    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2555
    .local v1, componentInfo:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 2556
    const-string v6, "LenovoMultiWaveView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT Activity ::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2566
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #componentInfo:Landroid/content/ComponentName;
    .end local v2           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 2509
    const/high16 v3, 0x3400

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2515
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2516
    .local v0, componentname:Landroid/content/ComponentName;
    const/4 v2, 0x1

    .line 2517
    .local v2, isForeground:Z
    if-eqz v2, :cond_0

    .line 2519
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->dismissKeyguard()V

    .line 2520
    const-string v3, "LenovoMultiWaveView"

    const-string v4, "Request activity is foreground, just dismiss keyguard~"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2543
    :goto_1
    return-void

    .line 2521
    :catch_0
    move-exception v1

    .line 2522
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LenovoMultiWaveView"

    const-string v4, "can\'t dismiss keyguard ~"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2526
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2527
    :catch_1
    move-exception v1

    .line 2528
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "LenovoMultiWaveView"

    const-string v4, "can\'t dismiss keyguard on launch"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2540
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 2541
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "LenovoMultiWaveView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for intent + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1771
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1772
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1773
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1774
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1777
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1778
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 926
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 927
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 928
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 929
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 930
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 931
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 932
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 931
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 934
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 935
    return-object v2
.end method

.method private moveHandleTo(FFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/high16 v3, 0x3f80

    .line 1224
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 1225
    .local v0, dx:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 1226
    .local v1, dy:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 1227
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 1228
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 1229
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    .line 1230
    return-void
.end method

.method private onDragMove(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2351
    move/from16 v0, p1

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    sub-float v10, v12, v13

    .line 2352
    .local v10, tx:F
    move/from16 v0, p2

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    sub-float v11, v12, v13

    .line 2353
    .local v11, ty:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 2355
    .local v9, touchRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    const/high16 v13, 0x3f00

    mul-float v1, v12, v13

    .line 2356
    .local v1, FakeHandleRadius:F
    cmpl-float v12, v9, v1

    if-lez v12, :cond_1

    div-float v5, v1, v9

    .line 2357
    .local v5, scale:F
    :goto_0
    mul-float v12, v10, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    .line 2358
    mul-float v12, v11, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    .line 2359
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateHandleDrawablePositions(Z)V

    .line 2361
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 2362
    .local v2, currentFakeHandleRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragSnapMargin:F

    add-float v7, v2, v12

    .line 2363
    .local v7, snapRadius:F
    mul-float v6, v7, v7

    .line 2364
    .local v6, snapDistance2:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v12

    cmpg-float v12, v12, v6

    if-gez v12, :cond_2

    .line 2365
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    .line 2366
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v3, v12, v13

    .line 2367
    .local v3, dragViewX:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v4, v12, v13

    .line 2368
    .local v4, dragViewY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v13, v3

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/DragView;->move(FF)V

    .line 2369
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateHandleDrawablePositions(Z)V

    .line 2370
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getState()[I

    move-result-object v8

    .line 2371
    .local v8, state:[I
    if-eqz v8, :cond_0

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    invoke-static {v8, v12}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2372
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->vibrate()V

    .line 2373
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2379
    .end local v3           #dragViewX:I
    .end local v4           #dragViewY:I
    .end local v8           #state:[I
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 2381
    const-string v12, "LenovoMultiWaveView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDragMove mTouchTriggered="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", x="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    return-void

    .line 2356
    .end local v2           #currentFakeHandleRadius:F
    .end local v5           #scale:F
    .end local v6           #snapDistance2:F
    .end local v7           #snapRadius:F
    :cond_1
    const/high16 v5, 0x3f80

    goto/16 :goto_0

    .line 2376
    .restart local v2       #currentFakeHandleRadius:F
    .restart local v5       #scale:F
    .restart local v6       #snapDistance2:F
    .restart local v7       #snapRadius:F
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    goto :goto_1
.end method

.method private onDragStart(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v9, 0x3f00

    .line 2326
    const-string v7, "LenovoMultiWaveView"

    const-string v8, "onDragStart"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    int-to-float v7, p1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/DragView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    sub-float v1, v7, v8

    .line 2330
    .local v1, dragTargetCenterX:F
    int-to-float v7, p2

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/DragView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    sub-float v2, v7, v8

    .line 2331
    .local v2, dragTargetCenterY:F
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v6, v7

    .line 2332
    .local v6, touchRadius:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float v0, v7, v9

    .line 2333
    .local v0, currentOuterRadius:F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_0

    div-float v5, v0, v6

    .line 2334
    .local v5, scale:F
    :goto_0
    mul-float v3, v1, v5

    .line 2335
    .local v3, limitX:F
    mul-float v4, v2, v5

    .line 2338
    .local v4, limitY:F
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v3

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 2339
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v4

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 2341
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    .line 2342
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    .line 2344
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    .line 2345
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    .line 2346
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 2347
    return-void

    .line 2333
    .end local v3           #limitX:F
    .end local v4           #limitY:F
    .end local v5           #scale:F
    :cond_0
    const/high16 v5, 0x3f80

    goto :goto_0
.end method

.method private refreshPositions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1956
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepient:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1964
    :goto_0
    return-void

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepient:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepientRawLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1961
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRawLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getLocationOnScreen([I)V

    .line 1962
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRawLocation:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1963
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerRawLocation:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1825
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1826
    :cond_0
    const/4 v2, 0x0

    .line 1844
    :cond_1
    :goto_0
    return v2

    .line 1829
    :cond_2
    const/4 v2, 0x0

    .line 1830
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1831
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1832
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1833
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1834
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1835
    invoke-virtual {v4, p1, p3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1836
    const/4 v2, 0x1

    .line 1832
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1840
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1841
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 605
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 614
    move v0, v1

    .line 616
    :goto_0
    return v0

    .line 607
    :sswitch_0
    move v0, p2

    .line 608
    goto :goto_0

    .line 610
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 611
    goto :goto_0

    .line 605
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1405
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1406
    if-eqz p1, :cond_0

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->vibrate()V

    .line 1409
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGrabbedState:I

    .line 1410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1411
    if-nez p1, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1416
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1419
    :cond_1
    return-void

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setShouldIntercept(Z)V
    .locals 0
    .parameter "shouldIntercept"

    .prologue
    .line 1995
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchIntercepted:Z

    .line 1996
    return-void
.end method

.method private showAllNewEventViews()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f80

    .line 2283
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "showAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2286
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 2287
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2288
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2290
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2291
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2286
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2293
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_0
    return-void
.end method

.method private showOtherNewEventViews()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f80

    .line 2253
    const-string v0, "LenovoMultiWaveView"

    const-string v1, "showOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2256
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2257
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2258
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eq v11, v0, :cond_0

    .line 2259
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2261
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2262
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2256
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2265
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_1
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .parameter "animate"

    .prologue
    .line 886
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 887
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAnimatingTargets:Z

    .line 888
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 889
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 890
    .local v1, duration:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 891
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 892
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 893
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 894
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    int-to-long v7, v1

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    invoke-static {v5, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 888
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 889
    .restart local v0       #delay:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 902
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    const/high16 v7, 0x3f80

    mul-float v4, v6, v7

    .line 903
    .local v4, ringScale:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f80

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "onComplete"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 913
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1705
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 8
    .parameter "duration"
    .parameter "alpha"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1132
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1133
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1134
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 1137
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ease"

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v4, v3, v7

    const-string v4, "alpha"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    new-array v5, v5, [I

    aput v6, v5, v6

    const/high16 v6, 0x437f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    aput v6, v5, v7

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 1141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1143
    :cond_1
    return-void
.end method

.method private startChevronAnimation()V
    .locals 24

    .prologue
    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f4ccccd

    mul-float v5, v18, v19

    .line 716
    .local v5, chevronStartDistance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    move/from16 v18, v0

    const v19, 0x3f666666

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v6, v18, v19

    .line 717
    .local v6, chevronStopDistance:F
    const/high16 v13, 0x3f00

    .line 718
    .local v13, startScale:F
    const/high16 v11, 0x4000

    .line 719
    .local v11, endScale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    move/from16 v18, v0

    if-lez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    move/from16 v19, v0

    div-int v10, v18, v19

    .line 721
    .local v10, directionCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 725
    const/4 v9, 0x0

    .local v9, direction:I
    :goto_1
    if-ge v9, v10, :cond_3

    .line 726
    const-wide v18, 0x401921fb54442d18L

    int-to-double v0, v9

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v3, v18, v20

    .line 727
    .local v3, angle:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 728
    .local v14, sx:F
    const/16 v18, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    sub-float v15, v18, v19

    .line 729
    .local v15, sy:F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v18, 0x0

    mul-float v19, v14, v5

    aput v19, v16, v18

    const/16 v18, 0x1

    mul-float v19, v14, v6

    aput v19, v16, v18

    .line 731
    .local v16, xrange:[F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    mul-float v19, v15, v5

    aput v19, v17, v18

    const/16 v18, 0x1

    mul-float v19, v15, v6

    aput v19, v17, v18

    .line 733
    .local v17, yrange:[F
    const/4 v7, 0x0

    .local v7, count:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 734
    mul-int/lit16 v8, v7, 0xa0

    .line 735
    .local v8, delay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    move/from16 v19, v0

    mul-int v19, v19, v9

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 736
    .local v12, icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v12, :cond_1

    .line 733
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 719
    .end local v3           #angle:D
    .end local v7           #count:I
    .end local v8           #delay:I
    .end local v9           #direction:I
    .end local v10           #directionCount:I
    .end local v12           #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #xrange:[F
    .end local v17           #yrange:[F
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 739
    .restart local v3       #angle:D
    .restart local v7       #count:I
    .restart local v8       #delay:I
    .restart local v9       #direction:I
    .restart local v10       #directionCount:I
    .restart local v12       #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .restart local v14       #sx:F
    .restart local v15       #sy:F
    .restart local v16       #xrange:[F
    .restart local v17       #yrange:[F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x352

    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "ease"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "delay"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string v23, "x"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    aput-object v16, v21, v22

    const/16 v22, 0x6

    const-string v23, "y"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    aput-object v17, v21, v22

    const/16 v22, 0x8

    const-string v23, "alpha"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    aput-object v23, v21, v22

    const/16 v22, 0xa

    const-string v23, "scaleX"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    aput-object v23, v21, v22

    const/16 v22, 0xc

    const-string v23, "scaleY"

    aput-object v23, v21, v22

    const/16 v22, 0xd

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    aput-object v23, v21, v22

    const/16 v22, 0xe

    const-string v23, "onUpdate"

    aput-object v23, v21, v22

    const/16 v22, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    move-wide/from16 v0, v19

    move-object/from16 v2, v21

    invoke-static {v12, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 725
    .end local v8           #delay:I
    .end local v12           #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 750
    .end local v3           #angle:D
    .end local v7           #count:I
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #xrange:[F
    .end local v17           #yrange:[F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 751
    return-void

    .line 739
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setRadius(F)V

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 1103
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 1083
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 1084
    return-void
.end method

.method private switchDragViewToState(IIIFF)V
    .locals 10
    .parameter "state"
    .parameter "eventX"
    .parameter "eventY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2689
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState enter mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", new state="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimating:Z

    if-eqz v0, :cond_0

    .line 2692
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    .line 2693
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    iput p2, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->eventX:I

    .line 2694
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    iput p3, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->eventY:I

    .line 2695
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    iput p4, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->velocityX:F

    .line 2696
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;

    iput p5, v0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$PendingEvent;->velocityY:F

    .line 2697
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :goto_0
    return-void

    .line 2700
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2786
    :goto_1
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2702
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 2703
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewDoingTouch:Z

    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimating:Z

    .line 2706
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2707
    .local v2, b:Landroid/graphics/Bitmap;
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewInLockScreenX:I

    .line 2708
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewInLockScreenY:I

    .line 2710
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewInLockScreenX:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int v3, v0, v1

    .line 2711
    .local v3, registrationX:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewEventViewInLockScreenY:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    add-int v4, v0, v1

    .line 2713
    .local v4, registrationY:I
    const-string v0, "LenovoMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchDown registrationX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", registrationY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/impl/keyguard/DragView;-><init>(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    .line 2718
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/DragView;->show(II)V

    .line 2720
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->onDragStart(II)V

    .line 2723
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setVisibility(I)V

    .line 2724
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideOtherNewEventViews()V

    .line 2726
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #registrationX:I
    .end local v4           #registrationY:I
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimating:Z

    .line 2728
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->activateHandle(II)V

    goto/16 :goto_1

    .line 2731
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2732
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->doIntersectAnimation()V

    goto/16 :goto_1

    .line 2735
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2738
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2739
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerLocationInLockScreen:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/DragView;->move(FF)V

    .line 2740
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->onDragMove(II)V

    goto/16 :goto_1

    .line 2744
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2745
    invoke-direct {p0, p4, p5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->freeFling(FF)V

    goto/16 :goto_1

    .line 2750
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    .line 2751
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2752
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2753
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->showOtherNewEventViews()V

    .line 2754
    const/16 v0, 0xc8

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->animHandlerBack(II)V

    goto/16 :goto_1

    .line 2757
    :pswitch_6
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2758
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleTrigger(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    goto/16 :goto_1

    .line 2762
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_2

    .line 2763
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2764
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    .line 2766
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_3

    .line 2767
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2770
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v0, :cond_4

    .line 2771
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setVisibility(I)V

    .line 2772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2774
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    if-eqz v0, :cond_5

    .line 2775
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/DragView;->remove()V

    .line 2776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    .line 2778
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    .line 2779
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    .line 2780
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    .line 2781
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    .line 2782
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    .line 2783
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPendingDragViewState:I

    goto/16 :goto_1

    .line 2700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private switchToState(IFF)V
    .locals 4
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 620
    packed-switch p1, :pswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 623
    :pswitch_0
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateTargets()V

    .line 626
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideTargets(ZZ)V

    .line 627
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startBackgroundAnimation(IF)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 633
    :pswitch_1
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->cancel()V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_2

    .line 642
    invoke-direct {p0, v2, v2, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->moveHandleTo(FFZ)V

    .line 645
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 650
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    .line 652
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateTargets()V

    .line 653
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->showTargets(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 655
    const/16 v0, 0xc8

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startBackgroundAnimation(IF)V

    .line 656
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setGrabbedState(I)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->announceTargets()V

    goto :goto_0

    .line 664
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    goto :goto_0

    .line 670
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    goto :goto_0

    .line 676
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    .line 678
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->doFinish()V

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1422
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    sub-float v0, p1, v4

    .line 1423
    .local v0, tx:F
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    sub-float v1, p2, v4

    .line 1424
    .local v1, ty:F
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getScaledTapRadiusSquared()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 1426
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_1

    .line 1427
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideAllNewEventViews()V

    .line 1430
    :cond_1
    const-string v4, "LenovoMultiWaveView"

    const-string v5, "** Handle HIT"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchToState(IFF)V

    .line 1432
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->moveHandleTo(FFZ)V

    .line 1433
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragging:Z

    move v2, v3

    .line 1436
    :cond_2
    return v2
.end method

.method private updateChevronPositions(FF)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 1636
    .local v0, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1637
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1638
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1639
    .local v3, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v3, :cond_0

    .line 1640
    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1641
    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1644
    .end local v3           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method

.method private updateGlobalLayoutListenr(Z)V
    .locals 1
    .parameter "shouldEnable"

    .prologue
    .line 1983
    if-eqz p1, :cond_1

    .line 1984
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLayoutListenerSet:Z

    if-nez v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLayoutListenerSet:Z

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLayoutListenerSet:Z

    goto :goto_0
.end method

.method private updateHandleDrawablePositions(Z)V
    .locals 11
    .parameter "force"

    .prologue
    .line 2126
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v8, :cond_0

    .line 2130
    if-nez p1, :cond_3

    .line 2131
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v6

    .line 2132
    .local v6, oldX:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v7

    .line 2133
    .local v7, oldY:F
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    sub-float/2addr v8, v6

    float-to-int v0, v8

    .line 2134
    .local v0, deltaX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    sub-float/2addr v8, v7

    float-to-int v1, v8

    .line 2135
    .local v1, deltaY:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int v3, v8, v9

    .line 2136
    .local v3, distanceSqure:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlopSqure:I

    if-le v3, v8, :cond_2

    .line 2137
    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 2138
    .local v2, distance:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlop:I

    mul-int/2addr v8, v0

    div-int v4, v8, v2

    .line 2139
    .local v4, offsetX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlop:I

    mul-int/2addr v8, v1

    div-int v5, v8, v2

    .line 2140
    .local v5, offsetY:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    .line 2141
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    .line 2143
    const-string v8, "LenovoMultiWaveView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", oldY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", distance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 2156
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    .end local v3           #distanceSqure:I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 2157
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    goto/16 :goto_0

    .line 2149
    .restart local v0       #deltaX:I
    .restart local v1       #deltaY:I
    .restart local v3       #distanceSqure:I
    .restart local v6       #oldX:F
    .restart local v7       #oldY:F
    :cond_2
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    .line 2150
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    goto :goto_1

    .line 2153
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v3           #distanceSqure:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealX:F

    .line 2154
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleRealY:F

    goto :goto_1
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->setCenter(FF)V

    .line 1657
    return-void
.end method

.method private updateTargetPosition(IFF)V
    .locals 2
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getSliceAngle()F

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getAngle(FI)F

    move-result v0

    .line 1603
    .local v0, angle:F
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPosition(IFFF)V

    .line 1604
    return-void
.end method

.method private updateTargetPosition(IFFF)V
    .locals 6
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"

    .prologue
    const/high16 v5, 0x4000

    .line 1607
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getRingWidth()F

    move-result v4

    div-float v0, v4, v5

    .line 1608
    .local v0, placementRadiusX:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getRingHeight()F

    move-result v4

    div-float v1, v4, v5

    .line 1609
    .local v1, placementRadiusY:F
    if-ltz p1, :cond_0

    .line 1610
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1611
    .local v3, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1612
    .local v2, targetIcon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1613
    invoke-virtual {v2, p3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1614
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 1615
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    .line 1617
    .end local v2           #targetIcon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v3           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    :cond_0
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1620
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPositions(FFZ)V

    .line 1621
    return-void
.end method

.method private updateTargetPositions(FFZ)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"
    .parameter "skipActive"

    .prologue
    .line 1624
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1625
    .local v2, size:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getSliceAngle()F

    move-result v0

    .line 1627
    .local v0, alpha:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1628
    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActiveTarget:I

    if-eq v1, v3, :cond_1

    .line 1629
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getAngle(FI)F

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPosition(IFFF)V

    .line 1627
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1632
    :cond_2
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    .local v0, hapticEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 920
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 922
    :cond_0
    return-void

    .line 916
    .end local v0           #hapticEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "v"
    .parameter "canvas"

    .prologue
    .line 2577
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2579
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2580
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    .line 2581
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2583
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1912
    const/4 v0, 0x0

    .line 1913
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepient:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1914
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1916
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doShakeAnimation()V
    .locals 1

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v0, :cond_0

    .line 2801
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->beginShakeAnimation()V

    .line 2803
    :cond_0
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1788
    if-ltz p1, :cond_1

    .line 1789
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1790
    .local v0, drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1794
    .end local v0           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .local v1, resId:I
    :goto_0
    return v1

    .line 1790
    .end local v1           #resId:I
    .restart local v0       #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0

    .line 1792
    .end local v0           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    const v1, 0x10802fd

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 597
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 589
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1814
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1815
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1816
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1820
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :goto_1
    return v0

    .line 1814
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1820
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method public getWaveCenterX()F
    .locals 1

    .prologue
    .line 2791
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method public getWaveCenterY()F
    .locals 1

    .prologue
    .line 2796
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method invalidateGlobalRegion(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 763
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v3

    .line 764
    .local v3, width:I
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    .line 765
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 766
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 767
    move-object v2, p0

    .line 768
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 769
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 770
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 771
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 776
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1969
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1970
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateGlobalLayoutListenr(Z)V

    .line 1971
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1976
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateGlobalLayoutListenr(Z)V

    .line 1978
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setTouchRecepient(Landroid/view/View;)V

    .line 1979
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1674
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1676
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1677
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1678
    .local v3, ntargets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1679
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1680
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v4, :cond_0

    .line 1681
    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1678
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1684
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1685
    .local v2, nchevrons:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1686
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1687
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_2

    .line 1688
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1685
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1691
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1693
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v5, :cond_4

    .line 1694
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1695
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateHandleDrawablePositions(Z)V

    .line 1698
    :cond_4
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1380
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1382
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1393
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1394
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1396
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1397
    return v2

    .line 1384
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1387
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1390
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1382
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1558
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1559
    sub-int v5, p4, p2

    .line 1560
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1564
    .local v0, height:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getRingWidth()F

    move-result v4

    .line 1565
    .local v4, placementWidth:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getRingHeight()F

    move-result v3

    .line 1566
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1568
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1571
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1573
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->stopAndHideWaveAnimation()V

    .line 1575
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideChevrons()V

    .line 1576
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideTargets(ZZ)V

    .line 1577
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->moveHandleTo(FFZ)V

    .line 1578
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mInitialLayout:Z

    .line 1581
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1582
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1584
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->setScale(F)V

    .line 1586
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1587
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1589
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateTargetPositions(FF)V

    .line 1591
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updatePointCloudPosition(FF)V

    .line 1593
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateChevronPositions(FF)V

    .line 1595
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterX:F

    .line 1596
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveCenterY:F

    .line 1598
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dump()V

    .line 1599
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 1534
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1535
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->resolveMeasured(II)I

    move-result v1

    .line 1536
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->resolveMeasured(II)I

    move-result v0

    .line 1538
    .local v0, computedHeight:I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mRingScaleFactor:F

    .line 1541
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 1542
    .local v5, scaledWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 1544
    .local v4, scaledHeight:I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->computeInsets(II)V

    .line 1545
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setMeasuredDimension(II)V

    .line 1546
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x6

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2188
    const-string v5, "LenovoMultiWaveView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouch event.action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCurrentNewEventView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDragViewDoingTouch="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewDoingTouch:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mGlowPadViewState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGlowPadViewState:I

    if-eqz v5, :cond_1

    .line 2232
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    move-object v8, p1

    .line 2195
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2196
    .local v8, newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-ne p1, v5, :cond_0

    .line 2199
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 2200
    .local v6, action:I
    if-nez v6, :cond_3

    .line 2201
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2203
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    neg-float v10, v10

    float-to-int v10, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    neg-float v11, v11

    float-to-int v11, v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2205
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V

    .line 2206
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    aget v0, v10, v0

    neg-int v0, v0

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOwnerNewEventViewOffset:[I

    aget v10, v10, v9

    neg-int v10, v10

    invoke-virtual {v5, v0, v10}, Landroid/graphics/Point;->offset(II)V

    .line 2208
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2210
    const-string v0, "LenovoMultiWaveView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch event.getX()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", event.getY()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.x="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.y="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 2215
    .local v7, handled:Z
    const-string v0, "LenovoMultiWaveView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch handled="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTapTimeOut="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTapTimeOut:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTouchTriggered="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    if-nez v7, :cond_4

    .line 2218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 2219
    .local v2, eventX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 2220
    .local v3, eventY:I
    if-ne v6, v9, :cond_6

    .line 2221
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchTriggered:Z

    if-eqz v0, :cond_5

    .line 2222
    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V

    .end local v2           #eventX:I
    .end local v3           #eventY:I
    :cond_4
    :goto_1
    move v0, v9

    .line 2232
    goto/16 :goto_0

    .restart local v2       #eventX:I
    .restart local v3       #eventY:I
    :cond_5
    move-object v0, p0

    move v5, v4

    .line 2224
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V

    goto :goto_1

    .line 2226
    :cond_6
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 2227
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    const/4 v5, 0x7

    if-eq v0, v5, :cond_4

    move-object v0, p0

    move v5, v4

    .line 2228
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1150
    .local v0, action:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchDropped:Z

    .line 1151
    .local v2, shouldDropTouch:Z
    packed-switch v0, :pswitch_data_0

    .line 1166
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_2

    .line 1220
    :cond_1
    :goto_1
    return v3

    .line 1154
    :pswitch_1
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    .line 1155
    const-string v4, "LenovoMultiWaveView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent return directly mDragViewState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragViewState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchDropped:Z

    .line 1157
    const/4 v2, 0x1

    goto :goto_0

    .line 1163
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchDropped:Z

    goto :goto_0

    .line 1171
    :cond_2
    const/4 v1, 0x0

    .line 1172
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_1

    .line 1219
    :cond_3
    :goto_2
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->invalidate()V

    .line 1220
    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 1175
    :pswitch_4
    const-string v4, "LenovoMultiWaveView"

    const-string v5, "*** DOWN ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 1177
    const/4 v1, 0x1

    .line 1178
    goto :goto_2

    .line 1181
    :pswitch_5
    const-string v4, "LenovoMultiWaveView"

    const-string v5, "*** MOVE ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1183
    const/4 v1, 0x1

    .line 1184
    goto :goto_2

    .line 1188
    :pswitch_6
    const-string v4, "LenovoMultiWaveView"

    const-string v5, "*** UP ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActionCancel:Z

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 1195
    const/4 v1, 0x1

    .line 1197
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_3

    .line 1198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->showAllNewEventViews()V

    goto :goto_2

    .line 1204
    :pswitch_7
    const-string v4, "LenovoMultiWaveView"

    const-string v5, "*** CANCEL ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mActionCancel:Z

    .line 1209
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1210
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 1211
    const/4 v1, 0x1

    .line 1213
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_3

    .line 1214
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->showAllNewEventViews()V

    goto :goto_2

    .line 1151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->pingInternal()V

    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->doShakeAnimation()V

    .line 1052
    return-void
.end method

.method public pingInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1054
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startChevronAnimation()V

    .line 1057
    const/4 v0, 0x1

    .line 1058
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    .line 1062
    .local v3, waveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFeedbackCount:I

    if-lez v4, :cond_2

    .line 1063
    const/4 v0, 0x0

    .line 1073
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startWaveAnimation()V

    .line 1077
    :cond_1
    return-void

    .line 1065
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1066
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 1067
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 1068
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1857
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1885
    :cond_0
    :goto_0
    return v5

    .line 1859
    :cond_1
    const/4 v5, 0x0

    .line 1860
    .local v5, replaced:Z
    if-eqz p1, :cond_2

    .line 1862
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1864
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1866
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1867
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1868
    .local v1, iconResId:I
    if-eqz v1, :cond_2

    .line 1869
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1870
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1881
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1883
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "LenovoMultiWaveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1876
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1877
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "LenovoMultiWaveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 1114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 1115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 1116
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->startBackgroundAnimation(IF)V

    .line 1118
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->stopAndHideWaveAnimation()V

    .line 1120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideChevrons()V

    .line 1121
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->hideTargets(ZZ)V

    .line 1122
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 1125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->stop()V

    .line 1126
    const/4 v1, 0x7

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->switchDragViewToState(IIIFF)V

    .line 1128
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/Tweener;->reset()V

    .line 1129
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->start()V

    .line 569
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 1015
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1019
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1799
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1800
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1801
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1802
    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    .line 1806
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    return-void

    .line 1799
    .restart local v1       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHandleDrawableImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 984
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 985
    return-void
.end method

.method public setLockScreenView(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V
    .locals 0
    .parameter "lockScreenLayout"

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    .line 2007
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$OnTriggerListener;

    .line 1702
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 994
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptionsResourceId:I

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 998
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 967
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mNewTargetResources:I

    .line 971
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setTouchRecepient(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1899
    if-eqz p1, :cond_0

    .line 1900
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepient:Landroid/view/View;

    .line 1901
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateGlobalLayoutListenr(Z)V

    .line 1902
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->refreshPositions()V

    .line 1907
    :goto_0
    return-void

    .line 1904
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchRecepient:Landroid/view/View;

    .line 1905
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->updateGlobalLayoutListenr(Z)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1036
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mChevronAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 554
    return-void
.end method

.method public syncUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V
    .locals 7
    .parameter "unReadEventView"

    .prologue
    const/4 v6, 0x0

    .line 2010
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 2011
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2012
    .local v2, newEventViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2013
    :cond_0
    const-string v3, "LenovoMultiWaveView"

    const-string v4, "syncUnReadEventView get empty newEventViews"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :goto_0
    return-void

    .line 2016
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2017
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2018
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2017
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2020
    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$SimpleOnGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$SimpleOnGestureListener;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$SimpleOnGestureListener;

    .line 2021
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView$SimpleOnGestureListener;

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2022
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 2024
    const/high16 v3, 0x4040

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlop:I

    .line 2025
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlop:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mTouchSlopSqure:I

    .line 2026
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventBitmapWidth()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->dist2(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->mDragSnapMargin:F

    goto :goto_0
.end method
