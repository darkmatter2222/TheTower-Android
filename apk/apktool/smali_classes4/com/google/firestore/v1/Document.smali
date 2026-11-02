.class public final Lcom/google/firestore/v1/Document;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Document.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Document$Builder;,
        Lcom/google/firestore/v1/Document$FieldsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Document;",
        "Lcom/google/firestore/v1/Document$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentOrBuilder;"
    }
.end annotation


# static fields
.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private createTime_:Lcom/google/protobuf/Timestamp;

.field private fields_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private updateTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1216
    new-instance v0, Lcom/google/firestore/v1/Document;

    invoke-direct {v0}, Lcom/google/firestore/v1/Document;-><init>()V

    .line 1219
    sput-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    .line 1220
    const-class v1, Lcom/google/firestore/v1/Document;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 110
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Document;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->clearUpdateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->getMutableFieldsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->setCreateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->mergeCreateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->clearCreateTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->setUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->mergeUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method private clearCreateTime()V
    .locals 1

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 410
    iget v0, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearUpdateTime()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 496
    iget v0, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 1225
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method private getMutableFieldsMap()Ljava/util/Map;
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

    .line 324
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetMutableFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetFields()Lcom/google/protobuf/MapFieldLite;
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

    .line 113
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableFields()Lcom/google/protobuf/MapFieldLite;
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

    .line 117
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeCreateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 392
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 396
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    return-void
.end method

.method private mergeUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 478
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 480
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 482
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 576
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 579
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Document;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Document;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Document;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 534
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Document;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 1231
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCreateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 373
    iget p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/google/firestore/v1/Document;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-void
.end method

.method private setUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 459
    iget p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsFields(Ljava/lang/String;)Z
    .locals 1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1162
    sget-object p2, Lcom/google/firestore/v1/Document$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1203
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1188
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Document;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1190
    const-class p2, Lcom/google/firestore/v1/Document;

    monitor-enter p2

    .line 1191
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Document;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1193
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1196
    sput-object p1, Lcom/google/firestore/v1/Document;->PARSER:Lcom/google/protobuf/Parser;

    .line 1198
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

    .line 1185
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    return-object p1

    .line 1170
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "name_"

    const-string v2, "fields_"

    sget-object v3, Lcom/google/firestore/v1/Document$FieldsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const-string v4, "createTime_"

    const-string v5, "updateTime_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1178
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u00022\u0003\u1009\u0000\u0004\u1009\u0001"

    .line 1181
    sget-object p3, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/Document;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1167
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Document$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/Document$Builder;-><init>(Lcom/google/firestore/v1/Document$1;)V

    return-object p1

    .line 1164
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Document;

    invoke-direct {p1}, Lcom/google/firestore/v1/Document;-><init>()V

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

.method public getCreateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->createTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFields()Ljava/util/Map;
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

    .line 170
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsMap()Ljava/util/Map;
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

    .line 206
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 248
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

.method public getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 287
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasCreateTime()Z
    .locals 2

    .line 342
    iget v0, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .line 428
    iget v0, p0, Lcom/google/firestore/v1/Document;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
