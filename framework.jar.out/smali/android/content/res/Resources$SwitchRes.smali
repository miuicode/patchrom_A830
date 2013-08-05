.class public Landroid/content/res/Resources$SwitchRes;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchRes"
.end annotation


# instance fields
.field public inner:Landroid/graphics/drawable/Drawable;

.field public resid:I

.field final synthetic this$0:Landroid/content/res/Resources;

.field public track:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3595
    iput-object p1, p0, Landroid/content/res/Resources$SwitchRes;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3596
    iput-object v0, p0, Landroid/content/res/Resources$SwitchRes;->track:Landroid/graphics/drawable/Drawable;

    .line 3597
    iput-object v0, p0, Landroid/content/res/Resources$SwitchRes;->inner:Landroid/graphics/drawable/Drawable;

    .line 3598
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$SwitchRes;->resid:I

    return-void
.end method
