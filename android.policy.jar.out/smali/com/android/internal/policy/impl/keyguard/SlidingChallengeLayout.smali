.class public Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.super Landroid/view/ViewGroup;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;,
        Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;
    }
.end annotation


# static fields
.field private static final CHALLENGE_FADE_IN_DURATION:I = 0xa0

.field private static final CHALLENGE_FADE_OUT_DURATION:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DEBUG_PLUG_IN:Z = false

.field private static final DRAG_HANDLE_CLOSED_ABOVE:I = 0x8

.field private static final DRAG_HANDLE_CLOSED_BELOW:I = 0x0

.field private static final DRAG_HANDLE_OPEN_ABOVE:I = 0x8

.field private static final DRAG_HANDLE_OPEN_BELOW:I = 0x0

.field static final HANDLE_ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_ANIMATE_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_FADING:I = 0x3

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlidingChallengeLayout"

.field private static final sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

.field private static final sMotionInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mBlockDrag:Z

.field private mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeBottomBound:I

.field private mChallengeInteractiveExternal:Z

.field private mChallengeInteractiveInternal:Z

.field private mChallengeOffset:F

.field private mChallengeShowing:Z

.field private mChallengeShowingTargetState:Z

.field private mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragHandleClosedAbove:I

.field private mDragHandleClosedBelow:I

.field private mDragHandleEdgeSlop:I

.field private mDragHandleOpenAbove:I

.field private mDragHandleOpenBelow:I

.field private mDragging:Z

.field private mEdgeCaptured:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private final mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

.field private mExpandChallengeView:Landroid/view/View;

.field private mFader:Landroid/animation/ObjectAnimator;

.field mFrameAlpha:F

.field private mFrameAnimation:Landroid/animation/ObjectAnimator;

.field mFrameAnimationTarget:F

.field private mGestureStartChallengeBottom:I

.field private mGestureStartX:F

.field private mGestureStartY:F

.field mHandleAlpha:F

.field private mHandleAnimation:Landroid/animation/ObjectAnimator;

.field private mHasGlowpad:Z

.field private mHasLayout:Z

.field private mIsBouncing:Z

.field private mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

.field private mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

.field private mKeyguardLayerBackgroundView:Landroid/view/View;

.field private mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

.field private mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

.field private mKeyguardLayerForegroundView:Landroid/view/View;

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mShowKeyguardLayer:Z

.field private mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasChallengeShowing:Z

