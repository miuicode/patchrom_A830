.class public Lcom/lenovo/widetouch/WideTouchWindow;
.super Landroid/widget/FrameLayout;
.source "WideTouchWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WideTouchWindow"


# instance fields
.field private mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

.field private mGlowPadView_bottom:I

.field private mGlowPadView_left:I

.field private mGlowPadView_right:I

.field private mGlowPadView_top:I

.field private mIsAttachedToWindow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    .line 58
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    .line 64
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    const v0, 0x30a000f

    invoke-virtual {p0, v0}, Lcom/lenovo/widetouch/WideTouchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/widetouch/WideTouchGlowPadView;

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    .line 49
    const/16 v0, 0xd3

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    .line 50
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    .line 51
    const/16 v0, 0x42d

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    .line 52
    return-void
.end method

.method public onInputTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "paramMotionEvent"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 69
    .local v0, action:I
    iget-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_0

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 76
    .local v1, newEvent:Landroid/view/MotionEvent;
    sparse-switch v0, :sswitch_data_0

    .line 112
    :goto_0
    if-eqz v1, :cond_1

    .line 113
    iget v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 114
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2, v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 78
    :sswitch_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 83
    iget v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    iget v4, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 88
    :sswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 89
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 92
    :sswitch_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 94
    iget-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 102
    :sswitch_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 125
    return-void
.end method
