.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo"

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration; = null

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final PERISIST_SYSTEM_THEME_PACKAGENAME:Ljava/lang/String; = "persist.sys.theme.package"

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SKIN_UNDEFINED:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final THEME_PACKAGE_UNDEFINED:Ljava/lang/String; = "android"

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public ControlTheme:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public current_theme_id:I

.field public densityDpi:I

.field public extraConfig:Lmiui/content/res/ExtraConfiguration;

.field public fontPath:Ljava/lang/String;

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mSystemThemePackageName:Ljava/lang/String;

.field public mcc:I

.field public mnc:I

.field public nButtonres:I

.field public nCheckboxres:I

.field public nDialogres:I

.field public nRadioButtonres:I

.field public nSectionLineBackground:I

.field public nSeekbarres:I

.field public nSwitchres:I

.field public nTabres:I

.field public nTitleBackground:I

.field public nTitlecolor:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public packagename:Ljava/lang/String;

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public simSetLocale:Z

.field public skin:Ljava/lang/String;

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1500
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    new-instance v0, Lmiui/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    new-instance v0, Lmiui/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    new-instance v0, Lmiui/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 906
    const-string/jumbo v1, "persist.sys.skin.fontpath"

    const-string v2, "/system/fonts/FangZhengLTH.ttf"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .parameter "screenLayout"

    .prologue
    .line 1694
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static getSkin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 894
    const-string/jumbo v1, "persist.sys.skin"

    const-string v2, "/system/framework/framework-res.apk"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static getSkinPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 900
    const-string/jumbo v1, "persist.sys.skin.package"

    const-string v2, "android"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static getSystemThemePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 914
    const-string/jumbo v1, "persist.sys.theme.package"

    const-string v2, "com.lenovo"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method private loadPreOperator()V
    .locals 3

    .prologue
    const/16 v2, 0x1cc

    const-string/jumbo v1, "ro.carrier.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, carrier:Ljava/lang/String;
    const-string v1, "ct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    const/4 v1, 0x3

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "cu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    goto :goto_0
.end method

.method public static needNewResources(II)Z
    .locals 1
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 1339
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z

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

