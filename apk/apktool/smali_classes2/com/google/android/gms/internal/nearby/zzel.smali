.class public final Lcom/google/android/gms/internal/nearby/zzel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzen;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzen;-><init>(Lcom/google/android/gms/internal/nearby/zzem;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzel;->zza:Lcom/google/android/gms/internal/nearby/zzen;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzel;->zza:Lcom/google/android/gms/internal/nearby/zzen;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzen;->zza(Lcom/google/android/gms/internal/nearby/zzen;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzen;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzel;->zza:Lcom/google/android/gms/internal/nearby/zzen;

    return-object v0
.end method
