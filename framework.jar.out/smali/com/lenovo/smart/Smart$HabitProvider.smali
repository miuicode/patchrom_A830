.class public Lcom/lenovo/smart/Smart$HabitProvider;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/smart/Smart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HabitProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$HabitProvider$ApplicationDuration;,
        Lcom/lenovo/smart/Smart$HabitProvider$Application;,
        Lcom/lenovo/smart/Smart$HabitProvider$Telephony;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.smart.habit"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 618
    const-string v0, "content://com.lenovo.smart.habit"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 612
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 821
    return-void
.end method
