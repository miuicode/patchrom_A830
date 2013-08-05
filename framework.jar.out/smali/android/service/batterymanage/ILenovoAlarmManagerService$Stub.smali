.class public abstract Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;
.super Landroid/os/Binder;
.source "ILenovoAlarmManagerService.java"

# interfaces
.implements Landroid/service/batterymanage/ILenovoAlarmManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/batterymanage/ILenovoAlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.batterymanage.ILenovoAlarmManagerService"

.field static final TRANSACTION_checkAlarmPermissin:I = 0x5

.field static final TRANSACTION_isPkgInWhiteList:I = 0x4

.field static final TRANSACTION_notifyAlarmCreate:I = 0x1

.field static final TRANSACTION_notifyAlarmDestory:I = 0x2

.field static final TRANSACTION_notifyAlarmTriger:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.service.batterymanage.ILenovoAlarmManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/batterymanage/ILenovoAlarmManagerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/batterymanage/ILenovoAlarmManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/service/batterymanage/ILenovoAlarmManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    move-object v1, p0

    .line 56
    invoke-virtual/range {v1 .. v6}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->notifyAlarmCreate(Ljava/lang/String;IJI)V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:J
    .end local v6           #_arg3:I
    :sswitch_2
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .local v4, _arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->notifyAlarmDestory(Ljava/lang/String;II)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    :sswitch_3
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 83
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 85
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .local v12, _arg4:J
    move-object v7, p0

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v6

    .line 86
    invoke-virtual/range {v7 .. v13}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->notifyAlarmTriger(Ljava/lang/String;IIIJ)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v6           #_arg3:I
    .end local v12           #_arg4:J
    :sswitch_4
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->isPkgInWhiteList(Ljava/lang/String;)I

    move-result v14

    .line 96
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 102
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_5
    const-string v1, "android.service.batterymanage.ILenovoAlarmManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->checkAlarmPermissin(Ljava/lang/String;I)Z

    move-result v14

    .line 108
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v14, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 109
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
