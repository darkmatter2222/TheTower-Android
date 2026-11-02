.class public final Lcom/google/firestore/v1/BatchGetDocumentsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BatchGetDocumentsResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/BatchGetDocumentsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;,
        Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

.field public static final FOUND_FIELD_NUMBER:I = 0x1

.field public static final MISSING_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private resultCase_:I

.field private result_:Ljava/lang/Object;

.field private transaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 832
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;-><init>()V

    .line 835
    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 836
    const-class v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 21
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearResult()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setFound(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->mergeFound(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearFound()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setMissing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearMissing()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setMissingBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearTransaction()V

    return-void
.end method

.method private clearFound()V
    .locals 2

    .line 131
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMissing()V
    .locals 2

    .line 210
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 357
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    return-void
.end method

.method private clearResult()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1

    .line 841
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method private mergeFound(Lcom/google/firestore/v1/Document;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 121
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 340
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 344
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 437
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 440
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 847
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFound(Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 103
    iput p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    return-void
.end method

.method private setMissing(Ljava/lang/String;)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 198
    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 199
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    return-void
.end method

.method private setMissingBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 226
    invoke-static {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 228
    iput p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 322
    iget p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 778
    sget-object p2, Lcom/google/firestore/v1/BatchGetDocumentsResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 825
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 819
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 804
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 806
    const-class p2, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    monitor-enter p2

    .line 807
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 809
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 812
    sput-object p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 814
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 801
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object p1

    .line 786
    :pswitch_4
    const-string v0, "result_"

    const-string v1, "resultCase_"

    const-string v2, "bitField0_"

    const-class v3, Lcom/google/firestore/v1/Document;

    const-string v4, "transaction_"

    const-string v5, "readTime_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 794
    const-string p2, "\u0000\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\n\u0004\u1009\u0000"

    .line 797
    sget-object p3, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 783
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;-><init>(Lcom/google/firestore/v1/BatchGetDocumentsResponse$1;)V

    return-object p1

    .line 780
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-direct {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;-><init>()V

    return-object p1

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

.method public getFound()Lcom/google/firestore/v1/Document;
    .locals 2

    .line 88
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0

    .line 91
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getMissing()Ljava/lang/String;
    .locals 2

    .line 163
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 166
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMissingBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 181
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_0
    const-string v0, ""

    .line 184
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->forNumber(I)Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasFound()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMissing()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 293
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
