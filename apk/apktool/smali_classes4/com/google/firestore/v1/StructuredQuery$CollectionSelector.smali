.class public final Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionSelector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALL_DESCENDANTS_FIELD_NUMBER:I = 0x3

.field public static final COLLECTION_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allDescendants_:Z

.field private collectionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 604
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;-><init>()V

    .line 607
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 608
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1

    .line 202
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Ljava/lang/String;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setCollectionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Z)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setAllDescendants(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->clearAllDescendants()V

    return-void
.end method

.method private clearAllDescendants()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    .line 264
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1

    .line 613
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    .locals 1

    .line 403
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    .locals 1

    .line 406
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation

    .line 619
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllDescendants(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return-void
.end method

.method private setCollectionId(Ljava/lang/String;)V
    .locals 0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method private setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 277
    invoke-static {p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 278
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 554
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 597
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 591
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 576
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 578
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    monitor-enter p2

    .line 579
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 581
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 584
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    .line 586
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

    .line 573
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p1

    .line 562
    :pswitch_4
    const-string p1, "collectionId_"

    const-string p2, "allDescendants_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 566
    const-string p2, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u0208\u0003\u0007"

    .line 569
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 559
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 556
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;-><init>()V

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

.method public getAllDescendants()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return v0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
