.class public final Lcom/google/firestore/v1/ArrayValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ArrayValue.java"

# interfaces
.implements Lcom/google/firestore/v1/ArrayValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ArrayValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ArrayValue;",
        "Lcom/google/firestore/v1/ArrayValue$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ArrayValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private values_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 467
    new-instance v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {v0}, Lcom/google/firestore/v1/ArrayValue;-><init>()V

    .line 470
    sput-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    .line 471
    const-class v1, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->setValues(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->addValues(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->addValues(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ArrayValue;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->clearValues()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ArrayValue;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->removeValues(I)V

    return-void
.end method

.method private addAllValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 135
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addValues(ILcom/google/firestore/v1/Value;)V
    .locals 1

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 123
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addValues(Lcom/google/firestore/v1/Value;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 110
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearValues()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 81
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 476
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 237
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ArrayValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 240
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ArrayValue;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ArrayValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ArrayValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ArrayValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ArrayValue;",
            ">;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeValues(I)V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 157
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setValues(ILcom/google/firestore/v1/Value;)V
    .locals 1

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 98
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    sget-object p2, Lcom/google/firestore/v1/ArrayValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 460
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 454
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 439
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 441
    const-class p2, Lcom/google/firestore/v1/ArrayValue;

    monitor-enter p2

    .line 442
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 444
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 447
    sput-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 449
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

    .line 436
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object p1

    .line 426
    :pswitch_4
    const-string p1, "values_"

    const-class p2, Lcom/google/firestore/v1/Value;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 430
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 432
    sget-object p3, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/ArrayValue;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 423
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ArrayValue$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/ArrayValue$Builder;-><init>(Lcom/google/firestore/v1/ArrayValue$1;)V

    return-object p1

    .line 420
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {p1}, Lcom/google/firestore/v1/ArrayValue;-><init>()V

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

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1
.end method

.method public getValuesCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValuesOrBuilder(I)Lcom/google/firestore/v1/ValueOrBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/ValueOrBuilder;

    return-object p1
.end method

.method public getValuesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
