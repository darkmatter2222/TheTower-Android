.class public final Lcom/google/firestore/v1/AggregationResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AggregationResult.java"

# interfaces
.implements Lcom/google/firestore/v1/AggregationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/AggregationResult$Builder;,
        Lcom/google/firestore/v1/AggregationResult$AggregateFieldsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/AggregationResult;",
        "Lcom/google/firestore/v1/AggregationResult$Builder;",
        ">;",
        "Lcom/google/firestore/v1/AggregationResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final AGGREGATE_FIELDS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/AggregationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aggregateFields_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 489
    new-instance v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-direct {v0}, Lcom/google/firestore/v1/AggregationResult;-><init>()V

    .line 492
    sput-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    .line 493
    const-class v1, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->getMutableAggregateFieldsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 498
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method private getMutableAggregateFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetMutableAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableAggregateFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 242
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 245
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/AggregationResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/AggregationResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/AggregationResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/AggregationResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/AggregationResult;",
            ">;"
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsAggregateFields(Ljava/lang/String;)Z
    .locals 1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    sget-object p2, Lcom/google/firestore/v1/AggregationResult$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 482
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 476
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 461
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/AggregationResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 463
    const-class p2, Lcom/google/firestore/v1/AggregationResult;

    monitor-enter p2

    .line 464
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/AggregationResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 466
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 469
    sput-object p1, Lcom/google/firestore/v1/AggregationResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 471
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

    .line 458
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    return-object p1

    .line 448
    :pswitch_4
    const-string p1, "aggregateFields_"

    sget-object p2, Lcom/google/firestore/v1/AggregationResult$AggregateFieldsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 452
    const-string p2, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0001\u0000\u0000\u00022"

    .line 454
    sget-object p3, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/AggregationResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 445
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/AggregationResult$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/AggregationResult$Builder;-><init>(Lcom/google/firestore/v1/AggregationResult$1;)V

    return-object p1

    .line 442
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/AggregationResult;

    invoke-direct {p1}, Lcom/google/firestore/v1/AggregationResult;-><init>()V

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

.method public getAggregateFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsCount()I
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getAggregateFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 122
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getAggregateFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 143
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
