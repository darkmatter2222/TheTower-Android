.class public final Lcom/google/crypto/tink/proto/HpkeParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "HpkeParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HpkeParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/HpkeParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/HpkeParams;",
        "Lcom/google/crypto/tink/proto/HpkeParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HpkeParamsOrBuilder;"
    }
.end annotation


# static fields
.field public static final AEAD_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

.field public static final KDF_FIELD_NUMBER:I = 0x2

.field public static final KEM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HpkeParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aead_:I

.field private kdf_:I

.field private kem_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 438
    new-instance v0, Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HpkeParams;-><init>()V

    .line 441
    sput-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    .line 442
    const-class v1, Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/HpkeParams;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/HpkeParams;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->setKemValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/HpkeParams;Lcom/google/crypto/tink/proto/HpkeKem;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->setKem(Lcom/google/crypto/tink/proto/HpkeKem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->clearKem()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/HpkeParams;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->setKdfValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/HpkeParams;Lcom/google/crypto/tink/proto/HpkeKdf;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->setKdf(Lcom/google/crypto/tink/proto/HpkeKdf;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->clearKdf()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/HpkeParams;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->setAeadValue(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/HpkeParams;Lcom/google/crypto/tink/proto/HpkeAead;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->setAead(Lcom/google/crypto/tink/proto/HpkeAead;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->clearAead()V

    return-void
.end method

.method private clearAead()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->aead_:I

    return-void
.end method

.method private clearKdf()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kdf_:I

    return-void
.end method

.method private clearKem()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kem_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/HpkeParams;
    .locals 1

    .line 447
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/HpkeParams$Builder;
    .locals 1

    .line 222
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeParams;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkeParams;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 198
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/HpkeParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 205
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 161
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 168
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 210
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 217
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 185
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 192
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 148
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 155
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 173
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeParams;
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

    .line 180
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HpkeParams;",
            ">;"
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeParams;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAead(Lcom/google/crypto/tink/proto/HpkeAead;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkeAead;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HpkeParams;->aead_:I

    return-void
.end method

.method private setAeadValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 127
    iput p1, p0, Lcom/google/crypto/tink/proto/HpkeParams;->aead_:I

    return-void
.end method

.method private setKdf(Lcom/google/crypto/tink/proto/HpkeKdf;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkeKdf;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kdf_:I

    return-void
.end method

.method private setKdfValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 85
    iput p1, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kdf_:I

    return-void
.end method

.method private setKem(Lcom/google/crypto/tink/proto/HpkeKem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkeKem;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kem_:I

    return-void
.end method

.method private setKemValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 43
    iput p1, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kem_:I

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

    .line 387
    sget-object p2, Lcom/google/crypto/tink/proto/HpkeParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 431
    throw p2

    :pswitch_0
    const/4 p1, 0x1

    .line 424
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 409
    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/proto/HpkeParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 411
    const-class p2, Lcom/google/crypto/tink/proto/HpkeParams;

    monitor-enter p2

    .line 412
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/HpkeParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 414
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 417
    sput-object p1, Lcom/google/crypto/tink/proto/HpkeParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 419
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

    .line 406
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p1

    .line 395
    :pswitch_3
    const-string p1, "kem_"

    const-string p2, "kdf_"

    const-string p3, "aead_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 400
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u0003\u000c"

    .line 403
    sget-object p3, Lcom/google/crypto/tink/proto/HpkeParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/HpkeParams;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 392
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;-><init>(Lcom/google/crypto/tink/proto/HpkeParams$1;)V

    return-object p1

    .line 389
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/HpkeParams;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/HpkeParams;-><init>()V

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

.method public getAead()Lcom/google/crypto/tink/proto/HpkeAead;
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->aead_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HpkeAead;->forNumber(I)Lcom/google/crypto/tink/proto/HpkeAead;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeAead;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HpkeAead;

    :cond_0
    return-object v0
.end method

.method public getAeadValue()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->aead_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getKdf()Lcom/google/crypto/tink/proto/HpkeKdf;
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kdf_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HpkeKdf;->forNumber(I)Lcom/google/crypto/tink/proto/HpkeKdf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKdf;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HpkeKdf;

    :cond_0
    return-object v0
.end method

.method public getKdfValue()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kdf_:I

    return v0
.end method

.method public getKem()Lcom/google/crypto/tink/proto/HpkeKem;
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kem_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HpkeKem;->forNumber(I)Lcom/google/crypto/tink/proto/HpkeKem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKem;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HpkeKem;

    :cond_0
    return-object v0
.end method

.method public getKemValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkeParams;->kem_:I

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
