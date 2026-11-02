.class abstract Lcom/google/android/gms/internal/nearby/zzjf;
.super Lcom/google/android/gms/internal/nearby/zzjc;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/nearby/zzje;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nearby/zzjc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzjd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nearby/zzjd;-><init>(Lcom/google/android/gms/internal/nearby/zzjf;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
