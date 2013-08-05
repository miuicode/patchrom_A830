.class public Lcom/lenovo/smart/Smart$HabitProvider$Telephony;
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
    name = "Telephony"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final LOCATION_ID:Ljava/lang/String; = "location_id"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_ID:Ljava/lang/String; = "sim_ID"

.field public static final TABLE_NAME:Ljava/lang/String; = "telephony"

.field public static final TRANSACTION_SUB_TYPE:Ljava/lang/String; = "transaction_sub_type"

.field public static final TRANSACTION_SUB_TYPE_INCOMING_CALL:I = 0x1

.field public static final TRANSACTION_SUB_TYPE_MISSED_CALL:I = 0x3

.field public static final TRANSACTION_SUB_TYPE_MO_SMSMMS:I = 0x1

.field public static final TRANSACTION_SUB_TYPE_MT_SMSMMS:I = 0x2

.field public static final TRANSACTION_SUB_TYPE_OUTGOING_CALL:I = 0x2

.field public static final TRANSACTION_TYPE:Ljava/lang/String; = "transaction_type"

.field public static final TRANSACTION_TYPE_MMS:I = 0x4

.field public static final TRANSACTION_TYPE_SMS:I = 0x3

.field public static final TRANSACTION_TYPE_VIDEO_CALL:I = 0x2

.field public static final TRANSACTION_TYPE_VOICE_CALL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 628
    const-string v0, "content://com.lenovo.smart.habit/telephony"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider$Telephony;->CONTENT_URI:Landroid/net/Uri;

    .line 634
    const-string v0, "content://com.lenovo.smart.habit/telephony/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$HabitProvider$Telephony;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 624
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
