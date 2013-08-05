.class Lcom/android/internal/policy/impl/LenovoHeadsetManager$2;
.super Ljava/lang/Object;
.source "LenovoHeadsetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$2;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$2;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    #calls: Lcom/android/internal/policy/impl/LenovoHeadsetManager;->onHeadsetCommandEnd()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->access$100(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V

    .line 120
    return-void
.end method
