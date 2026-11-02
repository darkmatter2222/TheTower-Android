.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestUrlOverride"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TYPE_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private requestType_:I

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 887
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;-><init>()V

    .line 890
    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    .line 891
    const-class v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->clearUrl()V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1

    .line 541
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object v0
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;I)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setRequestTypeValue(I)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->clearRequestType()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Ljava/lang/String;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private clearRequestType()V
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return-void
.end method

.method private clearUrl()V
    .locals 1

    .line 625
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1

    .line 896
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .locals 1

    .line 715
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .locals 1

    .line 718
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 661
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 666
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 673
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation

    .line 902
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V
    .locals 0

    .line 580
    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return-void
.end method

.method private setRequestTypeValue(I)V
    .locals 0

    .line 573
    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 0

    .line 616
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 633
    invoke-static {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 634
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 837
    sget-object p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 880
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 874
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 859
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 861
    const-class p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    monitor-enter p2

    .line 862
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 864
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 867
    sput-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->PARSER:Lcom/google/protobuf/Parser;

    .line 869
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

    .line 856
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p1

    .line 845
    :pswitch_4
    const-string p1, "requestType_"

    const-string p2, "url_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 849
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u0208"

    .line 852
    sget-object p3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 842
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V

    return-object p1

    .line 839
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;-><init>()V

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

.method public getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .locals 1

    .line 565
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->forNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->UNRECOGNIZED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    :cond_0
    return-object v0
.end method

.method public getRequestTypeValue()I
    .locals 1

    .line 557
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 608
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
