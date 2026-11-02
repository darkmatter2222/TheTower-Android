.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzmn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzmf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;-><init>(I)V

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    if-ne p0, v0, :cond_1

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;-><init>(I)V

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzb;

    if-ne p0, v0, :cond_2

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlr;-><init>()V

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE AEAD identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzmi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_0

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    const-string v1, "HmacSha256"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmc;)V

    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_1

    .line 18
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;)Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_2

    .line 20
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;)Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object p0

    return-object p0

    .line 21
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_3

    .line 22
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzq;)Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object p0

    return-object p0

    .line 23
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzmj;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    if-ne p0, v0, :cond_0

    .line 9
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    const-string v0, "HmacSha256"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    if-ne p0, v0, :cond_1

    .line 11
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    const-string v0, "HmacSha384"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 12
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzc;

    if-ne p0, v0, :cond_2

    .line 13
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;

    const-string v0, "HmacSha512"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmc;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KDF identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
