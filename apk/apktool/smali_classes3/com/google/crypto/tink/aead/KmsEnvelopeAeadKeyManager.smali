.class public Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;
.super Ljava/lang/Object;
.source "KmsEnvelopeAeadKeyManager.java"


# static fields
.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_KMS_ENVELOPE_AEAD_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;",
            "Lcom/google/crypto/tink/Aead;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

.field private static final legacyKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/Aead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PHPUJ9X5j5ioSeDxwpQ3Aqo1hP4(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->newKey(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nExcCP_KEJxnWCUo2AaAsAWv2dI(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;)Lcom/google/crypto/tink/Aead;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->create(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 47
    invoke-static {}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/Aead;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 50
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 73
    new-instance v0, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    .line 86
    new-instance v0, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager$$ExternalSyntheticLambda1;-><init>()V

    const-class v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    const-class v2, Lcom/google/crypto/tink/Aead;

    .line 87
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->LEGACY_KMS_ENVELOPE_AEAD_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;)Lcom/google/crypto/tink/Aead;
    .locals 3
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

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getKekUri()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getDekParametersForNewKeys()Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object v1

    .line 81
    invoke-static {v0}, Lcom/google/crypto/tink/KmsClients;->get(Ljava/lang/String;)Lcom/google/crypto/tink/KmsClient;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/crypto/tink/KmsClient;->getAead(Ljava/lang/String;)Lcom/google/crypto/tink/Aead;

    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAead;->create(Lcom/google/crypto/tink/aead/AeadParameters;Lcom/google/crypto/tink/Aead;)Lcom/google/crypto/tink/Aead;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->create(Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method public static createKeyTemplate(Ljava/lang/String;Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kekUri",
            "dekTemplate"
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/KeyTemplate;->toParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRaw(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->builder()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setKekUri(Ljava/lang/String;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p0

    .line 218
    invoke-static {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->getRequiredParsingStrategy(Lcom/google/crypto/tink/aead/AeadParameters;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setDekParsingStrategy(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p0

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setDekParametersForNewKeys(Lcom/google/crypto/tink/aead/AeadParameters;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object p0

    .line 221
    invoke-static {p0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create LegacyKmsEnvelopeAeadParameters for template: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method

.method private static getRequiredParsingStrategy(Lcom/google/crypto/tink/aead/AeadParameters;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 166
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    if-eqz v0, :cond_0

    .line 167
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_GCM:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object p0

    .line 169
    :cond_0
    instance-of v0, p0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    if-eqz v0, :cond_1

    .line 170
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_CHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object p0

    .line 172
    :cond_1
    instance-of v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    if-eqz v0, :cond_2

    .line 173
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_XCHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object p0

    .line 175
    :cond_2
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    if-eqz v0, :cond_3

    .line 176
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_CTR_HMAC:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object p0

    .line 178
    :cond_3
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters;

    if-eqz v0, :cond_4

    .line 179
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_EAX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object p0

    .line 181
    :cond_4
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    if-eqz v0, :cond_5

    .line 182
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_GCM_SIV:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object p0

    .line 184
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal parameters"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeRaw(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/aead/AeadParameters;
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

    .line 143
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    if-eqz v0, :cond_0

    .line 144
    check-cast p0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-static {p0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRawAesGcm(Lcom/google/crypto/tink/aead/AesGcmParameters;)Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    instance-of v0, p0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRawChaCha20Poly1305()Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object p0

    return-object p0

    .line 149
    :cond_1
    instance-of v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRawXChaCha20Poly1305()Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object p0

    return-object p0

    .line 152
    :cond_2
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    if-eqz v0, :cond_3

    .line 153
    check-cast p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-static {p0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRawAesCtrHmacAead(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object p0

    return-object p0

    .line 155
    :cond_3
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters;

    if-eqz v0, :cond_4

    .line 156
    check-cast p0, Lcom/google/crypto/tink/aead/AesEaxParameters;

    invoke-static {p0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRawAesEax(Lcom/google/crypto/tink/aead/AesEaxParameters;)Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object p0

    return-object p0

    .line 158
    :cond_4
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    if-eqz v0, :cond_5

    .line 159
    check-cast p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-static {p0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->makeRawAesGcmSiv(Lcom/google/crypto/tink/aead/AesGcmSivParameters;)Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object p0

    return-object p0

    .line 161
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal parameters"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeRawAesCtrHmacAead(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 2
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

    .line 114
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object p0

    return-object p0
.end method

.method private static makeRawAesEax(Lcom/google/crypto/tink/aead/AesEaxParameters;)Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 2
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

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/aead/AesEaxParameters;->builder()Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxParameters;->getIvSizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxParameters;->getKeySizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxParameters;->getTagSizeBytes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object p0

    return-object p0
.end method

.method private static makeRawAesGcm(Lcom/google/crypto/tink/aead/AesGcmParameters;)Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 2
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

    .line 96
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getIvSizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getTagSizeBytes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object p0

    return-object p0
.end method

.method private static makeRawAesGcmSiv(Lcom/google/crypto/tink/aead/AesGcmSivParameters;)Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1
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

    .line 136
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getKeySizeBytes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    .line 138
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    move-result-object p0

    return-object p0
.end method

.method private static makeRawChaCha20Poly1305()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 105
    sget-object v0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    move-result-object v0

    return-object v0
.end method

.method private static makeRawXChaCha20Poly1305()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    return-object v0
.end method

.method private static newKey(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;
    .locals 0
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

    .line 68
    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->create(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    move-result-object p0

    return-object p0
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

    .line 229
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->register()V

    .line 234
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/KeyCreator;Ljava/lang/Class;)V

    .line 236
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->LEGACY_KMS_ENVELOPE_AEAD_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 238
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    return-void

    .line 230
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering KMS Envelope AEAD is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
