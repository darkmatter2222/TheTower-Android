.class final Lcom/google/android/gms/internal/nearby/zzga;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgb;Lcom/google/android/gms/internal/nearby/zzkw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzga;->zza:Lcom/google/android/gms/internal/nearby/zzkw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzga;->zza:Lcom/google/android/gms/internal/nearby/zzkw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzkw;->zzc()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzga;->zza:Lcom/google/android/gms/internal/nearby/zzkw;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzkw;->zzb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzga;->zza:Lcom/google/android/gms/internal/nearby/zzkw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzkw;->zza()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/nearby/zzgy;->zzp(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 4
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    :cond_0
    return-void
.end method
