.class public final Lcom/lenovo/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LenovoTheme:[I = null

.field public static final LenovoTheme_author:I = 0x1

.field public static final LenovoTheme_component:I = 0x0

.field public static final LenovoTheme_description:I = 0x2

.field public static final LenovoTheme_preview:I = 0x4

.field public static final LenovoTheme_previewthumb:I = 0x5

.field public static final LenovoTheme_thumbnail:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/internal/R$styleable;->LenovoTheme:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x3t
        0x1t 0x0t 0x1t 0x3t
        0x2t 0x0t 0x1t 0x3t
        0x3t 0x0t 0x1t 0x3t
        0x4t 0x0t 0x1t 0x3t
        0x5t 0x0t 0x1t 0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
