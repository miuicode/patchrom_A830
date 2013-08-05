.class public Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;
.super Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
.source "LenovoCalllogUnreadContentObserver.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "LenovoCalllogUnreadContentObserver"

.field private static final MISS_CALL_PROJECTION:[Ljava/lang/String; = null

.field private static final MISS_CALL_SELECTION:Ljava/lang/String; = "(new = ?  AND type = ?  AND is_read = ?  AND date >= "

.field private static final MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

.field private static final OBSERVER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 12
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->OBSERVER_URI:Landroid/net/Uri;

    .line 14
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->MISS_CALL_PROJECTION:[Ljava/lang/String;

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;)V
    .locals 1
    .parameter "lenovoUnreadObserver"

    .prologue
    .line 35
    const-string v0, "calllog"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->OBSERVER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->MISS_CALL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected refreshUnreadNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method protected register()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/LenovoCalllogUnreadContentObserver;->OBSERVER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    return-void
.end method
