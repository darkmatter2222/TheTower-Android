.class public final Lcom/google/android/gms/internal/nearby/zzqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzqq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzqq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzqq;-><init>(Lcom/google/android/gms/internal/nearby/zzqp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqo;->zza:Lcom/google/android/gms/internal/nearby/zzqq;

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/nearby/zzqo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqo;->zza:Lcom/google/android/gms/internal/nearby/zzqq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzqq;->zza(Lcom/google/android/gms/internal/nearby/zzqq;[B)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzqq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqo;->zza:Lcom/google/android/gms/internal/nearby/zzqq;

    return-object v0
.end method
