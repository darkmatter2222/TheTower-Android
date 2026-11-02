.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;
.super Ljava/lang/Object;
.source "JwtEcdsaSignKeyManager.java"


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrivateKeyManager<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bAF4x6YQFtWmstOF1ju9mrjctDY(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->createKey(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 56
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    .line 55
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 59
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 90
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    const-class v2, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 91
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 116
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    .line 170
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFullPrimitive(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
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

    .line 74
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->toEcdsaPrivateKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EcdsaSignJce;->create(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V

    return-object v2
.end method

.method private static createKey(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;
    .locals 3
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

    .line 101
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 103
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 106
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object p0

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setPublicPoint(Ljava/security/spec/ECPoint;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object p0

    .line 112
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->create(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "type.googleapis.com/google.crypto.tink.JwtEcdsaPrivateKey"

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

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES256:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 134
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 135
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    .line 131
    const-string v2, "JWT_ES256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES256:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    .line 137
    const-string v2, "JWT_ES256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES384:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    .line 143
    const-string v2, "JWT_ES384_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES384:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 152
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    .line 149
    const-string v2, "JWT_ES384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES512:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    .line 155
    const-string v2, "JWT_ES512_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES512:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    .line 161
    const-string v2, "JWT_ES512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static registerPair(Z)V
    .locals 3
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

    .line 178
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 183
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    .line 184
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object p0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    .line 186
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    const-class v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/KeyCreator;Ljava/lang/Class;)V

    .line 187
    invoke-static {}, Lcom/google/crypto/tink/jwt/internal/JwtEcdsaProtoSerialization;->register()V

    .line 188
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 190
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 191
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    return-void

    .line 179
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ECDSA in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 68
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getEcdsaPrivateKey()Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    move-result-object p0

    return-object p0
.end method
