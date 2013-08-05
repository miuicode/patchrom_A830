.class public Lcom/android/internal/widget/ImageDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/ImageDigitalClock$AmPm;,
        Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "ImageDigitalClock"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

.field private mAmPmDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPmTextColor:I

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinute01:Landroid/widget/ImageView;

.field private mMinute02:Landroid/widget/ImageView;

.field private mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeDisplayColon:Landroid/widget/ImageView;

.field private mTimeDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 90
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    .line 234
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput v9, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 76
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    .line 82
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 236
    .local v6, res:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->ImageDigitalClock:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 239
    .local v5, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 240
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 241
    .local v1, array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 242
    .local v2, count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v7, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 244
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 245
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    iput-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    .line 250
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v7           #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    .line 251
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "The Illegal time drawables count!!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 254
    :cond_3
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 255
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 256
    .restart local v1       #array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 257
    .restart local v2       #count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .restart local v7       #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 259
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 260
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 262
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 264
    iput-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    .line 267
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v7           #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_5
    const-string v8, "ImageDigitalClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAmPmDrawables = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_6

    .line 269
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "The Illegal ampm drawables count!!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 272
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    const-string v8, "ImageDigitalClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTimeColonDrawable = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmTextColor:I

    .line 276
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/ImageDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ImageDigitalClock;)Lcom/android/internal/widget/ImageDigitalClock$AmPm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getAmPm()Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ImageDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ImageDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->setDateFormat()V

    return-void
.end method

.method private getAmPm()Lcom/android/internal/widget/ImageDigitalClock$AmPm;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    return-object v0
.end method

.method private getImageResId(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "index"

    .prologue
    .line 416
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 426
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 429
    :cond_0
    return v0
.end method

.method private setDateFormat()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 385
    .local v5, is24Format:Z
    if-eqz v5, :cond_3

    const v2, 0x1040031

    .line 388
    .local v2, fommatStringId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, format:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    if-nez v5, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, a:I
    const/4 v6, 0x0

    .line 392
    .local v6, quoted:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 394
    .local v1, c:C
    const/16 v7, 0x27

    if-ne v1, v7, :cond_0

    .line 395
    if-nez v6, :cond_5

    move v6, v8

    .line 397
    :cond_0
    :goto_3
    if-nez v6, :cond_6

    const/16 v7, 0x61

    if-ne v1, v7, :cond_6

    .line 398
    move v0, v4

    .line 402
    .end local v1           #c:C
    :cond_1
    if-nez v0, :cond_7

    .line 403
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    :cond_2
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 408
    iput-object v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    .line 409
    return-void

    .line 385
    .end local v0           #a:I
    .end local v2           #fommatStringId:I
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #quoted:Z
    :cond_3
    const v2, 0x1040030

    goto :goto_0

    .restart local v2       #fommatStringId:I
    .restart local v3       #format:Ljava/lang/String;
    :cond_4
    move v7, v9

    .line 389
    goto :goto_1

    .restart local v0       #a:I
    .restart local v1       #c:C
    .restart local v4       #i:I
    .restart local v6       #quoted:Z
    :cond_5
    move v6, v9

    .line 395
    goto :goto_3

    .line 392
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 404
    .end local v1           #c:C
    :cond_7
    if-lez v0, :cond_2

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 306
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 308
    iget v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 311
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 312
    new-instance v1, Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/ImageDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 323
    new-instance v1, Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/ImageDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 324
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    .line 329
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 335
    iget v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 346
    iput-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "hour01_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour01:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "hour02_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour02:Landroid/widget/ImageView;

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "minute01_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute01:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "minute02_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute02:Landroid/widget/ImageView;

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "colon_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "am_pm"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 298
    .local v5, id:I
    new-instance v0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmTextColor:I

    iget-object v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;ILjava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 301
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->setDateFormat()V

    .line 302
    return-void
.end method

.method public updateTime()V
    .locals 10

    .prologue
    .line 355
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 363
    .local v3, is24Format:Z
    if-nez v3, :cond_1

    .line 364
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 365
    .local v0, hour:I
    if-nez v0, :cond_0

    .line 366
    const/16 v0, 0xc

    .line 371
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 372
    .local v4, minute:I
    div-int/lit8 v1, v0, 0xa

    .line 373
    .local v1, hour01:I
    rem-int/lit8 v2, v0, 0xa

    .line 374
    .local v2, hour02:I
    div-int/lit8 v5, v4, 0xa

    .line 375
    .local v5, minute01:I
    rem-int/lit8 v6, v4, 0xa

    .line 376
    .local v6, minute02:I
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour01:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour02:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute01:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute02:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->setIsMorning(Z)V

    .line 381
    return-void

    .line 369
    .end local v0           #hour:I
    .end local v1           #hour01:I
    .end local v2           #hour02:I
    .end local v4           #minute:I
    .end local v5           #minute01:I
    .end local v6           #minute02:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .restart local v0       #hour:I
    goto :goto_0

    .line 380
    .restart local v1       #hour01:I
    .restart local v2       #hour02:I
    .restart local v4       #minute:I
    .restart local v5       #minute01:I
    .restart local v6       #minute02:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    .line 352
    return-void
.end method
