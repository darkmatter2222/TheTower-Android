.class public final Lcom/google/android/gms/internal/nearby/zzbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzbu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzbu;-><init>(Lcom/google/android/gms/internal/nearby/zzbt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbs;->zza:Lcom/google/android/gms/internal/nearby/zzbu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzdj;)Lcom/google/android/gms/internal/nearby/zzbs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbs;->zza:Lcom/google/android/gms/internal/nearby/zzbu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbu;->zza(Lcom/google/android/gms/internal/nearby/zzbu;Lcom/google/android/gms/internal/nearby/zzdj;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzbs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbs;->zza:Lcom/google/android/gms/internal/nearby/zzbu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzbu;->zzb(Lcom/google/android/gms/internal/nearby/zzbu;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbs;->zza:Lcom/google/android/gms/internal/nearby/zzbu;

    return-object v0
.end method
