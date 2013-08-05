.class public Landroid/content/res/Resources$TabRes;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabRes"
.end annotation


# instance fields
.field public preview:Landroid/graphics/drawable/Drawable;

.field public resid:I

.field public strip_left:Landroid/graphics/drawable/Drawable;

.field public strip_right:Landroid/graphics/drawable/Drawable;

.field public tab_indicator:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3604
    iput-object p1, p0, Landroid/content/res/Resources$TabRes;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3605
    iput-object v0, p0, Landroid/content/res/Resources$TabRes;->strip_left:Landroid/graphics/drawable/Drawable;

    .line 3606
    iput-object v0, p0, Landroid/content/res/Resources$TabRes;->strip_right:Landroid/graphics/drawable/Drawable;

    .line 3607
    iput-object v0, p0, Landroid/content/res/Resources$TabRes;->tab_indicator:Landroid/graphics/drawable/Drawable;

    .line 3608
    iput-object v0, p0, Landroid/content/res/Resources$TabRes;->preview:Landroid/graphics/drawable/Drawable;

    .line 3609
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$TabRes;->resid:I

    return-void
.end method
