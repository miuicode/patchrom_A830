.class public Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;
.super Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;
.source "LenovoMmsUnreadContentObserver.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "LenovoMmsUnreadContentObserver"

.field private static final MMS_QUERY_URI:Landroid/net/Uri; = null

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(seen = 0  AND (m_type <> 134 AND m_type <> 136) AND date >= "

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND seen = 0  AND date >= "

.field private static final OBSERVER_URI:Landroid/net/Uri;

.field private static final SMS_QUERY_URI:Landroid/net/Uri;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->OBSERVER_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->MMS_QUERY_URI:Landroid/net/Uri;

    .line 18
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->SMS_QUERY_URI:Landroid/net/Uri;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;)V
    .locals 1
    .parameter "lenovoUnreadObserver"

    .prologue
    .line 47
    const-string v0, "message"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->MMS_QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->SMS_QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected refreshUnreadNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method protected register()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->OBSERVER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    return-void
.end method
