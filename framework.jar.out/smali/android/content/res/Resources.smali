.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$ThemeElement;,
        Landroid/content/res/Resources$TabRes;,
        Landroid/content/res/Resources$SwitchRes;,
        Landroid/content/res/Resources$TitleColor;,
        Landroid/content/res/Resources$SeekBarRes;,
        Landroid/content/res/Resources$DialogRes;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$Injector;
    }
.end annotation


# static fields
.field public static final CHECKBOX_RES:I = 0x0

.field private static final DEBUG_ATTRIBUTES_CACHE:Z = false

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_THEME:Z = false

.field private static final DEFAULT_THEME_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final ID_OTHER:I = 0x1000004

.field public static final MAX_ELEMENT_COUNT:I = 0x5

.field public static final RADIOBUTTON_RES:I = 0x1

.field public static final SEEKBAR_RES:I = 0x2

.field private static final STR_COLOR:Ljava/lang/String; = "color"

.field private static final STR_TYPE_THEME_PREVIEW:Ljava/lang/String; = "previewtheme"

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final THEME_COLOR_PATH:Ljava/lang/String; = "assets/color/colors.xml"

.field private static final TRACE_FOR_MISS_PRELOAD:Z

.field private static final TRACE_FOR_PRELOAD:Z

.field private static mMtkColorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreferenceColor:[Landroid/content/res/ColorStateList;

.field private static final mSync:Ljava/lang/Object;

.field static mSystem:Landroid/content/res/Resources;

.field private static mSystemThemeLock:Ljava/lang/Object;

.field private static mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

.field private static final sPreloadedDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static themeRes:Landroid/content/res/Resources;


# instance fields
.field public isThemeRes:Z

.field final mAssets:Landroid/content/res/AssetManager;

.field mCachedStyledAttributes:Landroid/content/res/TypedArray;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorStateListCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsSystemThemeRes:Z

.field private mLastCachedXmlBlockIndex:I

.field mLastRetrievedAttrs:Ljava/lang/RuntimeException;

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field final mTmpConfig:Landroid/content/res/Configuration;

.field final mTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    .line 99
    sput-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 104
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    .line 106
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 108
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 127
    sput-object v1, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    .line 140
    sput-object v1, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    .line 153
    sput-object v1, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    .line 3127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2887
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 117
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 119
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 121
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 139
    iput-boolean v1, p0, Landroid/content/res/Resources;->isThemeRes:Z

    .line 148
    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    .line 162
    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 163
    iput-object v2, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 166
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 167
    new-array v0, v3, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 170
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2888
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 2892
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2893
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 2894
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2895
    invoke-virtual {p0, v2, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2896
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 2897
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2898
    return-void

    .line 166
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 676
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 691
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 117
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 119
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 121
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 139
    iput-boolean v1, p0, Landroid/content/res/Resources;->isThemeRes:Z

    .line 148
    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    .line 162
    iput-object v3, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 163
    iput-object v3, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 166
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 167
    new-array v0, v2, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 170
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 692
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 693
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 694
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 695
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 696
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 697
    return-void

    .line 166
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 785
    packed-switch p0, :pswitch_data_0

    .line 791
    const v0, 0x1000004

    :goto_0
    return v0

    .line 786
    :pswitch_0
    const v0, 0x1000005

    goto :goto_0

    .line 787
    :pswitch_1
    const v0, 0x1000006

    goto :goto_0

    .line 788
    :pswitch_2
    const v0, 0x1000007

    goto :goto_0

    .line 789
    :pswitch_3
    const v0, 0x1000008

    goto :goto_0

    .line 790
    :pswitch_4
    const v0, 0x1000009

    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearDrawableCache(Landroid/util/LongSparseArray;I)V
    .locals 5
    .parameter
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 2171
    .local p1, cache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2176
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2177
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 2178
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_0

    .line 2179
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2180
    .local v1, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 2181
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2189
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2176
    .end local v1           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2200
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    return-void
.end method

.method public static createSystemThemeIfNeeded(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3810
    sget-object v1, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3811
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    if-eqz v0, :cond_0

    .line 3812
    monitor-exit v1

    .line 3819
    :goto_0
    return-void

    .line 3815
    :cond_0
    const-string v0, "SystemTheme/Resources"

    const-string v2, "createSystemThemeIfNeeded"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    new-instance v0, Lcom/lenovo/systemtheme/SystemThemeResource;

    invoke-direct {v0, p0}, Lcom/lenovo/systemtheme/SystemThemeResource;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    .line 3818
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1
    .parameter "context"

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forceSystemThemeToBeRecreated()V
    .locals 3

    .prologue
    .line 3827
    sget-object v1, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3829
    :try_start_0
    const-string v0, "SystemTheme/Resources"

    const-string v2, "forceSystemThemeToBeRecreated"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    .line 3832
    monitor-exit v1

    .line 3833
    return-void

    .line 3832
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static clearPreloadedCache()V
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method private generateCurrentDensitySuffix()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0xf0

    const/16 v5, 0xa0

    .line 3103
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3104
    .local v0, density:I
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeManager density= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    const-string/jumbo v1, "mdpi/"

    .line 3106
    .local v1, densityString:Ljava/lang/String;
    const/16 v2, 0x78

    if-lt v0, v2, :cond_1

    if-ge v0, v5, :cond_1

    .line 3107
    const-string v1, "ldpi/"

    .line 3115
    :cond_0
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeManager densityString= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    return-object v1

    .line 3108
    :cond_1
    if-lt v0, v5, :cond_2

    if-ge v0, v6, :cond_2

    .line 3109
    const-string/jumbo v1, "mdpi/"

    goto :goto_0

    .line 3110
    :cond_2
    if-lt v0, v6, :cond_3

    if-ge v0, v7, :cond_3

    .line 3111
    const-string v1, "hdpi/"

    goto :goto_0

    .line 3112
    :cond_3
    if-lt v0, v7, :cond_0

    .line 3113
    const-string/jumbo v1, "xhdpi/"

    goto :goto_0
.end method

.method private getCachedColorStateList(J)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter "key"

    .prologue
    .line 2772
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2773
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2774
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v1, :cond_1

    .line 2775
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2776
    .local v0, entry:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 2780
    monitor-exit v3

    .line 2786
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 2782
    .restart local v0       #entry:Landroid/content/res/ColorStateList;
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2785
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :cond_1
    monitor-exit v3

    .line 2786
    const/4 v0, 0x0

    goto :goto_0

    .line 2785
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2667
    .local p1, drawableCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2668
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2669
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 2670
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2671
    .local v0, entry:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2675
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 2682
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 2678
    .restart local v0       #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2681
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 2682
    const/4 v2, 0x0

    goto :goto_0

    .line 2681
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "len"

    .prologue
    .line 2854
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2855
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 2856
    .local v0, attrs:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 2857
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 2863
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 2864
    mul-int/lit8 v1, p1, 0x6

    .line 2865
    .local v1, fullLen:I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 2866
    monitor-exit v3

    .line 2881
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :goto_0
    return-object v0

    .line 2868
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    .restart local v1       #fullLen:I
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 2869
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 2870
    monitor-exit v3

    goto :goto_0

    .line 2884
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2881
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/res/MiuiTypedArray;

    .end local v0           #attrs:Landroid/content/res/TypedArray;
    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [I

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    invoke-direct {v0, p0, v2, v4, p1}, Landroid/content/res/MiuiTypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getElementElements(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources$ThemeElement;I)V
    .locals 17
    .parameter "context"
    .parameter "strPackageName"
    .parameter "element"
    .parameter "themeNameId"

    .prologue
    .line 3131
    if-eqz p3, :cond_14

    if-eqz p2, :cond_14

    if-eqz p1, :cond_14

    .line 3132
    const-string v14, "android"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 3133
    new-instance v9, Landroid/content/res/Resources$TitleColor;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/content/res/Resources$TitleColor;-><init>(Landroid/content/res/Resources;)V

    .line 3134
    .local v9, default_titlecolor:Landroid/content/res/Resources$TitleColor;
    const v14, 0x1060072

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->title:Landroid/content/res/ColorStateList;

    .line 3135
    const v14, 0x1060079

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->categroy:Landroid/content/res/ColorStateList;

    .line 3136
    const v14, 0x1060072

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->preference:Landroid/content/res/ColorStateList;

    .line 3137
    const v14, 0x1060079

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->summary:Landroid/content/res/ColorStateList;

    .line 3138
    const v14, 0x3090010

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->strName:Ljava/lang/String;

    .line 3139
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    const/4 v8, 0x0

    .line 3142
    .local v8, default_temp:Landroid/graphics/drawable/Drawable;
    const v14, 0x3020038

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3143
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3144
    const v14, 0x3020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3145
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mCheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3146
    const v14, 0x302003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3147
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mRadioButonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3149
    new-instance v6, Landroid/content/res/Resources$SwitchRes;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/content/res/Resources$SwitchRes;-><init>(Landroid/content/res/Resources;)V

    .line 3150
    .local v6, default_switchbtn:Landroid/content/res/Resources$SwitchRes;
    const v14, 0x1080584

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v6, Landroid/content/res/Resources$SwitchRes;->track:Landroid/graphics/drawable/Drawable;

    .line 3151
    const v14, 0x108057a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v6, Landroid/content/res/Resources$SwitchRes;->inner:Landroid/graphics/drawable/Drawable;

    .line 3152
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3154
    new-instance v5, Landroid/content/res/Resources$SeekBarRes;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/content/res/Resources$SeekBarRes;-><init>(Landroid/content/res/Resources;)V

    .line 3155
    .local v5, default_seekbar:Landroid/content/res/Resources$SeekBarRes;
    const v14, 0x10804dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v5, Landroid/content/res/Resources$SeekBarRes;->progressbackground:Landroid/graphics/drawable/Drawable;

    .line 3156
    const v14, 0x10804dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v5, Landroid/content/res/Resources$SeekBarRes;->indeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 3157
    const v14, 0x10804da

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v5, Landroid/content/res/Resources$SeekBarRes;->thumb:Landroid/graphics/drawable/Drawable;

    .line 3158
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3160
    const v14, 0x302000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3161
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitleBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3163
    const v14, 0x3020083

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3164
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSectionLine:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    new-instance v7, Landroid/content/res/Resources$TabRes;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/content/res/Resources$TabRes;-><init>(Landroid/content/res/Resources;)V

    .line 3167
    .local v7, default_tab:Landroid/content/res/Resources$TabRes;
    const/4 v14, 0x0

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->strip_left:Landroid/graphics/drawable/Drawable;

    .line 3168
    const/4 v14, 0x0

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->strip_right:Landroid/graphics/drawable/Drawable;

    .line 3169
    const v14, 0x302010b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->tab_indicator:Landroid/graphics/drawable/Drawable;

    .line 3170
    const v14, 0x3020057

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->preview:Landroid/graphics/drawable/Drawable;

    .line 3171
    const/4 v14, 0x0

    iput v14, v7, Landroid/content/res/Resources$TabRes;->resid:I

    .line 3172
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTabBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    new-instance v4, Landroid/content/res/Resources$DialogRes;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/content/res/Resources$DialogRes;-><init>(Landroid/content/res/Resources;)V

    .line 3175
    .local v4, default_dialog:Landroid/content/res/Resources$DialogRes;
    const v14, 0x3020062

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->top:Landroid/graphics/drawable/Drawable;

    .line 3176
    const v14, 0x302005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->center:Landroid/graphics/drawable/Drawable;

    .line 3177
    const v14, 0x3020059

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->bottom:Landroid/graphics/drawable/Drawable;

    .line 3178
    const v14, 0x302005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->full:Landroid/graphics/drawable/Drawable;

    .line 3179
    const v14, 0x3020060

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->preview:Landroid/graphics/drawable/Drawable;

    .line 3180
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3183
    .local v1, Pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_14

    .line 3185
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 3186
    .local v12, r:Landroid/content/res/Resources;
    if-eqz v12, :cond_14

    .line 3187
    move-object/from16 v0, p3

    iput-object v12, v0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    .line 3188
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->strThemeName:Ljava/lang/String;

    .line 3189
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 3190
    .local v11, info:Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_13

    .line 3191
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlecolors:[I

    if-eqz v14, :cond_1

    .line 3192
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlecolors:[I

    array-length v14, v14

    if-ge v10, v14, :cond_1

    .line 3193
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlecolors:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getTitleColors(I)Landroid/content/res/Resources$TitleColor;

    move-result-object v2

    .line 3194
    .local v2, color:Landroid/content/res/Resources$TitleColor;
    if-eqz v2, :cond_0

    .line 3195
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3192
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3200
    .end local v2           #color:Landroid/content/res/Resources$TitleColor;
    .end local v10           #i:I
    :cond_1
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    if-eqz v14, :cond_3

    .line 3201
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    .line 3202
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3203
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    array-length v14, v14

    if-ge v10, v14, :cond_3

    .line 3204
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    aget v14, v14, v10

    if-lez v14, :cond_2

    .line 3205
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3206
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 3207
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3208
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3203
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3214
    .end local v10           #i:I
    :cond_3
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    if-eqz v14, :cond_5

    .line 3215
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_5

    .line 3216
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    aget v14, v14, v10

    if-lez v14, :cond_4

    .line 3217
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDialogRes(I)Landroid/content/res/Resources$DialogRes;

    move-result-object v3

    .line 3218
    .local v3, d:Landroid/content/res/Resources$DialogRes;
    if-eqz v3, :cond_4

    .line 3219
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3215
    .end local v3           #d:Landroid/content/res/Resources$DialogRes;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3225
    .end local v10           #i:I
    :cond_5
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    if-eqz v14, :cond_7

    .line 3226
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_7

    .line 3227
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    aget v14, v14, v10

    if-lez v14, :cond_6

    .line 3228
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getSeekBar(I)Landroid/content/res/Resources$SeekBarRes;

    move-result-object v3

    .line 3229
    .local v3, d:Landroid/content/res/Resources$SeekBarRes;
    if-eqz v3, :cond_6

    .line 3230
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3226
    .end local v3           #d:Landroid/content/res/Resources$SeekBarRes;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3236
    .end local v10           #i:I
    :cond_7
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    if-eqz v14, :cond_9

    .line 3237
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_9

    .line 3238
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    aget v14, v14, v10

    if-lez v14, :cond_8

    .line 3239
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getSwitchRes(I)Landroid/content/res/Resources$SwitchRes;

    move-result-object v3

    .line 3240
    .local v3, d:Landroid/content/res/Resources$SwitchRes;
    if-eqz v3, :cond_8

    .line 3241
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3237
    .end local v3           #d:Landroid/content/res/Resources$SwitchRes;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 3247
    .end local v10           #i:I
    :cond_9
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    if-eqz v14, :cond_b

    .line 3248
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    .line 3249
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3250
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_b

    .line 3251
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    aget v14, v14, v10

    if-lez v14, :cond_a

    .line 3252
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3253
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_a

    .line 3254
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3255
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mCheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3250
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3261
    .end local v10           #i:I
    :cond_b
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    if-eqz v14, :cond_d

    .line 3262
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    .line 3263
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3264
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_d

    .line 3265
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    aget v14, v14, v10

    if-lez v14, :cond_c

    .line 3266
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3267
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_c

    .line 3268
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3269
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mRadioButonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 3275
    .end local v10           #i:I
    :cond_d
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    if-eqz v14, :cond_f

    .line 3276
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    .line 3277
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3278
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_7
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    array-length v14, v14

    if-ge v10, v14, :cond_f

    .line 3279
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    aget v14, v14, v10

    if-lez v14, :cond_e

    .line 3280
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3281
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_e

    .line 3282
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3283
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitleBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 3289
    .end local v10           #i:I
    :cond_f
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    if-eqz v14, :cond_11

    .line 3290
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    .line 3291
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3292
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_8
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_11

    .line 3293
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    aget v14, v14, v10

    if-lez v14, :cond_10

    .line 3294
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3295
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_10

    .line 3296
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3297
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSectionLine:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3292
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 3303
    .end local v10           #i:I
    :cond_11
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    if-eqz v14, :cond_13

    .line 3304
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    array-length v14, v14

    if-ge v10, v14, :cond_13

    .line 3305
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    aget v14, v14, v10

    if-lez v14, :cond_12

    .line 3306
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getTabRes(I)Landroid/content/res/Resources$TabRes;

    move-result-object v13

    .line 3307
    .local v13, tab:Landroid/content/res/Resources$TabRes;
    if-eqz v13, :cond_12

    .line 3308
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTabBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3304
    .end local v13           #tab:Landroid/content/res/Resources$TabRes;
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 3315
    .end local v10           #i:I
    :cond_13
    const v14, 0x1080234

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3316
    const/4 v14, 0x0

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 3317
    const v14, 0x1060072

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->ButonColor:Landroid/content/res/ColorStateList;

    .line 3318
    const/4 v14, 0x0

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mBottomBar:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3325
    .end local v1           #Pm:Landroid/content/pm/PackageManager;
    .end local v4           #default_dialog:Landroid/content/res/Resources$DialogRes;
    .end local v5           #default_seekbar:Landroid/content/res/Resources$SeekBarRes;
    .end local v6           #default_switchbtn:Landroid/content/res/Resources$SwitchRes;
    .end local v7           #default_tab:Landroid/content/res/Resources$TabRes;
    .end local v8           #default_temp:Landroid/graphics/drawable/Drawable;
    .end local v9           #default_titlecolor:Landroid/content/res/Resources$TitleColor;
    .end local v11           #info:Landroid/content/pm/PackageInfo;
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_14
    :goto_a
    return-void

    .line 3320
    .restart local v1       #Pm:Landroid/content/pm/PackageManager;
    .restart local v4       #default_dialog:Landroid/content/res/Resources$DialogRes;
    .restart local v5       #default_seekbar:Landroid/content/res/Resources$SeekBarRes;
    .restart local v6       #default_switchbtn:Landroid/content/res/Resources$SwitchRes;
    .restart local v7       #default_tab:Landroid/content/res/Resources$TabRes;
    .restart local v8       #default_temp:Landroid/graphics/drawable/Drawable;
    .restart local v9       #default_titlecolor:Landroid/content/res/Resources$TitleColor;
    :catch_0
    move-exception v14

    goto :goto_a
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 776
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 780
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    sget-object v2, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .local v0, ret:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/MiuiResources;

    .end local v0           #ret:Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V

    .restart local v0       #ret:Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getThemeButtonUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 600
    .local v0, nret:I
    return v0
.end method

.method public static getThemeListUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 572
    .local v0, nret:I
    return v0
.end method

.method public static getThemeMenuUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 586
    .local v0, nret:I
    return v0
.end method

.method public static getThemePanelUiResource(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "bdark"

    .prologue
    .line 605
    const/4 v0, 0x0

    .line 617
    .local v0, nret:I
    return v0
.end method

.method public static getThemeToastUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 632
    .local v0, nret:I
    return v0
.end method

.method private loadPreloadedColorResources()V
    .locals 8

    .prologue
    .line 3012
    const/4 v5, 0x0

    :try_start_0
    sput-boolean v5, Landroid/content/res/Resources;->sPreloaded:Z

    .line 3013
    invoke-virtual {p0}, Landroid/content/res/Resources;->startPreloading()V

    .line 3014
    const v5, 0x1070006

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3015
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3016
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3017
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3018
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3019
    .local v4, id:I
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preloading resource #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    if-eqz v4, :cond_0

    .line 3021
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 3017
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3024
    .end local v4           #id:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3028
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 3025
    :catch_0
    move-exception v2

    .line 3026
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v5, "Resources"

    const-string v6, "Failure loading preloaded resources."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadPreloadedDrawableResources()V
    .locals 9

    .prologue
    .line 2986
    const/4 v6, 0x0

    :try_start_0
    sput-boolean v6, Landroid/content/res/Resources;->sPreloaded:Z

    .line 2987
    invoke-virtual {p0}, Landroid/content/res/Resources;->startPreloading()V

    .line 2988
    const v6, 0x1070005

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2989
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2990
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2991
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 2992
    .local v5, id:I
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloading resource #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    if-eqz v5, :cond_0

    .line 2994
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2995
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    const v7, -0x40000001

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 2996
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloaded drawable resource #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") that varies with configuration!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3001
    .end local v5           #id:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3005
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 3002
    :catch_0
    move-exception v3

    .line 3003
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Resources"

    const-string v7, "Failure loading preloaded resources."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static selectDefaultTheme(II)I
    .locals 3
    .parameter "curTheme"
    .parameter "targetSdkVersion"

    .prologue
    .line 178
    const v0, 0x1030005

    const v1, 0x103006b

    const v2, 0x1030128

    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIII)I
    .locals 1
    .parameter "curTheme"
    .parameter "targetSdkVersion"
    .parameter "orig"
    .parameter "holo"
    .parameter "deviceDefault"

    .prologue
    .line 639
    if-eqz p0, :cond_0

    .line 648
    .end local p0
    :goto_0
    return p0

    .line 642
    .restart local p0
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 643
    goto :goto_0

    .line 645
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 646
    goto :goto_0

    :cond_2
    move p0, p4

    .line 648
    goto :goto_0
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 796
    packed-switch p0, :pswitch_data_0

    .line 802
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 797
    :pswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 798
    :pswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 799
    :pswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 800
    :pswitch_3
    const-string v0, "few"

    goto :goto_0

    .line 801
    :pswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 2221
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2222
    return-void
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 2210
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 2211
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2215
    :cond_0
    return-void
.end method

.method private verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z
    .locals 5
    .parameter "value"
    .parameter "name"

    .prologue
    .line 2527
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const v3, -0x40001001

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2531
    :try_start_0
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2535
    .local v1, resName:Ljava/lang/String;
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    const/4 v2, 0x0

    .line 2540
    .end local v1           #resName:Ljava/lang/String;
    :goto_1
    return v2

    .line 2532
    :catch_0
    move-exception v0

    .line 2533
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    .restart local v1       #resName:Ljava/lang/String;
    goto :goto_0

    .line 2540
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #resName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 2520
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 2521
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2522
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 2524
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 2483
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 2485
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 2486
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2487
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 2488
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 2489
    .local v2, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 2490
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 2492
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 2486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2494
    .end local v2           #oldBlock:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 2495
    return-void

    .line 2494
    .end local v0           #i:I
    .end local v1           #num:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1476
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1393
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1394
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1395
    .local v0, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1396
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    .line 1398
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1400
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1403
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColor(I)I
    .locals 8
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1294
    iget-boolean v4, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    if-nez v4, :cond_0

    .line 1295
    invoke-static {p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->isLenovoResourceId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1296
    invoke-virtual {p0}, Landroid/content/res/Resources;->getSystemTheme()Lcom/lenovo/systemtheme/SystemThemeResource;

    move-result-object v2

    .line 1298
    .local v2, themeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    if-eqz v2, :cond_0

    .line 1300
    invoke-virtual {v2, p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->getThemeResourceId(I)I

    move-result v1

    .line 1302
    .local v1, newThemeId:I
    invoke-static {v1}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1303
    invoke-virtual {v2, v1}, Lcom/lenovo/systemtheme/SystemThemeResource;->getColor(I)I

    move-result v4

    .line 1321
    .end local v1           #newThemeId:I
    .end local v2           #themeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    :goto_0
    return v4

    .line 1313
    :cond_0
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v5

    .line 1314
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1315
    .local v3, value:Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1316
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v4, v6, :cond_1

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v4, v6, :cond_1

    .line 1318
    iget v4, v3, Landroid/util/TypedValue;->data:I

    monitor-exit v5

    goto :goto_0

    .line 1326
    .end local v3           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1319
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 1320
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v4, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1321
    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    monitor-exit v5

    goto :goto_0

    .line 1323
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    :cond_2
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/util/TypedValue;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1345
    goto :goto_miui_0
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v3, :cond_0

    .line 1346
    const-string v3, "Resources"

    const-string/jumbo v4, "sPreloadedDrawables size is 0, reload preloaded resources."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedColorResources()V

    .line 1353
    :cond_0
    :goto_miui_0
    iget-boolean v3, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    if-nez v3, :cond_1

    .line 1354
    invoke-static {p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->isLenovoResourceId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1355
    invoke-virtual {p0}, Landroid/content/res/Resources;->getSystemTheme()Lcom/lenovo/systemtheme/SystemThemeResource;

    move-result-object v1

    .line 1357
    .local v1, themeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    if-eqz v1, :cond_1

    .line 1359
    invoke-virtual {v1, p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->getThemeResourceId(I)I

    move-result v0

    .line 1361
    .local v0, newThemeId:I
    invoke-static {v0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1362
    invoke-virtual {v1, v0}, Lcom/lenovo/systemtheme/SystemThemeResource;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1375
    .end local v0           #newThemeId:I
    .end local v1           #themeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    :goto_0
    return-object v3

    .line 1372
    :cond_1
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 1373
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1374
    .local v2, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1375
    invoke-virtual {p0, v2, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 1376
    .end local v2           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDialogRes(I)Landroid/content/res/Resources$DialogRes;
    .locals 8
    .parameter "dialog_resid"

    .prologue
    .line 3409
    if-lez p1, :cond_3

    .line 3410
    const/4 v3, 0x0

    .line 3411
    .local v3, dialog_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3412
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3413
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3414
    .local v0, N:I
    new-array v3, v0, [I

    .line 3415
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3416
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3417
    .local v5, id:I
    if-eqz v5, :cond_0

    .line 3418
    aput v5, v3, v4

    .line 3415
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3422
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    :cond_1
    if-eqz v3, :cond_3

    .line 3423
    new-instance v6, Landroid/content/res/Resources$DialogRes;

    invoke-direct {v6, p0}, Landroid/content/res/Resources$DialogRes;-><init>(Landroid/content/res/Resources;)V

    .line 3424
    .local v6, res:Landroid/content/res/Resources$DialogRes;
    iput p1, v6, Landroid/content/res/Resources$DialogRes;->resid:I

    .line 3425
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_4

    .line 3426
    aget v7, v3, v4

    if-lez v7, :cond_2

    .line 3427
    aget v7, v3, v4

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3428
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 3429
    packed-switch v4, :pswitch_data_0

    .line 3425
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3431
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->top:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3434
    :pswitch_1
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->center:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3437
    :pswitch_2
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->bottom:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3440
    :pswitch_3
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->full:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3443
    :pswitch_4
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->bottomMedium:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3446
    :pswitch_5
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->preview:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3455
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #dialog_ids:[I
    .end local v4           #i:I
    .end local v6           #res:Landroid/content/res/Resources$DialogRes;
    :cond_3
    const/4 v6, 0x0

    :cond_4
    return-object v6

    .line 3429
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

.method public getDimension(I)F
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1028
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1029
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1030
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1031
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1033
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1036
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1060
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1061
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1062
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1063
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1066
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1069
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1094
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1095
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1096
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1097
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1100
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1103
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1165
    sget-object v4, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v4, :cond_0

    .line 1166
    const-string v4, "Resources"

    const-string/jumbo v5, "sPreloadedDrawables size is 0, reload preloaded resources."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedDrawableResources()V

    .line 1172
    :cond_0
    iget-boolean v4, p0, Landroid/content/res/Resources;->isThemeRes:Z

    if-nez v4, :cond_1

    sget-object v4, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_1

    .line 1173
    const/high16 v4, 0x900

    if-lt p1, v4, :cond_1

    const v4, 0x9ffffff

    if-gt p1, v4, :cond_1

    .line 1175
    :try_start_0
    sget-object v4, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1176
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1210
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 1179
    :catch_0
    move-exception v4

    .line 1188
    :cond_1
    iget-boolean v4, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    if-nez v4, :cond_2

    .line 1189
    invoke-static {p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->isLenovoResourceId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1190
    invoke-virtual {p0}, Landroid/content/res/Resources;->getSystemTheme()Lcom/lenovo/systemtheme/SystemThemeResource;

    move-result-object v2

    .line 1192
    .local v2, themeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    if-eqz v2, :cond_2

    .line 1194
    invoke-virtual {v2, p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->getThemeResourceId(I)I

    move-result v1

    .line 1196
    .local v1, newThemeId:I
    invoke-static {v1}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1197
    invoke-virtual {v2, v1}, Lcom/lenovo/systemtheme/SystemThemeResource;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1207
    .end local v1           #newThemeId:I
    .end local v2           #themeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    :cond_2
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v5

    .line 1208
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1209
    .local v3, value:Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1210
    invoke-virtual {p0, v3, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v5

    goto :goto_0

    .line 1211
    .end local v3           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "id"
    .parameter "density"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1234
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1235
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1236
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1245
    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v1, v3, :cond_0

    .line 1246
    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-ne v1, p2, :cond_1

    .line 1247
    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/util/TypedValue;->density:I

    .line 1253
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1249
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->density:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v3

    div-int/2addr v1, p2

    iput v1, v0, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .line 1254
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .parameter "id"
    .parameter "base"
    .parameter "pbase"

    .prologue
    .line 1124
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1125
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1126
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1127
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 1128
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1130
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1133
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    .line 2289
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2293
    :goto_0
    return v0

    .line 2290
    :catch_0
    move-exception v0

    .line 2293
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getIntArray(I)[I
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 974
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v0

    .line 975
    .local v0, res:[I
    if-eqz v0, :cond_0

    .line 976
    return-object v0

    .line 978
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1419
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1420
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1421
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 1423
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 1425
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1428
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1452
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1266
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1267
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 1269
    .local v1, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    :goto_0
    return-object v1

    .line 1271
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getPreloadedDrawable(JI)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2
    .parameter "key"
    .parameter "id"

    .prologue
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .local v0, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v2

    .line 761
    .local v2, rule:Llibcore/icu/NativePluralRules;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 763
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 768
    .end local v0           #res:Ljava/lang/CharSequence;
    .local v1, res:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 766
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const v4, 0x1000004

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 768
    .end local v0           #res:Ljava/lang/CharSequence;
    .restart local v1       #res:Ljava/lang/CharSequence;
    goto :goto_0

    .line 770
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plural resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2368
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 2369
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2370
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2311
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2312
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2313
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2331
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2332
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2349
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2351
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSeekBar(I)Landroid/content/res/Resources$SeekBarRes;
    .locals 8
    .parameter "seekbar_resid"

    .prologue
    .line 3459
    if-lez p1, :cond_3

    .line 3460
    const/4 v6, 0x0

    .line 3461
    .local v6, seekbar_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3462
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3463
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3464
    .local v0, N:I
    new-array v6, v0, [I

    .line 3465
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3466
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3467
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 3468
    aput v4, v6, v3

    .line 3465
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3472
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_1
    if-eqz v6, :cond_3

    .line 3473
    new-instance v5, Landroid/content/res/Resources$SeekBarRes;

    invoke-direct {v5, p0}, Landroid/content/res/Resources$SeekBarRes;-><init>(Landroid/content/res/Resources;)V

    .line 3474
    .local v5, res:Landroid/content/res/Resources$SeekBarRes;
    iput p1, v5, Landroid/content/res/Resources$SeekBarRes;->resid:I

    .line 3475
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 3476
    aget v7, v6, v3

    if-lez v7, :cond_2

    .line 3477
    aget v7, v6, v3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3478
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 3479
    packed-switch v3, :pswitch_data_0

    .line 3475
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3481
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iput-object v2, v5, Landroid/content/res/Resources$SeekBarRes;->progressbackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3484
    :pswitch_1
    iput-object v2, v5, Landroid/content/res/Resources$SeekBarRes;->indeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3487
    :pswitch_2
    iput-object v2, v5, Landroid/content/res/Resources$SeekBarRes;->thumb:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3496
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i:I
    .end local v5           #res:Landroid/content/res/Resources$SeekBarRes;
    .end local v6           #seekbar_ids:[I
    :cond_3
    const/4 v5, 0x0

    :cond_4
    return-object v5

    .line 3479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 822
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 825
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, res:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 956
    return-object v0

    .line 958
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSwitchRes(I)Landroid/content/res/Resources$SwitchRes;
    .locals 8
    .parameter "switch_resid"

    .prologue
    .line 3500
    if-lez p1, :cond_3

    .line 3501
    const/4 v6, 0x0

    .line 3502
    .local v6, switch_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3503
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3504
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3505
    .local v0, N:I
    new-array v6, v0, [I

    .line 3506
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3507
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3508
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 3509
    aput v4, v6, v3

    .line 3506
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3514
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_1
    if-eqz v6, :cond_3

    .line 3515
    new-instance v5, Landroid/content/res/Resources$SwitchRes;

    invoke-direct {v5, p0}, Landroid/content/res/Resources$SwitchRes;-><init>(Landroid/content/res/Resources;)V

    .line 3516
    .local v5, res:Landroid/content/res/Resources$SwitchRes;
    iput p1, v5, Landroid/content/res/Resources$SwitchRes;->resid:I

    .line 3517
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 3518
    aget v7, v6, v3

    if-lez v7, :cond_2

    .line 3519
    aget v7, v6, v3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3520
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 3521
    packed-switch v3, :pswitch_data_0

    .line 3517
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3523
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iput-object v2, v5, Landroid/content/res/Resources$SwitchRes;->track:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3526
    :pswitch_1
    iput-object v2, v5, Landroid/content/res/Resources$SwitchRes;->inner:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3535
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i:I
    .end local v5           #res:Landroid/content/res/Resources$SwitchRes;
    .end local v6           #switch_ids:[I
    :cond_3
    const/4 v5, 0x0

    :cond_4
    return-object v5

    .line 3521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSystemTheme()Lcom/lenovo/systemtheme/SystemThemeResource;
    .locals 3

    .prologue
    .line 3795
    sget-object v1, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3796
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    if-nez v0, :cond_0

    .line 3797
    const-string v0, "SystemTheme/Resources"

    const-string v2, "getSystemTheme: mSystemThemeResource is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :cond_0
    sget-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    monitor-exit v1

    return-object v0

    .line 3801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTabRes(I)Landroid/content/res/Resources$TabRes;
    .locals 8
    .parameter "tab_resid"

    .prologue
    .line 3371
    if-lez p1, :cond_6

    .line 3372
    const/4 v6, 0x0

    .line 3373
    .local v6, tab_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3374
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3375
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3376
    .local v0, N:I
    new-array v6, v0, [I

    .line 3377
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3378
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3379
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 3380
    aput v4, v6, v3

    .line 3377
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3385
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_1
    if-eqz v6, :cond_6

    .line 3386
    new-instance v5, Landroid/content/res/Resources$TabRes;

    invoke-direct {v5, p0}, Landroid/content/res/Resources$TabRes;-><init>(Landroid/content/res/Resources;)V

    .line 3387
    .local v5, ret:Landroid/content/res/Resources$TabRes;
    iput p1, v5, Landroid/content/res/Resources$TabRes;->resid:I

    .line 3388
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_7

    .line 3389
    aget v7, v6, v3

    if-lez v7, :cond_2

    .line 3390
    aget v7, v6, v3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3391
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 3392
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->strip_left:Landroid/graphics/drawable/Drawable;

    .line 3388
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3393
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    if-eqz v2, :cond_4

    .line 3394
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->strip_right:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3395
    :cond_4
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5

    if-eqz v2, :cond_5

    .line 3396
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->tab_indicator:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3397
    :cond_5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    if-eqz v2, :cond_2

    .line 3398
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->preview:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3405
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i:I
    .end local v5           #ret:Landroid/content/res/Resources$TabRes;
    .end local v6           #tab_ids:[I
    :cond_6
    const/4 v5, 0x0

    :cond_7
    return-object v5
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 734
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 735
    return-object v0

    .line 737
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .parameter "def"

    .prologue
    .line 918
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 919
    .local v0, res:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #res:Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 918
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    .line 919
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 934
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 935
    .local v0, res:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 936
    return-object v0

    .line 938
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThemeButtonBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "isdark"

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, ret:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 292
    .local v3, themeRes:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 293
    if-nez p2, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Landroid/content/res/ThemeProperties;->getCurrentThemeButtonIndex(Z)I

    move-result v1

    .line 294
    .local v1, res_id:I
    if-lez v1, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 303
    .end local v1           #res_id:I
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 304
    if-nez p2, :cond_3

    .line 305
    const v4, 0x3020038

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 311
    :cond_1
    :goto_2
    return-object v2

    .line 293
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 297
    .restart local v1       #res_id:I
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #res_id:I
    :cond_3
    const v4, 0x3020037

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2
.end method

.method public getThemeColor(Ljava/lang/String;)I
    .locals 14
    .parameter "colorName"

    .prologue
    const/4 v10, 0x0

    .line 2909
    const/4 v7, 0x0

    .line 2910
    .local v7, raw:Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2911
    .local v0, am:Landroid/content/res/AssetManager;
    const-string/jumbo v11, "persist.sys.skin"

    const-string v12, "/system/framework/framework-res.apk"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2913
    .local v9, themepath:Ljava/lang/String;
    const-string v11, "/system/framework/framework-res.apk"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2964
    :cond_0
    :goto_0
    return v10

    .line 2917
    :cond_1
    sget-object v11, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2918
    .local v8, themeColor:Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 2919
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_0

    .line 2922
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    .line 2923
    .local v2, cookie:I
    if-eqz v2, :cond_0

    .line 2930
    :try_start_0
    const-string v11, "assets/color/colors.xml"

    const/4 v12, 0x2

    invoke-virtual {v0, v2, v11, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 2932
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 2933
    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 2934
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2935
    .local v6, myxml:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2936
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 2937
    .local v4, eventType:I
    :goto_1
    const/4 v11, 0x1

    if-eq v4, v11, :cond_0

    .line 2938
    packed-switch v4, :pswitch_data_0

    .line 2956
    :cond_3
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 2942
    :pswitch_1
    const-string v11, "color"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2943
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2944
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 2945
    .local v1, colorStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2946
    sget-object v11, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    goto :goto_0

    .line 2958
    .end local v1           #colorStr:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #myxml:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 2959
    .local v3, e:Ljava/io/IOException;
    const-string v11, "Resources"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException happened when getThemeColor, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2960
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 2961
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "Resources"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XmlPullParserException happened when getThemeColor, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2938
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getThemeCpmpoundButtonDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "nType"
    .parameter "isLightRes"

    .prologue
    const/4 v5, 0x1

    .line 428
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 429
    const/4 v3, 0x0

    .line 430
    .local v3, drawable_id:I
    if-nez p2, :cond_1

    .line 431
    invoke-static {p3}, Landroid/content/res/ThemeProperties;->getCurrentThemeCheckBoxIndex(Z)I

    move-result v3

    .line 436
    :cond_0
    :goto_0
    if-lez v3, :cond_2

    .line 438
    :try_start_0
    sget-object v4, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 468
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawable_id:I
    .local v1, d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 432
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawable_id:I
    :cond_1
    if-ne p2, v5, :cond_0

    .line 433
    invoke-static {p3}, Landroid/content/res/ThemeProperties;->getCurrentThemeRadioIndex(Z)I

    move-result v3

    goto :goto_0

    .line 442
    :catch_0
    move-exception v4

    .line 447
    .end local v3           #drawable_id:I
    :cond_2
    const/4 v2, 0x0

    .line 448
    .local v2, defaultid:I
    const/4 v0, 0x0

    .line 449
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_6

    .line 450
    if-eqz p3, :cond_5

    .line 451
    const v2, 0x3020016

    .line 462
    :cond_3
    :goto_2
    if-lez v2, :cond_4

    .line 463
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    move-object v1, v0

    .line 468
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 453
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    const v2, 0x3020015

    goto :goto_2

    .line 455
    :cond_6
    if-ne p2, v5, :cond_3

    .line 456
    if-eqz p3, :cond_7

    .line 457
    const v2, 0x302003e

    goto :goto_2

    .line 459
    :cond_7
    const v2, 0x302003d

    goto :goto_2
.end method

.method public getThemeDialogBackground(Landroid/content/Context;Z)[I
    .locals 13
    .parameter "context"
    .parameter "islight"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 190
    const/4 v5, 0x0

    .line 191
    .local v5, ret:[I
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    .line 192
    .local v6, themeRes:Landroid/content/res/Resources;
    if-eqz v6, :cond_1

    .line 194
    :try_start_0
    invoke-static {p2}, Landroid/content/res/ThemeProperties;->getCurrentThemeDialogIndex(Z)I

    move-result v2

    .line 195
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 196
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 197
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 199
    .local v0, N:I
    new-array v5, v0, [I

    .line 200
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 201
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 202
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 203
    aput v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v3           #i:I
    .end local v4           #id:I
    :catch_0
    move-exception v7

    .line 212
    :cond_1
    if-nez v5, :cond_2

    .line 213
    const/4 v0, 0x6

    .line 214
    .restart local v0       #N:I
    new-array v5, v0, [I

    .line 215
    if-eqz p2, :cond_3

    .line 216
    const v7, 0x3020062

    aput v7, v5, v8

    .line 217
    const v7, 0x302005f

    aput v7, v5, v9

    .line 218
    const v7, 0x3020059

    aput v7, v5, v10

    .line 219
    const v7, 0x302005b

    aput v7, v5, v11

    .line 220
    const v7, 0x3020059

    aput v7, v5, v12

    .line 221
    const/4 v7, 0x5

    const v8, 0x3020060

    aput v8, v5, v7

    .line 231
    .end local v0           #N:I
    :cond_2
    :goto_1
    return-object v5

    .line 223
    .restart local v0       #N:I
    :cond_3
    const v7, 0x3020061

    aput v7, v5, v8

    .line 224
    const v7, 0x302005e

    aput v7, v5, v9

    .line 225
    const v7, 0x3020058

    aput v7, v5, v10

    .line 226
    const v7, 0x302005a

    aput v7, v5, v11

    .line 227
    const v7, 0x3020058

    aput v7, v5, v12

    .line 228
    const/4 v7, 0x5

    const v8, 0x3020060

    aput v8, v5, v7

    goto :goto_1
.end method

.method public getThemeElement(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources$ThemeElement;
    .locals 1
    .parameter "context"
    .parameter "strPackageName"
    .parameter "themeNameId"

    .prologue
    .line 3542
    new-instance v0, Landroid/content/res/Resources$ThemeElement;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$ThemeElement;-><init>(Landroid/content/res/Resources;)V

    .line 3543
    .local v0, element:Landroid/content/res/Resources$ThemeElement;
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/res/Resources;->getElementElements(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources$ThemeElement;I)V

    .line 3544
    return-object v0
.end method

.method public getThemeHighlightColor()I
    .locals 1

    .prologue
    .line 2979
    const-string/jumbo v0, "theme_highlight_color"

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "themePackagePath"
    .parameter "itemType"

    .prologue
    .line 3065
    const/4 v0, 0x0

    .line 3066
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 3068
    .local v1, cookie:I
    if-eqz p1, :cond_1

    const-string v5, "/system/framework/framework-res.apk"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3070
    :cond_0
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current theme is the default theme, themePackagePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const/4 v5, 0x0

    .line 3094
    :goto_0
    return-object v5

    .line 3074
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v1

    .line 3080
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "res/drawable-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3081
    .local v4, themeDrawablePath:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/content/res/Resources;->generateCurrentDensitySuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 3089
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    move-object v5, v0

    .line 3094
    goto :goto_0

    .line 3090
    :catch_0
    move-exception v2

    .line 3091
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException happend when getThemeImage cookie = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getThemeMainColor()I
    .locals 1

    .prologue
    .line 2971
    const-string/jumbo v0, "theme_main_color"

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemePreferenceTextColor(Landroid/content/Context;Z)[Landroid/content/res/ColorStateList;
    .locals 11
    .parameter "context"
    .parameter "isdark"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 388
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 389
    sget-object v10, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_0

    .line 390
    sget-object v7, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    .line 418
    :goto_0
    return-object v7

    .line 392
    :cond_0
    if-nez p2, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-static {v8}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleColorIndex(Z)I

    move-result v2

    .line 393
    .local v2, array_id:I
    if-lez v2, :cond_3

    .line 395
    :try_start_0
    sget-object v8, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 396
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_3

    .line 397
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 398
    .local v0, N:I
    add-int/lit8 v8, v0, -0x1

    new-array v7, v8, [Landroid/content/res/ColorStateList;

    .line 399
    .local v7, ret:[Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    add-int/lit8 v8, v0, -0x1

    if-ge v5, v8, :cond_4

    .line 400
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 401
    .local v6, id:I
    if-eqz v6, :cond_2

    .line 403
    :try_start_1
    sget-object v8, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 404
    .local v3, color:Landroid/content/res/ColorStateList;
    aput-object v3, v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    .end local v3           #color:Landroid/content/res/ColorStateList;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 405
    :catch_0
    move-exception v4

    .line 406
    .local v4, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    :try_start_2
    aput-object v8, v7, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 413
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v6           #id:I
    .end local v7           #ret:[Landroid/content/res/ColorStateList;
    :catch_1
    move-exception v8

    .line 417
    .end local v2           #array_id:I
    :cond_3
    sput-object v9, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    move-object v7, v9

    .line 418
    goto :goto_0

    .line 410
    .restart local v0       #N:I
    .restart local v1       #ar:Landroid/content/res/TypedArray;
    .restart local v2       #array_id:I
    .restart local v5       #i:I
    .restart local v7       #ret:[Landroid/content/res/ColorStateList;
    :cond_4
    :try_start_3
    sput-object v7, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public getThemePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pkgPath"

    .prologue
    .line 3053
    const-string/jumbo v0, "previewtheme"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getThemeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThemeProgressBar(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "isLight"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 479
    invoke-static {p2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSeekbarIndex(Z)I

    move-result v2

    .line 481
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 483
    :try_start_0
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 484
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 486
    .local v0, N:I
    if-lez v0, :cond_1

    .line 487
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 488
    .local v5, id:I
    if-lez v5, :cond_1

    .line 489
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 490
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 511
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v5           #id:I
    :cond_0
    :goto_0
    return-object v3

    .line 496
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #array_id:I
    :catch_0
    move-exception v6

    .line 501
    .end local v2           #array_id:I
    :cond_1
    const/4 v4, 0x0

    .line 502
    .local v4, defaultid:I
    const/4 v3, 0x0

    .line 503
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 504
    const v4, 0x30200c4

    .line 508
    :goto_1
    if-lez v4, :cond_0

    .line 509
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 506
    :cond_2
    const v4, 0x30200c3

    goto :goto_1
.end method

.method public getThemeSectionBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "isdark"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 368
    if-nez p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSectionLineIndex(Z)I

    move-result v1

    .line 369
    .local v1, res_id:I
    if-lez v1, :cond_1

    .line 371
    :try_start_0
    sget-object v2, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 380
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #res_id:I
    :goto_1
    return-object v0

    .line 368
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    .restart local v1       #res_id:I
    :catch_0
    move-exception v2

    .line 380
    .end local v1           #res_id:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getThemeSeekBar(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "isLight"

    .prologue
    const/4 v7, 0x1

    .line 521
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 522
    invoke-static {p2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSeekbarIndex(Z)I

    move-result v2

    .line 524
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 526
    :try_start_0
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 527
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 529
    .local v0, N:I
    if-le v0, v7, :cond_1

    .line 530
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 531
    .local v5, id:I
    if-lez v5, :cond_1

    .line 532
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 533
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 557
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v5           #id:I
    :cond_0
    :goto_0
    return-object v3

    .line 539
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #array_id:I
    :catch_0
    move-exception v6

    .line 544
    .end local v2           #array_id:I
    :cond_1
    const/4 v4, 0x0

    .line 545
    .local v4, defaultid:I
    const/4 v3, 0x0

    .line 546
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 547
    const v4, 0x30200c1

    .line 551
    :goto_1
    if-lez v4, :cond_0

    .line 552
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 549
    :cond_2
    const v4, 0x30200c1

    goto :goto_1
.end method

.method public getThemeTabBackground(Landroid/content/Context;Z)[I
    .locals 10
    .parameter "context"
    .parameter "is_dark"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 322
    const/4 v5, 0x0

    .line 325
    .local v5, ret:[I
    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 326
    if-nez p2, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Landroid/content/res/ThemeProperties;->getCurrentThemeTabBackgroundIndex(Z)I

    move-result v2

    .line 327
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 329
    :try_start_0
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 330
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 332
    .local v0, N:I
    new-array v5, v0, [I

    .line 333
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 334
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 335
    .local v4, id:I
    aput v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_0
    move v6, v8

    .line 326
    goto :goto_0

    .line 338
    .restart local v2       #array_id:I
    :catch_0
    move-exception v6

    .line 344
    .end local v2           #array_id:I
    :cond_1
    if-nez v5, :cond_2

    .line 345
    const/4 v6, 0x3

    new-array v5, v6, [I

    .line 346
    if-eqz p2, :cond_3

    .line 347
    const v6, 0x302010a

    aput v6, v5, v8

    .line 348
    const v6, 0x302010f

    aput v6, v5, v7

    .line 349
    const v6, 0x3020109

    aput v6, v5, v9

    .line 357
    :cond_2
    :goto_2
    return-object v5

    .line 351
    :cond_3
    const v6, 0x302010d

    aput v6, v5, v8

    .line 352
    const v6, 0x302010e

    aput v6, v5, v7

    .line 353
    const v6, 0x302010c

    aput v6, v5, v9

    goto :goto_2
.end method

.method public getThemeTitleBackground(Landroid/content/Context;Z)I
    .locals 4
    .parameter "context"
    .parameter "isdark"

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, ret:I
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 271
    .local v2, themeRes:Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 272
    if-nez p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleBackgroundIndex(Z)I

    move-result v0

    .line 273
    .local v0, res_id:I
    if-lez v0, :cond_1

    .line 278
    .end local v0           #res_id:I
    :goto_1
    return v0

    .line 272
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 278
    goto :goto_1
.end method

.method getTitleColors(I)Landroid/content/res/Resources$TitleColor;
    .locals 8
    .parameter "title_resid"

    .prologue
    .line 3329
    if-lez p1, :cond_7

    .line 3330
    const/4 v3, 0x0

    .line 3331
    .local v3, color_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3332
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3333
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3334
    .local v0, N:I
    new-array v3, v0, [I

    .line 3335
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3336
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3337
    .local v5, id:I
    if-eqz v5, :cond_0

    .line 3338
    aput v5, v3, v4

    .line 3335
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3343
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    :cond_1
    if-eqz v3, :cond_7

    .line 3344
    new-instance v6, Landroid/content/res/Resources$TitleColor;

    invoke-direct {v6, p0}, Landroid/content/res/Resources$TitleColor;-><init>(Landroid/content/res/Resources;)V

    .line 3345
    .local v6, ret:Landroid/content/res/Resources$TitleColor;
    iput p1, v6, Landroid/content/res/Resources$TitleColor;->resid:I

    .line 3346
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_8

    .line 3347
    aget v7, v3, v4

    if-lez v7, :cond_2

    .line 3348
    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    .line 3349
    aget v7, v3, v4

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/res/Resources$TitleColor;->strName:Ljava/lang/String;

    .line 3346
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3352
    :cond_3
    aget v7, v3, v4

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 3353
    .local v2, color:Landroid/content/res/ColorStateList;
    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 3354
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->title:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3355
    :cond_4
    const/4 v7, 0x1

    if-ne v4, v7, :cond_5

    if-eqz v2, :cond_5

    .line 3356
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->categroy:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3357
    :cond_5
    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    if-eqz v2, :cond_6

    .line 3358
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->preference:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3359
    :cond_6
    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    if-eqz v2, :cond_2

    .line 3360
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->summary:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3367
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #color:Landroid/content/res/ColorStateList;
    .end local v3           #color_ids:[I
    .end local v4           #i:I
    .end local v6           #ret:Landroid/content/res/Resources$TitleColor;
    :cond_7
    const/4 v6, 0x0

    :cond_8
    return-object v6
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1610
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1611
    return-void

    .line 1616
    :cond_0
    invoke-static {p1}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    const-string v1, "SystemTheme/Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue: Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found, reset system theme to lenovo default!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const-string v1, "com.lenovo"

    invoke-static {v1}, Landroid/content/res/Configuration;->setSystemThemePackageName(Ljava/lang/String;)V

    .line 1627
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .parameter "name"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1675
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1676
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1678
    return-void

    .line 1680
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "density"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1646
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1647
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1648
    return-void

    .line 1650
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1501
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method isPreloadOverlayed(I)Z
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method isPreloading()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    return v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 12
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2695
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    iget v10, p1, Landroid/util/TypedValue;->data:I

    int-to-long v10, v10

    or-long v4, v8, v10

    .line 2699
    .local v4, key:J
    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_2

    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_2

    .line 2702
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2703
    .local v0, csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2768
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .local v1, csl:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1

    .line 2707
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_0
    iget v8, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2708
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_1

    .line 2709
    const-string v8, "color"

    invoke-direct {p0, p1, v8}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2710
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 2714
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2717
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    :cond_2
    invoke-direct {p0, v4, v5}, Landroid/content/res/Resources;->getCachedColorStateList(J)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2718
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 2719
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2722
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_3
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2723
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 2724
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2727
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    .line 2728
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2732
    :cond_5
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2734
    .local v3, file:Ljava/lang/String;
    const-string v8, ".xml"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2736
    :try_start_0
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v9, "colorstatelist"

    invoke-virtual {p0, v3, p2, v8, v9}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 2738
    .local v7, rp:Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v7}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2739
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2753
    if-eqz v0, :cond_6

    .line 2754
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_8

    .line 2755
    const-string v8, "color"

    invoke-direct {p0, p1, v8}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2756
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    :goto_1
    move-object v1, v0

    .line 2768
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2740
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .end local v7           #rp:Landroid/content/res/XmlResourceParser;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v2

    .line 2741
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from color state list resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2744
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2745
    throw v6

    .line 2748
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_7
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": .xml extension required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2759
    .restart local v7       #rp:Landroid/content/res/XmlResourceParser;
    :cond_8
    iget-object v9, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v9

    .line 2763
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2764
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2554
    const/4 v8, 0x0

    .line 2555
    .local v8, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1f

    if-gt v13, v14, :cond_0

    .line 2557
    const/4 v8, 0x1

    .line 2559
    :cond_0
    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->data:I

    int-to-long v9, v13

    .line 2562
    .local v9, key:J
    :goto_0
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v10}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2564
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 2661
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v4

    .line 2559
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .end local v9           #key:J
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v13, v13

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/util/TypedValue;->data:I

    int-to-long v15, v15

    or-long v9, v13, v15

    goto :goto_0

    .line 2562
    .restart local v9       #key:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 2568
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v8, :cond_6

    sget-object v13, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v13

    .line 2572
    .local v2, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v2, :cond_8

    .line 2573
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2634
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 2635
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2636
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 2637
    if-eqz v2, :cond_5

    .line 2638
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v13, :cond_d

    .line 2639
    const-string v13, "drawable"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2640
    if-eqz v8, :cond_c

    .line 2641
    sget-object v13, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_5
    move-object v4, v3

    .line 2661
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 2568
    .end local v2           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_6
    sget v13, Landroid/content/res/Resources;->sPreloadedDensity:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v9, v10, v1}, Landroid/content/res/Resources;->getPreloadedDrawable(JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 2575
    .restart local v2       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    if-eqz v8, :cond_9

    .line 2576
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2579
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_9
    if-nez v3, :cond_4

    .line 2580
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v13, :cond_a

    .line 2581
    new-instance v13, Landroid/content/res/Resources$NotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Resource is not a Drawable (color or path): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2585
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2600
    .local v6, file:Ljava/lang/String;
    const-string v13, ".xml"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2602
    :try_start_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v14, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1, v13, v14}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 2604
    .local v12, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2605
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 2606
    .end local v12           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 2607
    .local v5, e:Ljava/lang/Exception;
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from drawable resource ID #0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2610
    .local v11, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2611
    throw v11

    .line 2616
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->assetCookie:I

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v6, v15}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 2619
    .local v7, is:Ljava/io/InputStream;
    invoke-static/range {p2 .. p2}, Landroid/content/res/Resources$Injector;->setDrawableId(I)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7, v6, v13}, Landroid/content/res/Resources$Injector;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2621
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2623
    .end local v7           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 2624
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from drawable resource ID #0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2627
    .restart local v11       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2628
    throw v11

    .line 2643
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/lang/String;
    .end local v11           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    sget-object v13, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_5

    .line 2647
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v14

    .line 2651
    if-eqz v8, :cond_e

    .line 2652
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v9, v10, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2656
    :goto_6
    monitor-exit v14

    goto/16 :goto_5

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 2654
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v9, v10, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 0
    .parameter "array"

    .prologue
    return-object p1
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2791
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 2792
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2793
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2794
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 2795
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2798
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2801
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10
    .parameter "file"
    .parameter "id"
    .parameter "assetCookie"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2806
    if-eqz p2, :cond_5

    .line 2809
    :try_start_0
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2811
    :try_start_1
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v7

    .line 2812
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2813
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v7, v7, v2

    if-ne v7, p2, :cond_0

    .line 2816
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    .line 2836
    :goto_1
    return-object v7

    .line 2812
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2822
    :cond_1
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v7, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 2824
    .local v0, block:Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_4

    .line 2825
    iget v7, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v7, 0x1

    .line 2826
    .local v5, pos:I
    if-lt v5, v3, :cond_2

    const/4 v5, 0x0

    .line 2827
    :cond_2
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 2828
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v7, v5

    .line 2829
    .local v4, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3

    .line 2830
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 2832
    :cond_3
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v7, v5

    .line 2833
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v7, v5

    .line 2836
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    goto :goto_1

    .line 2838
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #oldBlock:Landroid/content/res/XmlBlock;
    .end local v5           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2839
    :catch_0
    move-exception v1

    .line 2840
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from xml type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2843
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2844
    throw v6

    .line 2838
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #block:Landroid/content/res/XmlBlock;
    .restart local v2       #i:I
    .restart local v3       #num:I
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2848
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    :cond_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 1977
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 1993
    array-length v1, p2

    .line 1994
    .local v1, len:I
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, array:Landroid/content/res/TypedArray;
    move-object v2, p1

    .line 2000
    check-cast v2, Landroid/content/res/XmlBlock$Parser;

    .line 2001
    .local v2, parser:Landroid/content/res/XmlBlock$Parser;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v3, v4, p2, v5, v6}, Landroid/content/res/AssetManager;->retrieveAttributes(I[I[I[I)Z

    iput-object p2, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v3

    return-object v3
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 996
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 997
    .local v1, len:I
    if-gez v1, :cond_0

    .line 998
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    :cond_0
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1003
    .local v0, array:Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v2

    return-object v2
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1538
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1541
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1547
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1573
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 1574
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1575
    .local v2, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v5, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v6, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    monitor-exit v4

    return-object v3

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1586
    throw v1

    .line 1589
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #rnf:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .parameter "tagName"
    .parameter "attrs"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2429
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2432
    .local v2, sa:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2434
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2435
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2436
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2441
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2443
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 2444
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2445
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2446
    .local v0, cs:Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2467
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2468
    return-void

    .line 2447
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 2448
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 2449
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 2451
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2452
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 2453
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 2455
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2456
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2461
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2462
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .parameter "parser"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2387
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2390
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 2391
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 2395
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2396
    .local v0, nodeName:Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2397
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2398
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2401
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2404
    .end local v0           #nodeName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public reloadPreloadedResources()V
    .locals 3

    .prologue
    .line 3035
    const-string v0, "Resources"

    const-string v1, "Reload all preloader drawables in Resources.java."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3037
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3038
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloadPreloadedResources() mMtkColorCache.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    sget-object v0, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3040
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedDrawableResources()V

    .line 3041
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedColorResources()V

    .line 3042
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 2263
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2264
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2265
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 2503
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2504
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_0

    .line 2505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2507
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 2508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2509
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 2510
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2511
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2512
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2513
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 2015
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2016
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 24
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2030
    if-eqz p3, :cond_0

    .line 2031
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2033
    :cond_0
    if-eqz p2, :cond_1

    .line 2034
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2045
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_2

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 2048
    :cond_2
    const v20, 0xfffffff

    .line 2051
    .local v20, configChanges:I
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    .line 2052
    const/16 v22, 0x0

    .line 2053
    .local v22, needClearPreloader:Z
    if-eqz p1, :cond_e

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2055
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v21, v0

    .line 2056
    .local v21, density:I
    if-nez v21, :cond_3

    .line 2057
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v21, v0

    .line 2059
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_4

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 2062
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    .line 2063
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2067
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 2070
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 2071
    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 2073
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2074
    :cond_8
    const/16 v22, 0x1

    .line 2079
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    .line 2083
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 2084
    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    .line 2087
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2090
    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->forceSystemThemeToBeRecreated()V

    .line 2095
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v2

    const/high16 v3, -0x8000

    and-int v3, v3, v20

    or-int v20, v2, v3

    .end local v21           #density:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_f

    .line 2099
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2102
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_10

    .line 2103
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 2106
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2108
    const/4 v5, 0x0

    .line 2109
    .local v5, locale:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_11

    .line 2110
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 2111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 2112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2116
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_15

    .line 2117
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2118
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2125
    .local v13, height:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2126
    .local v10, keyboardHidden:I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 2129
    const/4 v10, 0x3

    .line 2131
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 2148
    if-eqz v22, :cond_13

    .line 2149
    const-string v2, "Resources"

    const-string/jumbo v3, "updateConfiguration from skin change, clear preloaded drawables."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2151
    sget-object v2, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2152
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2153
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2154
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfiguration() mMtkColorCache.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    sget-object v2, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2157
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2159
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 2160
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    sget-object v3, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2162
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_14

    .line 2163
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 2165
    :cond_14
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2166
    return-void

    .line 2121
    .end local v10           #keyboardHidden:I
    .end local v12           #width:I
    .end local v13           #height:I
    :cond_15
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2123
    .restart local v12       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13       #height:I
    goto/16 :goto_0

    .line 2160
    .end local v5           #locale:Ljava/lang/String;
    .end local v12           #width:I
    .end local v13           #height:I
    .end local v20           #configChanges:I
    .end local v22           #needClearPreloader:Z
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2165
    .restart local v5       #locale:Ljava/lang/String;
    .restart local v10       #keyboardHidden:I
    .restart local v12       #width:I
    .restart local v13       #height:I
    .restart local v20       #configChanges:I
    .restart local v22       #needClearPreloader:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
