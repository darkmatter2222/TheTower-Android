.class final Lcom/google/android/gms/internal/nearby/zzrp;
.super Lcom/google/android/gms/internal/nearby/zznp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzpo;

.field final synthetic zzb:Lcom/google/android/gms/internal/nearby/zzrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrp;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrp;->zza:Lcom/google/android/gms/internal/nearby/zzpo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zznp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrp;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrp;->zza:Lcom/google/android/gms/internal/nearby/zzpo;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzpo;->zzb()Lcom/google/android/gms/internal/nearby/zzrv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nearby/zzrr;->zzg(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzrv;)Lcom/google/android/gms/nearby/uwb/UwbDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrp;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzrp;->zza:Lcom/google/android/gms/internal/nearby/zzpo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzpo;->zza()Lcom/google/android/gms/internal/nearby/zzqa;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/nearby/zzrr;->zzb(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzqa;)Lcom/google/android/gms/nearby/uwb/RangingPosition;

    move-result-object v1

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;->onRangingResult(Lcom/google/android/gms/nearby/uwb/UwbDevice;Lcom/google/android/gms/nearby/uwb/RangingPosition;)V

    return-void
.end method
