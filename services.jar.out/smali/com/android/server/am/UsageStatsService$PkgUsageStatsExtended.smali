.class Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgUsageStatsExtended"
.end annotation


# instance fields
.field mLaunchCount:I

.field final mLaunchTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mPausedTime:J

.field mResumedTime:J

.field mUsageTime:J

.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 186
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V
    .locals 6
    .parameter
    .parameter "in"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, numTimeStats:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, comp:Ljava/lang/String;
    new-instance v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v3, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    .line 200
    .local v3, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0           #comp:Ljava/lang/String;
    .end local v3           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_0
    return-void
.end method


# virtual methods
.method addLaunchCount(Ljava/lang/String;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 218
    .local v0, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 220
    .restart local v0       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;->incCount()V

    .line 223
    return-void
.end method

.method addLaunchTime(Ljava/lang/String;I)V
    .locals 2
    .parameter "comp"
    .parameter "millis"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 227
    .local v0, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 229
    .restart local v0       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    .line 232
    return-void
.end method

.method clear()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 252
    return-void
.end method

.method updatePause()V
    .locals 6

    .prologue
    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    .line 213
    iget-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    iget-wide v2, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    iget-wide v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 214
    return-void
.end method

.method updateResume(Ljava/lang/String;Z)V
    .locals 2
    .parameter "comp"
    .parameter "launched"

    .prologue
    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 208
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    .line 209
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 235
    iget v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-wide v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 238
    .local v2, numTimeStats:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    if-lez v2, :cond_0

    .line 240
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 241
    .local v0, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 243
    .local v3, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 246
    .end local v0           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_0
    return-void
.end method
