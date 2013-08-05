.class public Landroid/content/res/Resources$SeekBarRes;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarRes"
.end annotation


# instance fields
.field public indeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field public progressbackground:Landroid/graphics/drawable/Drawable;

.field public resid:I

.field final synthetic this$0:Landroid/content/res/Resources;

.field public thumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3573
    iput-object p1, p0, Landroid/content/res/Resources$SeekBarRes;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3574
    iput-object v0, p0, Landroid/content/res/Resources$SeekBarRes;->progressbackground:Landroid/graphics/drawable/Drawable;

    .line 3575
    iput-object v0, p0, Landroid/content/res/Resources$SeekBarRes;->indeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 3576
    iput-object v0, p0, Landroid/content/res/Resources$SeekBarRes;->thumb:Landroid/graphics/drawable/Drawable;

    .line 3577
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$SeekBarRes;->resid:I

    return-void
.end method
