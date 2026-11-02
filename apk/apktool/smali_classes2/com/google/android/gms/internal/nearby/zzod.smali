.class public final Lcom/google/android/gms/internal/nearby/zzod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzof;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzof;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzof;-><init>(Lcom/google/android/gms/internal/nearby/zzoe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzod;->zza:Lcom/google/android/gms/internal/nearby/zzof;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzph;)Lcom/google/android/gms/internal/nearby/zzod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzod;->zza:Lcom/google/android/gms/internal/nearby/zzof;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzof;->zza(Lcom/google/android/gms/internal/nearby/zzof;Lcom/google/android/gms/internal/nearby/zzph;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzof;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzod;->zza:Lcom/google/android/gms/internal/nearby/zzof;

    return-object v0
.end method
