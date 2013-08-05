.class Lcom/android/server/AlarmManagerService$2;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 280
    const-string v0, "AlarmManager"

    const-string v1, "Connected alarm manager service2"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p2}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/batterymanage/ILenovoAlarmManagerService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmMonitorService:Landroid/service/batterymanage/ILenovoAlarmManagerService;

    .line 282
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/AlarmManagerService;->mIsBound:Z

    .line 283
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 290
    const-string v0, "AlarmManager"

    const-string v1, "Disconnected alarm manager service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmMonitorService:Landroid/service/batterymanage/ILenovoAlarmManagerService;

    .line 292
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/AlarmManagerService;->mIsBound:Z

    .line 293
    return-void
.end method
