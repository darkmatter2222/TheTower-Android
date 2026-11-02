.class public final Lcom/google/firestore/v1/DocumentChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentChange.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentChange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentChange;",
        "Lcom/google/firestore/v1/DocumentChange$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentChangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentChange;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x6

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private document_:Lcom/google/firestore/v1/Document;

.field private removedTargetIdsMemoizedSerializedSize:I

.field private removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

.field private targetIdsMemoizedSerializedSize:I

.field private targetIds_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 761
    new-instance v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentChange;-><init>()V

    .line 764
    sput-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    .line 765
    const-class v1, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIdsMemoizedSerializedSize:I

    .line 252
    iput v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIdsMemoizedSerializedSize:I

    .line 33
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 34
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentChange;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/DocumentChange;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentChange;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/DocumentChange;Ljava/lang/Iterable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentChange;->addAllRemovedTargetIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->clearRemovedTargetIds()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/DocumentChange;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentChange;->mergeDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->clearDocument()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/DocumentChange;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/DocumentChange;->setTargetIds(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/DocumentChange;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentChange;->addTargetIds(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/DocumentChange;Ljava/lang/Iterable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentChange;->addAllTargetIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->clearTargetIds()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/DocumentChange;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/DocumentChange;->setRemovedTargetIds(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/DocumentChange;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentChange;->addRemovedTargetIds(I)V

    return-void
.end method

.method private addAllRemovedTargetIds(Ljava/lang/Iterable;)V
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

    .line 296
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->ensureRemovedTargetIdsIsMutable()V

    .line 297
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

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

    .line 197
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->ensureTargetIdsIsMutable()V

    .line 198
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addRemovedTargetIds(I)V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->ensureRemovedTargetIdsIsMutable()V

    .line 284
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addTargetIds(I)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->ensureTargetIdsIsMutable()V

    .line 185
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearDocument()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    .line 110
    iget v0, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    return-void
.end method

.method private clearRemovedTargetIds()V
    .locals 1

    .line 308
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearTargetIds()V
    .locals 1

    .line 209
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureRemovedTargetIdsIsMutable()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 255
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureTargetIdsIsMutable()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 156
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentChange;
    .locals 1

    .line 770
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    return-object v0
.end method

.method private mergeDocument(Lcom/google/firestore/v1/Document;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    .line 94
    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document;

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    goto :goto_0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    .line 98
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1

    .line 388
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentChange$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1

    .line 391
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/DocumentChange;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/DocumentChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/DocumentChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/DocumentChange;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentChange;",
            ">;"
        }
    .end annotation

    .line 776
    sget-object v0, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    .line 77
    iget p1, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    return-void
.end method

.method private setRemovedTargetIds(II)V
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->ensureRemovedTargetIdsIsMutable()V

    .line 272
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTargetIds(II)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange;->ensureTargetIdsIsMutable()V

    .line 173
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 709
    sget-object p2, Lcom/google/firestore/v1/DocumentChange$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 754
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 748
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/DocumentChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 735
    const-class p2, Lcom/google/firestore/v1/DocumentChange;

    monitor-enter p2

    .line 736
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/DocumentChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 738
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 741
    sput-object p1, Lcom/google/firestore/v1/DocumentChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 743
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

    .line 730
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    return-object p1

    .line 717
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "document_"

    const-string p3, "targetIds_"

    const-string v0, "removedTargetIds_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 723
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0006\u0003\u0000\u0002\u0000\u0001\u1009\u0000\u0005\'\u0006\'"

    .line 726
    sget-object p3, Lcom/google/firestore/v1/DocumentChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentChange;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/DocumentChange;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 714
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/DocumentChange$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/DocumentChange$Builder;-><init>(Lcom/google/firestore/v1/DocumentChange$1;)V

    return-object p1

    .line 711
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/DocumentChange;

    invoke-direct {p1}, Lcom/google/firestore/v1/DocumentChange;-><init>()V

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

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->document_:Lcom/google/firestore/v1/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemovedTargetIds(I)I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getRemovedTargetIdsCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getTargetIds(I)I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTargetIdsCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

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

    .line 126
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public hasDocument()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/google/firestore/v1/DocumentChange;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
