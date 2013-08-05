.class Lcom/android/server/LenovoBatteryManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LenovoBatteryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LenovoBatteryManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LenovoBatteryManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService$1;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 160
    if-nez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, action:Ljava/lang/String;
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBroadcastReceiver.onReceive,action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v6, "action.boardcast.resume.activity.info"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    iget-object v6, p0, Lcom/android/server/LenovoBatteryManagerService$1;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/LenovoBatteryManagerService;->access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v6, "action.sys.unlock.proximity.status.changed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    const-string v6, "enable"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, enable:Ljava/lang/String;
    const-string v6, "persist.sys.unlock.proximity"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v3           #enable:Ljava/lang/String;
    :cond_3
    const-string v6, "action.batterysaving.killbackgroundservice"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 174
    .local v1, am:Landroid/app/ActivityManager;
    const-string v6, "TobeKill"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 177
    .local v5, pack:Ljava/lang/String;
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lincl1+++killing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v5           #pack:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/server/LenovoBatteryManagerService$1;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    #getter for: Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LenovoBatteryManagerService;->access$200(Lcom/android/server/LenovoBatteryManagerService;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "acition.batterysaving.cleanbackgrounddone"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
