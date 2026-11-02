.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aggregation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$AvgOrBuilder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$SumOrBuilder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$CountOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALIAS_FIELD_NUMBER:I = 0x7

.field public static final AVG_FIELD_NUMBER:I = 0x3

.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUM_FIELD_NUMBER:I = 0x2


# instance fields
.field private alias_:Ljava/lang/String;

.field private operatorCase_:I

.field private operator_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2637
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;-><init>()V

    .line 2640
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2641
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1516
    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1

    .line 181
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearOperator()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->mergeCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->mergeSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearSum()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->mergeAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearAvg()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Ljava/lang/String;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setAlias(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearAlias()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setAliasBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAlias()V
    .locals 1

    .line 1957
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    return-void
.end method

.method private clearAvg()V
    .locals 2

    .line 1765
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1766
    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v0, 0x0

    .line 1767
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCount()V
    .locals 2

    .line 1625
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1626
    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v0, 0x0

    .line 1627
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperator()V
    .locals 1

    const/4 v0, 0x0

    .line 1557
    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v0, 0x0

    .line 1558
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    return-void
.end method

.method private clearSum()V
    .locals 2

    .line 1695
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1696
    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v0, 0x0

    .line 1697
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1

    .line 2646
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method private mergeAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 3

    .line 1747
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1748
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1749
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    move-result-object v0

    .line 1751
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    goto :goto_0

    .line 1753
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1755
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    return-void
.end method

.method private mergeCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 3

    .line 1607
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1608
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1609
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    move-result-object v0

    .line 1611
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    goto :goto_0

    .line 1613
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1615
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    return-void
.end method

.method private mergeSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 3

    .line 1677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1678
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1679
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    move-result-object v0

    .line 1681
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    goto :goto_0

    .line 1683
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1685
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 2085
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 2088
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2061
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2068
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2024
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2031
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2048
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2055
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2011
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2018
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2036
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2043
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation

    .line 2652
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlias(Ljava/lang/String;)V
    .locals 0

    .line 1910
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1912
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    return-void
.end method

.method private setAliasBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2003
    invoke-static {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2004
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    return-void
.end method

.method private setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 0

    .line 1735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1736
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1737
    iput p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    return-void
.end method

.method private setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 0

    .line 1595
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1596
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1597
    iput p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    return-void
.end method

.method private setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 0

    .line 1665
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1666
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1667
    iput p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2583
    sget-object p2, Lcom/google/firestore/v1/StructuredAggregationQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2630
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2624
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2609
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2611
    const-class p2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    monitor-enter p2

    .line 2612
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2614
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2617
    sput-object p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->PARSER:Lcom/google/protobuf/Parser;

    .line 2619
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

    .line 2606
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object p1

    .line 2591
    :pswitch_4
    const-string v0, "operator_"

    const-string v1, "operatorCase_"

    const-class v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    const-class v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    const-class v4, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    const-string v5, "alias_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 2599
    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0007\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0007\u0208"

    .line 2602
    sget-object p3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2588
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;-><init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V

    return-object p1

    .line 2585
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;-><init>()V

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

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    return-object v0
.end method

.method public getAliasBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAvg()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;
    .locals 2

    .line 1722
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    return-object v0

    .line 1725
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    move-result-object v0

    return-object v0
.end method

.method public getCount()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 2

    .line 1582
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0

    .line 1585
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorCase()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1

    .line 1552
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->forNumber(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    move-result-object v0

    return-object v0
.end method

.method public getSum()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 2

    .line 1652
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0

    .line 1655
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    move-result-object v0

    return-object v0
.end method

.method public hasAvg()Z
    .locals 2

    .line 1711
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCount()Z
    .locals 2

    .line 1571
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSum()Z
    .locals 2

    .line 1641
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
