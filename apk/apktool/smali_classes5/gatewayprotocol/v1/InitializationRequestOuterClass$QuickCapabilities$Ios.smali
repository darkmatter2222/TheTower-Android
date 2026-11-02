.class public final Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$IosOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ios"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$IosOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7530
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;-><init>()V

    .line 7533
    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    .line 7534
    const-class v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$13100()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1

    .line 7370
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object v0
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1

    .line 7539
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;
    .locals 1

    .line 7454
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;
    .locals 1

    .line 7457
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7430
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7437
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7393
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7400
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7442
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7449
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7417
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7424
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7380
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7387
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7405
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7412
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
            ">;"
        }
    .end annotation

    .line 7545
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7485
    sget-object p2, Lgatewayprotocol/v1/InitializationRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7523
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 7517
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7502
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7504
    const-class p2, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    monitor-enter p2

    .line 7505
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7507
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7510
    sput-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->PARSER:Lcom/google/protobuf/Parser;

    .line 7512
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

    .line 7499
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object p1

    .line 7493
    :pswitch_4
    const-string p1, "\u0000\u0000"

    .line 7495
    sget-object p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {p3, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7490
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$1;)V

    return-object p1

    .line 7487
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;-><init>()V

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
