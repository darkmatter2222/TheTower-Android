.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestTimeoutPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicyOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT_MS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

.field public static final OVERALL_TIMEOUT_MS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIMEOUT_MS_FIELD_NUMBER:I = 0x2

.field public static final WRITE_TIMEOUT_MS_FIELD_NUMBER:I = 0x3


# instance fields
.field private connectTimeoutMs_:I

.field private overallTimeoutMs_:I

.field private readTimeoutMs_:I

.field private writeTimeoutMs_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1864
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;-><init>()V

    .line 1867
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    .line 1868
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1372
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1

    .line 1367
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object v0
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .locals 0

    .line 1367
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setConnectTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .locals 0

    .line 1367
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearConnectTimeoutMs()V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .locals 0

    .line 1367
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setReadTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .locals 0

    .line 1367
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearReadTimeoutMs()V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .locals 0

    .line 1367
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setWriteTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .locals 0

    .line 1367
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearWriteTimeoutMs()V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .locals 0

    .line 1367
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setOverallTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .locals 0

    .line 1367
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearOverallTimeoutMs()V

    return-void
.end method

.method private clearConnectTimeoutMs()V
    .locals 1

    const/4 v0, 0x0

    .line 1412
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->connectTimeoutMs_:I

    return-void
.end method

.method private clearOverallTimeoutMs()V
    .locals 1

    const/4 v0, 0x0

    .line 1532
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->overallTimeoutMs_:I

    return-void
.end method

.method private clearReadTimeoutMs()V
    .locals 1

    const/4 v0, 0x0

    .line 1453
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->readTimeoutMs_:I

    return-void
.end method

.method private clearWriteTimeoutMs()V
    .locals 1

    const/4 v0, 0x0

    .line 1491
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->writeTimeoutMs_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1

    .line 1873
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;
    .locals 1

    .line 1612
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;
    .locals 1

    .line 1615
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1588
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1595
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1551
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1558
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1600
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1575
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1582
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1538
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1545
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1563
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1570
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
            ">;"
        }
    .end annotation

    .line 1879
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConnectTimeoutMs(I)V
    .locals 0

    .line 1400
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->connectTimeoutMs_:I

    return-void
.end method

.method private setOverallTimeoutMs(I)V
    .locals 0

    .line 1520
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->overallTimeoutMs_:I

    return-void
.end method

.method private setReadTimeoutMs(I)V
    .locals 0

    .line 1441
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->readTimeoutMs_:I

    return-void
.end method

.method private setWriteTimeoutMs(I)V
    .locals 0

    .line 1480
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->writeTimeoutMs_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1812
    sget-object p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1857
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1851
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1836
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1838
    const-class p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    monitor-enter p2

    .line 1839
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1841
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1844
    sput-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->PARSER:Lcom/google/protobuf/Parser;

    .line 1846
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

    .line 1833
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p1

    .line 1820
    :pswitch_4
    const-string p1, "connectTimeoutMs_"

    const-string p2, "readTimeoutMs_"

    const-string p3, "writeTimeoutMs_"

    const-string v0, "overallTimeoutMs_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 1826
    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004"

    .line 1829
    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1817
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V

    return-object p1

    .line 1814
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-direct {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;-><init>()V

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

.method public getConnectTimeoutMs()I
    .locals 1

    .line 1387
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->connectTimeoutMs_:I

    return v0
.end method

.method public getOverallTimeoutMs()I
    .locals 1

    .line 1507
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->overallTimeoutMs_:I

    return v0
.end method

.method public getReadTimeoutMs()I
    .locals 1

    .line 1428
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->readTimeoutMs_:I

    return v0
.end method

.method public getWriteTimeoutMs()I
    .locals 1

    .line 1468
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->writeTimeoutMs_:I

    return v0
.end method
