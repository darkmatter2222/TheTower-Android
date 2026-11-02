.class public final Lcom/google/android/gms/internal/nearby/zzce;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzcg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzcg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzcg;-><init>(Lcom/google/android/gms/internal/nearby/zzcf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzce;->zza:Lcom/google/android/gms/internal/nearby/zzcg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdy;)Lcom/google/android/gms/internal/nearby/zzce;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzce;->zza:Lcom/google/android/gms/internal/nearby/zzcg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzcg;->zza(Lcom/google/android/gms/internal/nearby/zzcg;Lcom/google/android/gms/internal/nearby/zzdy;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzcg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzce;->zza:Lcom/google/android/gms/internal/nearby/zzcg;

    return-object v0
.end method
