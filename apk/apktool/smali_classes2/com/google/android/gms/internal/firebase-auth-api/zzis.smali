.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzis;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;


# instance fields
.field private final zzb:[B

.field private final zzc:[B

.field private final zzd:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    return-void
.end method

.method private constructor <init>([B[BLjava/security/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzb:[B

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzd:Ljava/security/Provider;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgl;)Lcom/google/android/gms/internal/firebase-auth-api/zzbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzis;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)[B

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdm;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzis;-><init>([B[BLjava/security/Provider;)V

    return-object v1
.end method

.method public static zza()Z
    .locals 1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zzb()Z

    move-result v0

    return v0
.end method

.method private static zza([B)[B
    .locals 4

    const/16 v0, 0xc

    .line 59
    new-array v0, v0, [B

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/16 v3, 0x10

    .line 60
    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 20
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x28

    if-lt v0, v2, :cond_2

    .line 22
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    .line 24
    new-array v1, v0, [B

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzb:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhv;->zza([B[B)[B

    move-result-object v2

    .line 27
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "ChaCha20"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zza([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzd:Ljava/security/Provider;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza(Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x2

    .line 30
    invoke-virtual {v1, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    .line 31
    array-length v2, p2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    array-length v2, p2

    add-int/2addr v2, v0

    .line 34
    array-length v3, p1

    array-length p2, p2

    sub-int/2addr v3, p2

    sub-int/2addr v3, v0

    .line 35
    invoke-virtual {v1, p1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/16 v0, 0x18

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqm;->zza(I)[B

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzb:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhv;->zza([B[B)[B

    move-result-object v2

    .line 42
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "ChaCha20"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zza([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 44
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzd:Ljava/security/Provider;

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza(Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v4, 0x1

    .line 45
    invoke-virtual {v5, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    .line 46
    array-length v2, p2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 48
    :cond_0
    array-length p2, p1

    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    array-length v3, v2

    const v4, 0x7fffffe7

    sub-int/2addr v4, v3

    if-gt p2, v4, :cond_2

    .line 51
    array-length v3, v2

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    .line 52
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v8, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzis;->zzc:[B

    array-length v1, v1

    add-int/lit8 v10, v1, 0x18

    const/4 v7, 0x0

    move-object v6, p1

    .line 55
    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p2, :cond_1

    return-object v9

    .line 57
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
