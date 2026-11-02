.class public final Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;
.super Ljava/lang/Object;
.source "EcdsaSignJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY:[B

.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final legacyMessageSuffix:[B


# instance fields
.field private final encoding:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

.field private final messageSuffix:[B

.field private final outputPrefix:[B

.field private final privateKey:Ljava/security/interfaces/ECPrivateKey;

.field private final provider:Ljava/security/Provider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    const/4 v0, 0x0

    .line 54
    new-array v1, v0, [B

    sput-object v1, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->EMPTY:[B

    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->legacyMessageSuffix:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "hash",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    sget-object v4, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->EMPTY:[B

    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v6

    move-object v5, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;[B[BLjava/security/Provider;)V

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;[B[BLjava/security/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "hash",
            "encoding",
            "outputPrefix",
            "messageSuffix",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    .line 87
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toEcdsaAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->signatureAlgorithm:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->encoding:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    .line 89
    iput-object p4, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->outputPrefix:[B

    .line 90
    iput-object p5, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->messageSuffix:[B

    .line 91
    iput-object p6, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->provider:Ljava/security/Provider;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ECDSA in FIPS-mode, as BoringCrypto is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->createWithProviderOrNull(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method public static createWithProvider(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->createWithProviderOrNull(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "provider must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createWithProviderOrNull(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 8
    .param p1    # Ljava/security/Provider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/google/crypto/tink/signature/internal/EcdsaVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 120
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 121
    sget-object v0, Lcom/google/crypto/tink/signature/internal/EcdsaVerifyJce;->ENCODING_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 122
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    .line 123
    sget-object v0, Lcom/google/crypto/tink/signature/internal/EcdsaVerifyJce;->CURVE_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 124
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 125
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 128
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getPrivateValue()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 130
    const-string v0, "EC"

    if-eqz p1, :cond_0

    .line 131
    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 135
    :goto_0
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/ECPrivateKey;

    .line 137
    new-instance v1, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;

    .line 141
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v5

    .line 142
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 143
    sget-object p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->legacyMessageSuffix:[B

    goto :goto_1

    .line 144
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->EMPTY:[B

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;[B[BLjava/security/Provider;)V

    return-object v1
.end method

.method private getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->provider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Signature;

    return-object p1
.end method


# virtual methods
.method public sign([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->signatureAlgorithm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 159
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 160
    iget-object p1, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->messageSuffix:[B

    array-length v1, p1

    if-lez v1, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->encoding:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->IEEE_P1363:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->ecdsaDer2Ieee([BI)[B

    move-result-object p1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_2

    return-object p1

    .line 172
    :cond_2
    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
