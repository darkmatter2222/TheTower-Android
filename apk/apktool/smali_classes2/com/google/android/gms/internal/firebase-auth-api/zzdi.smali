.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzdi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdi;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdn;->zzc()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;->zza()V

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdt;->zza(Z)V

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zza(Z)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeb;->zza(Z)V

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zza(Z)V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzex;->zza(Z)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfa;->zza(Z)V

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zza(Z)V

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgn;->zza(Z)V

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza(Z)V

    return-void
.end method
