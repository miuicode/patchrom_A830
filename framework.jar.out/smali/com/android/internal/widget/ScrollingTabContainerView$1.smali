.class Lcom/android/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 297
    .local v0, scrollPos:I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->scrollTo(II)V

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 304
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    goto :goto_0
.end method
