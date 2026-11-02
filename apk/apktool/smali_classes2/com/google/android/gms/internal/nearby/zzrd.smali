.class public final synthetic Lcom/google/android/gms/internal/nearby/zzrd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrd;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrd;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzqs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzos;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzod;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzod;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzrj;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/nearby/zzrj;-><init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzod;->zza(Lcom/google/android/gms/internal/nearby/zzph;)Lcom/google/android/gms/internal/nearby/zzod;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzod;->zzb()Lcom/google/android/gms/internal/nearby/zzof;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzos;->zzf(Lcom/google/android/gms/internal/nearby/zzof;)V

    return-void
.end method
