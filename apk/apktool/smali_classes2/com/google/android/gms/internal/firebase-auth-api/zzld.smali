.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzld;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyh;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzld;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzlg;->zzc()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzli;->zzc()V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdi;->zza()V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjs;->zza()V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkh;->zza(Z)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;->zza(Z)V

    return-void
.end method