.method public static reduceScreenLayout(III)I
    .locals 6
    .parameter "curLayout"
    .parameter "longSizeDp"
    .parameter "shortSizeDp"

    .prologue
    .line 209
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    .line 212
    const/4 v3, 0x1

    .line 213
    .local v3, screenLayoutSize:I
    const/4 v2, 0x0

    .line 214
    .local v2, screenLayoutLong:Z
    const/4 v1, 0x0

    .line 249
    .local v1, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v2, :cond_0

    .line 250
    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    .line 252
    :cond_0
    if-eqz v1, :cond_1

    .line 253
    const/high16 v4, 0x1000

    or-int/2addr p0, v4

    .line 255
    :cond_1
    and-int/lit8 v0, p0, 0xf

    .line 256
    .local v0, curSize:I
    if-ge v3, v0, :cond_2

    .line 257
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    .line 259
    :cond_2
    return p0

    .line 217
    .end local v0           #curSize:I
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    .line 220
    const/4 v3, 0x4

    .line 232
    .restart local v3       #screenLayoutSize:I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    .line 233
    :cond_4
    const/4 v1, 0x1

    .line 239
    .restart local v1       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    .line 241
    const/4 v2, 0x1

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0

    .line 221
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    .line 224
    const/4 v3, 0x3

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 226
    .end local v3           #screenLayoutSize:I
    :cond_6
    const/4 v3, 0x2

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 235
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #screenLayoutCompatNeeded:Z
    goto :goto_2

    .line 243
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .parameter "curLayout"

    .prologue
    .line 194
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static setSystemThemePackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 920
    const-string/jumbo v0, "persist.sys.theme.package"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 1520
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1521
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1522
    .local v1, b:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move v2, v3

    .line 1605
    :cond_0
    :goto_0
    return v2

    .line 1523
    :cond_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 1524
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mcc:I

    iget v6, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v5, v6

    .line 1525
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1526
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v5, v6

    .line 1527
    if-nez v2, :cond_0

    .line 1528
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_3

    .line 1529
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_5

    move v2, v4

    goto :goto_0

    .line 1530
    :cond_3
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_4

    move v2, v3

    .line 1531
    goto :goto_0

    .line 1533
    :cond_4
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1534
    if-nez v2, :cond_0

    .line 1535
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1536
    if-nez v2, :cond_0

    .line 1537
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1538
    if-nez v2, :cond_0

    .line 1540
    :cond_5
    iget v5, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v2, v5, v6

    if-nez v2, :cond_0

    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v2, v5, v6

    iget-object v5, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v6, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v5, v6}, Lmiui/content/res/ExtraConfiguration;->compareTo(Lmiui/content/res/ExtraConfiguration;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v5, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-object v5, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v5, :cond_8

    move v2, v4

    goto/16 :goto_0

    .line 1569
    :cond_6
    iget-object v5, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v5, :cond_7

    move v2, v3

    .line 1570
    goto/16 :goto_0

    .line 1572
    :cond_7
    iget-object v5, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1574
    :cond_8
    if-nez v2, :cond_0

    .line 1575
    iget v5, p0, Landroid/content/res/Configuration;->ControlTheme:I

    iget v6, p1, Landroid/content/res/Configuration;->ControlTheme:I

    if-eq v5, v6, :cond_9

    move v2, v4

    .line 1576
    :goto_1
    if-nez v2, :cond_0

    .line 1577
    iget v5, p0, Landroid/content/res/Configuration;->nButtonres:I

    iget v6, p1, Landroid/content/res/Configuration;->nButtonres:I

    if-eq v5, v6, :cond_a

    move v2, v4

    goto/16 :goto_0

    .line 1575
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 1579
    :cond_a
    iget v5, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v6, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    if-eq v5, v6, :cond_b

    move v2, v4

    goto/16 :goto_0

    .line 1580
    :cond_b
    iget v5, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iget v6, p1, Landroid/content/res/Configuration;->nSwitchres:I

    if-eq v5, v6, :cond_c

    move v2, v4

    goto/16 :goto_0

    .line 1581
    :cond_c
    iget v5, p0, Landroid/content/res/Configuration;->nTabres:I

    iget v6, p1, Landroid/content/res/Configuration;->nTabres:I

    if-eq v5, v6, :cond_d

    move v2, v4

    goto/16 :goto_0

    .line 1582
    :cond_d
    iget v5, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v6, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    if-eq v5, v6, :cond_e

    move v2, v4

    goto/16 :goto_0

    .line 1583
    :cond_e
    iget v5, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v6, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    if-eq v5, v6, :cond_f

    move v2, v4

    goto/16 :goto_0

    .line 1584
    :cond_f
    iget v5, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v6, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-eq v5, v6, :cond_10

    move v2, v4

    goto/16 :goto_0

    .line 1585
    :cond_10
    iget v5, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v6, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-eq v5, v6, :cond_11

    move v2, v4

    goto/16 :goto_0

    .line 1586
    :cond_11
    iget v5, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    iget v6, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    if-eq v5, v6, :cond_12

    move v2, v4

    goto/16 :goto_0

    .line 1588
    :cond_12
    iget-object v5, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    move v2, v4

    .line 1589
    goto/16 :goto_0

    .line 1595
    :cond_13
    iget-object v5, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-nez v5, :cond_14

    .line 1596
    iget-object v3, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v2, v4

    goto/16 :goto_0

    .line 1597
    :cond_14
    iget-object v4, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-nez v4, :cond_15

    move v2, v3

    .line 1598
    goto/16 :goto_0

    .line 1600
    :cond_15
    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "delta"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, -0x8000

    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, changed:I
    const/4 v1, 0x0

    .line 1212
    .local v1, fontscale_change:Z
    const/4 v2, 0x0

    .line 1213
    .local v2, local_change:Z
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 1214
    or-int/2addr v0, v6

    .line 1215
    const/4 v1, 0x1

    .line 1217
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v3, v4, :cond_1

    .line 1218
    or-int/lit8 v0, v0, 0x1

    .line 1220
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v3, v4, :cond_2

    .line 1221
    or-int/lit8 v0, v0, 0x2

    .line 1223
    :cond_2
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1225
    :cond_3
    const/4 v2, 0x1

    .line 1226
    or-int/lit8 v0, v0, 0x4

    .line 1227
    or-int/lit16 v0, v0, 0x2000

    .line 1229
    :cond_4
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_5

    .line 1231
    or-int/lit8 v0, v0, 0x8

    .line 1233
    :cond_5
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_6

    .line 1235
    or-int/lit8 v0, v0, 0x10

    .line 1237
    :cond_6
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_7

    .line 1239
    or-int/lit8 v0, v0, 0x20

    .line 1241
    :cond_7
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_8

    .line 1243
    or-int/lit8 v0, v0, 0x20

    .line 1245
    :cond_8
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_9

    .line 1247
    or-int/lit8 v0, v0, 0x40

    .line 1249
    :cond_9
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_a

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_a

    .line 1251
    or-int/lit8 v0, v0, 0x20

    .line 1253
    :cond_a
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_b

    .line 1255
    or-int/lit16 v0, v0, 0x80

    .line 1257
    :cond_b
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 1261
    or-int/lit16 v0, v0, 0x100

    .line 1263
    :cond_c
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v3, v4, :cond_d

    .line 1265
    or-int/lit16 v0, v0, 0x200

    .line 1267
    :cond_d
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v4, :cond_e

    .line 1269
    or-int/lit16 v0, v0, 0x400

    .line 1271
    :cond_e
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_f

    .line 1273
    or-int/lit16 v0, v0, 0x400

    .line 1275
    :cond_f
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v4, :cond_10

    .line 1277
    or-int/lit16 v0, v0, 0x800

    .line 1279
    :cond_10
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_11

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_11

    .line 1281
    or-int/lit16 v0, v0, 0x1000

    .line 1284
    :cond_11
    iget-object v3, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1285
    :cond_12
    or-int/2addr v0, v5

    .line 1288
    :cond_13
    iget v3, p1, Landroid/content/res/Configuration;->ControlTheme:I

    iget v4, p0, Landroid/content/res/Configuration;->ControlTheme:I

    if-eq v3, v4, :cond_14

    .line 1289
    or-int/2addr v0, v5

    .line 1292
    :cond_14
    iget v3, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iget v4, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nDialogres:I

    iget v4, p0, Landroid/content/res/Configuration;->nDialogres:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nButtonres:I

    iget v4, p0, Landroid/content/res/Configuration;->nButtonres:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v4, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iget v4, p0, Landroid/content/res/Configuration;->nSwitchres:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nTabres:I

    iget v4, p0, Landroid/content/res/Configuration;->nTabres:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v4, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v4, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v4, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-ne v3, v4, :cond_15

    iget v3, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iget v4, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    if-eq v3, v4, :cond_16

    .line 1302
    :cond_15
    or-int/2addr v0, v5

    .line 1305
    :cond_16
    iget-object v3, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1306
    if-nez v1, :cond_17

    .line 1307
    or-int/2addr v0, v6

    .line 1309
    :cond_17
    if-nez v2, :cond_18

    .line 1310
    or-int/lit8 v0, v0, 0x4

    .line 1318
    :cond_18
    iget-object v3, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1320
    :cond_19
    or-int/2addr v0, v5

    .line 1324
    :cond_1a
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v1, v2}, Lmiui/content/res/ExtraConfiguration;->diff(Lmiui/content/res/ExtraConfiguration;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1609
    if-nez p1, :cond_1

    move v0, v1

    .line 1611
    :cond_0
    :goto_0
    return v0

    .line 1610
    :cond_1
    if-eq p1, p0, :cond_0

    .line 1611
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 1616
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1619
    :goto_0
    return v0

    .line 1617
    :catch_0
    move-exception v0

    .line 1619
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 1673
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1623
    const/16 v0, 0x11

    .line 1624
    .local v0, result:I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1625
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v3

    .line 1626
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v3

    .line 1627
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1628
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v3

    .line 1629
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v3

    .line 1630
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v3

    .line 1631
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v3

    .line 1632
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v3

    .line 1633
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v3

    .line 1634
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v3

    .line 1635
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v3

    .line 1636
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v3

    .line 1637
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v3

    .line 1638
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v3

    .line 1639
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v3

    .line 1640
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v3

    .line 1641
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 1645
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v1}, Lmiui/content/res/ExtraConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 273
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 274
    .local v0, cur:I
    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1348
    if-nez p1, :cond_1

    move v1, v2

    .line 1368
    :cond_0
    :goto_0
    return v1

    .line 1352
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1357
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1362
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 1363
    .local v0, diff:I
    const/high16 v3, 0x1

    if-le v0, v3, :cond_2

    move v1, v2

    .line 1366
    goto :goto_0

    .line 1368
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 978
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1455
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v0, p1}, Lmiui/content/res/ExtraConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 1688
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1689
    .local v0, layoutDirection:I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1691
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 1659
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1661
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1662
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 684
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 685
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 686
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 687
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget-boolean v0, p1, Landroid/content/res/Configuration;->simSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    iget v0, p1, Landroid/content/res/Configuration;->ControlTheme:I

    iput v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    iget v0, p1, Landroid/content/res/Configuration;->current_theme_id:I

    iput v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    iget v0, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    iget v0, p1, Landroid/content/res/Configuration;->nDialogres:I

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    iget v0, p1, Landroid/content/res/Configuration;->nButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    iget v0, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v0, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iget v0, p1, Landroid/content/res/Configuration;->nTabres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    iget v0, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v0, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v0, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v0, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    iget-object v0, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v0, v1}, Lmiui/content/res/ExtraConfiguration;->setTo(Lmiui/content/res/ExtraConfiguration;)V

    return-void
