.class public final Lcom/google/crypto/tink/aead/internal/AesGcmSiv;
.super Ljava/lang/Object;
.source "AesGcmSiv.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;
    }
.end annotation


# static fields
.field private static final IV_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final testAad:[B

.field private static final testKey:[B

.field private static final testNounce:[B

.field private static final testPlaintext:[B

.field private static final testResult:[B


# instance fields
.field private final cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private final keySpec:Ljavax/crypto/SecretKey;

.field private final outputPrefix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "7a806c"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testPlaintext:[B

    .line 51
    const-string v0, "46bb91c3c5"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testAad:[B

    .line 52
    const-string v0, "36864200e0eaf5284d884a0e77d31646"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testKey:[B

    .line 53
    const-string v0, "bae8e37fc83441b16034566b"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testNounce:[B

    .line 54
    const-string v0, "af60eb711bd85bc1e4d3e0a462e074eea428a8"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testResult:[B

    return-void
.end method

.method private constructor <init>([B[BLcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "outputPrefix",
            "cipherSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier<",
            "Ljavax/crypto/Cipher;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    .line 111
    array-length p2, p1

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 112
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    .line 113
    iput-object p3, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/AesGcmSivKey;Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)Lcom/google/crypto/tink/Aead;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "cipherSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/aead/AesGcmSivKey;",
            "Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier<",
            "Ljavax/crypto/Cipher;",
            ">;)",
            "Lcom/google/crypto/tink/Aead;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;-><init>([B[BLcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)V

    return-object v0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher does not implement AES GCM SIV."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getParams([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private static getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len"
        }
    .end annotation

    .line 189
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    return-object v0
.end method

.method public static isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    :try_start_0
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testNounce:[B

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 67
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testAad:[B

    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 69
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testResult:[B

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    .line 70
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testPlaintext:[B

    invoke-static {p0, v1}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1c

    if-lt v0, v2, :cond_2

    .line 170
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;

    invoke-interface {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 174
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v1, v1

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    const/4 v3, 0x2

    .line 175
    iget-object v4, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    .line 176
    array-length v1, p2

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v1, p2

    add-int/2addr v1, v2

    .line 180
    array-length v3, p1

    array-length p2, p2

    sub-int/2addr v3, p2

    sub-int/2addr v3, v2

    .line 181
    invoke-virtual {v0, p1, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 171
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;

    invoke-interface {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    .line 125
    array-length v0, p1

    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v3, v2

    const v4, 0x7fffffe3

    sub-int/2addr v4, v3

    if-gt v0, v4, :cond_2

    .line 130
    array-length v0, v2

    const/16 v3, 0xc

    add-int/2addr v0, v3

    array-length v4, p1

    add-int/2addr v0, v4

    const/16 v7, 0x10

    add-int/2addr v0, v7

    .line 132
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 133
    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v2, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    const/4 v2, 0x1

    .line 142
    iget-object v4, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    .line 143
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 146
    :cond_0
    array-length v4, p1

    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length p2, p2

    add-int/lit8 v6, p2, 0xc

    const/4 v3, 0x0

    move-object v2, p1

    .line 147
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    .line 150
    array-length p2, v2

    add-int/2addr p2, v7

    if-ne p1, p2, :cond_1

    return-object v5

    .line 151
    :cond_1
    array-length p2, v2

    sub-int/2addr p1, p2

    .line 152
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 155
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 153
    const-string v0, "encryption failed; AES-GCM-SIV tag must be %s bytes, but got only %s bytes"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 127
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
