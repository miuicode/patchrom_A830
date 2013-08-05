.class Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method public constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    .line 125
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 126
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v1, v1, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->WIDE_TOUCH_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-virtual {v1}, Lcom/lenovo/widetouch/WideTouchService;->updateSettings()V

    .line 134
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchService;->updateSettings()V

    .line 138
    return-void
.end method
