.class Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
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
    .line 309
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    if-nez v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 344
    :goto_0
    return-void

    .line 313
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 314
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 315
    .local v2, result:Landroid/os/Bundle;
    const-string v4, "booleanResult"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 318
    .local v3, verified:Z
    const-string v4, "errorMessage"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, errMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(ZLjava/lang/String;)V
    invoke-static {v4, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 322
    .end local v1           #errMsg:Ljava/lang/String;
    .end local v2           #result:Landroid/os/Bundle;
    .end local v3           #verified:Z
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/accounts/OperationCanceledException;
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(ZLjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 327
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 330
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(ZLjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 335
    .local v0, e:Landroid/accounts/AuthenticatorException;
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(ZLjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;ZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v4
.end method
