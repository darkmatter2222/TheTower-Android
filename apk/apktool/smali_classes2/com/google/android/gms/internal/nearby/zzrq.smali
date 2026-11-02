.class final Lcom/google/android/gms/internal/nearby/zzrq;
.super Lcom/google/android/gms/internal/nearby/zznp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzpq;

.field final synthetic zzb:Lcom/google/android/gms/internal/nearby/zzrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zza:Lcom/google/android/gms/internal/nearby/zzpq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zznp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zza:Lcom/google/android/gms/internal/nearby/zzpq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzpq;->zzb()Lcom/google/android/gms/internal/nearby/zzrv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nearby/zzrr;->zzg(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzrv;)Lcom/google/android/gms/nearby/uwb/UwbDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zza:Lcom/google/android/gms/internal/nearby/zzpq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzpq;->zza()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;->onRangingSuspended(Lcom/google/android/gms/nearby/uwb/UwbDevice;I)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzrr;->zzc(Lcom/google/android/gms/internal/nearby/zzrr;)Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zza:Lcom/google/android/gms/internal/nearby/zzpq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzpq;->zzb()Lcom/google/android/gms/internal/nearby/zzrv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/nearby/zzrr;->zzg(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzrv;)Lcom/google/android/gms/nearby/uwb/UwbDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzrq;->zza:Lcom/google/android/gms/internal/nearby/zzpq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzpq;->zza()I

    move-result v2

    .line 2
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;->onRangingSuspended(Lcom/google/android/gms/nearby/uwb/UwbDevice;I)V

    return-void
.end method
