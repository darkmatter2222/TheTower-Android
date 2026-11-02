.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;

    move-result-object p0

    .line 4
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxq$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxq;Lcom/google/android/gms/internal/firebase-auth-api/zzbq;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
