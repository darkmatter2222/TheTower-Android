.class public final Lorg/chromium/net/impl/proto/Proxy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proxy.java"

# interfaces
.implements Lorg/chromium/net/impl/proto/ProxyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/proto/Proxy$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/impl/proto/Proxy;",
        "Lorg/chromium/net/impl/proto/Proxy$Builder;",
        ">;",
        "Lorg/chromium/net/impl/proto/ProxyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

.field public static final HOST_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x3

.field public static final SCHEME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private host_:Ljava/lang/String;

.field private port_:I

.field private scheme_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearHost(Lorg/chromium/net/impl/proto/Proxy;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/Proxy;->clearHost()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPort(Lorg/chromium/net/impl/proto/Proxy;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/Proxy;->clearPort()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearScheme(Lorg/chromium/net/impl/proto/Proxy;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/Proxy;->clearScheme()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHost(Lorg/chromium/net/impl/proto/Proxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/Proxy;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHostBytes(Lorg/chromium/net/impl/proto/Proxy;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/Proxy;->setHostBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPort(Lorg/chromium/net/impl/proto/Proxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/Proxy;->setPort(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScheme(Lorg/chromium/net/impl/proto/Proxy;Lorg/chromium/net/impl/proto/ProxyScheme;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/Proxy;->setScheme(Lorg/chromium/net/impl/proto/ProxyScheme;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/impl/proto/Proxy;
    .locals 1

    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 437
    new-instance v0, Lorg/chromium/net/impl/proto/Proxy;

    invoke-direct {v0}, Lorg/chromium/net/impl/proto/Proxy;-><init>()V

    .line 440
    sput-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    .line 441
    const-class v1, Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/net/impl/proto/Proxy;->host_:Ljava/lang/String;

    return-void
.end method

.method private clearHost()V
    .locals 1

    .line 100
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    .line 101
    invoke-static {}, Lorg/chromium/net/impl/proto/Proxy;->getDefaultInstance()Lorg/chromium/net/impl/proto/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/Proxy;->host_:Ljava/lang/String;

    return-void
.end method

.method private clearPort()V
    .locals 1

    .line 143
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->port_:I

    return-void
.end method

.method private clearScheme()V
    .locals 1

    .line 55
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->scheme_:I

    return-void
.end method

.method public static getDefaultInstance()Lorg/chromium/net/impl/proto/Proxy;
    .locals 1

    .line 446
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    return-object v0
.end method

.method public static newBuilder()Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1

    .line 224
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/proto/Proxy$Builder;

    return-object v0
.end method

.method public static newBuilder(Lorg/chromium/net/impl/proto/Proxy;)Lorg/chromium/net/impl/proto/Proxy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 227
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0, p0}, Lorg/chromium/net/impl/proto/Proxy;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/chromium/net/impl/proto/Proxy;
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

    .line 200
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0}, Lorg/chromium/net/impl/proto/Proxy;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/Proxy;
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

    .line 207
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0, p1}, Lorg/chromium/net/impl/proto/Proxy;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/Proxy;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/Proxy;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/chromium/net/impl/proto/Proxy;
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

    .line 212
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/Proxy;
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

    .line 219
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/chromium/net/impl/proto/Proxy;
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

    .line 187
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/Proxy;
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

    .line 194
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/chromium/net/impl/proto/Proxy;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 150
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/Proxy;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/chromium/net/impl/proto/Proxy;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 175
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/Proxy;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/Proxy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;"
        }
    .end annotation

    .line 452
    sget-object v0, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/Proxy;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    .line 94
    iput-object p1, p0, Lorg/chromium/net/impl/proto/Proxy;->host_:Ljava/lang/String;

    return-void
.end method

.method private setHostBytes(Lcom/google/protobuf/ByteString;)V
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
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/proto/Proxy;->host_:Ljava/lang/String;

    .line 110
    iget p1, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    return-void
.end method

.method private setPort(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 136
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    .line 137
    iput p1, p0, Lorg/chromium/net/impl/proto/Proxy;->port_:I

    return-void
.end method

.method private setScheme(Lorg/chromium/net/impl/proto/ProxyScheme;)V
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
    invoke-virtual {p1}, Lorg/chromium/net/impl/proto/ProxyScheme;->getNumber()I

    move-result p1

    iput p1, p0, Lorg/chromium/net/impl/proto/Proxy;->scheme_:I

    .line 49
    iget p1, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 384
    sget-object p2, Lorg/chromium/net/impl/proto/Proxy$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 430
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 424
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 409
    :pswitch_2
    sget-object p1, Lorg/chromium/net/impl/proto/Proxy;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 411
    const-class p2, Lorg/chromium/net/impl/proto/Proxy;

    monitor-enter p2

    .line 412
    :try_start_0
    sget-object p1, Lorg/chromium/net/impl/proto/Proxy;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 414
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 417
    sput-object p1, Lorg/chromium/net/impl/proto/Proxy;->PARSER:Lcom/google/protobuf/Parser;

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
    :pswitch_3
    sget-object p1, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    return-object p1

    .line 392
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "scheme_"

    .line 395
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyScheme;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    const-string v0, "host_"

    const-string v1, "port_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 399
    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u1004\u0002"

    .line 402
    sget-object p3, Lorg/chromium/net/impl/proto/Proxy;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/Proxy;

    invoke-static {p3, p2, p1}, Lorg/chromium/net/impl/proto/Proxy;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 389
    :pswitch_5
    new-instance p1, Lorg/chromium/net/impl/proto/Proxy$Builder;

    invoke-direct {p1, p2}, Lorg/chromium/net/impl/proto/Proxy$Builder;-><init>(Lorg/chromium/net/impl/proto/Proxy-IA;)V

    return-object p1

    .line 386
    :pswitch_6
    new-instance p1, Lorg/chromium/net/impl/proto/Proxy;

    invoke-direct {p1}, Lorg/chromium/net/impl/proto/Proxy;-><init>()V

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

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/chromium/net/impl/proto/Proxy;->host_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->port_:I

    return v0
.end method

.method public getScheme()Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 1

    .line 40
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->scheme_:I

    invoke-static {v0}, Lorg/chromium/net/impl/proto/ProxyScheme;->forNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->DIRECT:Lorg/chromium/net/impl/proto/ProxyScheme;

    :cond_0
    return-object v0
.end method

.method public hasHost()Z
    .locals 1

    .line 67
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPort()Z
    .locals 1

    .line 121
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasScheme()Z
    .locals 2

    .line 32
    iget v0, p0, Lorg/chromium/net/impl/proto/Proxy;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
