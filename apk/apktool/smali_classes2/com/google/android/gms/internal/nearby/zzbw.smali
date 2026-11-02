.class public final Lcom/google/android/gms/internal/nearby/zzbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzby;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzby;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzby;-><init>(Lcom/google/android/gms/internal/nearby/zzbx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbw;->zza:Lcom/google/android/gms/internal/nearby/zzby;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdu;)Lcom/google/android/gms/internal/nearby/zzbw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbw;->zza:Lcom/google/android/gms/internal/nearby/zzby;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzby;->zza(Lcom/google/android/gms/internal/nearby/zzby;Lcom/google/android/gms/internal/nearby/zzdu;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzby;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbw;->zza:Lcom/google/android/gms/internal/nearby/zzby;

    return-object v0
.end method
