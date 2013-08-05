.class public interface abstract Lcom/lenovo/systemtheme/ISystemThemeService;
.super Ljava/lang/Object;
.source "ISystemThemeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/systemtheme/ISystemThemeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setSystemTheme(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
