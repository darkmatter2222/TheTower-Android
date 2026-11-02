.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdh;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
