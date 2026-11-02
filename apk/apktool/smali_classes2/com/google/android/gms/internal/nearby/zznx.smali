.class public final Lcom/google/android/gms/internal/nearby/zznx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zznz;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zznz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zznz;-><init>(Lcom/google/android/gms/internal/nearby/zzny;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zznx;->zza:Lcom/google/android/gms/internal/nearby/zznz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzqq;)Lcom/google/android/gms/internal/nearby/zznx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznx;->zza:Lcom/google/android/gms/internal/nearby/zznz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zznz;->zza(Lcom/google/android/gms/internal/nearby/zznz;Lcom/google/android/gms/internal/nearby/zzqq;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/nearby/zzpb;)Lcom/google/android/gms/internal/nearby/zznx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznx;->zza:Lcom/google/android/gms/internal/nearby/zznz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zznz;->zzb(Lcom/google/android/gms/internal/nearby/zznz;Lcom/google/android/gms/internal/nearby/zzpb;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zznz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznx;->zza:Lcom/google/android/gms/internal/nearby/zznz;

    return-object v0
.end method
