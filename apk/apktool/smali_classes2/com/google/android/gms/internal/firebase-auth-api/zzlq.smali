.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzlq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkl;)Lcom/google/android/gms/internal/firebase-auth-api/zzlu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzls;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzel;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)V

    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjp;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported DEM parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bridge synthetic zza()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza:[B

    return-object v0
.end method
