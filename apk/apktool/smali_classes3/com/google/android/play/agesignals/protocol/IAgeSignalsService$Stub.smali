.class public abstract Lcom/google/android/play/agesignals/protocol/IAgeSignalsService$Stub;
.super Lcom/google/android/gms/internal/playcore_age_signals/zzb;
.source "com.google.android.play:age-signals@@0.0.3"

# interfaces
.implements Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/agesignals/protocol/IAgeSignalsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.play.agesignals.protocol.IAgeSignalsService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.play.agesignals.protocol.IAgeSignalsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/playcore_age_signals/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback;

    move-result-object v0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/playcore_age_signals/zzc;->zzb(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService$Stub;->checkAgeRange(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
