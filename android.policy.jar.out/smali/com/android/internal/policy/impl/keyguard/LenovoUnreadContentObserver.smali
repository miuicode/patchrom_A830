.class public abstract Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
.super Landroid/database/ContentObserver;
.source "LenovoUnreadContentObserver.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "LenovoUnreadContentObserver"


# instance fields
.field protected mLastClearTime:J

.field protected mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

.field protected mNumber:I

.field protected mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;Ljava/lang/String;)V
    .locals 2
    .parameter "lenovoUnreadObserver"
    .parameter "tag"

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mTag:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    .line 34
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->refreshUnreadNumber()V

    .line 49
    return-void
.end method

.method protected abstract refreshUnreadNumber()V
.end method

.method abstract register()V
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method updateLastClearTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLastClearTime:J

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->updateUnreadNumber(I)V

    .line 88
    return-void
.end method

.method protected updateUnreadNumber(I)V
    .locals 2
    .parameter "unreadNumber"

    .prologue
    .line 66
    if-ltz p1, :cond_0

    .line 67
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mNumber:I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method updateUnreadNumberUiThread()V
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getCallback()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;

    .line 57
    .local v0, callback:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mTag:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mNumber:I

    invoke-interface {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;->onUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    .end local v0           #callback:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;
    :cond_0
    return-void
.end method
