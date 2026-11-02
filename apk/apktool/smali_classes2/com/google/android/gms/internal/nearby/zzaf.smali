.class public final synthetic Lcom/google/android/gms/internal/nearby/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzax;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

.field public final synthetic zzc:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzax;Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zza:Lcom/google/android/gms/internal/nearby/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zzb:Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zza:Lcom/google/android/gms/internal/nearby/zzax;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zzb:Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzaf;->zzd:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzn;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzn;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdr;

    new-instance v4, Lcom/google/android/gms/internal/nearby/zzed;

    invoke-direct {v4}, Lcom/google/android/gms/internal/nearby/zzed;-><init>()V

    .line 2
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/nearby/zzed;->zzb(Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;)Lcom/google/android/gms/internal/nearby/zzed;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzat;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/nearby/zzat;-><init>(Lcom/google/android/gms/internal/nearby/zzax;Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeyFileProvider;)V

    .line 3
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/nearby/zzed;->zza(Lcom/google/android/gms/internal/nearby/zzcv;)Lcom/google/android/gms/internal/nearby/zzed;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzao;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/nearby/zzao;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/nearby/zzed;->zzd(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzed;

    .line 6
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/nearby/zzed;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzed;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/nearby/zzed;->zzf()Lcom/google/android/gms/internal/nearby/zzef;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/nearby/zzdr;->zzo(Lcom/google/android/gms/internal/nearby/zzef;)V

    return-void
.end method
