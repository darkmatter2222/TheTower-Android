.class public final Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$CompositeFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositeFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;,
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;",
        "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$CompositeFilterOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

.field public static final FILTERS_FIELD_NUMBER:I = 0x2

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filters_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private op_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2232
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;-><init>()V

    .line 2235
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 2236
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1436
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1437
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1900()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1

    .line 1431
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;I)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->setOpValue(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->setOp(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V
    .locals 0

    .line 1431
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->clearOp()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;ILcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->setFilters(ILcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->addFilters(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;ILcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->addFilters(ILcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;Ljava/lang/Iterable;)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->addAllFilters(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V
    .locals 0

    .line 1431
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->clearFilters()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;I)V
    .locals 0

    .line 1431
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->removeFilters(I)V

    return-void
.end method

.method private addAllFilters(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;",
            ">;)V"
        }
    .end annotation

    .line 1775
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->ensureFiltersIsMutable()V

    .line 1776
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addFilters(ILcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 1

    .line 1758
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1759
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->ensureFiltersIsMutable()V

    .line 1760
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFilters(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 1

    .line 1741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1742
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->ensureFiltersIsMutable()V

    .line 1743
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFilters()V
    .locals 1

    .line 1791
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOp()V
    .locals 1

    const/4 v0, 0x0

    .line 1624
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->op_:I

    return-void
.end method

.method private ensureFiltersIsMutable()V
    .locals 2

    .line 1705
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1706
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1708
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1

    .line 2241
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;
    .locals 1

    .line 1886
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;
    .locals 1

    .line 1889
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1862
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1869
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1825
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1832
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1874
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1881
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1849
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1856
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1812
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1819
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1837
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1844
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;",
            ">;"
        }
    .end annotation

    .line 2247
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFilters(I)V
    .locals 1

    .line 1805
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->ensureFiltersIsMutable()V

    .line 1806
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFilters(ILcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 1

    .line 1725
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1726
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->ensureFiltersIsMutable()V

    .line 1727
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOp(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;)V
    .locals 0

    .line 1612
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->op_:I

    return-void
.end method

.method private setOpValue(I)V
    .locals 0

    .line 1601
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->op_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2181
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2225
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2219
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2204
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2206
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    monitor-enter p2

    .line 2207
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2209
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2212
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 2214
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

    .line 2201
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object p1

    .line 2189
    :pswitch_4
    const-string p1, "op_"

    const-string p2, "filters_"

    const-class p3, Lcom/google/firestore/v1/StructuredQuery$Filter;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 2194
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000c\u0002\u001b"

    .line 2197
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2186
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 2183
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;-><init>()V

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

.method public getFilters(I)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object p1
.end method

.method public getFiltersCount()I
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFiltersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;",
            ">;"
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFiltersOrBuilder(I)Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;

    return-object p1
.end method

.method public getFiltersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->filters_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOp()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
    .locals 1

    .line 1589
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->op_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1590
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    :cond_0
    return-object v0
.end method

.method public getOpValue()I
    .locals 1

    .line 1577
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->op_:I

    return v0
.end method
