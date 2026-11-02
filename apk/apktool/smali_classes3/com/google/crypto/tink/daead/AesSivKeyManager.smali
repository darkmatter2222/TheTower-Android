.class public final Lcom/google/crypto/tink/daead/AesSivKeyManager;
.super Ljava/lang/Object;
.source "AesSivKeyManager.java"


# static fields
.field private static final AES_SIV_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/daead/AesSivKey;",
            "Lcom/google/crypto/tink/DeterministicAead;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "Lcom/google/crypto/tink/daead/AesSivParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "Lcom/google/crypto/tink/daead/AesSivParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_SIZE_IN_BYTES:I = 0x40

.field private static final legacyKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/DeterministicAead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PP3V1bJJX1HlfqQJsmxJZGOvo5M(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->createDeterministicAead(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/daead/AesSivKey;

    const-class v2, Lcom/google/crypto/tink/DeterministicAead;

    .line 62
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/daead/AesSivKeyManager;->AES_SIV_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 73
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/DeterministicAead;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 76
    invoke-static {}, Lcom/google/crypto/tink/proto/AesSivKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/daead/AesSivKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 92
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/daead/AesSivKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    .line 110
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/daead/AesSivKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final aes256SivTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 153
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method static createAesSivKeyFromRandomness(Lcom/google/crypto/tink/daead/AesSivParameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/daead/AesSivKey;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "stream",
            "idRequirement",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->validateParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)V

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivKey;->builder()Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object p2

    .line 105
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result p0

    invoke-static {p1, p0, p3}, Lcom/google/crypto/tink/internal/Util;->readIntoSecretBytes(Ljava/io/InputStream;ILcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->build()Lcom/google/crypto/tink/daead/AesSivKey;

    move-result-object p0

    return-object p0
.end method

.method private static createDeterministicAead(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;
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

    .line 56
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey;->getParameters()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->validateParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)V

    .line 57
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/AesSiv;->create(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/daead/subtle/DeterministicAeads;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    return-object v0
.end method

.method static synthetic lambda$aes256SivTemplate$0()Lcom/google/crypto/tink/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivParameters;->builder()Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->TINK:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setVariant(Lcom/google/crypto/tink/daead/AesSivParameters$Variant;)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->build()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rawAes256SivTemplate$1()Lcom/google/crypto/tink/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivParameters;->builder()Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setVariant(Lcom/google/crypto/tink/daead/AesSivParameters$Variant;)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->build()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v0

    .line 169
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

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v1, "AES256_SIV"

    sget-object v2, Lcom/google/crypto/tink/daead/PredefinedDeterministicAeadParameters;->AES256_SIV:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivParameters;->builder()Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v1

    const/16 v2, 0x40

    .line 130
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setVariant(Lcom/google/crypto/tink/daead/AesSivParameters$Variant;)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->build()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v1

    .line 127
    const-string v2, "AES256_SIV_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static newKey(Lcom/google/crypto/tink/daead/AesSivParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/daead/AesSivKey;
    .locals 1
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

    .line 116
    invoke-static {p0}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->validateParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)V

    .line 117
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivKey;->builder()Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->build()Lcom/google/crypto/tink/daead/AesSivKey;

    move-result-object p0

    return-object p0
.end method

.method public static final rawAes256SivTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 167
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static register(Z)V
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

    .line 137
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/google/crypto/tink/daead/internal/AesSivProtoSerialization;->register()V

    .line 141
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivKeyManager;->AES_SIV_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 143
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 144
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    const-class v2, Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    const-class v2, Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/KeyCreator;Ljava/lang/Class;)V

    .line 146
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    return-void

    .line 138
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". Valid keys must have 64 bytes."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
