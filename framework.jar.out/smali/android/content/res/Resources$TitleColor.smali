.class public Landroid/content/res/Resources$TitleColor;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TitleColor"
.end annotation


# instance fields
.field public categroy:Landroid/content/res/ColorStateList;

.field public preference:Landroid/content/res/ColorStateList;

.field public resid:I

.field public strName:Ljava/lang/String;

.field public summary:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Landroid/content/res/Resources;

.field public title:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 3583
    iput-object p1, p0, Landroid/content/res/Resources$TitleColor;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3589
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$TitleColor;->resid:I

    return-void
.end method
