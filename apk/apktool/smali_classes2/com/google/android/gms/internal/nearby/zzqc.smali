.class public final Lcom/google/android/gms/internal/nearby/zzqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzqe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzqe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzqe;-><init>(Lcom/google/android/gms/internal/nearby/zzqd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqc;->zza:Lcom/google/android/gms/internal/nearby/zzqe;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzqq;)Lcom/google/android/gms/internal/nearby/zzqc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqc;->zza:Lcom/google/android/gms/internal/nearby/zzqe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzqe;->zza(Lcom/google/android/gms/internal/nearby/zzqe;Lcom/google/android/gms/internal/nearby/zzqq;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/nearby/zzpb;)Lcom/google/android/gms/internal/nearby/zzqc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqc;->zza:Lcom/google/android/gms/internal/nearby/zzqe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzqe;->zzb(Lcom/google/android/gms/internal/nearby/zzqe;Lcom/google/android/gms/internal/nearby/zzpb;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzqe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqc;->zza:Lcom/google/android/gms/internal/nearby/zzqe;

    return-object v0
.end method
