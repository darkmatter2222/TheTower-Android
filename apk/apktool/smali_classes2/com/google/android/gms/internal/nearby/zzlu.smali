.class final Lcom/google/android/gms/internal/nearby/zzlu;
.super Lcom/google/android/gms/internal/nearby/zzly;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzly;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzly;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nearby/zzlx;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nearby/zzlx;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/nearby/zzly;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nearby/zzlx;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzlx;->zza(Lcom/google/android/gms/internal/nearby/zzlx;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzlx;->zza(Lcom/google/android/gms/internal/nearby/zzlx;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzlx;->zzd(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nearby/zzlx;->zzb(Lcom/google/android/gms/internal/nearby/zzlx;[B)V

    :cond_0
    return-object p1
.end method
