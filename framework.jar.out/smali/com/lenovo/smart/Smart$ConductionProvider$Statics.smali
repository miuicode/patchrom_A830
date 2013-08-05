.class public Lcom/lenovo/smart/Smart$ConductionProvider$Statics;
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
    name = "Statics"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final PARAM_NAME:Ljava/lang/String; = "param_name"

.field public static final PARAM_NAME_IMPORT_PHONE_BOOK_FROM_CLOUD:Ljava/lang/String; = "import_from_cloud"

.field public static final PARAM_NAME_IMPORT_PHONE_BOOK_FROM_PC_SYNC:Ljava/lang/String; = "import_from_pc_sync"

.field public static final PARAM_NAME_IMPORT_PHONE_BOOK_FROM_SD:Ljava/lang/String; = "import_from_sd"

.field public static final PARAM_NAME_IMPORT_PHONE_BOOK_FROM_SIM:Ljava/lang/String; = "import_from_sim"

.field public static final PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String; = null

.field public static final PARAM_NAME_MO_CALL_FROM_CALL_LOG_DETAIL_LIST:Ljava/lang/String; = "call_log_detail_list"

.field public static final PARAM_NAME_MO_CALL_FROM_CALL_LOG_DETAIL_QUICKCONTACT:Ljava/lang/String; = "call_log_detail_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_CALL_LOG_LIST:Ljava/lang/String; = "call_log_list"

.field public static final PARAM_NAME_MO_CALL_FROM_CALL_LOG_QUICKCONTACT:Ljava/lang/String; = "call_log_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String; = null

.field public static final PARAM_NAME_MO_CALL_FROM_DIALER_PAD_CALL_BUTTON:Ljava/lang/String; = "dialer_pad_call_button"

.field public static final PARAM_NAME_MO_CALL_FROM_DIALER_PAD_SEARCH_LIST:Ljava/lang/String; = "dialer_pad_search_list"

.field public static final PARAM_NAME_MO_CALL_FROM_DIALER_PAD_SEARCH_QUICKCONTACT:Ljava/lang/String; = "dialer_pad_search_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String; = null

.field public static final PARAM_NAME_MO_CALL_FROM_PHONE_BOOK_DETAIL_LIST:Ljava/lang/String; = "phone_book_detail_list"

.field public static final PARAM_NAME_MO_CALL_FROM_PHONE_BOOK_DETAIL_QUICKCONTACT:Ljava/lang/String; = "phone_book_detail_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_PHONE_BOOK_LIST:Ljava/lang/String; = "phone_book_list"

.field public static final PARAM_NAME_MO_CALL_FROM_PHONE_BOOK_QUICKCONTACT:Ljava/lang/String; = "phone_book_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String; = null

.field public static final PARAM_NAME_MO_CALL_FROM_SMS_DETAIL_CALL_BUTTON:Ljava/lang/String; = "sms_detail_call_button"

.field public static final PARAM_NAME_MO_CALL_FROM_SMS_DETAIL_QUICKCONTACT:Ljava/lang/String; = "sms_detail_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_SMS_LIST_QUICKCONTACT:Ljava/lang/String; = "sms_list_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String; = null

.field public static final PARAM_NAME_MO_CALL_FROM_STARRED_DETAIL_LIST:Ljava/lang/String; = "starred_detail_list"

.field public static final PARAM_NAME_MO_CALL_FROM_STARRED_DETAIL_QUICKCONTACT:Ljava/lang/String; = "starred_detail_quickcontact"

.field public static final PARAM_NAME_MO_CALL_FROM_STARRED_LIST:Ljava/lang/String; = "starred_list"

.field public static final PARAM_NAME_MO_CALL_FROM_STARRED_QUICKCONTACT:Ljava/lang/String; = "starred_quickcontact"

.field public static final PARAM_NAME_SWITCH_MASTER_CALL_FROM_DUAL_SIM_SETTING:Ljava/lang/String; = "switch_master_call_from_dual_sim_setting"

.field public static final PARAM_NAME_SWITCH_MASTER_CALL_FROM_NOTIFICATION_BAR:Ljava/lang/String; = "switch_master_call_from_notification_bar"

.field public static final PARAM_NAME_THIRD_PARTY_PACKAGE_NAME:Ljava/lang/String; = "third_party_package_name"

.field public static final PARAM_VALUE:Ljava/lang/String; = "param_value"

.field public static final STATICS_TYPE:Ljava/lang/String; = "statics_type"

.field public static final STATICS_TYPE_IMPORT_PHONE_BOOK:Ljava/lang/String; = "import_phone_book"

.field public static final STATICS_TYPE_INSTALLING_THIRD_PARTY_APP:Ljava/lang/String; = "installing_third_party_app"

.field public static final STATICS_TYPE_MO_CALL_ENTRANCE:Ljava/lang/String; = "mo_call_entrance"

.field public static final STATICS_TYPE_MO_CALL_MISTAKE:Ljava/lang/String; = "mo_call_mistake"

.field public static final STATICS_TYPE_SWITCH_MASTER_CALL:Ljava/lang/String; = "switch_master_call"

.field public static final TABLE_NAME:Ljava/lang/String; = "statics"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 991
    const-string v0, "content://com.lenovo.smart.conduction/statics"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->CONTENT_URI:Landroid/net/Uri;

    .line 997
    const-string v0, "content://com.lenovo.smart.conduction/statics/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1058
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dialer_pad_call_button"

    aput-object v1, v0, v2

    const-string v1, "dialer_pad_search_list"

    aput-object v1, v0, v3

    const-string v1, "dialer_pad_search_quickcontact"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    .line 1064
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "call_log_list"

    aput-object v1, v0, v2

    const-string v1, "call_log_quickcontact"

    aput-object v1, v0, v3

    const-string v1, "call_log_detail_list"

    aput-object v1, v0, v4

    const-string v1, "call_log_detail_quickcontact"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    .line 1071
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "phone_book_list"

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_book_quickcontact"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone_book_detail_list"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phone_book_detail_quickcontact"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    .line 1078
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "sms_list_quickcontact"

    aput-object v1, v0, v2

    const-string/jumbo v1, "sms_detail_call_button"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sms_detail_quickcontact"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    .line 1084
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "starred_list"

    aput-object v1, v0, v2

    const-string/jumbo v1, "starred_quickcontact"

    aput-object v1, v0, v3

    const-string/jumbo v1, "starred_detail_list"

    aput-object v1, v0, v4

    const-string/jumbo v1, "starred_detail_quickcontact"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 987
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
