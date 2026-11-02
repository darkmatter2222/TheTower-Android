.class public final Lcom/google/firestore/v1/Target$PipelineQueryTarget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$PipelineQueryTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PipelineQueryTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;,
        Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target$PipelineQueryTarget;",
        "Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$PipelineQueryTargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$PipelineQueryTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_PIPELINE_FIELD_NUMBER:I = 0x1


# instance fields
.field private pipelineTypeCase_:I

.field private pipelineType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1601
    new-instance v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;-><init>()V

    .line 1604
    sput-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 1605
    const-class v1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1246
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1248
    iput v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    return-void
.end method

.method static synthetic access$1600()Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1

    .line 1241
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 0

    .line 1241
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->clearPipelineType()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/Target$PipelineQueryTarget;Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/Target$PipelineQueryTarget;Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->mergeStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 0

    .line 1241
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->clearStructuredPipeline()V

    return-void
.end method

.method private clearPipelineType()V
    .locals 1

    const/4 v0, 0x0

    .line 1285
    iput v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    const/4 v0, 0x0

    .line 1286
    iput-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    return-void
.end method

.method private clearStructuredPipeline()V
    .locals 2

    .line 1353
    iget v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1354
    iput v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    const/4 v0, 0x0

    .line 1355
    iput-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1

    .line 1610
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object v0
.end method

.method private mergeStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 3

    .line 1335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    iget v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    .line 1337
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->getDefaultInstance()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->newBuilder(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;

    move-result-object v0

    .line 1339
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredPipeline$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    goto :goto_0

    .line 1341
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    .line 1343
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 1

    .line 1436
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 1

    .line 1439
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1412
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1375
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1382
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1424
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1406
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1362
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1369
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1387
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1394
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$PipelineQueryTarget;",
            ">;"
        }
    .end annotation

    .line 1616
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 0

    .line 1323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1324
    iput-object p1, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1325
    iput p1, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1551
    sget-object p2, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1594
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1588
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1573
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1575
    const-class p2, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    monitor-enter p2

    .line 1576
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1578
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1581
    sput-object p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 1583
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

    .line 1570
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object p1

    .line 1559
    :pswitch_4
    const-string p1, "pipelineType_"

    const-string p2, "pipelineTypeCase_"

    const-class p3, Lcom/google/firestore/v1/StructuredPipeline;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 1564
    const-string p2, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000"

    .line 1566
    sget-object p3, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1556
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object p1

    .line 1553
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-direct {p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;-><init>()V

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

.method public getPipelineTypeCase()Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 1

    .line 1280
    iget v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 2

    .line 1310
    iget v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object v0

    .line 1313
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->getDefaultInstance()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredPipeline()Z
    .locals 2

    .line 1299
    iget v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->pipelineTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
