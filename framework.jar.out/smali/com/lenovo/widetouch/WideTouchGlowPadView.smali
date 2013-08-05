.class public Lcom/lenovo/widetouch/WideTouchGlowPadView;
.super Lcom/android/internal/widget/multiwaveview/GlowPadView;
.source "WideTouchGlowPadView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WideTouchGlowPadView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private onGestureDetected()V
    .locals 12

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 37
    .local v4, when:J
    const-string v0, "WideTouchGlowPadView"

    const-string v3, "WideTouch gesture recogonized!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v3, v2

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 40
    const/4 v8, 0x1

    move-object v6, p0

    move v7, v1

    move v9, v2

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 41
    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onFinishInflate()V

    .line 31
    invoke-virtual {p0, p0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 32
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 58
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 76
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 64
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    .line 68
    const-string v0, "WideTouchGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger : target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 14
    .parameter "keyCode"
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 44
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .line 45
    .local v8, repeatCount:I
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v12, v2, 0x40

    const/16 v13, 0x101

    move-wide/from16 v2, p4

    move/from16 v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 50
    .local v1, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 52
    return-void

    .line 44
    .end local v1           #ev:Landroid/view/KeyEvent;
    .end local v8           #repeatCount:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
