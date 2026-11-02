.class public final Lcom/google/firestore/bundle/BundledDocumentMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BundledDocumentMetadata.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundledDocumentMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
        "Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundledDocumentMetadataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

.field public static final EXISTS_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERIES_FIELD_NUMBER:I = 0x4

.field public static final READ_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private exists_:Z

.field private name_:Ljava/lang/String;

.field private queries_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 793
    new-instance v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;-><init>()V

    .line 796
    sput-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 797
    const-class v1, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->addQueries(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->addAllQueries(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearQueries()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->addQueriesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearReadTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/BundledDocumentMetadata;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setExists(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearExists()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/BundledDocumentMetadata;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setQueries(ILjava/lang/String;)V

    return-void
.end method

.method private addAllQueries(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 296
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addQueries(Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 283
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addQueriesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 319
    invoke-static {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 320
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 321
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExists()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->exists_:Z

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearQueries()V
    .locals 1

    .line 307
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearReadTime()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 154
    iget v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    return-void
.end method

.method private ensureQueriesIsMutable()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 251
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1

    .line 802
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 140
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 144
    :goto_0
    iget p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 401
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 404
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
            ">;"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExists(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->exists_:Z

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    return-void
.end method

.method private setQueries(ILjava/lang/String;)V
    .locals 1

    .line 267
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 269
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 125
    iget p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 740
    sget-object p2, Lcom/google/firestore/bundle/BundledDocumentMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 786
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 780
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 765
    :pswitch_2
    sget-object p1, Lcom/google/firestore/bundle/BundledDocumentMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 767
    const-class p2, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    monitor-enter p2

    .line 768
    :try_start_0
    sget-object p1, Lcom/google/firestore/bundle/BundledDocumentMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 770
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 773
    sput-object p1, Lcom/google/firestore/bundle/BundledDocumentMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 775
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

    .line 762
    :pswitch_3
    sget-object p1, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object p1

    .line 748
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "name_"

    const-string p3, "readTime_"

    const-string v0, "exists_"

    const-string v1, "queries_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 755
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u0007\u0004\u021a"

    .line 758
    sget-object p3, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 745
    :pswitch_5
    new-instance p1, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;-><init>(Lcom/google/firestore/bundle/BundledDocumentMetadata$1;)V

    return-object p1

    .line 742
    :pswitch_6
    new-instance p1, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;-><init>()V

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

.method public getExists()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->exists_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueries(I)Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getQueriesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 247
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 246
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getQueriesCount()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getQueriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 102
    iget v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
