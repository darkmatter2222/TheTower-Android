.class public final Lcom/google/firestore/v1/ExistenceFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExistenceFilter.java"

# interfaces
.implements Lcom/google/firestore/v1/ExistenceFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ExistenceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ExistenceFilter;",
        "Lcom/google/firestore/v1/ExistenceFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExistenceFilterOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExistenceFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1

.field public static final UNCHANGED_NAMES_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private count_:I

.field private targetId_:I

.field private unchangedNames_:Lcom/google/firestore/v1/BloomFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 639
    new-instance v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/ExistenceFilter;-><init>()V

    .line 642
    sput-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    .line 643
    const-class v1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ExistenceFilter;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExistenceFilter;->clearTargetId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ExistenceFilter;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->setCount(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExistenceFilter;->clearCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ExistenceFilter;Lcom/google/firestore/v1/BloomFilter;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->setUnchangedNames(Lcom/google/firestore/v1/BloomFilter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ExistenceFilter;Lcom/google/firestore/v1/BloomFilter;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->mergeUnchangedNames(Lcom/google/firestore/v1/BloomFilter;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExistenceFilter;->clearUnchangedNames()V

    return-void
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return-void
.end method

.method private clearTargetId()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return-void
.end method

.method private clearUnchangedNames()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    .line 238
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 648
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0
.end method

.method private mergeUnchangedNames(Lcom/google/firestore/v1/BloomFilter;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/google/firestore/v1/BloomFilter;->getDefaultInstance()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    .line 214
    invoke-static {v0}, Lcom/google/firestore/v1/BloomFilter;->newBuilder(Lcom/google/firestore/v1/BloomFilter;)Lcom/google/firestore/v1/BloomFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/BloomFilter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/BloomFilter$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/BloomFilter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/BloomFilter;

    iput-object p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    goto :goto_0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    .line 218
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 318
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 321
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ExistenceFilter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ExistenceFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExistenceFilter;",
            ">;"
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCount(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return-void
.end method

.method private setTargetId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return-void
.end method

.method private setUnchangedNames(Lcom/google/firestore/v1/BloomFilter;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    iput-object p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    .line 189
    iget p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 587
    sget-object p2, Lcom/google/firestore/v1/ExistenceFilter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 632
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 626
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 611
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 613
    const-class p2, Lcom/google/firestore/v1/ExistenceFilter;

    monitor-enter p2

    .line 614
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 616
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 619
    sput-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 621
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

    .line 608
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object p1

    .line 595
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "targetId_"

    const-string p3, "count_"

    const-string v0, "unchangedNames_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 601
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u1009\u0000"

    .line 604
    sget-object p3, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/ExistenceFilter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 592
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/ExistenceFilter$Builder;-><init>(Lcom/google/firestore/v1/ExistenceFilter$1;)V

    return-object p1

    .line 589
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {p1}, Lcom/google/firestore/v1/ExistenceFilter;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return v0
.end method

.method public getTargetId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return v0
.end method

.method public getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->unchangedNames_:Lcom/google/firestore/v1/BloomFilter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/BloomFilter;->getDefaultInstance()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasUnchangedNames()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
