.class public Lcom/lenovo/SmartRoll/SmartRollFilter;
.super Ljava/lang/Object;
.source "SmartRollFilter.java"


# static fields
.field private static final BROWSER_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field private static final CALENDER_PACKAGE:Ljava/lang/String; = "com.lenovo.app.Calendar"

.field private static final CALL_LOG_LIST_ITEM_VIEW:Ljava/lang/String; = "CallLogListItemView"

.field private static final CAMERA_ACTIVITY:Ljava/lang/String; = "com.android.camera.Camera"

.field public static final CHILDREN_VIEW_OUTSIDE_TOLERAENCE:I = 0x5

.field public static final CHILDREN_VIEW_OVERLAP_TOLERAENCE:I = 0x2

.field public static final DBG:Z = true

.field private static final DUOMI_MUSIC_PACKAGE:Ljava/lang/String; = "com.duomi.android"

.field private static final GALLERY_PACKAGE:Ljava/lang/String; = "com.android.gallery3d"

.field private static final JOY_READER:Ljava/lang/String; = "com.iyd.reader.ReadingJoy"

.field private static final LAUNCHER_WEATHER_NEW_VIEW:Ljava/lang/String; = "com.lenovo.launcher2.weather.widget.WeatherWidgetView"

.field private static final LAUNCHER_WEATHER_VIEW:Ljava/lang/String; = "com.lenovo.launcher2.weather.widget.MagicWeatherWidgetView"

.field private static final LENOVO_COMPASS_PACKAGE:Ljava/lang/String; = "com.lenovo.compass"

.field private static final LENOVO_LAUNCHER_PACKAGE:Ljava/lang/String; = "com.lenovo.launcher"

.field private static final LENOVO_SEARCH_PACKAGE:Ljava/lang/String; = "com.lenovo.lenovosearch"

.field private static final LENOVO_SERVICE_SOFTWARE_ACTIVITY:Ljava/lang/String; = "com.lenovo.service.ActivitySoftware"

.field private static final LESTORE_LOCAL_MANAGE_ACTIVITY:Ljava/lang/String; = "com.lenovo.leos.appstore.LocalManageContainer"

.field private static final MEITU_LOGIN_ACTIVITY:Ljava/lang/String; = "com.mt.mtxx.mtxx.account.AccountLoginActivity"

.field private static final MUSIC_PICKER_SOFTWARE_ACTIVITY:Ljava/lang/String; = "com.lenovo.music.MusicPicker"

.field private static final PAUSE_SMART_ROLL_PACKAGE_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final PLAYER_TUTORIAL_PACKAGE:Ljava/lang/String; = "com.novicetutorial"

.field private static final QUICK_SEARCH_PACKAGE:Ljava/lang/String; = "com.android.quicksearchbox"

.field private static final SMS_LIST_ITEM_VIEW:Ljava/lang/String; = "ConversationListItem"

.field private static final STATUS_BAR_NOTIFICATION_VIEW:Ljava/lang/String; = "com.android.systemui.statusbar.policy.NotificationRowLayout"

.field private static final STK_ACTIVITY:Ljava/lang/String; = "com.android.stk.StkMenuActivity"

.field private static final STK_II_ACTIVITY:Ljava/lang/String; = "com.android.stk.StkMenuActivityII"

.field public static final SUPPORT_SMART_ROLL:Z = false

.field static final TAG:Ljava/lang/String; = "SmartRollFilter"

.field public static final TOAST_DURATION:I = 0x1f4

.field private static final WALLPAPER_PICKER_ACTIVITY:Ljava/lang/String; = "com.android.wallpaper.livepicker.LiveWallpaperActivity"

.field private static final WIDGET_CALENDER_PACKAGE:Ljava/lang/String; = "com.lenovo.app.Calendar"

.field private static final WIDGET_FOUR_LEAF_PACKAGE:Ljava/lang/String; = "com.lenovo.launcher"

.field private static final WIDGET_POWER_SAVING_PACKAGE:Ljava/lang/String; = "com.lenovo.powersaving"

.field private static final WIDGET_SINA_WEATHER_PACKAGE:Ljava/lang/String; = "com.lenovo.android.LenovoSinaWeather"

.field private static final YOUDAO_DICT_PACKAGE:Ljava/lang/String; = "com.youdao.dict"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLockScreenFilterOut()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public static isNonPreinstallPackageFilterOut()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static isNonPreinstallPackageHardwareAccelerationFilterOut()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public static isNonPreinstallWidgetPackageFilterOut()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public static isPackageHardwareAccelerationFilterOut(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 203
    const-string v0, "com.iyd.reader.ReadingJoy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPauseSmartRollPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 102
    const-string v0, "com.android.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRootViewActivityFilterOut(Ljava/lang/String;)Z
    .locals 1
    .parameter "activityName"

    .prologue
    .line 115
    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.stk.StkMenuActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.stk.StkMenuActivityII"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.service.ActivitySoftware"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.music.MusicPicker"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mt.mtxx.mtxx.account.AccountLoginActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.leos.appstore.LocalManageContainer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.camera.Camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRootViewPackageFilterOut(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 79
    const-string v0, "com.lenovo.app.Calendar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.lenovosearch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.novicetutorial"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.compass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.youdao.dict"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.iyd.reader.ReadingJoy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.gallery3d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.launcher"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.duomi.android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewFilterOut(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, viewName:Ljava/lang/String;
    instance-of v3, p0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 180
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    const-string v3, "com.lenovo.launcher2.weather.widget.MagicWeatherWidgetView"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.lenovo.launcher2.weather.widget.WeatherWidgetView"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.systemui.statusbar.policy.NotificationRowLayout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CallLogListItemView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ConversationListItem"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWidgetViewPackageFilterOut(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 151
    const-string v0, "com.lenovo.launcher"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.powersaving"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.app.Calendar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.launcher"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.android.LenovoSinaWeather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
