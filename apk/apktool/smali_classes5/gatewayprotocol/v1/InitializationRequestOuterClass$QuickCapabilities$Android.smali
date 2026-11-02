.class public final Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$AndroidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;,
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$AndroidOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAPABILITIES_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
            ">;"
        }
    .end annotation
.end field

.field private static final capabilities_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capabilitiesMemoizedSerializedSize:I

.field private capabilities_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6797
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7340
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;-><init>()V

    .line 7343
    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    .line 7344
    const-class v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6543
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$12200()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1

    .line 6537
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object v0
.end method

.method static synthetic access$12300(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;ILgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V
    .locals 0

    .line 6537
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->setCapabilities(ILgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V

    return-void
.end method

.method static synthetic access$12400(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V
    .locals 0

    .line 6537
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->addCapabilities(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V

    return-void
.end method

.method static synthetic access$12500(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Ljava/lang/Iterable;)V
    .locals 0

    .line 6537
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->addAllCapabilities(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12600(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V
    .locals 0

    .line 6537
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->clearCapabilities()V

    return-void
.end method

.method static synthetic access$12700(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;II)V
    .locals 0

    .line 6537
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->setCapabilitiesValue(II)V

    return-void
.end method

.method static synthetic access$12800(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;I)V
    .locals 0

    .line 6537
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->addCapabilitiesValue(I)V

    return-void
.end method

.method static synthetic access$12900(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Ljava/lang/Iterable;)V
    .locals 0

    .line 6537
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->addAllCapabilitiesValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllCapabilities(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;)V"
        }
    .end annotation

    .line 6933
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->ensureCapabilitiesIsMutable()V

    .line 6934
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    .line 6935
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAllCapabilitiesValue(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6991
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->ensureCapabilitiesIsMutable()V

    .line 6992
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6993
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addCapabilities(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V
    .locals 1

    .line 6917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6918
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->ensureCapabilitiesIsMutable()V

    .line 6919
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addCapabilitiesValue(I)V
    .locals 1

    .line 6976
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->ensureCapabilitiesIsMutable()V

    .line 6977
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearCapabilities()V
    .locals 1

    .line 6948
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureCapabilitiesIsMutable()V
    .locals 2

    .line 6883
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    .line 6884
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6886
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1

    .line 7349
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7074
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7077
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7050
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7057
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7013
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7020
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7062
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7069
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7037
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7044
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7000
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7007
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7025
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7032
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
            ">;"
        }
    .end annotation

    .line 7355
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCapabilities(ILgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V
    .locals 1

    .line 6902
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6903
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->ensureCapabilitiesIsMutable()V

    .line 6904
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setCapabilitiesValue(II)V
    .locals 1

    .line 6962
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->ensureCapabilitiesIsMutable()V

    .line 6963
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7292
    sget-object p2, Lgatewayprotocol/v1/InitializationRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7333
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 7327
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7312
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7314
    const-class p2, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    monitor-enter p2

    .line 7315
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7317
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7320
    sput-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->PARSER:Lcom/google/protobuf/Parser;

    .line 7322
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

    .line 7309
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object p1

    .line 7300
    :pswitch_4
    const-string p1, "capabilities_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 7303
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001,"

    .line 7305
    sget-object p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7297
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$1;)V

    return-object p1

    .line 7294
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCapabilities(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;
    .locals 1

    .line 6848
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->forNumber(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6849
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->UNRECOGNIZED:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    :cond_0
    return-object p1
.end method

.method public getCapabilitiesCount()I
    .locals 1

    .line 6833
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getCapabilitiesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;"
        }
    .end annotation

    .line 6818
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getCapabilitiesValue(I)I
    .locals 1

    .line 6879
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getCapabilitiesValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6864
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->capabilities_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method
