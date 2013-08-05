.class Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;)V
    .locals 3
    .parameter
    .parameter "accountManager"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 121
    const-string v0, "com.lenovo.lsf.account"

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 147
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEnableFallback:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    .line 160
    .end local v0           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 157
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    .line 157
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 154
    :catch_2
    move-exception v1

    .line 157
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 140
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    .line 142
    return-void
.end method
