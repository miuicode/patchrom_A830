.class public Lcom/android/internal/policy/impl/keyguard/LenovoStaticUtility1;
.super Ljava/lang/Object;
.source "LenovoStaticUtility1.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "LenovoStaticUtility1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getKeyguardClientContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.lenovo.keyguardclient"

    .line 30
    .local v1, packageName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoStaticUtility1;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, contextClient:Landroid/content/Context;
    goto :goto_0
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 40
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 47
    .local v0, contextClient:Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "LenovoStaticUtility1"

    const-string v3, "getPackageContext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PackageManager.NameNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/LenovoLog;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static replaceUnlockView(Landroid/content/Context;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .parameter "newC"
    .parameter "oldC"
    .parameter "oldV"

    .prologue
    .line 61
    const/4 v5, 0x0

    .line 63
    .local v5, newV:Landroid/view/View;
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 68
    .local v6, parent:Landroid/widget/FrameLayout;
    invoke-virtual {v6, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 69
    .local v1, index:I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 71
    .local v0, id:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 72
    .local v7, res:Landroid/content/res/Resources;
    const-string v8, "kg_unlock"

    const-string v9, "layout"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, layoutId:I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 74
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 75
    invoke-virtual {v6, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v5, v0}, Landroid/view/View;->setId(I)V

    .line 77
    invoke-virtual {v6, v5, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .end local v0           #id:I
    .end local v1           #index:I
    .end local v2           #layoutId:I
    .end local v3           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #parent:Landroid/widget/FrameLayout;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    return-object v5
.end method
