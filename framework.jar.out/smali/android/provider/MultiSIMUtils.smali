.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field protected static MAX_PHONE_COUNT_DS:I = 0x0

.field public static final MTK:Ljava/lang/String; = "mtk"

.field public static final QUALCOMM:Ljava/lang/String; = "qualcomm"

.field private static final TAG:Ljava/lang/String; = "MultiSIMUtils"

.field protected static isMultiSimEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "multisim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MultiSIMUtils;->isMultiSimEnabled:Z

    .line 30
    const/4 v0, 0x2

    sput v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 42
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, type:I
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 244
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v1

    .line 248
    :cond_0
    return v1
.end method


# virtual methods
.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 115
    invoke-static {p1, p2}, Landroid/telephony/gemini/GeminiSmsManager;->deleteMessageFromIccGemini(II)Z

    move-result v0

    return v0
.end method

.method public endDulCall()Z
    .locals 5

    .prologue
    .line 337
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 339
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    .line 341
    .local v1, hungUp:Z
    if-eqz v2, :cond_0

    .line 343
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, ex:Landroid/os/RemoteException;
    const-string/jumbo v3, "mocai"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getAllMessagesFromIccGemini(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, str:Landroid/telephony/CellLocation;
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 100
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 104
    :cond_0
    return-object v1
.end method

.method public getDataSubscriberId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 354
    sget-object v3, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 357
    .local v0, simid:J
    sget-object v3, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 358
    .local v2, slot:I
    invoke-virtual {p0, v2}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 5
    .parameter "simid"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, IMEIorMEID:Ljava/lang/String;
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 62
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId meid or imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, operator:Ljava/lang/String;
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 266
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator  is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v1
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 55
    sget v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    return v0
.end method

.method public getPhoneType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, type:I
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 212
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    .line 216
    :cond_0
    return v1
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string/jumbo v0, "mtk"

    return-object v0
.end method

.method public getSIMContactsUri(I)Ljava/lang/String;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 160
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 163
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 166
    .local v2, isUsim:Z
    :try_start_0
    const-string v3, "USIM"

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    const/4 v2, 0x1

    .line 176
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 177
    if-nez p1, :cond_1

    .line 178
    const-string v3, "content://icc/pbr1"

    .line 186
    :goto_1
    return-object v3

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "content://icc/pbr2"

    goto :goto_1

    .line 183
    :cond_2
    if-nez p1, :cond_3

    .line 184
    const-string v3, "content://icc/adn1"

    goto :goto_1

    .line 186
    :cond_3
    const-string v3, "content://icc/adn2"

    goto :goto_1
.end method

.method public getSIMSMSUri(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    const-string v0, "content://sms/icc"

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://sms/icc2"

    goto :goto_0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 6
    .parameter "simid"

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, gotScNumber:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 128
    :goto_0
    const-string v3, "MultiSIMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScAddress  is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 127
    goto :goto_0

    .line 125
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, e2:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5
    .parameter "simid"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, imsi:Ljava/lang/String;
    const/4 v1, 0x0

    .line 278
    .local v1, simOper:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    const-string v1, "46000"

    .line 294
    :cond_0
    :goto_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator netType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v1

    .line 282
    :cond_1
    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const-string v1, "46002"

    goto :goto_0

    .line 286
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    const-string v1, "46001"

    goto :goto_0

    .line 289
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v1, "46003"

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .parameter "simid"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, SimSerialNumber:Ljava/lang/String;
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 303
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimSerialNumber SimSerialNumber ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-object v0
.end method

.method public getSimState(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, state:I
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v1

    .line 90
    :cond_0
    return v1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, str:Ljava/lang/String;
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 74
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId  is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v1
.end method

.method public registDualCardPhoneState(Landroid/telephony/PhoneStateListener;II)V
    .locals 3
    .parameter "listener"
    .parameter "events"
    .parameter "subscription"

    .prologue
    .line 321
    sget-object v1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 323
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 326
    :cond_0
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 157
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 137
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 144
    return-void
.end method
