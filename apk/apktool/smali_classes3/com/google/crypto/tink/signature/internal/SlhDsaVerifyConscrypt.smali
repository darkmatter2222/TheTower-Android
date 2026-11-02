.class public Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;
.super Ljava/lang/Object;
.source "SlhDsaVerifyConscrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt$RawKeySpec;
    }
.end annotation


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field static final SLH_DSA_SHA2_128S_ALGORITHM:Ljava/lang/String; = "SLH-DSA-SHA2-128S"

.field static final SLH_DSA_SHA2_128S_SIG_LENGTH:I = 0x1eb0


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final outputPrefix:[B

.field private final provider:Ljava/security/Provider;

.field private final publicKey:Ljava/security/PublicKey;

.field private final signatureLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;Ljava/lang/String;ILjava/security/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputPrefix",
            "publicKey",
            "algorithm",
            "signatureLength",
            "provider"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->outputPrefix:[B

    .line 66
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->publicKey:Ljava/security/PublicKey;

    .line 67
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->algorithm:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->signatureLength:I

    .line 69
    iput-object p5, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slhDsaPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, v0}, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->createWithProvider(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Obtaining Conscrypt provider failed"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use SLH-DSA in FIPS-mode, as it is not yet certified in Conscrypt."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWithProvider(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slhDsaPublicKey",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 78
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getPrivateKeySize()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHA2:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    if-ne v1, v2, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    if-ne v0, v1, :cond_0

    .line 89
    const-string v0, "SLH-DSA-SHA2-128S"

    .line 90
    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt$RawKeySpec;

    .line 91
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getSerializedPublicKey()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt$RawKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 93
    new-instance v3, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;

    .line 94
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v4

    const-string v6, "SLH-DSA-SHA2-128S"

    const/16 v7, 0x1eb0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;-><init>([BLjava/security/PublicKey;Ljava/lang/String;ILjava/security/Provider;)V

    return-object v3

    .line 86
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Unsupported SLH-DSA parameters"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use SLH-DSA in FIPS-mode, as it is not yet certified in Conscrypt."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "provider must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSupported()Z
    .locals 3

    .line 134
    const-string v0, "SLH-DSA-SHA2-128S"

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v1}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 138
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 144
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 145
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v2
.end method


# virtual methods
.method public verify([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->outputPrefix:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->outputPrefix:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->signatureLength:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 126
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 127
    iget-object p2, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->outputPrefix:[B

    array-length p2, p2

    iget v1, p0, Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;->signatureLength:I

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/Signature;->verify([BII)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
