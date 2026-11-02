.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzda;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzde;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzda;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    return-object v0
.end method
