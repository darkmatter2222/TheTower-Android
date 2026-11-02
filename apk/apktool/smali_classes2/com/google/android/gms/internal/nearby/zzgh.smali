.class final Lcom/google/android/gms/internal/nearby/zzgh;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzgj;Lcom/google/android/gms/internal/nearby/zzle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgh;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgh;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzle;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgh;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzle;->zzd()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgh;->zza:Lcom/google/android/gms/internal/nearby/zzle;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzle;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
