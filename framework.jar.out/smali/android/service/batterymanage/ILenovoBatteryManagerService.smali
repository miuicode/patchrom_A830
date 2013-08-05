.class public interface abstract Landroid/service/batterymanage/ILenovoBatteryManagerService;
.super Ljava/lang/Object;
.source "ILenovoBatteryManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPatternValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPatternValue(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
