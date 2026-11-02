.class public abstract Lads_mobile_sdk/w81;
.super Lads_mobile_sdk/hs;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/x81;


# direct methods
.method public static a(Landroid/os/IBinder;)Lads_mobile_sdk/x81;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    const-string v0, "com.google.android.play.core.prewarm.protocol.IPrewarmService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lads_mobile_sdk/x81;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Lads_mobile_sdk/x81;

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lads_mobile_sdk/v81;

    invoke-direct {v0, p0}, Lads_mobile_sdk/v81;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
