.class public final Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;
.super Ljava/lang/Object;
.source "MlDsaVerifyConscrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt$RawKeySpec;
    }
.end annotation


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field static final ML_DSA_65_ALGORITHM:Ljava/lang/String; = "ML-DSA-65"

.field static final ML_DSA_65_SIG_LENGTH:I = 0xced


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final outputPrefix:[B

.field private final provider:Ljava/security/Provider;

.field private final publicKey:Ljava/security/PublicKey;

.field private final signatureLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>([BLjava/security/PublicKey;Ljava/lang/String;ILjava/security/Provider;)V
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->outputPrefix:[B

    .line 63
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->publicKey:Ljava/security/PublicKey;

    .line 64
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->algorithm:Ljava/lang/String;

    .line 65
    iput p4, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->signatureLength:I

    .line 66
    iput-object p5, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/MlDsaPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mlDsaPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0, v0}, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->createWithProvider(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Obtaining Conscrypt provider failed"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWithProvider(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mlDsaPublicKey",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 75
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "ML-DSA-65"

    .line 87
    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt$RawKeySpec;

    .line 88
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getSerializedPublicKey()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt$RawKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 90
    new-instance v3, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;

    .line 91
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v4

    const-string v6, "ML-DSA-65"

    const/16 v7, 0xced

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;-><init>([BLjava/security/PublicKey;Ljava/lang/String;ILjava/security/Provider;)V

    return-object v3

    .line 82
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only ML-DSA-65 currently supported"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "provider must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSupported()Z
    .locals 3

    .line 130
    const-string v0, "ML-DSA-65"

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v1}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 134
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 140
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 141
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
            0x10,
            0x10
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

    .line 114
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->outputPrefix:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->outputPrefix:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->signatureLength:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 122
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 123
    iget-object p2, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->outputPrefix:[B

    array-length p2, p2

    iget v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaVerifyConscrypt;->signatureLength:I

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/Signature;->verify([BII)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
