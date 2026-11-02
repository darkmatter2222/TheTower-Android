.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzmf;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final zza([B[B[BI[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza([B[BI[B)[B

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    array-length v0, p3

    invoke-static {p3, p4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    .line 11
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;-><init>([B)V

    .line 12
    invoke-virtual {p4, p2, p3, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;->zza([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Unexpected key length: 32"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final zzb([B[B[BI[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzb([B[BI[B)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;-><init>([B)V

    .line 19
    invoke-virtual {v0, p2, p3, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzhz;->zzb([B[B[B)[B

    move-result-object p1

    .line 20
    array-length p2, p1

    const p3, 0x7fffffff

    sub-int/2addr p3, p4

    if-gt p2, p3, :cond_1

    .line 22
    array-length p2, p1

    add-int/2addr p2, p4

    new-array p2, p2, [B

    const/4 p3, 0x0

    .line 23
    array-length p5, p1

    invoke-static {p1, p3, p2, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 21
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Unexpected key length: 32"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()[B
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzk:[B

    return-object v0
.end method
