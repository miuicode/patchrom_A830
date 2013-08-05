.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 315
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 320
    return-void
.end method
