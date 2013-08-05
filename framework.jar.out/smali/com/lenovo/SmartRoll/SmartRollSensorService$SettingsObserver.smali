.class Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmartRollSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/SmartRoll/SmartRollSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;


# direct methods
.method public constructor <init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    .line 47
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    #getter for: Lcom/lenovo/SmartRoll/SmartRollSensorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->access$000(Lcom/lenovo/SmartRoll/SmartRollSensorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->SMART_ROLL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    invoke-virtual {v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->updateSettings()V

    .line 56
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;->this$0:Lcom/lenovo/SmartRoll/SmartRollSensorService;

    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->updateSettings()V

    .line 60
    return-void
.end method