.field private mWidgetsView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;

    const-string v1, "handleAlpha"

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    .line 163
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$3;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4100

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 87
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 89
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 108
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 136
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFrameAnimationTarget:F

    .line 143
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 176
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$4;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$5;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    .line 1332
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, p1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    .line 251
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 252
    .local v2, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    .line 253
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 256
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x1050074

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    .line 258
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    .line 259
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlopSquare:I

    .line 261
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 262
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 265
    .local v0, density:F
    mul-float v3, v7, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    .line 266
    mul-float v3, v6, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    .line 267
    mul-float v3, v7, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    .line 268
    mul-float v3, v6, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    .line 271
    const v3, 0x1050069

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    .line 273
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setWillNotDraw(Z)V

    .line 274
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setSystemUiVisibility(I)V

    .line 275
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerView(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private cancelTransitionsInProgress()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1074
    :cond_1
    return-void
.end method

.method private crossedDragHandle(FFF)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "initialY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 802
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    .line 803
    .local v0, challengeTop:I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    move v1, v3

    .line 806
    .local v1, horizOk:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_2

    .line 807
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    move v2, v3

    .line 813
    .local v2, vertOk:Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v3

    .end local v1           #horizOk:Z
    .end local v2           #vertOk:Z
    :cond_0
    move v1, v4

    .line 803
    goto :goto_0

    .restart local v1       #horizOk:Z
    :cond_1
    move v2, v4

    .line 807
    goto :goto_1

    .line 810
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v2, v3

    .restart local v2       #vertOk:Z
    :goto_3
    goto :goto_1

    .end local v2           #vertOk:Z
    :cond_3
    move v2, v4

    goto :goto_3

    .restart local v2       #vertOk:Z
    :cond_4
    move v3, v4

    .line 813
    goto :goto_2
.end method

.method private getChallengeAlpha()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 575
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    sub-float v0, v1, v2

    .line 576
    .local v0, x:F
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getChallengeBottom()I
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getChallengeMargin(Z)I
    .locals 1
    .parameter "expanded"

    .prologue
    .line 571
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    goto :goto_0
.end method

.method private getDragHandleSizeAbove()I
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    goto :goto_0
.end method

.method private getDragHandleSizeBelow()I
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    goto :goto_0
.end method

.method private getLayoutBottom()I
    .locals 4

    .prologue
    .line 1197
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1200
    .local v0, bottomMargin:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v0

    .line 1201
    .local v1, layoutBottom:I
    return v1

    .line 1197
    .end local v0           #bottomMargin:I
    .end local v1           #layoutBottom:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    iget v0, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private getMaxChallengeBottom()I
    .locals 4

    .prologue
    .line 1107
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1111
    :goto_0
    return v2

    .line 1108
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1109
    .local v1, layoutBottom:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    .line 1111
    .local v0, challengeHeight:I
    add-int v2, v1, v0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMinChallengeBottom()I
    .locals 1

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    return v0
.end method

.method private isChallengeInteractionBlocked()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v1

    .line 769
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 770
    .local v0, x:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInChallengeView(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isInDragHandle(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isPointInView(FFLandroid/view/View;)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 793
    if-nez p3, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .parameter "maxSize"
    .parameter "childDimen"

    .prologue
    .line 819
    packed-switch p2, :pswitch_data_0

    .line 829
    const/high16 v0, 0x4000

    .line 830
    .local v0, mode:I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 833
    .local v1, size:I
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 821
    .end local v0           #mode:I
    .end local v1           #size:I
    :pswitch_0
    const/high16 v0, -0x8000

    .line 822
    .restart local v0       #mode:I
    move v1, p1

    .line 823
    .restart local v1       #size:I
    goto :goto_0

    .line 825
    .end local v0           #mode:I
    .end local v1           #size:I
    :pswitch_1
    const/high16 v0, 0x4000

    .line 826
    .restart local v0       #mode:I
    move v1, p1

    .line 827
    .restart local v1       #size:I
    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private moveChallengeTo(I)Z
    .locals 8
    .parameter "bottom"

    .prologue
    const/4 v3, 0x1

    .line 1161
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v4, :cond_1

    .line 1162
    :cond_0
    const/4 v3, 0x0

    .line 1189
    :goto_0
    return v3

    .line 1165
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1166
    .local v1, layoutBottom:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v0

    .line 1168
    .local v0, challengeHeight:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1171
    const/high16 v4, 0x3f80

    sub-int v5, p1, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1173
    .local v2, offset:F
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 1174
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v4, :cond_2

    .line 1175
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1179
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerPosition(I)V

    .line 1181
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->layout(IIII)V

    .line 1184
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setAlpha(F)V

    .line 1185
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v4, :cond_3

    .line 1186
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 1188
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method private onFadeEnd(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1132
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1134
    if-nez p1, :cond_0

    .line 1135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1139
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1140
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1141
    return-void
.end method

.method private onFadeStart(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1123
    if-eqz p1, :cond_0

    .line 1124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1127
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1128
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 645
    return-void
.end method

.method private sendInitialListenerUpdates()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    .line 308
    .local v0, challengeTop:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    invoke-interface {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 311
    .end local v0           #challengeTop:I
    :cond_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChallengeShowing(Z)V
    .locals 3
    .parameter "showChallenge"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 466
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-ne v0, p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    .line 478
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->requestAccessibilityFocus()Z

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    const v2, 0x1040320

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    const v2, 0x1040321

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showChallenge(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1227
    const/4 v0, 0x0

    .line 1228
    .local v0, show:Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    if-le v3, v4, :cond_1

    .line 1229
    if-gez p1, :cond_0

    move v0, v1

    .line 1233
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1234
    return-void

    :cond_0
    move v0, v2

    .line 1229
    goto :goto_0

    .line 1231
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private showChallenge(ZI)V
    .locals 3
    .parameter "show"
    .parameter "velocity"

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_1

    .line 1238
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v1, :cond_0

    .line 1243
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 1244
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    .line 1245
    .local v0, layoutBottom:I
    if-eqz p1, :cond_2

    .end local v0           #layoutBottom:I
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->animateChallengeTo(II)V

    goto :goto_0

    .restart local v0       #layoutBottom:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method private updateKeyguardLayerPosition(I)V
    .locals 9
    .parameter "bottom"

    .prologue
    const/high16 v8, 0x3f80

    .line 1435
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_0

    .line 1436
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1440
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v2

    .line 1441
    .local v2, minBottom:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 1442
    .local v1, maxBottom:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1443
    .local v3, realBottom:I
    sub-int v4, v3, v2

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v8, v4

    .line 1444
    .local v0, alpha:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1445
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1454
    .end local v0           #alpha:F
    .end local v1           #maxBottom:I
    .end local v2           #minBottom:I
    .end local v3           #realBottom:I
    :cond_0
    return-void
.end method

.method private updateKeyguardLayerView(Z)V
    .locals 12
    .parameter "show"

    .prologue
    .line 1378
    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 1380
    :try_start_0
    const-class v8, Lcom/mediatek/common/pluginmanager/IPluginManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "create"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/pluginmanager/IPluginManager;

    .line 1385
    .local v5, plugManager:Lcom/mediatek/common/pluginmanager/IPluginManager;
    invoke-interface {v5}, Lcom/mediatek/common/pluginmanager/IPluginManager;->getPluginCount()I

    move-result v7

    .line 1386
    .local v7, pluginCount:I
    if-eqz v7, :cond_2

    .line 1390
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 1391
    invoke-interface {v5, v1}, Lcom/mediatek/common/pluginmanager/IPluginManager;->getPlugin(I)Lcom/mediatek/common/pluginmanager/IPlugin;

    move-result-object v6

    .line 1392
    .local v6, plugin:Lcom/mediatek/common/pluginmanager/IPlugin;
    invoke-interface {v6}, Lcom/mediatek/common/pluginmanager/IPlugin;->createObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1393
    .local v2, keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    invoke-interface {v2}, Lcom/mediatek/common/policy/IKeyguardLayer;->create()Landroid/view/View;

    move-result-object v3

    .line 1394
    .local v3, keyguardLayerView:Landroid/view/View;
    const-string v8, "SlidingChallengeLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataUsageView create plugin keyguardLayer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", this="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-interface {v2}, Lcom/mediatek/common/policy/IKeyguardLayer;->getKeyguardLayerInfo()Lcom/mediatek/common/policy/KeyguardLayerInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1396
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1397
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    .line 1390
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1399
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1400
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1416
    .end local v1           #i:I
    .end local v2           #keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    .end local v3           #keyguardLayerView:Landroid/view/View;
    .end local v5           #plugManager:Lcom/mediatek/common/pluginmanager/IPluginManager;
    .end local v6           #plugin:Lcom/mediatek/common/pluginmanager/IPlugin;
    .end local v7           #pluginCount:I
    :catch_0
    move-exception v0

    .line 1417
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1420
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1405
    .restart local v5       #plugManager:Lcom/mediatek/common/pluginmanager/IPluginManager;
    .restart local v7       #pluginCount:I
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1406
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1407
    .local v4, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1411
    .end local v4           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1412
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1413
    .restart local v4       #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method animateChallengeTo(II)V
    .locals 13
    .parameter "y"
    .parameter "velocity"

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x0

    const/high16 v12, 0x3f80

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 434
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v2

    .line 437
    .local v2, sy:I
    sub-int v4, p1, v2

    .line 438
    .local v4, dy:I
    if-nez v4, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v7

    .line 446
    .local v7, childHeight:I
    div-int/lit8 v10, v7, 0x2

    .line 447
    .local v10, halfHeight:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 448
    .local v9, distanceRatio:F
    int-to-float v0, v10

    int-to-float v3, v10

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v8, v0, v3

    .line 451
    .local v8, distance:F
    const/4 v5, 0x0

    .line 452
    .local v5, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 453
    if-lez p2, :cond_2

    .line 454
    const/high16 v0, 0x447a

    int-to-float v3, p2

    div-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 459
    :goto_1
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 456
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v7

    div-float v6, v0, v3

    .line 457
    .local v6, childDelta:F
    add-float v0, v6, v12

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_1
.end method

.method animateHandle(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 295
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    .line 296
    .local v0, targetAlpha:F
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 303
    :goto_1
    return-void

    .line 295
    .end local v0           #targetAlpha:F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    .restart local v0       #targetAlpha:F
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1269
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    return v0
.end method

.method completeChallengeScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 404
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 405
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 408
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1047
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 1049
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_1

    .line 1052
    const-string v0, "SlidingChallengeLayout"

    const-string v1, "Challenge view missing in computeScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 737
    .local v0, action:I
    const/4 v1, 0x0

    .line 738
    .local v1, handled:Z
    if-nez v0, :cond_0

    .line 740
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 742
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 753
    :cond_2
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_3

    .line 754
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 757
    :cond_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 758
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 761
    :cond_5
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 386
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 387
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 388
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1033
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1044
    return-void
.end method

.method public fadeChallenge(Z)V
    .locals 6
    .parameter "show"

    .prologue
    .line 1085
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 1088
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    .line 1089
    .local v0, alpha:F
    :goto_0
    if-eqz p1, :cond_2

    const/16 v1, 0xa0

    .line 1090
    .local v1, duration:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1091
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1101
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1102
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1104
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_0
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1089
    .restart local v0       #alpha:F
    :cond_2
    const/16 v1, 0x64

    goto :goto_1
.end method

.method public fadeInChallenge()V
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1078
    return-void
.end method

.method public fadeOutChallenge()V
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1082
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1264
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1252
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1257
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBouncerAnimationDuration()I
    .locals 1

    .prologue
    .line 516
    const/16 v0, 0xfa

    return v0
.end method

.method public getMaxChallengeTop()I
    .locals 3

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1148
    :goto_0
    return v2

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1147
    .local v1, layoutBottom:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    .line 1148
    .local v0, challengeHeight:I
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public hideBouncer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 547
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 549
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 553
    .local v0, anim:Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 554
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 562
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_4

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 565
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public isBouncing()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public isChallengeShowing()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 336
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "SlidingChallengeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mKeyguardLayerBackground destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IKeyguardLayer;->destroy()V

    .line 360
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "SlidingChallengeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mKeyguardLayerForeground destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IKeyguardLayer;->destroy()V

    .line 365
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 367
    :cond_1
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    .line 368
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    .line 369
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    .line 1346
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 1347
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v1

    .line 1348
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1349
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1350
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1351
    .local v3, lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    iget v4, v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 1352
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    .line 1348
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1353
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    iget v4, v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 1354
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    goto :goto_1

    .line 1355
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    iget v4, v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1356
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_3

    .line 1357
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1360
    :cond_3
    instance-of v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v4, :cond_4

    .line 1361
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1364
    :cond_4
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    goto :goto_1

    .line 1367
    .end local v3           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 588
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 589
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 591
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 594
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 628
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 629
    :cond_2
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 630
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 633
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    return v5

    .line 596
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 598
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    .line 607
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 608
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 609
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 610
    .local v3, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 611
    .local v4, y:F
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-ne v5, v10, :cond_6

    .line 615
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 616
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 617
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 618
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 619
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 620
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v10, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 608
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 622
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_2

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingLeft()I

    move-result v17

    .line 968
    .local v17, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingTop()I

    move-result v19

    .line 969
    .local v19, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingRight()I

    move-result v18

    .line 970
    .local v18, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v16

    .line 971
    .local v16, paddingBottom:I
    sub-int v22, p4, p2

    .line 972
    .local v22, width:I
    sub-int v11, p5, p3

    .line 974
    .local v11, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v10

    .line 975
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_5

    .line 976
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 978
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 975
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 980
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 982
    .local v15, lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 985
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v6, v23, 0x2

    .line 986
    .local v6, center:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 987
    .local v9, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 988
    .local v8, childHeight:I
    div-int/lit8 v23, v9, 0x2

    sub-int v14, v6, v23

    .line 989
    .local v14, left:I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v13, v23, v24

    .line 992
    .local v13, layoutBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v5, v13, v23

    .line 994
    .local v5, bottom:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 995
    sub-int v23, v5, v8

    add-int v24, v14, v9

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v14, v0, v1, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 996
    .end local v5           #bottom:I
    .end local v6           #center:I
    .end local v8           #childHeight:I
    .end local v9           #childWidth:I
    .end local v13           #layoutBottom:I
    .end local v14           #left:I
    :cond_2
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 997
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v6, v23, 0x2

    .line 998
    .restart local v6       #center:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v6, v23

    .line 999
    .restart local v14       #left:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v20, v14, v23

    .line 1000
    .local v20, right:I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v5, v23, v24

    .line 1001
    .restart local v5       #bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v21, v5, v23

    .line 1002
    .local v21, top:I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v7, v14, v0, v1, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1005
    .end local v5           #bottom:I
    .end local v6           #center:I
    .end local v14           #left:I
    .end local v20           #right:I
    .end local v21           #top:I
    :cond_3
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1008
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 1009
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1014
    :cond_4
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v23, v23, v17

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    add-int v24, v24, v19

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v17

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1021
    .end local v7           #child:Landroid/view/View;
    .end local v15           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, v24

    move/from16 v3, p4

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1026
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 1027
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 1029
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 838
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x4000

    if-eq v2, v3, :cond_1

    .line 840
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SlidingChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 845
    .local v25, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 846
    .local v15, height:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setMeasuredDimension(II)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v20, v0

    .line 850
    .local v20, oldChallengeView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v21, v0

    .line 851
    .local v21, oldExpandChallengeView:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 852
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v13

    .line 857
    .local v13, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_10

    .line 858
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 859
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 860
    .local v18, lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_2

    .line 862
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    :cond_2
    instance-of v2, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_3

    .line 866
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v8

    .line 869
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_4

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 874
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v2, :cond_6

    .line 877
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isThemeProject()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isUseDefault()Z

    move-result v2

    if-nez v2, :cond_9

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10202fc

    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getThemeViewId(Landroid/content/Context;I)I

    move-result v17

    .line 879
    .local v17, ids:I
    if-eqz v8, :cond_5

    .line 880
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 881
    .local v24, v:Landroid/view/View;
    const-string v2, "SlidingChallengeLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** caijh theme lock, onMeasure(), ids = :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v = :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    if-eqz v24, :cond_8

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    .line 889
    .end local v17           #ids:I
    .end local v24           #v:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeMargin(Z)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    .line 857
    :cond_6
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 871
    :cond_7
    const/4 v2, 0x4

    goto :goto_1

    .line 882
    .restart local v17       #ids:I
    .restart local v24       #v:Landroid/view/View;
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 885
    .end local v17           #ids:I
    .end local v24           #v:Landroid/view/View;
    :cond_9
    const v2, 0x10202fc

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 891
    :cond_b
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 893
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_childType=\"expandChallengeHandle\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_c
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, v21

    if-eq v2, v0, :cond_6

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 899
    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    .line 902
    :cond_e
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 903
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrimView(Landroid/view/View;)V

    goto :goto_4

    .line 904
    :cond_f
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 905
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    goto :goto_4

    .line 912
    .end local v8           #child:Landroid/view/View;
    .end local v18           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_12

    .line 919
    move/from16 v6, p2

    .line 920
    .local v6, challengeHeightSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v22

    .line 921
    .local v22, root:Landroid/view/View;
    if-eqz v22, :cond_11

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 923
    .restart local v18       #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 924
    .local v23, specSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v26, v2, v3

    .line 925
    .local v26, windowHeight:I
    sub-int v14, v26, v23

    .line 926
    .local v14, diff:I
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    sub-int v19, v2, v14

    .line 927
    .local v19, maxChallengeHeight:I
    if-lez v19, :cond_11

    .line 928
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->makeChildMeasureSpec(II)I

    move-result v6

    .line 931
    .end local v14           #diff:I
    .end local v18           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    .end local v19           #maxChallengeHeight:I
    .end local v23           #specSize:I
    .end local v26           #windowHeight:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 935
    .end local v6           #challengeHeightSpec:I
    .end local v22           #root:Landroid/view/View;
    :cond_12
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v13, :cond_16

    .line 936
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 937
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_14

    .line 935
    :cond_13
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 941
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq v8, v2, :cond_13

    .line 945
    move/from16 v9, p1

    .local v9, parentWidthSpec:I
    move/from16 v11, p2

    .line 946
    .local v11, parentHeightSpec:I
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 947
    .restart local v18       #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_15

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v22

    .line 949
    .restart local v22       #root:Landroid/view/View;
    if-eqz v22, :cond_15

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 954
    .local v27, windowWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v26, v2, v3

    .line 955
    .restart local v26       #windowHeight:I
    const/high16 v2, 0x4000

    move/from16 v0, v27

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 957
    const/high16 v2, 0x4000

    move/from16 v0, v26

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 961
    .end local v22           #root:Landroid/view/View;
    .end local v26           #windowHeight:I
    .end local v27           #windowWidth:I
    :cond_15
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_8

    .line 963
    .end local v8           #child:Landroid/view/View;
    .end local v9           #parentWidthSpec:I
    .end local v11           #parentHeightSpec:I
    .end local v18           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_16
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 649
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_0

    .line 650
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 652
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 655
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 724
    :cond_1
    :goto_0
    :pswitch_0
    return v10

    .line 657
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    goto :goto_0

    .line 663
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_2

    .line 664
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 666
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    .line 670
    :pswitch_3
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 674
    :pswitch_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_3

    .line 675
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 676
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 678
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    .line 682
    :pswitch_5
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v7, :cond_5

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 684
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 685
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 686
    .local v5, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 688
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-ne v7, v11, :cond_6

    :cond_4
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_6

    .line 692
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 693
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 694
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 696
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 697
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v8, 0x0

    invoke-virtual {v7, v11, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 703
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_1

    .line 706
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 708
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 709
    .local v3, index:I
    if-gez v3, :cond_7

    .line 712
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    .line 713
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    goto/16 :goto_0

    .line 684
    .end local v3           #index:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 716
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #x:F
    .end local v6           #y:F
    .restart local v3       #index:I
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 717
    .restart local v6       #y:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    sub-float v7, v6, v7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 720
    .local v4, pos:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    float-to-int v8, v4

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    goto/16 :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->hideBouncer()V

    .line 378
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "allowIntercept"

    .prologue
    .line 584
    return-void
.end method

.method public setChallengeInteractive(Z)V
    .locals 1
    .parameter "interactive"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public setClipChildrenForNewEventView(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setClipChildren(Z)V

    .line 1458
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setClipChildrenForNewEventView(Z)V

    .line 1461
    :cond_0
    return-void
.end method

.method public setHandleAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 281
    :cond_0
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 322
    return-void
.end method

.method public setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    .line 315
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sendInitialListenerUpdates()V

    .line 318
    :cond_0
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .locals 2
    .parameter "scrim"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    return-void

    .line 415
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setScrollState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 392
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-eq v0, p1, :cond_0

    .line 393
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    .line 395
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->animateHandle(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 400
    :cond_0
    return-void

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;)V
    .locals 1
    .parameter "glowPadView"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoMultiWaveView;->setTouchRecepient(Landroid/view/View;)V

    .line 1468
    :cond_0
    return-void
.end method

.method public setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 1
    .parameter "glowPadView"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setTouchRecepient(Landroid/view/View;)V

    .line 1432
    :cond_0
    return-void
.end method

.method public showBouncer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 521
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 523
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 524
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 525
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 527
    .local v0, anim:Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 528
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$7;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 534
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 536
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_3

    .line 537
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 540
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public showChallenge(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1219
    if-nez p1, :cond_0

    .line 1222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 1224
    :cond_0
    return-void
.end method

.method public updateKeyguardLayerVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1423
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z

    .line 1424
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->post(Ljava/lang/Runnable;)Z

    .line 1426
    return-void
.end method
