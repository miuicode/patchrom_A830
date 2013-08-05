.class public final Landroid/provider/LenovoSecure$ListTable;
.super Ljava/lang/Object;
.source "LenovoSecure.java"

# interfaces
.implements Landroid/provider/LenovoSecure$BaseFilterListColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LenovoSecure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListTable"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SHORT_NUMBER:Ljava/lang/String; = "shortNumber"

.field public static final TABLE_NAME:Ljava/lang/String; = "all_list"

.field public static final TYPE_ALL:I = 0x3

.field public static final TYPE_BLACK:I = 0x2

.field public static final TYPE_CALL:I = 0x2

.field public static final TYPE_FILTER:Ljava/lang/String; = "filterType"

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_LIST:Ljava/lang/String; = "listType"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PRIVATE:I = 0x3

.field public static final TYPE_SMS:I = 0x1

.field public static final TYPE_WHITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
