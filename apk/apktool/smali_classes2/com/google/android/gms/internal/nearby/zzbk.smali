.class public final Lcom/google/android/gms/internal/nearby/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzbm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzbm;-><init>(Lcom/google/android/gms/internal/nearby/zzbl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbk;->zza:Lcom/google/android/gms/internal/nearby/zzbm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdb;)Lcom/google/android/gms/internal/nearby/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbk;->zza:Lcom/google/android/gms/internal/nearby/zzbm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbm;->zza(Lcom/google/android/gms/internal/nearby/zzbm;Lcom/google/android/gms/internal/nearby/zzdb;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbk;->zza:Lcom/google/android/gms/internal/nearby/zzbm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbm;->zzb(Lcom/google/android/gms/internal/nearby/zzbm;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzbm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbk;->zza:Lcom/google/android/gms/internal/nearby/zzbm;

    return-object v0
.end method
