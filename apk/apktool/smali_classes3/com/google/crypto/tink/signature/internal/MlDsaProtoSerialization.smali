.class public final Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;
.super Ljava/lang/Object;
.source "MlDsaProtoSerialization.java"


# static fields
.field private static final INSTANCE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/MlDsaInstance;",
            "Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;",
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
            "Lcom/google/crypto/tink/signature/MlDsaParameters;",
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
            "Lcom/google/crypto/tink/signature/MlDsaPrivateKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey"

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
            "Lcom/google/crypto/tink/signature/MlDsaPublicKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.MlDsaPublicKey"

.field private static final PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

.field private static final VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            "Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ITxnGzr_nTSo0fvS4nUs99EYVE0(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->serializePublicKey(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L_78mBVQX-3FauJGjTHBz9J4F8w(Lcom/google/crypto/tink/signature/MlDsaPrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->serializePrivateKey(Lcom/google/crypto/tink/signature/MlDsaPrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iDHIqL48exJkTAcug44n2PKfqzQ(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/signature/MlDsaParameters;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oQj6ixQfb5YnEEZQ6CXk-A50-TU(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/MlDsaPrivateKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/MlDsaPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vP6oX1Ai_1GgOF8DfRKyz5_4wjs(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/MlDsaPublicKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yfaLtSPcorqc0gddA4L_CB1sqNQ(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 56
    const-string v0, "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey"

    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PRIVATE_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 59
    const-string v1, "type.googleapis.com/google.crypto.tink.MlDsaPublicKey"

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 62
    new-instance v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Lcom/google/crypto/tink/signature/MlDsaParameters;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 63
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 68
    new-instance v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 69
    invoke-static {v2, v0, v3}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 74
    new-instance v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v3, Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 75
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 80
    new-instance v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 81
    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 87
    new-instance v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 88
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 93
    new-instance v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 94
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 101
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 110
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/proto/MlDsaInstance;

    sget-object v2, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->INSTANCE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProtoParams(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/proto/MlDsaParams;
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

    .line 137
    invoke-static {}, Lcom/google/crypto/tink/proto/MlDsaParams;->newBuilder()Lcom/google/crypto/tink/proto/MlDsaParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->INSTANCE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaInstance;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/MlDsaParams$Builder;->setMlDsaInstance(Lcom/google/crypto/tink/proto/MlDsaInstance;)Lcom/google/crypto/tink/proto/MlDsaParams$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/MlDsaParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaParams;

    return-object p0
.end method

.method private static getProtoPublicKey(Lcom/google/crypto/tink/signature/MlDsaPublicKey;)Lcom/google/crypto/tink/proto/MlDsaPublicKey;
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

    .line 144
    invoke-static {}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->newBuilder()Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->getProtoParams(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;->setParams(Lcom/google/crypto/tink/proto/MlDsaParams;)Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getSerializedPublicKey()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/MlDsaPublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaPublicKey;

    return-object p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/signature/MlDsaParameters;
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

    .line 201
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->getVersion()I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->INSTANCE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 218
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->getParams()Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaParams;->getMlDsaInstance()Lcom/google/crypto/tink/proto/MlDsaInstance;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 219
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    .line 217
    invoke-static {v0, p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->create(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted for ML-DSA."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 212
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing MlDsaParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to MlDsaProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
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

.method private static parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/MlDsaPrivateKey;
    .locals 5
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

    .line 263
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne v0, v1, :cond_3

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaPrivateKey;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;->getVersion()I

    move-result v1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Only version 0 keys are accepted"

    if-nez v1, :cond_2

    .line 279
    :try_start_1
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/MlDsaPublicKey;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->getVersion()I

    move-result v3

    if-nez v3, :cond_1

    .line 283
    sget-object v2, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->INSTANCE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 285
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->getParams()Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/MlDsaParams;->getMlDsaInstance()Lcom/google/crypto/tink/proto/MlDsaInstance;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    sget-object v3, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 286
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    .line 284
    invoke-static {v2, v3}, Lcom/google/crypto/tink/signature/MlDsaParameters;->create(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v2

    .line 288
    invoke-static {}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->builder()Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    move-result-object v3

    .line 289
    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    move-result-object v2

    .line 290
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->setSerializedPublicKey(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    .line 294
    :cond_0
    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->build()Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    move-result-object p0

    .line 299
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    .line 298
    invoke-static {v0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p1

    .line 296
    invoke-static {p0, p1}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->createWithoutVerification(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/signature/MlDsaPrivateKey;

    move-result-object p0

    return-object p0

    .line 281
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing MlDsaPrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong KeyMaterialType for MlDsaPrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to MlDsaProtoSerialization.parsePrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/signature/MlDsaPublicKey;
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
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.MlDsaPublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne p1, v0, :cond_2

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 237
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaPublicKey;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->getVersion()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->INSTANCE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 244
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->getParams()Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/MlDsaParams;->getMlDsaInstance()Lcom/google/crypto/tink/proto/MlDsaInstance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 245
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    .line 243
    invoke-static {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters;->create(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->builder()Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->setSerializedPublicKey(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->build()Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    move-result-object p0

    return-object p0

    .line 240
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing MlDsaPublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong KeyMaterialType for MlDsaPublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to MlDsaProtoSerialization.parsePublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
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

    .line 121
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

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

    .line 127
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 128
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 129
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 130
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    .line 131
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 132
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
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

    .line 154
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey"

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;

    move-result-object v1

    .line 158
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->getProtoParams(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/MlDsaParams;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    .line 161
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 162
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 153
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePrivateKey(Lcom/google/crypto/tink/signature/MlDsaPrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
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

    .line 186
    invoke-static {}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->getProtoPublicKey(Lcom/google/crypto/tink/signature/MlDsaPublicKey;)Lcom/google/crypto/tink/proto/MlDsaPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/MlDsaPublicKey;)Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getPrivateSeed()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p1

    .line 190
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    .line 189
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;

    .line 193
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaPrivateKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 195
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 196
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 184
    const-string v2, "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePublicKey(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
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

    .line 176
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->getProtoPublicKey(Lcom/google/crypto/tink/signature/MlDsaPublicKey;)Lcom/google/crypto/tink/proto/MlDsaPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaPublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v1, Lcom/google/crypto/tink/signature/internal/MlDsaProtoSerialization;->VARIANT_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 178
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 179
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 174
    const-string v2, "type.googleapis.com/google.crypto.tink.MlDsaPublicKey"

    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method
