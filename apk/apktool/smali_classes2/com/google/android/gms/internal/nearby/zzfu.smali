.class final Lcom/google/android/gms/internal/nearby/zzfu;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzkq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzfx;Lcom/google/android/gms/internal/nearby/zzkq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzfu;->zza:Lcom/google/android/gms/internal/nearby/zzkq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfu;->zza:Lcom/google/android/gms/internal/nearby/zzkq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzkq;->zzc()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/zze;

    invoke-direct {v1}, Lcom/google/android/gms/nearby/connection/zze;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfu;->zza:Lcom/google/android/gms/internal/nearby/zzkq;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzkq;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zze;->zzb(I)Lcom/google/android/gms/nearby/connection/zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfu;->zza:Lcom/google/android/gms/internal/nearby/zzkq;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzkq;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zze;->zza(I)Lcom/google/android/gms/nearby/connection/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/zze;->zzc()Lcom/google/android/gms/nearby/connection/BandwidthInfo;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onBandwidthChanged(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/BandwidthInfo;)V

    return-void
.end method
