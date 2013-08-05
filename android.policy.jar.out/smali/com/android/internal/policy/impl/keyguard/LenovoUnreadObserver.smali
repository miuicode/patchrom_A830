.class public Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;
.super Ljava/lang/Object;
.source "LenovoUnreadObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;
    }
.end annotation


# static fields
.field public static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field public static final CLEAR_NEW_EVENT_VIEW_INTENT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "LenovoUnreadObserver"

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mMainHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->enable()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->updateLastClearTime(Ljava/lang/String;)V

    return-void
.end method

.method private disable()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->unregisterAll()V

    .line 261
    return-void
.end method

.method private enable()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->registerAll()V

    .line 250
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->updateLastClearTime(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->sInstance:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    if-nez v0, :cond_0

    .line 70
    if-eqz p0, :cond_0

    .line 71
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->sInstance:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->sInstance:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    return-object v0
.end method

.method private newDefaultContentObserver(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    .locals 2
    .parameter "tag"

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    const-string v1, "calllog"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;

    .end local v0           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;)V

    .line 187
    .restart local v0       #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    const-string v1, "message"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    .end local v0           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;)V

    .restart local v0       #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    goto :goto_0
.end method

.method private refreshAll()V
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    .line 293
    .local v1, observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->updateUnreadNumberUiThread()V

    goto :goto_0

    .line 297
    .end local v1           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    :cond_1
    return-void
.end method

.method private registerAll()V
    .locals 3

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    .line 269
    .local v1, observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->register()V

    goto :goto_0

    .line 273
    .end local v1           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    :cond_1
    return-void
.end method

.method private unregisterAll()V
    .locals 3

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    .line 281
    .local v1, observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->unregister()V

    goto :goto_0

    .line 285
    .end local v1           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    :cond_1
    return-void
.end method

.method private updateLastClearTime(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 306
    .local v2, time:J
    if-nez p1, :cond_1

    .line 307
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    .line 308
    .local v1, observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->updateLastClearTime(J)V

    goto :goto_0

    .line 312
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    .line 314
    .restart local v1       #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->updateLastClearTime(J)V

    .line 318
    .end local v1           #observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    :cond_2
    return-void
.end method


# virtual methods
.method public addContentObserver(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->checkAddContentObserver(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->register()V

    .line 224
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->updateLastClearTime(Ljava/lang/String;)V

    .line 226
    .end local v0           #tag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addDefaultContentObserver(Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 212
    :cond_1
    :goto_0
    return v1

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    .line 201
    .local v0, observer:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
    if-nez v0, :cond_1

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->newDefaultContentObserver(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    move-result-object v0

    .line 207
    if-nez v0, :cond_3

    move v1, v2

    .line 208
    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->addContentObserver(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)V

    goto :goto_0
.end method

.method public checkAddContentObserver(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)Z
    .locals 4
    .parameter "observer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 157
    const-string v3, "calllog"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    instance-of v3, p1, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;

    if-eqz v3, :cond_0

    move v1, v2

    .line 159
    goto :goto_0

    .line 163
    :cond_2
    const-string v3, "message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    instance-of v3, p1, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    if-eqz v3, :cond_0

    move v1, v2

    .line 165
    goto :goto_0

    :cond_3
    move v1, v2

    .line 171
    goto :goto_0
.end method

.method public clearCallback(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public getCallback()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isDefaultContentObserver(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 128
    const-string v0, "calllog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContentObserver(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->unregister()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mObservers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->refreshAll()V

    .line 103
    :cond_0
    return-void
.end method
