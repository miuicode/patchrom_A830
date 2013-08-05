.class Lcom/android/internal/policy/impl/GlobalActions$1$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$1;->onToggle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$1;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$1$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mNeedChangeState:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$302(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$1;->changeStateFromPress(Z)V

    .line 283
    return-void
.end method
