.class public final Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;
.super Ljava/lang/Object;
.source "ChunkedAesCmacConscrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt$AesCmacComputation;
    }
.end annotation


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;


# instance fields
.field private final conscrypt:Ljava/security/Provider;

.field private final outputPrefix:[B

.field private final parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

.field private final secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/mac/AesCmacKey;Ljava/security/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "conscrypt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 67
    sget-object v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    const-string v0, "AESCMAC"

    invoke-static {v0, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iput-object p2, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->conscrypt:Ljava/security/Provider;

    .line 76
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->outputPrefix:[B

    .line 77
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object p2

    iput-object p2, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 78
    invoke-static {p1}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->toSecretKeySpec(Lcom/google/crypto/tink/mac/AesCmacKey;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "AES-CMAC not available."

    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 68
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Cannot use AES-CMAC in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "conscrypt is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/mac/AesCmacKey;Ljava/security/Provider;)Lcom/google/crypto/tink/mac/ChunkedMac;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "conscrypt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;-><init>(Lcom/google/crypto/tink/mac/AesCmacKey;Ljava/security/Provider;)V

    return-object v0
.end method

.method private static toSecretKeySpec(Lcom/google/crypto/tink/mac/AesCmacKey;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 59
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacKey;->getAesKey()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createComputation()Lcom/google/crypto/tink/mac/ChunkedMacComputation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt$AesCmacComputation;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    iget-object v3, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->outputPrefix:[B

    iget-object v4, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->conscrypt:Ljava/security/Provider;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt$AesCmacComputation;-><init>(Ljavax/crypto/spec/SecretKeySpec;Lcom/google/crypto/tink/mac/AesCmacParameters;[BLjava/security/Provider;Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt$1;)V

    return-object v0
.end method

.method public createVerification([B)Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->outputPrefix:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacConscrypt;->createComputation()Lcom/google/crypto/tink/mac/ChunkedMacComputation;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;->create(Lcom/google/crypto/tink/mac/ChunkedMacComputation;[B)Lcom/google/crypto/tink/mac/ChunkedMacVerification;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Wrong tag prefix"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
