.class public final Lcom/google/android/gms/internal/nearby/zzkd;
.super Lcom/google/android/gms/internal/nearby/zza;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/nearby/zzfj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d6

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/nearby/zzfn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7dc

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/nearby/zzfp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7db

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/nearby/zzjl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d9

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/nearby/zzmg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d7

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/nearby/zzmk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d5

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/nearby/zzmo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d8

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/nearby/zzms;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/nearby/zzmw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d3

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/nearby/zzmy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/nearby/zzna;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7da

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/nearby/zznc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x7d4

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->zzu(ILandroid/os/Parcel;)V

    return-void
.end method
