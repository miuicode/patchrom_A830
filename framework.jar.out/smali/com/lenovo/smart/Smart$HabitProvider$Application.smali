.class public Lcom/lenovo/smart/Smart$HabitProvider$Application;
.super Ljava/lang/Object;
.source "Smart.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/smart/Smart$HabitProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final LOCATION_ID:Ljava/lang/String; = "location_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "Package"

.field public static final PARAMETER:Ljava/lang/String; = "parameter"

.field public static final SEND_FLAG:Ljava/lang/String; = "send_flag"

.field public static final START_PARA_LAUNCHER:I = 0x1

.field public static final START_PARA_UNDEFINED:I = 0x0

.field public static final STOP_PARA_ANR:I = 0x3

.field public static final STOP_PARA_CRASH:I = 0x1

.field public static final STOP_PARA_TRIM:I = 0x2

.field public static final STOP_PARA_UNDEFINED:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "application"

.field public static final TIME:Ljava/lang/String; = "Time"

.field public static final TYPE:Ljava/lang/String; = "Type"

.field public static final TYPE_DURATION:I = 0x2

.field public static final TYPE_START:I = 0x1

.field public static final TYPE_STOP:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 725
    const-string v0, "content://com.lenovo.smart.habit/application"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider$Application;->CONTENT_URI:Landroid/net/Uri;

    .line 731
    const-string v0, "content://com.lenovo.smart.habit/application/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider$Application;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 721
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
