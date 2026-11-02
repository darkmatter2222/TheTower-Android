.class public final Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WebviewConfiguration.java"

# interfaces
.implements Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/WebviewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;",
        "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;",
        ">;",
        "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfigurationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDITIONAL_FILES_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entryPoint_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 891
    new-instance v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-direct {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;-><init>()V

    .line 894
    sput-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 895
    const-class v1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->entryPoint_:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 122
    iput-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->type_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1

    .line 114
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->addAdditionalFilesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->clearType()V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->setEntryPoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->clearEntryPoint()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->setEntryPointBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;ILjava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->setAdditionalFiles(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->addAdditionalFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/Iterable;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->addAllAdditionalFiles(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->clearAdditionalFiles()V

    return-void
.end method

.method private addAdditionalFiles(Ljava/lang/String;)V
    .locals 1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->ensureAdditionalFilesIsMutable()V

    .line 317
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAdditionalFilesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 353
    invoke-static {p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 354
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->ensureAdditionalFilesIsMutable()V

    .line 355
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAdditionalFiles(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->ensureAdditionalFilesIsMutable()V

    .line 330
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearAdditionalFiles()V
    .locals 1

    .line 341
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearEntryPoint()V
    .locals 1

    .line 212
    invoke-static {}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 408
    invoke-static {}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->type_:Ljava/lang/String;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->version_:I

    return-void
.end method

.method private ensureAdditionalFilesIsMutable()V
    .locals 2

    .line 284
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 285
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1

    .line 900
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 502
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 505
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 441
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 448
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 428
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 435
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 453
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 460
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;",
            ">;"
        }
    .end annotation

    .line 906
    sget-object v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdditionalFiles(ILjava/lang/String;)V
    .locals 1

    .line 301
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->ensureAdditionalFilesIsMutable()V

    .line 303
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEntryPoint(Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    iput-object p1, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private setEntryPointBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 224
    invoke-static {p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    iput-object p1, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 420
    invoke-static {p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 421
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->type_:Ljava/lang/String;

    return-void
.end method

.method private setVersion(I)V
    .locals 0

    .line 148
    iput p1, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 839
    sget-object p2, Lgatewayprotocol/v1/WebviewConfiguration$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 884
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 878
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 863
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 865
    const-class p2, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    monitor-enter p2

    .line 866
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 868
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 871
    sput-object p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 873
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

    .line 860
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    return-object p1

    .line 847
    :pswitch_4
    const-string p1, "version_"

    const-string p2, "entryPoint_"

    const-string p3, "additionalFiles_"

    const-string v0, "type_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 853
    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0004\u0002\u0208\u0003\u021a\u0004\u0208"

    .line 856
    sget-object p3, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 844
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;-><init>(Lgatewayprotocol/v1/WebviewConfiguration$1;)V

    return-object p1

    .line 841
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-direct {p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;-><init>()V

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

.method public getAdditionalFiles(I)Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdditionalFilesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 280
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 281
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdditionalFilesCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->entryPoint_:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryPointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 187
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->entryPoint_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 383
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 136
    iget v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->version_:I

    return v0
.end method
