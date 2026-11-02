.class public final Lcom/google/android/gms/internal/nearby/zzsr;
.super Lcom/google/android/gms/internal/nearby/zzsl;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsr;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsl;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsl;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzss;
    .locals 3

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzsr;->zzb:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzsr;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/nearby/zzss;->zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzss;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzss;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/nearby/zzsr;->zzb:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/nearby/zzsr;->zzc:Z

    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzsr;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzsx;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/nearby/zzsx;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/nearby/zzsw;->zza:Lcom/google/android/gms/internal/nearby/zzsw;

    return-object v0
.end method
