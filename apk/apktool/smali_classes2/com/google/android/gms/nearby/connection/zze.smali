.class public final Lcom/google/android/gms/nearby/connection/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private zza:I

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/nearby/connection/zze;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/zze;->zzb:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/nearby/connection/zze;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/zze;->zza:I

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/nearby/connection/BandwidthInfo;
    .locals 4

    new-instance v0, Lcom/google/android/gms/nearby/connection/BandwidthInfo;

    iget v1, p0, Lcom/google/android/gms/nearby/connection/zze;->zza:I

    iget v2, p0, Lcom/google/android/gms/nearby/connection/zze;->zzb:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/nearby/connection/BandwidthInfo;-><init>(IILcom/google/android/gms/nearby/connection/zzf;)V

    return-object v0
.end method
