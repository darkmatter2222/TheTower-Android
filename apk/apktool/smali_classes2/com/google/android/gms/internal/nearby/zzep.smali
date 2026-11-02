.class public final Lcom/google/android/gms/internal/nearby/zzep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzer;-><init>(Lcom/google/android/gms/internal/nearby/zzeq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzep;->zza:Lcom/google/android/gms/internal/nearby/zzer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;)Lcom/google/android/gms/internal/nearby/zzep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzep;->zza:Lcom/google/android/gms/internal/nearby/zzer;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzer;->zza(Lcom/google/android/gms/internal/nearby/zzer;Lcom/google/android/gms/nearby/exposurenotification/DiagnosisKeysDataMapping;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzep;->zza:Lcom/google/android/gms/internal/nearby/zzer;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzer;->zzb(Lcom/google/android/gms/internal/nearby/zzer;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzep;->zza:Lcom/google/android/gms/internal/nearby/zzer;

    return-object v0
.end method
