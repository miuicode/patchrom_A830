.class public Lcom/lenovo/smart/Smart$HabitProvider$ApplicationDuration;
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
    name = "ApplicationDuration"
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "Time"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final LOCATION_ID:Ljava/lang/String; = "location_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "Package"

.field public static final TABLE_NAME:Ljava/lang/String; = "application_duration"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 825
    const-string v0, "content://com.lenovo.smart.habit/application_duration"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider$ApplicationDuration;->CONTENT_URI:Landroid/net/Uri;

    .line 831
    const-string v0, "content://com.lenovo.smart.habit/application_duration/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider$ApplicationDuration;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 821
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
