.class public final Lcom/android/internal/policy/impl/keyguard/LenovoLogP;
.super Ljava/lang/Object;
.source "LenovoLogP.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "LenovoLogP"

.field private static final TAG:Ljava/lang/String; = "lenovokeyguard.plog"

.field private static final sLock:Ljava/lang/Object;

.field private static sToken:I


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

.field private mTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static final getInstance(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/LenovoLogP;
    .locals 4
    .parameter "run"
    .parameter "className"
    .parameter "methodName"

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;-><init>()V

    .line 51
    .local v0, logP:Lcom/android/internal/policy/impl/keyguard/LenovoLogP;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_0
    sget v1, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->sToken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->sToken:I

    .line 53
    sget v1, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->sToken:I

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mToken:I

    .line 54
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iput-object p1, v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mClassName:Ljava/lang/String;

    .line 56
    iput-object p2, v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mMethodName:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mTime:Ljava/util/ArrayList;

    .line 58
    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mTime:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final log(Lcom/android/internal/policy/impl/keyguard/LenovoLogP;)V
    .locals 1
    .parameter "logP"

    .prologue
    .line 65
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->log(Lcom/android/internal/policy/impl/keyguard/LenovoLogP;[Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static final varargs log(Lcom/android/internal/policy/impl/keyguard/LenovoLogP;[Ljava/lang/String;)V
    .locals 11
    .parameter "logP"
    .parameter "parameter"

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 72
    .local v4, t2:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mTime:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mTime:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 73
    .local v2, t1:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mTime:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 74
    .local v0, t0:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mTime:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v6, "lenovokeyguard.plog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mClassName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mMethodName:Ljava/lang/String;

    invoke-static {v8, v9, v10, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoLog;->link(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/LenovoLogP;->mToken:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #t0:J
    .end local v2           #t1:J
    .end local v4           #t2:J
    :cond_0
    return-void
.end method
