.class Lcom/android/internal/policy/impl/LenovoHeadsetManager$3;
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
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$3;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$3;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    #getter for: Lcom/android/internal/policy/impl/LenovoHeadsetManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->access$200(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
