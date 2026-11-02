.class public final Lcom/google/android/gms/internal/nearby/zzmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzmw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzmw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzmw;-><init>(Lcom/google/android/gms/internal/nearby/zzmv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzkc;)Lcom/google/android/gms/internal/nearby/zzmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmw;->zza(Lcom/google/android/gms/internal/nearby/zzmw;Lcom/google/android/gms/internal/nearby/zzkc;)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/nearby/zzmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzmw;->zzb(Lcom/google/android/gms/internal/nearby/zzmw;J)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Lcom/google/android/gms/internal/nearby/zzmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmw;->zzc(Lcom/google/android/gms/internal/nearby/zzmw;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmw;->zzd(Lcom/google/android/gms/internal/nearby/zzmw;Lcom/google/android/gms/internal/nearby/zzkj;)V

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmw;->zze(Lcom/google/android/gms/internal/nearby/zzmw;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/nearby/zzmw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmu;->zza:Lcom/google/android/gms/internal/nearby/zzmw;

    return-object v0
.end method
