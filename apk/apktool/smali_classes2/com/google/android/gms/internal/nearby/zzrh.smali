.class final Lcom/google/android/gms/internal/nearby/zzrh;
.super Lcom/google/android/gms/internal/nearby/zzou;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzou;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/nearby/zzps;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzps;->zzd()Z

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzps;->zzc()Z

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzps;->zze()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzps;->zzb()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzps;->zzf()[I

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/nearby/zztm;->zzb([I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    .line 8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 10
    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/nearby/zzsq;->zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v7

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzps;->zza()F

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/nearby/uwb/RangingCapabilities;-><init>(ZZZILjava/util/List;Ljava/util/List;F)V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
