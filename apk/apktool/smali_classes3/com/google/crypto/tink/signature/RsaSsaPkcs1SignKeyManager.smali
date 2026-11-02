.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1SignKeyManager.java"


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_KEY_SIGN_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;",
            "Lcom/google/crypto/tink/PublicKeySign;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_KEY_VERIFY_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;",
            "Lcom/google/crypto/tink/PublicKeyVerify;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrivateKeyManager<",
            "Lcom/google/crypto/tink/PublicKeySign;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/PublicKeyVerify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$T6a2IwN0-iSkK2NV4vUGJEClsX4(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->createKey(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda3;-><init>()V

    const-class v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    const-class v2, Lcom/google/crypto/tink/PublicKeySign;

    .line 61
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->PUBLIC_KEY_SIGN_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 65
    new-instance v0, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda4;-><init>()V

    const-class v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    const-class v2, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 66
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->PUBLIC_KEY_VERIFY_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 71
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/PublicKeySign;

    .line 73
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 77
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/PublicKeyVerify;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 80
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 129
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    .line 162
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createKey(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
    .locals 6
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 91
    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 93
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    .line 94
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 95
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 96
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 98
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 104
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object p0

    .line 109
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 112
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 113
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 111
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 116
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 115
    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 119
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 118
    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 121
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 124
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey"

    return-object v0
.end method

.method static synthetic lambda$rawRsa3072SsaPkcs1Sha256F4Template$1()Lcom/google/crypto/tink/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 224
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rawRsa4096SsaPkcs1Sha512F4Template$3()Lcom/google/crypto/tink/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 268
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 269
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 270
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 271
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rsa3072SsaPkcs1Sha256F4Template$0()Lcom/google/crypto/tink/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rsa4096SsaPkcs1Sha512F4Template$2()Lcom/google/crypto/tink/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/Parameters;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    const-string v1, "RSA_SSA_PKCS1_3072_SHA256_F4"

    sget-object v2, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PKCS1_3072_SHA256_F4:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 139
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    const/16 v2, 0xc00

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 142
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v1

    .line 136
    const-string v2, "RSA_SSA_PKCS1_3072_SHA256_F4_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX"

    sget-object v2, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "RSA_SSA_PKCS1_4096_SHA512_F4"

    sget-object v2, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PKCS1_4096_SHA512_F4:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 155
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v1

    .line 151
    const-string v2, "RSA_SSA_PKCS1_4096_SHA512_F4_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final rawRsa3072SsaPkcs1Sha256F4Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 220
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final rawRsa4096SsaPkcs1Sha512F4Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 264
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static registerPair(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1ProtoSerialization;->register()V

    .line 175
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 176
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->PUBLIC_KEY_SIGN_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 177
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 178
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->PUBLIC_KEY_VERIFY_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 179
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 180
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    const-class v3, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/KeyCreator;Ljava/lang/Class;)V

    .line 181
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 182
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    .line 183
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object p0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 171
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PKCS1 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final rsa3072SsaPkcs1Sha256F4Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 198
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final rsa4096SsaPkcs1Sha512F4Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 242
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method
