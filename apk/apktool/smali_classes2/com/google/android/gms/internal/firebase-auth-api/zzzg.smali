.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzzg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbp;
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzki;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

.field private final zzf:[B

.field private final zzg:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    const/16 v0, 0x10

    .line 5
    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzb:[B

    .line 6
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzc:[B

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzd:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>([BLcom/google/android/gms/internal/firebase-auth-api/zzaau;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Ljava/security/InvalidKeyException;

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid key size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes; key must have 32 or 64 bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_1
    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 14
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzf:[B

    .line 16
    array-length p1, v0

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsw;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzsw;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzdd;)Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsw;Lcom/google/android/gms/internal/firebase-auth-api/zzaav;)Lcom/google/android/gms/internal/firebase-auth-api/zzsx;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaak;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsx;)Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;->zzb()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-SIV in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzki;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdd;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjr;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;-><init>([BLcom/google/android/gms/internal/firebase-auth-api/zzaau;)V

    return-object v0
.end method

.method private final varargs zza([[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    array-length v0, p1

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzc:[B

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;->zza([BI)[B

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzb:[B

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;->zza([BI)[B

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 74
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 75
    aget-object v4, p1, v3

    if-nez v4, :cond_1

    .line 76
    new-array v4, v2, [B

    .line 79
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzb([B)[B

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    invoke-interface {v5, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;->zza([BI)[B

    move-result-object v4

    .line 80
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([B[B)[B

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_2
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object p1, p1, v3

    .line 83
    array-length v3, p1

    if-lt v3, v1, :cond_4

    .line 85
    array-length v3, p1

    array-length v4, v0

    if-lt v3, v4, :cond_3

    .line 87
    array-length v3, p1

    array-length v4, v0

    sub-int/2addr v3, v4

    .line 88
    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 89
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_5

    add-int v4, v3, v2

    .line 90
    aget-byte v5, p1, v4

    aget-byte v6, v0, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "xorEnd requires a.length >= b.length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza([B)[B

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzb([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([B[B)[B

    move-result-object p1

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;->zza([BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 24
    filled-new-array {p2}, [[B

    move-result-object p2

    .line 26
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x10

    if-lt v0, v2, :cond_3

    .line 28
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzd:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v2, v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    .line 32
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 33
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/16 v3, 0x8

    .line 34
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xc

    .line 35
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 36
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzf:[B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x10

    .line 38
    array-length v4, p1

    sub-int/2addr v4, v3

    .line 39
    invoke-virtual {v0, p1, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 41
    new-array p1, p1, [B

    .line 42
    :cond_0
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    const/4 v0, 0x1

    .line 43
    aput-object p1, p2, v0

    .line 44
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza([[B)[B

    move-result-object p2

    .line 46
    invoke-static {v1, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljavax/crypto/AEADBadTagException;

    const-string p2, "Integrity check failed."

    invoke-direct {p1, p2}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext too short."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    filled-new-array {p2}, [[B

    move-result-object p2

    .line 52
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v1, v1

    const v2, 0x7fffffef

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzd:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    const/4 v0, 0x2

    .line 55
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    const/4 v0, 0x1

    .line 56
    aput-object p1, p2, v0

    .line 57
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza([[B)[B

    move-result-object p2

    .line 58
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/16 v3, 0x8

    .line 59
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xc

    .line 60
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 61
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzf:[B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v2, v0

    array-length v3, p2

    add-int/2addr v2, v3

    array-length v3, p1

    add-int/2addr v2, v3

    .line 63
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v0, v0

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v4, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzg:[B

    array-length v0, v0

    array-length p2, p2

    add-int v6, v0, p2

    move-object v2, p1

    .line 66
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    .line 67
    array-length p2, v2

    if-ne p1, p2, :cond_0

    return-object v5

    .line 68
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
