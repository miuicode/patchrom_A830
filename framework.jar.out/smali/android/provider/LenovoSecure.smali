.class public final Landroid/provider/LenovoSecure;
.super Ljava/lang/Object;
.source "LenovoSecure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/LenovoSecure$ListTable;,
        Landroid/provider/LenovoSecure$BaseFilterListColumns;
    }
.end annotation


# static fields
.field public static final EXISTED:I = 0x2

.field public static final FAILED:I = 0x1

.field private static final FEAUTRE_LENOVOSERVURE:Z = true

.field public static final FORBIDDED:I = 0x3

.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LENOVOSECURE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static addToList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "listType"
    .parameter "filterType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 277
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:listType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:filterType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz p1, :cond_0

    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    if-nez p0, :cond_2

    move v0, v1

    .line 303
    :cond_1
    :goto_0
    return v0

    .line 283
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 284
    goto :goto_0

    .line 285
    :cond_4
    if-eq p3, v5, :cond_5

    if-eq p3, v6, :cond_5

    if-eq p3, v7, :cond_5

    move v0, v1

    .line 286
    goto :goto_0

    .line 287
    :cond_5
    if-gt p4, v7, :cond_6

    if-gez p4, :cond_7

    :cond_6
    move v0, v1

    .line 288
    goto :goto_0

    .line 290
    :cond_7
    const/4 v0, 0x0

    .line 291
    .local v0, bResult:Z
    if-ne p3, v6, :cond_a

    .line 292
    and-int/lit8 v2, p4, 0x3

    if-ne v2, v7, :cond_8

    .line 293
    invoke-static {p0, v6, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 294
    :cond_8
    and-int/lit8 v2, p4, 0x1

    if-ne v2, v5, :cond_9

    .line 295
    invoke-static {p0, v1, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 296
    :cond_9
    and-int/lit8 v1, p4, 0x2

    if-ne v1, v6, :cond_1

    .line 297
    invoke-static {p0, v5, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 299
    :cond_a
    if-ne p3, v5, :cond_1

    .line 300
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->insertWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static addToList2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "listType"
    .parameter "filterType"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 307
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:listType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:filterType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz p1, :cond_0

    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    if-nez p0, :cond_2

    move v0, v1

    .line 333
    :cond_1
    :goto_0
    return v0

    .line 313
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 314
    goto :goto_0

    .line 315
    :cond_4
    if-eq p3, v1, :cond_5

    if-eq p3, v5, :cond_5

    if-eq p3, v6, :cond_5

    move v0, v1

    .line 316
    goto :goto_0

    .line 317
    :cond_5
    if-gt p4, v6, :cond_6

    if-gez p4, :cond_7

    :cond_6
    move v0, v1

    .line 318
    goto :goto_0

    .line 320
    :cond_7
    const/4 v0, 0x0

    .line 321
    .local v0, bResult:I
    if-ne p3, v5, :cond_a

    .line 322
    and-int/lit8 v2, p4, 0x3

    if-ne v2, v6, :cond_8

    .line 323
    invoke-static {p0, v5, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack2(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 324
    :cond_8
    and-int/lit8 v2, p4, 0x1

    if-ne v2, v1, :cond_9

    .line 325
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack2(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 326
    :cond_9
    and-int/lit8 v2, p4, 0x2

    if-ne v2, v5, :cond_1

    .line 327
    invoke-static {p0, v1, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack2(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 329
    :cond_a
    if-ne p3, v1, :cond_1

    .line 330
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->insertWhitePerson2(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static delLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 117
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v6, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string/jumbo v6, "phonenumber"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    .local v1, i:I
    if-gtz v1, :cond_0

    .line 130
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 126
    .restart local v1       #i:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 127
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static delWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 195
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    .local v3, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',0) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    .local v1, i:I
    if-gtz v1, :cond_0

    .line 203
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return v4

    .line 201
    .restart local v1       #i:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 202
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static inList(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 8
    .parameter "context"
    .parameter "number"
    .parameter "listType"
    .parameter "filterType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 247
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inList:number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inList:listType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inList:filterType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-nez p0, :cond_1

    move v0, v1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    :cond_3
    if-eq p2, v5, :cond_4

    if-eq p2, v6, :cond_4

    if-eq p2, v7, :cond_4

    move v0, v1

    .line 255
    goto :goto_0

    .line 256
    :cond_4
    if-gt p3, v7, :cond_5

    const/4 v2, -0x1

    if-ge p3, v2, :cond_6

    :cond_5
    move v0, v1

    .line 257
    goto :goto_0

    .line 259
    :cond_6
    const/4 v0, 0x0

    .line 260
    .local v0, bResult:Z
    if-ne p2, v6, :cond_9

    .line 261
    and-int/lit8 v2, p3, 0x3

    if-ne v2, v7, :cond_7

    .line 262
    invoke-static {p0, v6, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 263
    :cond_7
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v5, :cond_8

    .line 264
    invoke-static {p0, v1, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 265
    :cond_8
    and-int/lit8 v1, p3, 0x2

    if-ne v1, v6, :cond_0

    .line 266
    invoke-static {p0, v5, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 268
    :cond_9
    if-ne p2, v5, :cond_0

    .line 269
    invoke-static {p0, p1}, Landroid/provider/LenovoSecure;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 58
    :try_start_0
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->delWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 64
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string/jumbo v5, "phonenumber"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    if-nez v2, :cond_1

    .line 77
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 72
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 74
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertLocalBlack2(Landroid/content/Context;ILjava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    const/4 v4, 0x2

    .line 110
    :cond_0
    :goto_0
    return v4

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "guest_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "child_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 88
    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->delWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 97
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 98
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v6, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string/jumbo v6, "phonenumber"

    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    move v4, v5

    .line 106
    goto :goto_0

    .line 107
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x2

    :try_start_0
    invoke-static {p0, v5, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    const/4 v5, 0x2

    invoke-static {p0, v5, p1}, Landroid/provider/LenovoSecure;->delLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 145
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "phonenumber"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 148
    if-nez v2, :cond_1

    .line 154
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 152
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 153
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static insertWhitePerson2(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 161
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/LenovoSecure;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 187
    :goto_0
    return v4

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "guest_mode_on"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "child_mode_on"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 167
    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    .line 170
    :cond_2
    const/4 v4, 0x2

    invoke-static {p0, v4, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    const/4 v4, 0x2

    invoke-static {p0, v4, p1}, Landroid/provider/LenovoSecure;->delLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    .line 173
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 174
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 175
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "phonenumber"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 178
    if-nez v2, :cond_4

    move v4, v5

    .line 179
    goto :goto_0

    :cond_4
    move v4, v6

    .line 182
    goto :goto_0

    .line 183
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 187
    goto :goto_0
.end method

.method public static isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 215
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 216
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 217
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    if-lez v6, :cond_0

    .line 220
    const/4 v2, 0x1

    .line 224
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v2, v9

    .line 222
    goto :goto_0

    .line 223
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v2, v9

    .line 224
    goto :goto_0
.end method

.method public static isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 231
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 234
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 235
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    if-lez v6, :cond_0

    .line 238
    const/4 v2, 0x1

    .line 242
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v2, v9

    .line 240
    goto :goto_0

    .line 241
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v2, v9

    .line 242
    goto :goto_0
.end method
