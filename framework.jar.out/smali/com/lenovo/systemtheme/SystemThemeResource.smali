.class public Lcom/lenovo/systemtheme/SystemThemeResource;
.super Ljava/lang/Object;
.source "SystemThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field public static LENOVO_COLOR_START_ID:I = 0x0

.field public static LENOVO_DRAWABLE_START_ID:I = 0x0

.field public static LENOVO_RESOURCE_ID_BEGIN:I = 0x0

.field public static LENOVO_RESOURCE_ID_END:I = 0x0

.field public static LENOVO_RESOURCE_TYPE_MASK:I = 0x0

.field public static MAX_LENOVO_RESOUCE_ID_COUNT:I = 0x0

.field public static final SUPPORT_SYSTEM_THEME:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemThemeResource"

.field public static THEME_RESOURCE_ID_BEGIN:I = 0x0

.field public static THEME_RESOURCE_ID_END:I = 0x0

.field public static final TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final TYPE_DRAWABLE:Ljava/lang/String; = "drawable"


# instance fields
.field private mId2NameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId2ThemeIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceReady:Z

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;

.field private mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/high16 v0, 0x300

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_ID_BEGIN:I

    .line 31
    const v0, 0x3ffffff

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_ID_END:I

    .line 33
    const/high16 v0, -0x1

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_TYPE_MASK:I

    .line 34
    const/high16 v0, 0x302

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_DRAWABLE_START_ID:I

    .line 35
    const/high16 v0, 0x307

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_COLOR_START_ID:I

    .line 40
    const/high16 v0, 0x500

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->THEME_RESOURCE_ID_BEGIN:I

    .line 41
    const v0, 0x5ffffff

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->THEME_RESOURCE_ID_END:I

    .line 49
    const/16 v0, 0x320

    sput v0, Lcom/lenovo/systemtheme/SystemThemeResource;->MAX_LENOVO_RESOUCE_ID_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 61
    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, themePackageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const-string v4, "SystemThemeResource"

    const-string/jumbo v5, "loadTheme: themePackageName is same"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v4, "com.lenovo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    const-string v4, "SystemThemeResource"

    const-string/jumbo v5, "loadTheme: set to default lenovo theme"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 79
    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 80
    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    goto :goto_0

    .line 85
    :cond_2
    const-string v4, "SystemThemeResource"

    const-string v5, "Start create SystemThemeResource"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, startTime:J
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->initId2Name()V

    .line 96
    invoke-virtual {p0, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, themeRes:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {p0, v3, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 105
    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 110
    :cond_3
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End create SystemThemeResource in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms. mResourceReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTypeNameById(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 228
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_TYPE_MASK:I

    and-int/2addr v0, p0

    sget v1, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_DRAWABLE_START_ID:I

    if-ne v0, v1, :cond_0

    .line 229
    const-string v0, "drawable"

    .line 234
    :goto_0
    return-object v0

    .line 230
    :cond_0
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_TYPE_MASK:I

    and-int/2addr v0, p0

    sget v1, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_COLOR_START_ID:I

    if-ne v0, v1, :cond_1

    .line 231
    const-string v0, "color"

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLenovoResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 309
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_ID_BEGIN:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_RESOURCE_ID_END:I

    if-gt p0, v0, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 296
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->THEME_RESOURCE_ID_BEGIN:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->THEME_RESOURCE_ID_END:I

    if-gt p0, v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .parameter "themePackageName"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    .local v0, Pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThemeResourceId(I)I
    .locals 3
    .parameter "resid"

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    if-nez v1, :cond_1

    .line 257
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 250
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 252
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public initId2Name()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "SystemThemeResource"

    const-string v1, "initId2Name already inited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    .line 126
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_DRAWABLE_START_ID:I

    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/SystemThemeResource;->loadTypeId2Name(I)Z

    .line 127
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_COLOR_START_ID:I

    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/SystemThemeResource;->loadTypeId2Name(I)Z

    goto :goto_0
.end method

.method public initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 9
    .parameter "themeRes"
    .parameter "themePackageName"

    .prologue
    const/4 v6, 0x0

    .line 193
    iget-object v7, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v6

    .line 197
    :cond_1
    if-eqz p1, :cond_0

    .line 201
    const-string v6, "SystemThemeResource"

    const-string v7, "initId2Themeid start "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    .line 205
    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 210
    .local v3, resid:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 211
    .local v4, resourceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/systemtheme/SystemThemeResource;->getTypeNameById(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, resourceType:Ljava/lang/String;
    invoke-virtual {p1, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, mapId:I
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 216
    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_3
    if-eqz v2, :cond_2

    .line 218
    const-string v6, "SystemThemeResource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " map a invalid ID of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2           #mapId:I
    .end local v3           #resid:I
    .end local v4           #resourceName:Ljava/lang/String;
    .end local v5           #resourceType:Ljava/lang/String;
    :cond_4
    const-string v6, "SystemThemeResource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid end. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " records."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public loadTypeId2Name(I)Z
    .locals 7
    .parameter "startId"

    .prologue
    .line 155
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadTypeId2Name start. startId = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move v3, p1

    .local v3, resid:I
    :goto_0
    sget v4, Lcom/lenovo/systemtheme/SystemThemeResource;->MAX_LENOVO_RESOUCE_ID_COUNT:I

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_2

    .line 160
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 164
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 165
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    :goto_1
    if-eqz v2, :cond_0

    .line 176
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 169
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadTypeId2Name end. Current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v4, 0x1

    return v4
.end method
