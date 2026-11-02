.class final Lcom/google/android/gms/internal/nearby/zzgd;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgg;Lcom/google/android/gms/internal/nearby/zzle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzgg;->zzf(Lcom/google/android/gms/internal/nearby/zzle;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzle;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/connection/zzn;->zzd(Ljava/lang/String;)Lcom/google/android/gms/nearby/connection/zzn;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzle;->zza()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/connection/zzn;->zza(Landroid/bluetooth/BluetoothDevice;)Lcom/google/android/gms/nearby/connection/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/zzn;->zze()Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;

    move-result-object v0

    const-string v1, "__UNRECOGNIZED_BLUETOOTH_DEVICE__"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;->onEndpointFound(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzle;->zzb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/zzn;

    invoke-direct {v1}, Lcom/google/android/gms/nearby/connection/zzn;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzle;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzn;->zzd(Ljava/lang/String;)Lcom/google/android/gms/nearby/connection/zzn;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzle;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzn;->zzc(Ljava/lang/String;)Lcom/google/android/gms/nearby/connection/zzn;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgd;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzle;->zze()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzn;->zzb([B)Lcom/google/android/gms/nearby/connection/zzn;

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/zzn;->zze()Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;->onEndpointFound(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;)V

    return-void
.end method
