.class final Lcom/google/android/gms/internal/nearby/zzfy;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzfz;Lcom/google/android/gms/internal/nearby/zzku;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zza:Lcom/google/android/gms/internal/nearby/zzku;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zza:Lcom/google/android/gms/internal/nearby/zzku;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzku;->zza()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zza:Lcom/google/android/gms/internal/nearby/zzku;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzku;->zzb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zza:Lcom/google/android/gms/internal/nearby/zzku;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzku;->zzc()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