.end method

.method public setToDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-direct {p0}, Landroid/content/res/Configuration;->loadPreOperator()V

    iput-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Configuration;->getSkinPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/ThemeProperties;->getCurrentControlTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-static {}, Landroid/content/res/ThemeProperties;->getCurrentThemeIndex()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleColorIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeDialogIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeButtonIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeCheckBoxIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSwitchIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeTabBackgroundIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeRadioIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleBackgroundIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSectionLineIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSeekbarIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    iput-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Configuration;->getFontPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v1}, Lmiui/content/res/ExtraConfiguration;->setToDefaults()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 738
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 740
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    .line 742
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    .line 748
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :goto_1
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 754
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 759
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .line 760
    .local v0, layoutDir:I
    sparse-switch v0, :sswitch_data_0

    .line 764
    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_4

    .line 768
    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_5

    .line 773
    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_6

    .line 778
    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_7

    .line 783
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 793
    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    .line 800
    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    .line 807
    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 809
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    .line 816
    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    .line 822
    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 824
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    .line 829
    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    .line 836
    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 838
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    .line 843
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    .line 849
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 851
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    .line 857
    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    .line 863
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_12
    const-string v2, " skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v2}, Lmiui/content/res/ExtraConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packagename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " controltheme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v2, " current_theme_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget v2, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v2, " fontpath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget-object v2, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 745
    .end local v0           #layoutDir:I
    :cond_1
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 751
    :cond_2
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 757
    :cond_3
    const-string v2, " ?locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 761
    .restart local v0       #layoutDir:I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 762
    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 763
    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 770
    :cond_4
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 775
    :cond_5
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 780
    :cond_6
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 785
    :cond_7
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 788
    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 789
    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 790
    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 791
    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 792
    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 797
    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 799
    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 804
    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 805
    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 806
    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 810
    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 812
    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 813
    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 814
    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 815
    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 819
    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 821
    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 825
    :pswitch_e
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 826
    :pswitch_f
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 827
    :pswitch_10
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 828
    :pswitch_11
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 832
    :pswitch_12
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 833
    :pswitch_13
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 834
    :pswitch_14
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 835
    :pswitch_15
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 839
    :pswitch_16
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 840
    :pswitch_17
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 841
    :pswitch_18
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 842
    :pswitch_19
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 846
    :pswitch_1a
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 847
    :pswitch_1b
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 848
    :pswitch_1c
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 852
    :pswitch_1d
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 853
    :pswitch_1e
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 854
    :pswitch_1f
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 855
    :pswitch_20
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 856
    :pswitch_21
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 860
    :pswitch_22
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 861
    :pswitch_23
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 862
    :pswitch_24
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 760
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 796
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 803
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 809
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 818
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    .line 824
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 831
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 838
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 845
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 851
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 859
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 8
    .parameter "delta"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/high16 v5, -0x8000

    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, changed:I
    const/4 v1, 0x0

    .line 992
    .local v1, fontscale_change:Z
    const/4 v2, 0x0

    .line 993
    .local v2, local_change:Z
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 994
    or-int/2addr v0, v7

    .line 995
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 996
    const/4 v1, 0x1

    .line 998
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v3, v4, :cond_1

    .line 999
    or-int/lit8 v0, v0, 0x1

    .line 1000
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    iput v3, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1002
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v3, v4, :cond_2

    .line 1003
    or-int/lit8 v0, v0, 0x2

    .line 1004
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    iput v3, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1006
    :cond_2
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1008
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 1009
    const/4 v2, 0x1

    .line 1010
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_24

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    :goto_0
    iput-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1013
    or-int/lit16 v0, v0, 0x2000

    .line 1016
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1018
    :cond_4
    iget-boolean v3, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_5

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_6

    .line 1020
    :cond_5
    iput-boolean v6, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1021
    const/4 v2, 0x1

    .line 1022
    or-int/lit8 v0, v0, 0x4

    .line 1025
    :cond_6
    iget-boolean v3, p1, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v3, :cond_7

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_8

    .line 1026
    :cond_7
    iput-boolean v6, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    .line 1027
    const/4 v2, 0x1

    .line 1028
    or-int/lit8 v0, v0, 0x4

    .line 1031
    :cond_8
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_9

    .line 1033
    or-int/lit8 v0, v0, 0x8

    .line 1034
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1036
    :cond_9
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_a

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_a

    .line 1038
    or-int/lit8 v0, v0, 0x10

    .line 1039
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1041
    :cond_a
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_b

    .line 1043
    or-int/lit8 v0, v0, 0x20

    .line 1044
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1046
    :cond_b
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_c

    .line 1048
    or-int/lit8 v0, v0, 0x20

    .line 1049
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1051
    :cond_c
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_d

    .line 1053
    or-int/lit8 v0, v0, 0x40

    .line 1054
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1056
    :cond_d
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_e

    .line 1058
    or-int/lit8 v0, v0, 0x20

    .line 1059
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1061
    :cond_e
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_f

    .line 1063
    or-int/lit16 v0, v0, 0x80

    .line 1064
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1066
    :cond_f
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    if-eq v3, v4, :cond_10

    .line 1070
    or-int/lit16 v0, v0, 0x100

    .line 1072
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-nez v3, :cond_25

    .line 1073
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1078
    :cond_10
    :goto_1
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_12

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v3, v4, :cond_12

    .line 1080
    or-int/lit16 v0, v0, 0x200

    .line 1081
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_11

    .line 1082
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x10

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1085
    :cond_11
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    if-eqz v3, :cond_12

    .line 1086
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1090
    :cond_12
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_13

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v4, :cond_13

    .line 1092
    or-int/lit16 v0, v0, 0x400

    .line 1093
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1095
    :cond_13
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_14

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_14

    .line 1097
    or-int/lit16 v0, v0, 0x400

    .line 1098
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1100
    :cond_14
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_15

    .line 1101
    or-int/lit16 v0, v0, 0x400

    .line 1102
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1104
    :cond_15
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_16

    .line 1105
    or-int/lit16 v0, v0, 0x1000

    .line 1106
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1108
    :cond_16
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v3, :cond_17

    .line 1109
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1111
    :cond_17
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v3, :cond_18

    .line 1112
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1114
    :cond_18
    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v3, :cond_19

    .line 1115
    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1117
    :cond_19
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_1a

    .line 1118
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    .line 1122
    :cond_1a
    iget-object v3, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1123
    :cond_1b
    or-int/2addr v0, v5

    .line 1124
    iget-object v3, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 1130
    :cond_1c
    iget v3, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iget v4, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nDialogres:I

    iget v4, p0, Landroid/content/res/Configuration;->nDialogres:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nButtonres:I

    iget v4, p0, Landroid/content/res/Configuration;->nButtonres:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v4, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iget v4, p0, Landroid/content/res/Configuration;->nSwitchres:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nTabres:I

    iget v4, p0, Landroid/content/res/Configuration;->nTabres:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v4, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v4, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v4, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-ne v3, v4, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iget v4, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    if-eq v3, v4, :cond_1e

    .line 1140
    :cond_1d
    or-int/2addr v0, v5

    .line 1141
    iget v3, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v3, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    .line 1142
    iget v3, p1, Landroid/content/res/Configuration;->nDialogres:I

    iput v3, p0, Landroid/content/res/Configuration;->nDialogres:I

    .line 1143
    iget v3, p1, Landroid/content/res/Configuration;->nButtonres:I

    iput v3, p0, Landroid/content/res/Configuration;->nButtonres:I

    .line 1144
    iget v3, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v3, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    .line 1145
    iget v3, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iput v3, p0, Landroid/content/res/Configuration;->nSwitchres:I

    .line 1146
    iget v3, p1, Landroid/content/res/Configuration;->nTabres:I

    iput v3, p0, Landroid/content/res/Configuration;->nTabres:I

    .line 1147
    iget v3, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v3, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    .line 1148
    iget v3, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v3, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    .line 1149
    iget v3, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v3, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    .line 1150
    iget v3, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iput v3, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    .line 1153
    :cond_1e
    iget-object v3, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1154
    if-nez v1, :cond_1f

    .line 1155
    or-int/2addr v0, v7

    .line 1157
    :cond_1f
    if-nez v2, :cond_20

    .line 1158
    or-int/lit8 v0, v0, 0x4

    .line 1160
    :cond_20
    iget-object v3, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    .line 1167
    :cond_21
    iget-object v3, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_23

    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    or-int/2addr v0, v5

    iget-object v3, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    :cond_23
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v1, v2}, Lmiui/content/res/ExtraConfiguration;->updateFrom(Lmiui/content/res/ExtraConfiguration;)I

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_25
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nTabres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ExtraConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1393
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 1417
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
