.class public interface abstract Lcom/android/internal/policy/impl/keyguard/LenovoUnlockViewListenerInterface;
.super Ljava/lang/Object;
.source "LenovoUnlockViewListenerInterface.java"


# static fields
.field public static final OBJ_TAG_CALLLOG:Ljava/lang/String; = "calllog"

.field public static final OBJ_TAG_CAMERA:Ljava/lang/String; = "camera"

.field public static final OBJ_TAG_DIAL:Ljava/lang/String; = "dial"

.field public static final OBJ_TAG_MESSAGE:Ljava/lang/String; = "message"

.field public static final OBJ_TAG_NORMAL:Ljava/lang/String; = "normal"

.field public static final OBJ_TAG_OTHER:Ljava/lang/String; = "other"


# virtual methods
.method public abstract onFail(Ljava/lang/String;Landroid/content/Intent;)V
.end method

.method public abstract onStart(Ljava/lang/String;Landroid/content/Intent;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Landroid/content/Intent;)V
.end method
