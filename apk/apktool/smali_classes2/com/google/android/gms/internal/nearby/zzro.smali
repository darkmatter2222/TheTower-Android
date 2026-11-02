.class final Lcom/google/android/gms/internal/nearby/zzro;
.super Lcom/google/android/gms/internal/nearby/zznp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzpm;

.field final synthetic zzb:Lcom/google/android/gms/internal/nearby/zzrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzpm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzro;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzro;->zza:Lcom/google/android/gms/internal/nearby/zzpm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zznp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzro;->zzb:Lcom/google/android/gms/internal/nearby/zzrr;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzro;->zza:Lcom/google/android/gms/internal/nearby/zzpm;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzpm;->zza()Lcom/google/android/gms/internal/nearby/zzrv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nearby/zzrr;->zzg(Lcom/google/android/gms/internal/nearby/zzrr;Lcom/google/android/gms/internal/nearby/zzrv;)Lcom/google/android/gms/nearby/uwb/UwbDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;->onRangingInitialized(Lcom/google/android/gms/nearby/uwb/UwbDevice;)V

    return-void
.end method
