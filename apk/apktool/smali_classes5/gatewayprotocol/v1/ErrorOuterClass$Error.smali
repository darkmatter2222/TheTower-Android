.class public final Lgatewayprotocol/v1/ErrorOuterClass$Error;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ErrorOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x3

.field public static final ERROR_TEXT_FIELD_NUMBER:I = 0x2

.field public static final ERROR_TOKEN_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode_:I

.field private errorText_:Ljava/lang/String;

.field private errorToken_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 990
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-direct {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;-><init>()V

    .line 993
    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 994
    const-class v1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 482
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    .line 484
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 477
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/ErrorOuterClass$Error;Ljava/lang/String;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 477
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->clearErrorText()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/ErrorOuterClass$Error;I)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorCodeValue(I)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 477
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->clearErrorCode()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 477
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->clearErrorToken()V

    return-void
.end method

.method private clearErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 612
    iput v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return-void
.end method

.method private clearErrorText()V
    .locals 1

    .line 536
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-void
.end method

.method private clearErrorToken()V
    .locals 1

    .line 651
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 999
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 731
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 734
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 670
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 677
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 657
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 664
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 682
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 689
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
            ">;"
        }
    .end annotation

    .line 1005
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V
    .locals 0

    .line 600
    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return-void
.end method

.method private setErrorCodeValue(I)V
    .locals 0

    .line 589
    iput p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return-void
.end method

.method private setErrorText(Ljava/lang/String;)V
    .locals 0

    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    iput-object p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-void
.end method

.method private setErrorTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 548
    invoke-static {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-void
.end method

.method private setErrorToken(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 638
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    iput-object p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 939
    sget-object p2, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 983
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 977
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 962
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 964
    const-class p2, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    monitor-enter p2

    .line 965
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 967
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 970
    sput-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 972
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

    .line 959
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p1

    .line 947
    :pswitch_4
    const-string p1, "errorText_"

    const-string p2, "errorCode_"

    const-string p3, "errorToken_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 952
    const-string p2, "\u0000\u0003\u0000\u0000\u0002\u0004\u0003\u0000\u0000\u0000\u0002\u0208\u0003\u000c\u0004\n"

    .line 955
    sget-object p3, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 944
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$1;)V

    return-object p1

    .line 941
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-direct {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;-><init>()V

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

.method public getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .locals 1

    .line 577
    iget v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->UNRECOGNIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    :cond_0
    return-object v0
.end method

.method public getErrorCodeValue()I
    .locals 1

    .line 565
    iget v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 511
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 627
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
