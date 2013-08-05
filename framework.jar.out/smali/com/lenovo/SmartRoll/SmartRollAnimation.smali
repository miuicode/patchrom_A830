.class public Lcom/lenovo/SmartRoll/SmartRollAnimation;
.super Ljava/lang/Object;
.source "SmartRollAnimation.java"


# static fields
.field private static final FAIL_FIRST_ANIMATION_DURATION_MS:I = 0x78

.field private static final FAIL_SECOND_ANIMATION_DURATION_MS:I = 0x78

.field private static final SUCCESS_FIRST_ANIMATION_DURATION_MS:I = 0xc8

.field private static final SUCCESS_SECOND_ANIMATION_DURATION_MS:I = 0xc8


# instance fields
.field private mAccelerator:Landroid/view/animation/AccelerateInterpolator;

.field private mDecelerator:Landroid/view/animation/DecelerateInterpolator;

.field private mFirstImageAnimator:Landroid/animation/ObjectAnimator;

.field private mHaveRollOvered:Z

.field private mIsResultSupportAndChanged:Z

.field private mNewSmartRoll:Z

.field private mNewViewCacheBitmap:Landroid/graphics/Bitmap;

.field private mOldViewCacheBitmap:Landroid/graphics/Bitmap;

.field private mSecondImageAnimator:Landroid/animation/ObjectAnimator;

.field private mToAxis:I

.field private mView:Landroid/view/View;

.field private mViewDeaultfLayerType:I

.field private mfromAxis:I


# direct methods
.method public constructor <init>(Landroid/view/View;ZII)V
    .locals 2
    .parameter "view"
    .parameter "newSmartRoll"
    .parameter "fromAxis"
    .parameter "toAxis"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewSmartRoll:Z

    .line 50
    iput-boolean v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mHaveRollOvered:Z

    .line 52
    iput-boolean v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mIsResultSupportAndChanged:Z

    .line 54
    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    .line 55
    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    .line 57
    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mAccelerator:Landroid/view/animation/AccelerateInterpolator;

    .line 58
    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mDecelerator:Landroid/view/animation/DecelerateInterpolator;

    .line 64
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    .line 65
    iput-boolean p2, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewSmartRoll:Z

    .line 66
    iput p3, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mfromAxis:I

    .line 67
    iput p4, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mToAxis:I

    .line 69
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mAccelerator:Landroid/view/animation/AccelerateInterpolator;

    .line 70
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mDecelerator:Landroid/view/animation/DecelerateInterpolator;

    .line 73
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/SmartRoll/SmartRollAnimation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mViewDeaultfLayerType:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/SmartRoll/SmartRollAnimation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mViewDeaultfLayerType:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/SmartRoll/SmartRollAnimation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mHaveRollOvered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewSmartRoll:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/SmartRoll/SmartRollAnimation;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "v"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v2

    .line 99
    .local v2, willNotCache:Z
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimationAlpha()I
    .locals 7

    .prologue
    .line 275
    const/16 v1, 0x14

    .line 276
    .local v1, MIN_ALPHA:I
    iget-boolean v5, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mIsResultSupportAndChanged:Z

    if-eqz v5, :cond_0

    const/16 v0, 0xc8

    .line 278
    .local v0, MAX_ALPHA:I
    :goto_0
    const/4 v4, 0x0

    .line 279
    .local v4, isFirstAnimation:Z
    const/4 v3, 0x0

    .line 281
    .local v3, fraction:F
    iget-object v5, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    iget-object v5, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    .line 283
    const/4 v4, 0x1

    .line 288
    :goto_1
    mul-float/2addr v3, v3

    .line 292
    if-eqz v4, :cond_2

    .line 293
    add-int/lit8 v5, v0, -0x14

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    add-int/lit8 v2, v5, 0x14

    .line 298
    .local v2, alpha:I
    :goto_2
    return v2

    .line 276
    .end local v0           #MAX_ALPHA:I
    .end local v2           #alpha:I
    .end local v3           #fraction:F
    .end local v4           #isFirstAnimation:Z
    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    .line 285
    .restart local v0       #MAX_ALPHA:I
    .restart local v3       #fraction:F
    .restart local v4       #isFirstAnimation:Z
    :cond_1
    iget-object v5, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    goto :goto_1

    .line 295
    :cond_2
    add-int/lit8 v5, v0, -0x14

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v2, v5, 0x14

    .restart local v2       #alpha:I
    goto :goto_2
.end method

.method public getViewCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mHaveRollOvered:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewViewCacheBitmap:Landroid/graphics/Bitmap;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mOldViewCacheBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onResultSupportAndChanged(Ljava/lang/Runnable;)V
    .locals 6
    .parameter "finisher"

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mIsResultSupportAndChanged:Z

    .line 125
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mfromAxis:I

    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mToAxis:I

    mul-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    .line 130
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mAccelerator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mDecelerator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;

    invoke-direct {v1, p0}, Lcom/lenovo/SmartRoll/SmartRollAnimation$1;-><init>(Lcom/lenovo/SmartRoll/SmartRollAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/SmartRoll/SmartRollAnimation$2;-><init>(Lcom/lenovo/SmartRoll/SmartRollAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 195
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 196
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    .line 137
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 127
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xaat 0x42t
    .end array-data

    .line 130
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xaat 0xc2t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 134
    :array_2
    .array-data 0x4
        0x0t 0x0t 0xa0t 0xc0t
        0x0t 0x0t 0xaat 0xc2t
    .end array-data

    .line 137
    :array_3
    .array-data 0x4
        0x0t 0x0t 0xaat 0x42t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onResultSupportAndNotChanged(Ljava/lang/Runnable;)V
    .locals 6
    .parameter "finisher"

    .prologue
    const-wide/16 v4, 0x78

    const/4 v3, 0x2

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mIsResultSupportAndChanged:Z

    .line 207
    iget v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mfromAxis:I

    iget v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mToAxis:I

    mul-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    .line 212
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mDecelerator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mAccelerator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/lenovo/SmartRoll/SmartRollAnimation$3;

    invoke-direct {v1, p0}, Lcom/lenovo/SmartRoll/SmartRollAnimation$3;-><init>(Lcom/lenovo/SmartRoll/SmartRollAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/lenovo/SmartRoll/SmartRollAnimation$4;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/SmartRoll/SmartRollAnimation$4;-><init>(Lcom/lenovo/SmartRoll/SmartRollAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 272
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mFirstImageAnimator:Landroid/animation/ObjectAnimator;

    .line 219
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    const-string/jumbo v1, "rotationY"

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mSecondImageAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 209
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 212
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 216
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0xc1t
    .end array-data

    .line 219
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public saveNewViewCacheBitmap()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewViewCacheBitmap:Landroid/graphics/Bitmap;

    .line 85
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mNewViewCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveOldViewCacheBitmap()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/SmartRoll/SmartRollAnimation;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mOldViewCacheBitmap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollAnimation;->mOldViewCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
