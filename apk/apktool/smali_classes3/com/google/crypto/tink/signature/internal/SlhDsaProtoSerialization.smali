.class public final Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;
.super Ljava/lang/Object;
.source "SlhDsaProtoSerialization.java"


# static fields
.field private static final HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/SlhDsaHashType;",
            "Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "Lcom/google/crypto/tink/signature/SlhDsaParameters;",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.SlhDsaPrivateKey"

.field private static final PRIVATE_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

.field private static final PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "Lcom/google/crypto/tink/signature/SlhDsaPublicKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.SlhDsaPublicKey"

.field private static final PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

.field private static final SIGNATURE_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/SlhDsaSignatureType;",
            "Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;",
            ">;"
        }
    .end annotation
.end field

.field private static final VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            "Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AE52iF_mceTiDHzyZJwkHzoR4GI(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->serializePublicKey(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CmAcbDdMAefK2ZueCgjRArxFVls(Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->serializePrivateKey(Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H71W0cZteaFLFTfAXCkWj1Gxc48(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pj-NQam1UF-e8LMc2Z2p5IdjdEQ(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rem9f3xWR8s0tYwQ3iHgkAt6v8k(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/signature/SlhDsaParameters;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TZJ4GitdK_HI_03GBbgOoXPNiFM(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 54
    const-string v0, "type.googleapis.com/google.crypto.tink.SlhDsaPrivateKey"

    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PRIVATE_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 57
    const-string v1, "type.googleapis.com/google.crypto.tink.SlhDsaPublicKey"

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 60
    new-instance v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Lcom/google/crypto/tink/signature/SlhDsaParameters;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 61
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 66
    new-instance v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 67
    invoke-static {v2, v0, v3}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 72
    new-instance v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v3, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 73
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 78
    new-instance v2, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 79
    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 85
    new-instance v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 86
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 91
    new-instance v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 92
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 108
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/SlhDsaHashType;->SHA2:Lcom/google/crypto/tink/proto/SlhDsaHashType;

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHA2:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/SlhDsaHashType;->SHAKE:Lcom/google/crypto/tink/proto/SlhDsaHashType;

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHAKE:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 120
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->FAST_SIGNING:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->FAST_SIGNING:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    sget-object v2, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->SIGNATURE_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToSlhDsaPublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->getVersion()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->getParams()Lcom/google/crypto/tink/proto/SlhDsaParams;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 282
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    .line 280
    invoke-static {v0, v1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->validateAndConvertToSlhDsaParameters(Lcom/google/crypto/tink/proto/SlhDsaParams;Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v0

    .line 285
    invoke-static {}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->builder()Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->setSerializedPublicKey(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->build()Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    move-result-object p0

    return-object p0

    .line 277
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getProtoParams(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/proto/SlhDsaParams;
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

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaParams;->newBuilder()Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getPrivateKeySize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 152
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/SlhDsaHashType;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;->setHashType(Lcom/google/crypto/tink/proto/SlhDsaHashType;)Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->SIGNATURE_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 153
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;->setSigType(Lcom/google/crypto/tink/proto/SlhDsaSignatureType;)Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method private static getProtoPublicKey(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey;
    .locals 2
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

    .line 159
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->newBuilder()Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->getProtoParams(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/proto/SlhDsaParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;->setParams(Lcom/google/crypto/tink/proto/SlhDsaParams;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getSerializedPublicKey()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    return-object p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/signature/SlhDsaParameters;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.SlhDsaPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;->getVersion()I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;->getParams()Lcom/google/crypto/tink/proto/SlhDsaParams;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 234
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    .line 232
    invoke-static {v0, p0}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->validateAndConvertToSlhDsaParameters(Lcom/google/crypto/tink/proto/SlhDsaParams;Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted for SLH-DSA."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 227
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing SlhDsaParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to SlhDsaProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;
    .locals 2
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.SlhDsaPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne v0, v1, :cond_1

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->getVersion()I

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->convertToSlhDsaPublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    move-result-object p0

    .line 321
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    .line 320
    invoke-static {v0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p1

    .line 318
    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;->createWithoutVerification(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;

    move-result-object p0

    return-object p0

    .line 313
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing SlhDsaPrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong KeyMaterialType for SlhDsaPrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to SlhDsaProtoSerialization.parsePrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey;
    .locals 2
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.SlhDsaPublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne p1, v0, :cond_0

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 266
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    move-result-object p1

    .line 264
    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->convertToSlhDsaPublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 269
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing SlhDsaPublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong KeyMaterialType for SlhDsaPublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to SlhDsaProtoSerialization.parsePublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

    return-void
.end method

.method public static register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 141
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 142
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 143
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    .line 144
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 145
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
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

    .line 169
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.SlhDsaPrivateKey"

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/SlhDsaKeyFormat$Builder;

    move-result-object v1

    .line 173
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->getProtoParams(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/proto/SlhDsaParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/SlhDsaParams;)Lcom/google/crypto/tink/proto/SlhDsaKeyFormat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/SlhDsaKeyFormat$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;

    .line 176
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/SlhDsaKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 177
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 168
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePrivateKey(Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 3
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
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
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->getProtoPublicKey(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;->getPrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    .line 208
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 210
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 211
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPrivateKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 199
    const-string v2, "type.googleapis.com/google.crypto.tink.SlhDsaPrivateKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePublicKey(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 3
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
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
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 191
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->getProtoPublicKey(Lcom/google/crypto/tink/signature/SlhDsaPublicKey;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v1, Lcom/google/crypto/tink/signature/internal/SlhDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 193
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 194
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 189
    const-string v2, "type.googleapis.com/google.crypto.tink.SlhDsaPublicKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static validateAndConvertToSlhDsaParameters(Lcom/google/crypto/tink/proto/SlhDsaParams;Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)Lcom/google/crypto/tink/signature/SlhDsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "variant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->getKeySize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->getHashType()Lcom/google/crypto/tink/proto/SlhDsaHashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/SlhDsaHashType;->SHA2:Lcom/google/crypto/tink/proto/SlhDsaHashType;

    if-ne v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->getSigType()Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    if-ne p0, v0, :cond_0

    .line 246
    invoke-static {p1}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->createSlhDsaWithSha2And128S(Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object p0

    return-object p0

    .line 244
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Unsupported SLH-DSA parameters"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
