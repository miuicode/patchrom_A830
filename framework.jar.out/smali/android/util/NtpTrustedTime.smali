.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "server"
    .parameter "timeout"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .parameter "context"

    .prologue
    .line 53
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v9, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 55
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 57
    .local v4, resolver:Landroid/content/ContentResolver;
    const v9, 0x1040026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, defaultServer:Ljava/lang/String;
    const v9, 0x10e0035

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v1, v9

    .line 62
    .local v1, defaultTimeout:J
    const-string/jumbo v9, "ntp_server"

    invoke-static {v4, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, secureServer:Ljava/lang/String;
    const-string/jumbo v9, "ntp_timeout"

    invoke-static {v4, v9, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 67
    .local v7, timeout:J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 68
    .local v6, server:Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/util/NtpTrustedTime;

    invoke-direct {v9, v6, v7, v8}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 71
    .end local v0           #defaultServer:Ljava/lang/String;
    .end local v1           #defaultTimeout:J
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #secureServer:Ljava/lang/String;
    .end local v6           #server:Ljava/lang/String;
    .end local v7           #timeout:J
    :cond_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    .restart local v0       #defaultServer:Ljava/lang/String;
    .restart local v1       #defaultTimeout:J
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #secureServer:Ljava/lang/String;
    .restart local v7       #timeout:J
    :cond_1
    move-object v6, v0

    .line 67
    goto :goto_0

    .line 53
    .end local v0           #defaultServer:Ljava/lang/String;
    .end local v1           #defaultTimeout:J
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #secureServer:Ljava/lang/String;
    .end local v7           #timeout:J
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 76
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "xtra1.gpsonextra.net"

    aput-object v5, v2, v3

    const-string v5, "0.centos.pool.ntp.org"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "1.centos.pool.ntp.org"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "2.centos.pool.ntp.org"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "time.buptnet.edu.cn"

    aput-object v6, v2, v5

    .line 82
    .local v2, ntpServers:[Ljava/lang/String;
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 83
    .local v0, client:Landroid/net/SntpClient;
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 85
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 86
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 87
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v5

    div-long/2addr v5, v8

    iput-wide v5, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v3, v4

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 92
    aget-object v5, v2, v1

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 94
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 95
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 96
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v5

    div-long/2addr v5, v8

    iput-wide v5, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v3, v4

    .line 97
    goto :goto_0

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 122
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 124
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
