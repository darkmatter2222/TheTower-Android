.class public final Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OperativeEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/OperativeEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperativeEventErrorData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;",
        "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

.field public static final ERROR_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final ERROR_TYPE_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private errorToken_:Lcom/google/protobuf/ByteString;

.field private errorType_:I

.field private message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 751
    new-instance v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-direct {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;-><init>()V

    .line 754
    sput-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    .line 755
    const-class v1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 336
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->message_:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1

    .line 330
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;I)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->setErrorTypeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->setErrorType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->clearErrorType()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;Ljava/lang/String;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->clearMessage()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->setErrorToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->clearErrorToken()V

    return-void
.end method

.method private clearErrorToken()V
    .locals 1

    .line 460
    iget v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->bitField0_:I

    .line 461
    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->getDefaultInstance()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearErrorType()V
    .locals 1

    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorType_:I

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 416
    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->getDefaultInstance()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->message_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1

    .line 760
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;
    .locals 1

    .line 541
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;
    .locals 1

    .line 544
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 480
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 467
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 492
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;",
            ">;"
        }
    .end annotation

    .line 766
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorToken(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    iget v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->bitField0_:I

    .line 454
    iput-object p1, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setErrorType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;)V
    .locals 0

    .line 371
    invoke-virtual {p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorType_:I

    return-void
.end method

.method private setErrorTypeValue(I)V
    .locals 0

    .line 364
    iput p1, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorType_:I

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    iput-object p1, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->message_:Ljava/lang/String;

    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 424
    invoke-static {p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 425
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->message_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 699
    sget-object p2, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 744
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 738
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 725
    const-class p2, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    monitor-enter p2

    .line 726
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 728
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 731
    sput-object p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->PARSER:Lcom/google/protobuf/Parser;

    .line 733
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

    .line 720
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    return-object p1

    .line 707
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "errorType_"

    const-string p3, "message_"

    const-string v0, "errorToken_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 713
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\u100a\u0000"

    .line 716
    sget-object p3, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 704
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;-><init>(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$1;)V

    return-object p1

    .line 701
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    invoke-direct {p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;-><init>()V

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

.method public getErrorToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 445
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getErrorType()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;
    .locals 1

    .line 356
    iget v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorType_:I

    invoke-static {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;->forNumber(I)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;->UNRECOGNIZED:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;

    :cond_0
    return-object v0
.end method

.method public getErrorTypeValue()I
    .locals 1

    .line 348
    iget v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->errorType_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 399
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorToken()Z
    .locals 2

    .line 437
    iget v0, p0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
