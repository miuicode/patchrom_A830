.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 325
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 326
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 332
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$302(Z)Z

    .line 333
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 337
    :cond_0
    return-void

    .line 326
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 333
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
