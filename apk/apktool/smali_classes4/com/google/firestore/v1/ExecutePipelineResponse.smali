.class public final Lcom/google/firestore/v1/ExecutePipelineResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExecutePipelineResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ExecutePipelineResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ExecutePipelineResponse;",
        "Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExecutePipelineResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

.field public static final EXECUTION_TIME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExecutePipelineResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULTS_FIELD_NUMBER:I = 0x2

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private executionTime_:Lcom/google/protobuf/Timestamp;

.field private results_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private transaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1025
    new-instance v0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;-><init>()V

    .line 1028
    sput-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    .line 1029
    const-class v1, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 21
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->mergeExecutionTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ExecutePipelineResponse;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->clearExecutionTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ExecutePipelineResponse;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->clearTransaction()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ExecutePipelineResponse;ILcom/google/firestore/v1/Document;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/ExecutePipelineResponse;->setResults(ILcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->addResults(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ExecutePipelineResponse;ILcom/google/firestore/v1/Document;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/ExecutePipelineResponse;->addResults(ILcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ExecutePipelineResponse;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->addAllResults(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ExecutePipelineResponse;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->clearResults()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ExecutePipelineResponse;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->removeResults(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ExecutePipelineResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->setExecutionTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method private addAllResults(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Document;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->ensureResultsIsMutable()V

    .line 275
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addResults(ILcom/google/firestore/v1/Document;)V
    .locals 1

    .line 251
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->ensureResultsIsMutable()V

    .line 253
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addResults(Lcom/google/firestore/v1/Document;)V
    .locals 1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->ensureResultsIsMutable()V

    .line 230
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExecutionTime()V
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    .line 423
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    return-void
.end method

.method private clearResults()V
    .locals 1

    .line 296
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getDefaultInstance()Lcom/google/firestore/v1/ExecutePipelineResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureResultsIsMutable()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 181
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1

    .line 1034
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object v0
.end method

.method private mergeExecutionTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    .line 401
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 403
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    .line 405
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1

    .line 503
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ExecutePipelineResponse;)Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;
    .locals 1

    .line 506
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExecutePipelineResponse;",
            ">;"
        }
    .end annotation

    .line 1040
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeResults(I)V
    .locals 1

    .line 316
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->ensureResultsIsMutable()V

    .line 317
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setExecutionTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    .line 378
    iget p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    return-void
.end method

.method private setResults(ILcom/google/firestore/v1/Document;)V
    .locals 1

    .line 206
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineResponse;->ensureResultsIsMutable()V

    .line 208
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 972
    sget-object p2, Lcom/google/firestore/v1/ExecutePipelineResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1018
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1012
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 997
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ExecutePipelineResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 999
    const-class p2, Lcom/google/firestore/v1/ExecutePipelineResponse;

    monitor-enter p2

    .line 1000
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ExecutePipelineResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1002
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1005
    sput-object p1, Lcom/google/firestore/v1/ExecutePipelineResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1007
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

    .line 994
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    return-object p1

    .line 980
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "transaction_"

    const-string p3, "results_"

    const-class v0, Lcom/google/firestore/v1/Document;

    const-string v1, "executionTime_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 987
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\u001b\u0003\u1009\u0000"

    .line 990
    sget-object p3, Lcom/google/firestore/v1/ExecutePipelineResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 977
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/ExecutePipelineResponse$Builder;-><init>(Lcom/google/firestore/v1/ExecutePipelineResponse$1;)V

    return-object p1

    .line 974
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ExecutePipelineResponse;

    invoke-direct {p1}, Lcom/google/firestore/v1/ExecutePipelineResponse;-><init>()V

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

.method public getExecutionTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->executionTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResults(I)Lcom/google/firestore/v1/Document;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document;

    return-object p1
.end method

.method public getResultsCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getResultsOrBuilder(I)Lcom/google/firestore/v1/DocumentOrBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentOrBuilder;

    return-object p1
.end method

.method public getResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/DocumentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->results_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasExecutionTime()Z
    .locals 2

    .line 339
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
