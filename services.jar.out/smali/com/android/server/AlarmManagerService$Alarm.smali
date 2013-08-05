.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alarm"
.end annotation


# instance fields
.field public count:I

.field private isBlocked:Z

.field public operation:Landroid/app/PendingIntent;

.field public repeatInterval:J

.field private sourceType:I

.field public type:I

.field private typeChanged:Z

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->isBlocked:Z

    .line 921
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->typeChanged:Z

    .line 930
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 931
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 933
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->typeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/AlarmManagerService$Alarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 917
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->typeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->isBlocked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/AlarmManagerService$Alarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 917
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->isBlocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 917
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourceType:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/AlarmManagerService$Alarm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 917
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourceType:I

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"
    .parameter "now"

    .prologue
    .line 950
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 951
    const-string v0, " when="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 952
    const-string v0, " repeatInterval="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 953
    const-string v0, " count="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 954
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "operation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 939
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 943
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
