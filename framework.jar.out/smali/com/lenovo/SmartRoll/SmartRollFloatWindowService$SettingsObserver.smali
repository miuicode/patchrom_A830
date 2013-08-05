.class Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmartRollFloatWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;


# direct methods
.method public constructor <init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    .line 99
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    iget-object v1, v1, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->SMART_ROLL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    invoke-virtual {v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 108
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;

    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 112
    return-void
.end method
