.class public final Lcom/google/crypto/tink/proto/SlhDsaParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "SlhDsaParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/SlhDsaParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/SlhDsaParams;",
        "Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/SlhDsaParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

.field public static final HASH_TYPE_FIELD_NUMBER:I = 0x2

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/SlhDsaParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIG_TYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field private hashType_:I

.field private keySize_:I

.field private sigType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 518
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/SlhDsaParams;-><init>()V

    .line 521
    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    .line 522
    const-class v1, Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/SlhDsaParams;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->setKeySize(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/SlhDsaParams;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->clearKeySize()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/SlhDsaParams;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->setHashTypeValue(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/SlhDsaParams;Lcom/google/crypto/tink/proto/SlhDsaHashType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->setHashType(Lcom/google/crypto/tink/proto/SlhDsaHashType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/SlhDsaParams;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->clearHashType()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/SlhDsaParams;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->setSigTypeValue(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/SlhDsaParams;Lcom/google/crypto/tink/proto/SlhDsaSignatureType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->setSigType(Lcom/google/crypto/tink/proto/SlhDsaSignatureType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/SlhDsaParams;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->clearSigType()V

    return-void
.end method

.method private clearHashType()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->hashType_:I

    return-void
.end method

.method private clearKeySize()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->keySize_:I

    return-void
.end method

.method private clearSigType()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->sigType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1

    .line 527
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;
    .locals 1

    .line 263
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/SlhDsaParams;)Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/SlhDsaParams;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaParams;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHashType(Lcom/google/crypto/tink/proto/SlhDsaHashType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaHashType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->hashType_:I

    return-void
.end method

.method private setHashTypeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 98
    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->hashType_:I

    return-void
.end method

.method private setKeySize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->keySize_:I

    return-void
.end method

.method private setSigType(Lcom/google/crypto/tink/proto/SlhDsaSignatureType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->sigType_:I

    return-void
.end method

.method private setSigTypeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 160
    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->sigType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 467
    sget-object p2, Lcom/google/crypto/tink/proto/SlhDsaParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 511
    throw p2

    :pswitch_0
    const/4 p1, 0x1

    .line 504
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 489
    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/proto/SlhDsaParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 491
    const-class p2, Lcom/google/crypto/tink/proto/SlhDsaParams;

    monitor-enter p2

    .line 492
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/SlhDsaParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 494
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 497
    sput-object p1, Lcom/google/crypto/tink/proto/SlhDsaParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 499
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 486
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    return-object p1

    .line 475
    :pswitch_3
    const-string p1, "keySize_"

    const-string p2, "hashType_"

    const-string p3, "sigType_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 480
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u000c\u0003\u000c"

    .line 483
    sget-object p3, Lcom/google/crypto/tink/proto/SlhDsaParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 472
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/SlhDsaParams$Builder;-><init>(Lcom/google/crypto/tink/proto/SlhDsaParams$1;)V

    return-object p1

    .line 469
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/SlhDsaParams;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/SlhDsaParams;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHashType()Lcom/google/crypto/tink/proto/SlhDsaHashType;
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->hashType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/SlhDsaHashType;->forNumber(I)Lcom/google/crypto/tink/proto/SlhDsaHashType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaHashType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/SlhDsaHashType;

    :cond_0
    return-object v0
.end method

.method public getHashTypeValue()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->hashType_:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->keySize_:I

    return v0
.end method

.method public getSigType()Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
    .locals 1

    .line 148
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->sigType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->forNumber(I)Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    :cond_0
    return-object v0
.end method

.method public getSigTypeValue()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaParams;->sigType_:I

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
