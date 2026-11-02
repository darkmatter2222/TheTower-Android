.class final Lcom/google/android/gms/internal/firebase-auth-api/zzls;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzlu;


# instance fields
.field private final zza:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzb()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzd()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzel$zzb;

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid variant"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid tag size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:I

    return v0
.end method

.method public final zza([B[BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    array-length v0, p2

    const-string v1, "ciphertext too short"

    if-lt v0, p3, :cond_2

    .line 13
    array-length v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:I

    if-ne v0, v2, :cond_1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zzb([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 16
    array-length v0, p2

    add-int/lit8 v2, p3, 0xc

    add-int/lit8 v3, p3, 0x1c

    if-lt v0, v3, :cond_0

    const/16 v0, 0xc

    .line 19
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zza([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zza()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    .line 21
    invoke-virtual {v3, v4, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 23
    array-length p1, p2

    sub-int/2addr p1, p3

    sub-int/2addr p1, v0

    .line 24
    invoke-virtual {v3, p2, v2, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid key size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza([B[B[B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:I

    if-ne v0, v1, :cond_2

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zzb([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/16 v0, 0xc

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqm;->zza(I)[B

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zza([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zza()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 33
    invoke-virtual {v3, v4, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 34
    array-length p1, p4

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    .line 35
    array-length v2, p2

    array-length v4, p3

    add-int/2addr v2, v4

    const v4, 0x7ffffff3

    sub-int/2addr v4, v2

    if-gt p1, v4, :cond_1

    add-int/lit8 v8, v2, 0xc

    add-int v4, v8, p1

    .line 39
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 40
    array-length p2, p2

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v7, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-static {v1, v5, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    array-length v6, p4

    move-object v4, p4

    .line 43
    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-object v7

    .line 45
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid key size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
