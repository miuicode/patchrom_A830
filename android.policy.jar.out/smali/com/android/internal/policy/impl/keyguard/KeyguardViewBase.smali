.class public abstract Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x35000000

.field private static final DBG:Z = true

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardViewBase"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_BASE_DIR:Ljava/io/File; = null

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasSet:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->WALLPAPER_BASE_DIR:Ljava/io/File;

    .line 112
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mHasSet:Z

    .line 102
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->resetBackground()V

    .line 139
    return-void
.end method

.method private static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 551
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object p1, v4

    .line 611
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 555
    .restart local p1
    :cond_2
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 557
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, p3, :cond_1

    .line 564
    :cond_3
    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 565
    .local v4, newbm:Landroid/graphics/Bitmap;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 567
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 568
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 569
    .local v7, targetRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 580
    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v8

    .line 581
    .local v2, deltaw:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v8

    .line 582
    .local v1, deltah:I
    const-string v8, "KeyguardViewBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap(),deltaw = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "deltah = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-gtz v2, :cond_4

    if-lez v1, :cond_5

    .line 586
    :cond_4
    if-le v2, v1, :cond_6

    .line 587
    int-to-float v8, p2

    iget v9, v7, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 591
    .local v6, scale:F
    :goto_1
    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 592
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 593
    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v8

    .line 594
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v8

    .line 597
    .end local v6           #scale:F
    :cond_5
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 598
    const-string v8, "KeyguardViewBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap(),targetRect.left = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",targetRect.right  = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",targetRect.top = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",targetRect.bottom = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 602
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 603
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 604
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 606
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v4

    .line 608
    goto/16 :goto_0

    .line 589
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_6
    int-to-float v8, p3

    iget v9, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v9, v9

    div-float v6, v8, v9

    .restart local v6       #scale:F
    goto/16 :goto_1

    .line 609
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltah:I
    .end local v2           #deltaw:I
    .end local v4           #newbm:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    .end local v7           #targetRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 610
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "KeyguardViewBase"

    const-string v9, "Can\'t generate default bitmap"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getCurrentWallpaperLocked(III)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "userId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 495
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v6

    const-string v7, "wallpaper"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 523
    .end local v2           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v5

    .line 499
    .restart local v2       #f:Ljava/io/File;
    :cond_1
    const/high16 v6, 0x1000

    invoke-static {v2, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 500
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    .line 502
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 504
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 505
    const/4 v6, 0x1

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 506
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 508
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 513
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v5, v6

    .line 516
    goto :goto_0

    .line 509
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 510
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v6, "KeyguardViewBase"

    const-string v7, "Can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 514
    :catch_1
    move-exception v6

    goto :goto_0

    .line 512
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    .line 513
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 516
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 519
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 521
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "KeyguardViewBase"

    const-string v7, "Error getting wallpaper"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 514
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108021e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 529
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 531
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 533
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 534
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 535
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 536
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 541
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 547
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v4

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "KeyguardViewBase"

    const-string v6, "Can\'t decode stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 542
    :catch_1
    move-exception v5

    goto :goto_0

    .line 540
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 541
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 544
    :goto_1
    throw v4

    .line 542
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private getSettingsComponentName(I)Landroid/content/ComponentName;
    .locals 14
    .parameter "userId"

    .prologue
    const/4 v10, 0x0

    .line 426
    const-string v11, "KeyguardViewBase"

    const-string v12, "getSettingsComponentName"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 428
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 429
    .local v6, stream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 430
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .line 431
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->migrateFromOld()V

    .line 435
    :cond_0
    const/4 v1, 0x0

    .line 437
    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 438
    .end local v6           #stream:Ljava/io/FileInputStream;
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 439
    const/4 v11, 0x0

    invoke-interface {v5, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 443
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 444
    .local v9, type:I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 445
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, tag:Ljava/lang/String;
    const-string v11, "wp"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 447
    const/4 v11, 0x0

    const-string v12, "component"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, comp:Ljava/lang/String;
    const-string v11, "KeyguardViewBase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSettingsComponentName, comp = :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 454
    .end local v0           #comp:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    move-object v6, v7

    .line 467
    .end local v7           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v6, :cond_3

    .line 468
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 473
    :cond_3
    :goto_2
    return-object v1

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v0       #comp:Ljava/lang/String;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_4
    move-object v1, v10

    .line 449
    goto :goto_0

    .line 455
    .end local v0           #comp:Ljava/lang/String;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 456
    .local v2, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v10, "KeyguardViewBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 457
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 458
    .local v2, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v10, "KeyguardViewBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 459
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .line 460
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v10, "KeyguardViewBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 461
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 462
    .local v2, e:Ljava/io/IOException;
    :goto_6
    const-string v10, "KeyguardViewBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 463
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 464
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v10, "KeyguardViewBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 470
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 463
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 461
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 459
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 457
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 455
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 616
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->WALLPAPER_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 227
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 228
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 229
    sparse-switch v1, :sswitch_data_0

    .line 305
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    return v3

    .line 235
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 239
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :cond_3
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 259
    :sswitch_2
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 264
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/16 v2, 0x18

    if-ne v1, v2, :cond_5

    move v0, v3

    .line 271
    .local v0, direction:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_1

    .line 264
    .end local v0           #direction:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 268
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 275
    .restart local v0       #direction:I
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFmActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v0}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_1

    .line 287
    .end local v0           #direction:I
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 288
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 300
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch

    .line 288
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private isLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "ctx"
    .parameter "className"

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 405
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    .line 406
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 407
    .local v3, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 409
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 410
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 411
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    const/4 v6, 0x1

    .line 422
    .end local v1           #i:I
    .end local v3           #listSize:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    return v6

    .line 416
    .restart local v1       #i:I
    .restart local v3       #listSize:I
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "KeyguardViewBase"

    const-string v7, "isLiveWallpaper(), error ~~~"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v1           #i:I
    .end local v3           #listSize:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .parameter "userId"

    .prologue
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wallpaper_info.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 625
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v3, oldWallpaper:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v2, oldInfo:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    .local v1, newWallpaper:Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 631
    .end local v1           #newWallpaper:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    .local v0, newInfo:Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 635
    .end local v0           #newInfo:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private peekWallpaperBitmap(Landroid/content/Context;IIZI)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "returnDefault"
    .parameter "userId"

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 480
    .local v1, wallpaper:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p5, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getCurrentWallpaperLocked(III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 484
    :goto_0
    if-eqz p4, :cond_0

    .line 485
    if-nez v1, :cond_0

    .line 486
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getDefaultWallpaperLocked(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 490
    .end local v1           #wallpaper:Landroid/graphics/Bitmap;
    .local v2, wallpaper:Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 481
    .end local v2           #wallpaper:Landroid/graphics/Bitmap;
    .restart local v1       #wallpaper:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "KeyguardViewBase"

    const-string v4, "No memory load current wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    move-object v2, v1

    .line 490
    .end local v1           #wallpaper:Landroid/graphics/Bitmap;
    .restart local v2       #wallpaper:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private setWallpaper()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x3020090

    const/4 v4, 0x1

    .line 345
    const-string v0, "KeyguardViewBase"

    const-string v1, "setWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v9, 0x0

    .line 347
    .local v9, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 348
    .local v8, dm:Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_1

    move v10, v4

    .line 349
    .local v10, isPortrait:Z
    :goto_0
    if-eqz v10, :cond_2

    iget v2, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 350
    .local v2, width:I
    :goto_1
    if-eqz v10, :cond_3

    iget v3, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 352
    .local v3, height:I
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 353
    .local v7, callingUid:I
    const/4 v5, 0x0

    .line 354
    .local v5, wallpaperUserId:I
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_4

    .line 355
    const/4 v5, 0x0

    .line 359
    :goto_3
    const-string v0, "KeyguardViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWallpaper(), callingUid =:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ",wallpaperUserId = :"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getSettingsComponentName(I)Landroid/content/ComponentName;

    move-result-object v6

    .line 363
    .local v6, c:Landroid/content/ComponentName;
    const-string v0, "KeyguardViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWallpaper(), c =:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v6, :cond_7

    .line 366
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, n:Ljava/lang/String;
    const-string v0, "KeyguardViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWallpaper(), n =:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->isLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    const-string v0, "KeyguardViewBase"

    const-string v1, "it\'s live wallpaper, set loading image drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 396
    .end local v11           #n:Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_0

    .line 397
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_0
    return-void

    .line 348
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v5           #wallpaperUserId:I
    .end local v6           #c:Landroid/content/ComponentName;
    .end local v7           #callingUid:I
    .end local v10           #isPortrait:Z
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 349
    .restart local v10       #isPortrait:Z
    :cond_2
    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_1

    .line 350
    .restart local v2       #width:I
    :cond_3
    iget v3, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_2

    .line 357
    .restart local v3       #height:I
    .restart local v5       #wallpaperUserId:I
    .restart local v7       #callingUid:I
    :cond_4
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    goto/16 :goto_3

    .line 373
    .restart local v6       #c:Landroid/content/ComponentName;
    .restart local v11       #n:Ljava/lang/String;
    :cond_5
    const-string v0, "KeyguardViewBase"

    const-string v1, "it\'s static wallpaper, set current static wallpaper drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->peekWallpaperBitmap(Landroid/content/Context;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 377
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9           #dr:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v14, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v9       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 379
    :cond_6
    const-string v0, "KeyguardViewBase"

    const-string v1, "LockScreen wallpaper load error,set default wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_4

    .line 385
    .end local v11           #n:Ljava/lang/String;
    :cond_7
    const-string v0, "KeyguardViewBase"

    const-string v1, "ComponentName == null, set current static wallpaper drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->peekWallpaperBitmap(Landroid/content/Context;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 389
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9           #dr:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v14, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v9       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 391
    :cond_8
    const-string v0, "KeyguardViewBase"

    const-string v1, "LockScreen wallpaper load error,set default wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public clearWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 641
    const-string v0, "KeyguardViewBase"

    const-string v1, "clearWallpaper(), mBitmap.recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 643
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBitmap:Landroid/graphics/Bitmap;

    .line 645
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 327
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 309
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 311
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract isAlarmUnlockScreen()Z
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWallpaperCompleteAfterBoot:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mHasSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setWallpaper()V

    .line 148
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mHasSet:Z

    goto :goto_0
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 0
    .parameter "viewMediatorCallback"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 334
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
