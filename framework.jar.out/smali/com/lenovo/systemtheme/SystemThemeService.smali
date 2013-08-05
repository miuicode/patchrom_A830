.class public Lcom/lenovo/systemtheme/SystemThemeService;
.super Lcom/lenovo/systemtheme/ISystemThemeService$Stub;
.source "SystemThemeService.java"


# static fields
.field public static final ACTION_SYSTEMWIDGET_THEME_CHANGED:Ljava/lang/String; = "action.systemwidgettheme.appling"

.field public static final ACTION_SYSTEM_WIDGET:Ljava/lang/String; = "action_themecenter_themechange_systemwidget"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemThemeService"

.field public static final THEME_CENTER_KEY_KEY_THEME_CHANGED:Ljava/lang/String; = "theme_value"

.field public static final THEME_CENTER_KEY_KEY_THEME_CHANGED_RESULT:Ljava/lang/String; = "theme_change_result"

.field public static final THEME_CENTER_KEY_PACKAGE_NAME:Ljava/lang/String; = "theme_packagename"

.field private static mId2NameMap:Ljava/util/HashMap;
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


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private mSystemReady:Z

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mThemePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;-><init>()V

    .line 43
    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mSystemReady:Z

    .line 53
    iput-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    .line 55
    new-instance v0, Lcom/lenovo/systemtheme/SystemThemeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/systemtheme/SystemThemeService$1;-><init>(Lcom/lenovo/systemtheme/SystemThemeService;)V

    iput-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private loadTheme(Ljava/lang/String;)Z
    .locals 9
    .parameter "themePackageName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, savedThemePackageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    const-string v5, "SystemThemeService"

    const-string/jumbo v6, "loadTheme: themePackageName is same"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit p0

    .line 201
    :goto_0
    return v4

    .line 160
    :cond_0
    const-string v6, "com.lenovo"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const-string v5, "SystemThemeService"

    const-string/jumbo v6, "loadTheme: set to default lenovo theme"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    .line 166
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    .line 167
    monitor-exit p0

    goto :goto_0

    .line 199
    .end local v0           #savedThemePackageName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 174
    .restart local v0       #savedThemePackageName:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "SystemThemeService"

    const-string v7, "Start create SystemThemeResource"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 179
    .local v1, startTime:J
    invoke-virtual {p0}, Lcom/lenovo/systemtheme/SystemThemeService;->initId2Name()V

    .line 183
    invoke-virtual {p0, p1}, Lcom/lenovo/systemtheme/SystemThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 184
    .local v3, themeRes:Landroid/content/res/Resources;
    if-nez v3, :cond_2

    .line 185
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/lenovo/systemtheme/SystemThemeService;->initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    .line 192
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    .line 196
    :cond_3
    const-string v5, "SystemThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End create SystemThemeResource in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms. mResourceReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .parameter "themePackageName"

    .prologue
    .line 225
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 226
    .local v0, Pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 234
    :goto_0
    return-object v2

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initId2Name()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "SystemThemeService"

    const-string v1, "initId2Name already inited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    .line 215
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_DRAWABLE_START_ID:I

    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/SystemThemeService;->loadTypeId2Name(I)Z

    .line 216
    sget v0, Lcom/lenovo/systemtheme/SystemThemeResource;->LENOVO_COLOR_START_ID:I

    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/SystemThemeService;->loadTypeId2Name(I)Z

    goto :goto_0
.end method

.method public initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 9
    .parameter "themeRes"
    .parameter "themePackageName"

    .prologue
    const/4 v6, 0x0

    .line 283
    sget-object v7, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v6

    .line 287
    :cond_1
    if-eqz p1, :cond_0

    .line 291
    const-string v6, "SystemThemeService"

    const-string v7, "initId2Themeid start "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Ljava/util/HashMap;

    .line 295
    sget-object v6, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 296
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    .local v3, resid:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, resourceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/systemtheme/SystemThemeResource;->getTypeNameById(I)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, resourceType:Ljava/lang/String;
    invoke-virtual {p1, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 305
    .local v2, mapId:I
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 307
    :cond_3
    if-eqz v2, :cond_2

    .line 308
    const-string v6, "SystemThemeService"

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

    .line 312
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2           #mapId:I
    .end local v3           #resid:I
    .end local v4           #resourceName:Ljava/lang/String;
    .end local v5           #resourceType:Ljava/lang/String;
    :cond_4
    const-string v6, "SystemThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid end. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Ljava/util/HashMap;

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

    .line 314
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public loadTypeId2Name(I)Z
    .locals 7
    .parameter "startId"

    .prologue
    .line 245
    const-string v4, "SystemThemeService"

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

    .line 247
    move v3, p1

    .local v3, resid:I
    :goto_0
    sget v4, Lcom/lenovo/systemtheme/SystemThemeResource;->MAX_LENOVO_RESOUCE_ID_COUNT:I

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_2

    .line 250
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 254
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 255
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 265
    :goto_1
    if-eqz v2, :cond_0

    .line 266
    sget-object v4, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 259
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 272
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "SystemThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadTypeId2Name end. Current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

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

    .line 274
    const/4 v4, 0x1

    return v4
.end method

.method public setSystemTheme(Ljava/lang/String;)Z
    .locals 6
    .parameter "themePackageName"

    .prologue
    const/4 v3, 0x0

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 111
    :cond_0
    const-string v4, "SystemThemeService"

    const-string/jumbo v5, "setSystemTheme: themePackageName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    :goto_0
    return v3

    .line 115
    :cond_2
    iget-boolean v4, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mSystemReady:Z

    if-nez v4, :cond_3

    .line 116
    const-string v4, "SystemThemeService"

    const-string/jumbo v5, "setSystemTheme: mSystemReady is false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0, p1}, Lcom/lenovo/systemtheme/SystemThemeService;->loadTheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 130
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 131
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p1, v1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    .line 133
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    const-string v3, "SystemThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSystemTheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v3, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mSystemReady:Z

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "action_themecenter_themechange_systemwidget"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method
