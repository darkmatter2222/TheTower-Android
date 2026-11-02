.class public final Lorg/chromium/net/impl/proto/ProxyOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ProxyOptions.java"

# interfaces
.implements Lorg/chromium/net/impl/proto/ProxyOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/impl/proto/ProxyOptions;",
        "Lorg/chromium/net/impl/proto/ProxyOptions$Builder;",
        ">;",
        "Lorg/chromium/net/impl/proto/ProxyOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/impl/proto/ProxyOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXIES_FIELD_NUMBER:I = 0x1


# instance fields
.field private proxies_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$maddAllProxies(Lorg/chromium/net/impl/proto/ProxyOptions;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->addAllProxies(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddProxies(Lorg/chromium/net/impl/proto/ProxyOptions;ILorg/chromium/net/impl/proto/Proxy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions;->addProxies(ILorg/chromium/net/impl/proto/Proxy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddProxies(Lorg/chromium/net/impl/proto/ProxyOptions;Lorg/chromium/net/impl/proto/Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->addProxies(Lorg/chromium/net/impl/proto/Proxy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearProxies(Lorg/chromium/net/impl/proto/ProxyOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->clearProxies()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveProxies(Lorg/chromium/net/impl/proto/ProxyOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->removeProxies(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetProxies(Lorg/chromium/net/impl/proto/ProxyOptions;ILorg/chromium/net/impl/proto/Proxy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions;->setProxies(ILorg/chromium/net/impl/proto/Proxy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/impl/proto/ProxyOptions;
    .locals 1

    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 376
    new-instance v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-direct {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;-><init>()V

    .line 379
    sput-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 380
    const-class v1, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyOptions;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addAllProxies(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->ensureProxiesIsMutable()V

    .line 100
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addProxies(ILorg/chromium/net/impl/proto/Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->ensureProxiesIsMutable()V

    .line 92
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addProxies(Lorg/chromium/net/impl/proto/Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->ensureProxiesIsMutable()V

    .line 83
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearProxies()V
    .locals 1

    .line 107
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyOptions;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureProxiesIsMutable()V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 62
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lorg/chromium/net/impl/proto/ProxyOptions;
    .locals 1

    .line 385
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object v0
.end method

.method public static newBuilder()Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    .locals 1

    .line 194
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lorg/chromium/net/impl/proto/ProxyOptions;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 197
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-virtual {v0, p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 170
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 177
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 133
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 140
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 182
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 189
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 157
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 164
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 120
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 127
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 145
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/ProxyOptions;
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

    .line 152
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/impl/proto/ProxyOptions;",
            ">;"
        }
    .end annotation

    .line 391
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeProxies(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->ensureProxiesIsMutable()V

    .line 114
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setProxies(ILorg/chromium/net/impl/proto/Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-direct {p0}, Lorg/chromium/net/impl/proto/ProxyOptions;->ensureProxiesIsMutable()V

    .line 75
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 327
    sget-object p2, Lorg/chromium/net/impl/proto/ProxyOptions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 369
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 363
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 348
    :pswitch_2
    sget-object p1, Lorg/chromium/net/impl/proto/ProxyOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 350
    const-class p2, Lorg/chromium/net/impl/proto/ProxyOptions;

    monitor-enter p2

    .line 351
    :try_start_0
    sget-object p1, Lorg/chromium/net/impl/proto/ProxyOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 353
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 356
    sput-object p1, Lorg/chromium/net/impl/proto/ProxyOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 358
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

    .line 345
    :pswitch_3
    sget-object p1, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object p1

    .line 335
    :pswitch_4
    const-string p1, "proxies_"

    const-class p2, Lorg/chromium/net/impl/proto/Proxy;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 339
    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 341
    sget-object p3, Lorg/chromium/net/impl/proto/ProxyOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {p3, p2, p1}, Lorg/chromium/net/impl/proto/ProxyOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 332
    :pswitch_5
    new-instance p1, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    invoke-direct {p1, p2}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;-><init>(Lorg/chromium/net/impl/proto/ProxyOptions-IA;)V

    return-object p1

    .line 329
    :pswitch_6
    new-instance p1, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-direct {p1}, Lorg/chromium/net/impl/proto/ProxyOptions;-><init>()V

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

.method public getProxies(I)Lorg/chromium/net/impl/proto/Proxy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/impl/proto/Proxy;

    return-object p1
.end method

.method public getProxiesCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProxiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/proto/Proxy;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProxiesOrBuilder(I)Lorg/chromium/net/impl/proto/ProxyOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/impl/proto/ProxyOrBuilder;

    return-object p1
.end method

.method public getProxiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/net/impl/proto/ProxyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/chromium/net/impl/proto/ProxyOptions;->proxies_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
