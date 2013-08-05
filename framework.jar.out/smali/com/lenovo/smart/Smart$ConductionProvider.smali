.class public Lcom/lenovo/smart/Smart$ConductionProvider;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/smart/Smart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConductionProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$ConductionProvider$Statics;,
        Lcom/lenovo/smart/Smart$ConductionProvider$Status;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.smart.conduction"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 883
    const-string v0, "content://com.lenovo.smart.conduction"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 877
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 987
    return-void
.end method
