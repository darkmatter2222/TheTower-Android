.class public final Lcom/google/android/gms/internal/nearby/zzmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzmo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzmo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzmo;-><init>(Lcom/google/android/gms/internal/nearby/zzmn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmm;->zza:Lcom/google/android/gms/internal/nearby/zzmo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzmb;)Lcom/google/android/gms/internal/nearby/zzmm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmm;->zza:Lcom/google/android/gms/internal/nearby/zzmo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmo;->zza(Lcom/google/android/gms/internal/nearby/zzmo;Lcom/google/android/gms/internal/nearby/zzmb;)V

    return-object p0
.end method

.method public final zzb([Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmm;->zza:Lcom/google/android/gms/internal/nearby/zzmo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmo;->zzb(Lcom/google/android/gms/internal/nearby/zzmo;[Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmm;->zza:Lcom/google/android/gms/internal/nearby/zzmo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzmo;->zzc(Lcom/google/android/gms/internal/nearby/zzmo;Lcom/google/android/gms/internal/nearby/zzkj;)V

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/nearby/zzmo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmm;->zza:Lcom/google/android/gms/internal/nearby/zzmo;

    return-object v0
.end method
