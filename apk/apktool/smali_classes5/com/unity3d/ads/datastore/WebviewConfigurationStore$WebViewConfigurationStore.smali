.class public final Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WebviewConfigurationStore.java"

# interfaces
.implements Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStoreOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/datastore/WebviewConfigurationStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewConfigurationStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;",
        "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;",
        ">;",
        "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStoreOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDITIONAL_FILES_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;",
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

    .line 883
    new-instance v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-direct {v0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;-><init>()V

    .line 886
    sput-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    .line 887
    const-class v1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->entryPoint_:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 118
    iput-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->type_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1

    .line 110
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->addAdditionalFilesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->clearType()V

    return-void
.end method

.method static synthetic access$1300(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->setEntryPoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->clearEntryPoint()V

    return-void
.end method

.method static synthetic access$500(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->setEntryPointBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;ILjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->setAdditionalFiles(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->addAdditionalFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;Ljava/lang/Iterable;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->addAllAdditionalFiles(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->clearAdditionalFiles()V

    return-void
.end method

.method private addAdditionalFiles(Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->ensureAdditionalFilesIsMutable()V

    .line 313
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAdditionalFilesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 349
    invoke-static {p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 350
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->ensureAdditionalFilesIsMutable()V

    .line 351
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 325
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->ensureAdditionalFilesIsMutable()V

    .line 326
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearAdditionalFiles()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearEntryPoint()V
    .locals 1

    .line 208
    invoke-static {}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->getDefaultInstance()Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 404
    invoke-static {}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->getDefaultInstance()Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->type_:Ljava/lang/String;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->version_:I

    return-void
.end method

.method private ensureAdditionalFilesIsMutable()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 281
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1

    .line 892
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object v0
.end method

.method public static newBuilder()Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;
    .locals 1

    .line 498
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;
    .locals 1

    .line 501
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 437
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;",
            ">;"
        }
    .end annotation

    .line 898
    sget-object v0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdditionalFiles(ILjava/lang/String;)V
    .locals 1

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->ensureAdditionalFilesIsMutable()V

    .line 299
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEntryPoint(Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    iput-object p1, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private setEntryPointBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 220
    invoke-static {p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 221
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    iput-object p1, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 416
    invoke-static {p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 417
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->type_:Ljava/lang/String;

    return-void
.end method

.method private setVersion(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 831
    sget-object p2, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 876
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 870
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 855
    :pswitch_2
    sget-object p1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 857
    const-class p2, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    monitor-enter p2

    .line 858
    :try_start_0
    sget-object p1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 860
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 863
    sput-object p1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->PARSER:Lcom/google/protobuf/Parser;

    .line 865
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

    .line 852
    :pswitch_3
    sget-object p1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    return-object p1

    .line 839
    :pswitch_4
    const-string p1, "version_"

    const-string p2, "entryPoint_"

    const-string p3, "additionalFiles_"

    const-string v0, "type_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 845
    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0004\u0002\u0208\u0003\u021a\u0004\u0208"

    .line 848
    sget-object p3, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-static {p3, p2, p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 836
    :pswitch_5
    new-instance p1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;

    invoke-direct {p1, p2}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore$Builder;-><init>(Lcom/unity3d/ads/datastore/WebviewConfigurationStore$1;)V

    return-object p1

    .line 833
    :pswitch_6
    new-instance p1, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;

    invoke-direct {p1}, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;-><init>()V

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

    .line 262
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdditionalFilesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 277
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 276
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdditionalFilesCount()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 237
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->additionalFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->entryPoint_:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryPointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->entryPoint_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;->version_:I

    return v0
.end method
