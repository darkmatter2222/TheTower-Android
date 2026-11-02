.class public final Lgatewayprotocol/v1/ModuleOuterClass$Module;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ModuleOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIG_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config_:Lcom/google/protobuf/ByteString;

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 427
    new-instance v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-direct {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;-><init>()V

    .line 430
    sput-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    .line 431
    const-class v1, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1

    .line 49
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/ModuleOuterClass$Module;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->setConfig(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->clearConfig()V

    return-void
.end method

.method private clearConfig()V
    .locals 1

    .line 161
    invoke-static {}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getDefaultInstance()Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 108
    invoke-static {}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getDefaultInstance()Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1

    .line 436
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 241
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ModuleOuterClass$Module;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 244
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation

    .line 442
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConfig(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-static {p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 121
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    sget-object p2, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 420
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 414
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 399
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 401
    const-class p2, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    monitor-enter p2

    .line 402
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 404
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 407
    sput-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->PARSER:Lcom/google/protobuf/Parser;

    .line 409
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

    .line 396
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p1

    .line 385
    :pswitch_4
    const-string p1, "name_"

    const-string p2, "config_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 389
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    .line 392
    sget-object p3, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 382
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;-><init>(Lgatewayprotocol/v1/ModuleOuterClass$1;)V

    return-object p1

    .line 379
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-direct {p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;-><init>()V

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

.method public getConfig()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 137
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
