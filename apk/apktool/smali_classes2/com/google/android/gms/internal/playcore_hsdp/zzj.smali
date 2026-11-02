.class public final Lcom/google/android/gms/internal/playcore_hsdp/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)Lcom/google/android/gms/internal/playcore_hsdp/zzg;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/playcore_hsdp/zzh;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/playcore_hsdp/zzh;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/playcore_hsdp/zzh;-><init>(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/playcore_hsdp/zzi;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/playcore_hsdp/zzi;-><init>(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
