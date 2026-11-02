.class public final synthetic Lcom/google/android/gms/internal/nearby/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzx;->zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzx;->zza:Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzn;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v1, Lcom/google/android/gms/internal/nearby/zzax;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzn;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdr;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzep;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzep;-><init>()V

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/nearby/zzao;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/nearby/zzao;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzep;->zzb(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzep;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzep;->zza(Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;)Lcom/google/android/gms/internal/nearby/zzep;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzep;->zzc()Lcom/google/android/gms/internal/nearby/zzer;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/nearby/zzdr;->zzr(Lcom/google/android/gms/internal/nearby/zzer;)V

    return-void
.end method
