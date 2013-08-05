.class public Lcom/lenovo/smart/Smart$ConductionProvider$Status;
.super Ljava/lang/Object;
.source "Smart.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/smart/Smart$ConductionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final PARAM_NAME:Ljava/lang/String; = "param_name"

.field public static final PARAM_NAME_CALL_MASTER_CARD:Ljava/lang/String; = "call_master_card"

.field public static final PARAM_NAME_CONTACTS_NUMBER_ALL:Ljava/lang/String; = "contacts_number_all"

.field public static final PARAM_NAME_CONTACTS_NUMBER_PHONE_ONLY:Ljava/lang/String; = "contacts_number_phone_only"

.field public static final PARAM_NAME_CONTACTS_NUMBER_SIM_ONLY:Ljava/lang/String; = "contacts_number_sim_only"

.field public static final PARAM_NAME_DATA_MASTER_CARD:Ljava/lang/String; = "data_master_card"

.field public static final PARAM_NAME_SMS_MASTER_CARD:Ljava/lang/String; = "sms_master_card"

.field public static final PARAM_VALUE:Ljava/lang/String; = "param_value"

.field public static final STATUS_TYPE:Ljava/lang/String; = "status_type"

.field public static final STATUS_TYPE_CONTACTS_NUMBER:Ljava/lang/String; = "contacts_number"

.field public static final STATUS_TYPE_HAVE_DUAL_SIM:Ljava/lang/String; = "have_dual_sim"

.field public static final STATUS_TYPE_IMEI:Ljava/lang/String; = "imei"

.field public static final STATUS_TYPE_INSTALLED_THIRD_PARTY_APP:Ljava/lang/String; = "installed_third_party_app"

.field public static final STATUS_TYPE_MASTER_CARD_SETTING:Ljava/lang/String; = "master_card_setting"

.field public static final STATUS_TYPE_SHOW_CONTACTS_FILTER:Ljava/lang/String; = "show_contacts_filter"

.field public static final STATUS_TYPE_SLOT1_SIM_TYPE:Ljava/lang/String; = "slot1_sim_type"

.field public static final STATUS_TYPE_SLOT2_SIM_TYPE:Ljava/lang/String; = "slot2_sim_type"

.field public static final STATUS_TYPE_SW_VERSION:Ljava/lang/String; = "sw_version"

.field public static final TABLE_NAME:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 893
    const-string v0, "content://com.lenovo.smart.conduction/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Status;->CONTENT_URI:Landroid/net/Uri;

    .line 899
    const-string v0, "content://com.lenovo.smart.conduction/status/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Status;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
