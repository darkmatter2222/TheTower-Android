.class public final Lcom/google/firestore/v1/TargetChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TargetChange.java"

# interfaces
.implements Lcom/google/firestore/v1/TargetChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/TargetChange$TargetChangeType;,
        Lcom/google/firestore/v1/TargetChange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/TargetChange;",
        "Lcom/google/firestore/v1/TargetChange$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetChangeOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAUSE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TargetChange;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_CHANGE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private cause_:Lcom/google/rpc/Status;

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private resumeToken_:Lcom/google/protobuf/ByteString;

.field private targetChangeType_:I

.field private targetIdsMemoizedSerializedSize:I

.field private targetIds_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1218
    new-instance v0, Lcom/google/firestore/v1/TargetChange;

    invoke-direct {v0}, Lcom/google/firestore/v1/TargetChange;-><init>()V

    .line 1221
    sput-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    .line 1222
    const-class v1, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 320
    iput v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIdsMemoizedSerializedSize:I

    .line 20
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/TargetChange;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/TargetChange;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->setTargetChangeTypeValue(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/TargetChange;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->clearCause()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/TargetChange;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->clearResumeToken()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/TargetChange;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/TargetChange;Lcom/google/firestore/v1/TargetChange$TargetChangeType;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->setTargetChangeType(Lcom/google/firestore/v1/TargetChange$TargetChangeType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/TargetChange;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->clearTargetChangeType()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/TargetChange;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/TargetChange;->setTargetIds(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/TargetChange;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->addTargetIds(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/TargetChange;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->addAllTargetIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/TargetChange;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->clearTargetIds()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->setCause(Lcom/google/rpc/Status;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TargetChange;->mergeCause(Lcom/google/rpc/Status;)V

    return-void
.end method

.method private addAllTargetIds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->ensureTargetIdsIsMutable()V

    .line 377
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTargetIds(I)V
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->ensureTargetIdsIsMutable()V

    .line 360
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearCause()V
    .locals 1

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    .line 458
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    return-void
.end method

.method private clearReadTime()V
    .locals 1

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 617
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    return-void
.end method

.method private clearResumeToken()V
    .locals 1

    .line 506
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->getDefaultInstance()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTargetChangeType()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/google/firestore/v1/TargetChange;->targetChangeType_:I

    return-void
.end method

.method private clearTargetIds()V
    .locals 1

    .line 392
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureTargetIdsIsMutable()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 323
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/TargetChange;
    .locals 1

    .line 1227
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    return-object v0
.end method

.method private mergeCause(Lcom/google/rpc/Status;)V
    .locals 2

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    .line 444
    invoke-static {v0}, Lcom/google/rpc/Status;->newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Status$Builder;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Status;

    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    goto :goto_0

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    .line 448
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 592
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 594
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 596
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 598
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 697
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TargetChange$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 700
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/TargetChange;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/TargetChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/TargetChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 636
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 643
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 623
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TargetChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 655
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/TargetChange;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TargetChange;",
            ">;"
        }
    .end annotation

    .line 1233
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCause(Lcom/google/rpc/Status;)V
    .locals 0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    .line 429
    iget p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 570
    iget p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    return-void
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    iput-object p1, p0, Lcom/google/firestore/v1/TargetChange;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTargetChangeType(Lcom/google/firestore/v1/TargetChange$TargetChangeType;)V
    .locals 0

    .line 253
    invoke-virtual {p1}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/TargetChange;->targetChangeType_:I

    return-void
.end method

.method private setTargetChangeTypeValue(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/google/firestore/v1/TargetChange;->targetChangeType_:I

    return-void
.end method

.method private setTargetIds(II)V
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange;->ensureTargetIdsIsMutable()V

    .line 344
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1164
    sget-object p2, Lcom/google/firestore/v1/TargetChange$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1211
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1205
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1190
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/TargetChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1192
    const-class p2, Lcom/google/firestore/v1/TargetChange;

    monitor-enter p2

    .line 1193
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/TargetChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1195
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1198
    sput-object p1, Lcom/google/firestore/v1/TargetChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 1200
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

    .line 1187
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    return-object p1

    .line 1172
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "targetChangeType_"

    const-string v2, "targetIds_"

    const-string v3, "cause_"

    const-string v4, "resumeToken_"

    const-string v5, "readTime_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1180
    const-string p2, "\u0000\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0001\u0000\u0001\u000c\u0002\'\u0003\u1009\u0000\u0004\n\u0006\u1009\u0001"

    .line 1183
    sget-object p3, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/TargetChange;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1169
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/TargetChange$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/TargetChange$Builder;-><init>(Lcom/google/firestore/v1/TargetChange$1;)V

    return-object p1

    .line 1166
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/TargetChange;

    invoke-direct {p1}, Lcom/google/firestore/v1/TargetChange;-><init>()V

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

.method public getCause()Lcom/google/rpc/Status;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1

    .line 230
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->targetChangeType_:I

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->forNumber(I)Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->UNRECOGNIZED:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    :cond_0
    return-object v0
.end method

.method public getTargetChangeTypeValue()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->targetChangeType_:I

    return v0
.end method

.method public getTargetIds(I)I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTargetIdsCount()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public hasCause()Z
    .locals 2

    .line 406
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 529
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
