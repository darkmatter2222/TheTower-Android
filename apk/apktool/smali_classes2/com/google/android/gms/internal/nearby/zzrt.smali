.class public final Lcom/google/android/gms/internal/nearby/zzrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzrv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzrv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzrv;-><init>(Lcom/google/android/gms/internal/nearby/zzru;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrt;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzqq;)Lcom/google/android/gms/internal/nearby/zzrt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrt;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzrv;->zzb(Lcom/google/android/gms/internal/nearby/zzrv;Lcom/google/android/gms/internal/nearby/zzqq;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzrv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrt;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    return-object v0
.end method
