.class final Lcom/google/android/gms/internal/nearby/zzfr;
.super Lcom/google/android/gms/internal/nearby/zzgp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzfx;Lcom/google/android/gms/internal/nearby/zzks;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzgp;-><init>(Lcom/google/android/gms/internal/nearby/zzgo;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzks;->zzb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/zzg;

    invoke-direct {v1}, Lcom/google/android/gms/nearby/connection/zzg;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzks;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/nearby/connection/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzks;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzg;->zza(Ljava/lang/String;)Lcom/google/android/gms/nearby/connection/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzks;->zzf()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzg;->zzf([B)Lcom/google/android/gms/nearby/connection/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzks;->zze()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzg;->zze(Z)Lcom/google/android/gms/nearby/connection/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzks;->zzg()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzg;->zzb([B)Lcom/google/android/gms/nearby/connection/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfr;->zza:Lcom/google/android/gms/internal/nearby/zzks;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzks;->zzd()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/zzg;->zzd(Z)Lcom/google/android/gms/nearby/connection/zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/zzg;->zzg()Lcom/google/android/gms/nearby/connection/ConnectionInfo;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onConnectionInitiated(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionInfo;)V

    return-void
.end method
