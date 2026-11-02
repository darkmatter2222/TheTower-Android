.class public final Lcom/google/android/gms/internal/nearby/zzpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzpk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzpk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzpk;-><init>(Lcom/google/android/gms/internal/nearby/zzpj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpi;->zza:Lcom/google/android/gms/internal/nearby/zzpk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzor;)Lcom/google/android/gms/internal/nearby/zzpi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpi;->zza:Lcom/google/android/gms/internal/nearby/zzpk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzpk;->zza(Lcom/google/android/gms/internal/nearby/zzpk;Lcom/google/android/gms/internal/nearby/zzor;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzpk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpi;->zza:Lcom/google/android/gms/internal/nearby/zzpk;

    return-object v0
.end method
