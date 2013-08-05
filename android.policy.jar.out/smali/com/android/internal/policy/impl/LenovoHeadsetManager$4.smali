.class Lcom/android/internal/policy/impl/LenovoHeadsetManager$4;
.super Landroid/content/BroadcastReceiver;
.source "LenovoHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$4;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, state:Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$4;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mLastPhoneIdleTime:J
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->access$302(Lcom/android/internal/policy/impl/LenovoHeadsetManager;J)J

    .line 146
    const-string v2, "LenovoHeadsetManager"

    const-string v3, "ACTION_PHONE_STATE_CHANGED to idle"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LenovoHeadsetManager$MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    return-void
.end method
