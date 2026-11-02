.class Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;
.super Ljava/lang/Object;
.source "JwtSignatureConfigurationV0.java"


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;


# direct methods
.method public static synthetic $r8$lambda$1cZc8FmHtXdAM68WdJnTpoDD_Y4(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->createJwtRsaSsaPkcs1Sign(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E3XXqmLdo590ezyqDgQvifCCu1o(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->createJwtRsaSsaPkcs1Verify(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V7-t0s0cnZLNYsVA-WRevLSRKik(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->createJwtRsaSsaPssVerify(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hjI4Ufm93_fbJMZ1zryGodtBPNw(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->createJwtRsaSsaPssSign(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iHivKfsYnxxj6n1DyL8LAzlrHJE(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->createJwtEcdsaVerify(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jOsiskJGfr6BrTpJ78PYTX05l2A(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->createJwtEcdsaSign(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->create()Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;

    .line 59
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create()Lcom/google/crypto/tink/internal/InternalConfiguration;
    .locals 4

    .line 64
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->builder()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 68
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 69
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 73
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda6;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 74
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 78
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 79
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 85
    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 86
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda8;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    .line 87
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 91
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda9;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    .line 92
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 96
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda10;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    .line 97
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 102
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/InternalConfiguration;->createFromPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createJwtEcdsaSign(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->toEcdsaPrivateKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EcdsaSignJce;->create(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V

    return-object v2
.end method

.method private static createJwtEcdsaVerify(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->toEcdsaPublicKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->create(Lcom/google/crypto/tink/signature/EcdsaPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda4;-><init>(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)V

    return-object v1
.end method

.method private static createJwtRsaSsaPkcs1Sign(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->toRsaSsaPkcs1PrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V

    return-object v2
.end method

.method private static createJwtRsaSsaPkcs1Verify(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda1;-><init>(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)V

    return-object v1
.end method

.method private static createJwtRsaSsaPssSign(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 162
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->toRsaSsaPssPrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V

    return-object v2
.end method

.method private static createJwtRsaSsaPssVerify(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->toRsaSsaPssPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;-><init>(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)V

    return-object v1
.end method

.method public static get()Lcom/google/crypto/tink/Configuration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use JwtSignatureConfigurationV0, as BoringCrypto module is needed for FIPS compatibility"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$createJwtEcdsaSign$0(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;Lcom/google/crypto/tink/PublicKeySign;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getKid()Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/jwt/JwtFormat;->createUnsignedCompact(Ljava/lang/String;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p0

    .line 128
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object p1

    .line 128
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->createSignedCompact(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createJwtEcdsaVerify$3(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 180
    invoke-static {p2}, Lcom/google/crypto/tink/jwt/JwtFormat;->splitSignedCompact(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtFormat$Parts;

    move-result-object p2

    .line 181
    iget-object v0, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->signatureOrMac:[B

    iget-object v1, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->unsignedCompact:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    .line 182
    iget-object p0, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->header:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 185
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getKid()Ljava/util/Optional;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->allowKidAbsent()Z

    move-result p1

    .line 183
    invoke-static {p0, v0, v1, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Optional;Z)V

    .line 188
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getTypeHeader(Lcom/google/gson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    iget-object p1, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->payload:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/RawJwt;->fromJsonPayload(Ljava/util/Optional;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt;

    move-result-object p0

    .line 189
    invoke-virtual {p3, p0}, Lcom/google/crypto/tink/jwt/JwtValidator;->validate(Lcom/google/crypto/tink/jwt/RawJwt;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createJwtRsaSsaPkcs1Sign$1(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/PublicKeySign;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getKid()Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/jwt/JwtFormat;->createUnsignedCompact(Ljava/lang/String;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p0

    .line 148
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object p1

    .line 148
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->createSignedCompact(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createJwtRsaSsaPkcs1Verify$4(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 205
    invoke-static {p2}, Lcom/google/crypto/tink/jwt/JwtFormat;->splitSignedCompact(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtFormat$Parts;

    move-result-object p2

    .line 206
    iget-object v0, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->signatureOrMac:[B

    iget-object v1, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->unsignedCompact:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    .line 207
    iget-object p0, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->header:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 210
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getKid()Ljava/util/Optional;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->allowKidAbsent()Z

    move-result p1

    .line 208
    invoke-static {p0, v0, v1, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Optional;Z)V

    .line 213
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getTypeHeader(Lcom/google/gson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    iget-object p1, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->payload:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/RawJwt;->fromJsonPayload(Ljava/util/Optional;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt;

    move-result-object p0

    .line 214
    invoke-virtual {p3, p0}, Lcom/google/crypto/tink/jwt/JwtValidator;->validate(Lcom/google/crypto/tink/jwt/RawJwt;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createJwtRsaSsaPssSign$2(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;Lcom/google/crypto/tink/PublicKeySign;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getKid()Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/jwt/JwtFormat;->createUnsignedCompact(Ljava/lang/String;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p0

    .line 168
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object p1

    .line 168
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->createSignedCompact(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createJwtRsaSsaPssVerify$5(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 230
    invoke-static {p2}, Lcom/google/crypto/tink/jwt/JwtFormat;->splitSignedCompact(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtFormat$Parts;

    move-result-object p2

    .line 231
    iget-object v0, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->signatureOrMac:[B

    iget-object v1, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->unsignedCompact:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    .line 232
    iget-object p0, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->header:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 235
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getKid()Ljava/util/Optional;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->allowKidAbsent()Z

    move-result p1

    .line 233
    invoke-static {p0, v0, v1, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Optional;Z)V

    .line 238
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getTypeHeader(Lcom/google/gson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    iget-object p1, p2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->payload:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/RawJwt;->fromJsonPayload(Ljava/util/Optional;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt;

    move-result-object p0

    .line 239
    invoke-virtual {p3, p0}, Lcom/google/crypto/tink/jwt/JwtValidator;->validate(Lcom/google/crypto/tink/jwt/RawJwt;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object p0

    return-object p0
.end method

.method private static toEcdsaPrivateKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getEcdsaPrivateKey()Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static toEcdsaPublicKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getEcdsaPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static toRsaSsaPkcs1PrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getRsaSsaPkcs1PrivateKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getRsaSsaPkcs1PublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static toRsaSsaPssPrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getRsaSsaPssPrivateKey()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static toRsaSsaPssPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getRsaSsaPssPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object p0

    return-object p0
.end method
