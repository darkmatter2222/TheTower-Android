.class final Lcom/google/android/gms/internal/nearby/zzrj;
.super Lcom/google/android/gms/internal/nearby/zzpg;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzpg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/nearby/zzqv;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqv;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->setChannel(I)Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqv;->zzb()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->setPreambleIndex(I)Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->build()Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
