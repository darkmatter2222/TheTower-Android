.class final Lcom/google/android/gms/internal/nearby/zzgr;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzlk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgu;Lcom/google/android/gms/internal/nearby/zzlk;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgr;->zza:Lcom/google/android/gms/internal/nearby/zzlk;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgr;->zza:Lcom/google/android/gms/internal/nearby/zzlk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzlk;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgr;->zza:Lcom/google/android/gms/internal/nearby/zzlk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzlk;->zza()Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadTransferUpdate(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;)V

    return-void
.end method
