.class public final Lcom/google/firestore/v1/RunAggregationQueryRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RunAggregationQueryRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;,
        Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;,
        Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

.field public static final NEW_TRANSACTION_FIELD_NUMBER:I = 0x5

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final STRUCTURED_AGGREGATION_QUERY_FIELD_NUMBER:I = 0x2

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x4


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1108
    new-instance v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;-><init>()V

    .line 1111
    sput-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    .line 1112
    const-class v1, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    .line 63
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearQueryType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearTransaction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearNewTransaction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/RunAggregationQueryRequest;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearParent()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->mergeStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearStructuredAggregationQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    return-void
.end method

.method private clearNewTransaction()V
    .locals 2

    .line 412
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 413
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 178
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method private clearQueryType()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 502
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStructuredAggregationQuery()V
    .locals 2

    .line 264
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 327
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1

    .line 1117
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object v0
.end method

.method private mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 3

    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 393
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->newBuilder(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/TransactionOptions$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/TransactionOptions$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 399
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3

    .line 480
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 482
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 483
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 484
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 488
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private mergeStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 3

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    goto :goto_0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    .line 254
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 585
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/RunAggregationQueryRequest;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 588
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            ">;"
        }
    .end annotation

    .line 1123
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 378
    iput p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 195
    invoke-static {p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 196
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 464
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 466
    iput p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 236
    iput p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    .line 314
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    .line 315
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1052
    sget-object p2, Lcom/google/firestore/v1/RunAggregationQueryRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1095
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1080
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1082
    const-class p2, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    monitor-enter p2

    .line 1083
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1085
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1088
    sput-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1090
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

    .line 1077
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p1

    .line 1060
    :pswitch_4
    const-string v0, "queryType_"

    const-string v1, "queryTypeCase_"

    const-string v2, "consistencySelector_"

    const-string v3, "consistencySelectorCase_"

    const-string v4, "parent_"

    const-class v5, Lcom/google/firestore/v1/StructuredAggregationQuery;

    const-class v6, Lcom/google/firestore/v1/TransactionOptions;

    const-class v7, Lcom/google/protobuf/Timestamp;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 1070
    const-string p2, "\u0000\u0005\u0002\u0000\u0001\u0006\u0005\u0000\u0000\u0000\u0001\u0208\u0002<\u0000\u0004=\u0001\u0005<\u0001\u0006<\u0001"

    .line 1073
    sget-object p3, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1057
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;-><init>(Lcom/google/firestore/v1/RunAggregationQueryRequest$1;)V

    return-object p1

    .line 1054
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-direct {p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;-><init>()V

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

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 2

    .line 360
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0

    .line 363
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;->forNumber(I)Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 447
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 450
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredAggregationQuery()Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 2

    .line 221
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0

    .line 224
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 297
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 300
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 2

    .line 346
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 432
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStructuredAggregationQuery()Z
    .locals 2

    .line 210
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransaction()Z
    .locals 2

    .line 283
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
