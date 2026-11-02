.class public final Lcom/google/android/gms/internal/nearby/zzbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzbq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzbq;-><init>(Lcom/google/android/gms/internal/nearby/zzbp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbo;->zza:Lcom/google/android/gms/internal/nearby/zzbq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdf;)Lcom/google/android/gms/internal/nearby/zzbo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbo;->zza:Lcom/google/android/gms/internal/nearby/zzbq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbq;->zza(Lcom/google/android/gms/internal/nearby/zzbq;Lcom/google/android/gms/internal/nearby/zzdf;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzbo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbo;->zza:Lcom/google/android/gms/internal/nearby/zzbq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbq;->zzb(Lcom/google/android/gms/internal/nearby/zzbq;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzbq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbo;->zza:Lcom/google/android/gms/internal/nearby/zzbq;

    return-object v0
.end method
