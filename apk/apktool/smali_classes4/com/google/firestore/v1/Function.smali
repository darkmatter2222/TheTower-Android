.class public final Lcom/google/firestore/v1/Function;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Function.java"

# interfaces
.implements Lcom/google/firestore/v1/FunctionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Function$Builder;,
        Lcom/google/firestore/v1/Function$OptionsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Function;",
        "Lcom/google/firestore/v1/Function$Builder;",
        ">;",
        "Lcom/google/firestore/v1/FunctionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Function;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private args_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/protobuf/MapFieldLite;
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

    .line 913
    new-instance v0, Lcom/google/firestore/v1/Function;

    invoke-direct {v0}, Lcom/google/firestore/v1/Function;-><init>()V

    .line 916
    sput-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    .line 917
    const-class v1, Lcom/google/firestore/v1/Function;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 272
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->options_:Lcom/google/protobuf/MapFieldLite;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->name_:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/google/firestore/v1/Function;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Function;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Function;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Function;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->getMutableOptionsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Function;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Function;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Function;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Function;->setArgs(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Function;Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Function;->addArgs(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Function;->addArgs(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Function;Ljava/lang/Iterable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Function;->addAllArgs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Function;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->clearArgs()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Function;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Function;->removeArgs(I)V

    return-void
.end method

.method private addAllArgs(Ljava/lang/Iterable;)V
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

    .line 233
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->ensureArgsIsMutable()V

    .line 234
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addArgs(ILcom/google/firestore/v1/Value;)V
    .locals 1

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->ensureArgsIsMutable()V

    .line 222
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addArgs(Lcom/google/firestore/v1/Value;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->ensureArgsIsMutable()V

    .line 209
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearArgs()V
    .locals 1

    .line 245
    invoke-static {}, Lcom/google/firestore/v1/Function;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/google/firestore/v1/Function;->getDefaultInstance()Lcom/google/firestore/v1/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->name_:Ljava/lang/String;

    return-void
.end method

.method private ensureArgsIsMutable()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 180
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Function;
    .locals 1

    .line 922
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    return-object v0
.end method

.method private getMutableOptionsMap()Ljava/util/Map;
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

    .line 371
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->internalGetMutableOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableOptions()Lcom/google/protobuf/MapFieldLite;
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

    .line 279
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->options_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->options_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Function;->options_:Lcom/google/protobuf/MapFieldLite;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->options_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetOptions()Lcom/google/protobuf/MapFieldLite;
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

    .line 275
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->options_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 451
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Function$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Function;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 454
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Function;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Function;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Function;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 384
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Function;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Function;",
            ">;"
        }
    .end annotation

    .line 928
    sget-object v0, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeArgs(I)V
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->ensureArgsIsMutable()V

    .line 256
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setArgs(ILcom/google/firestore/v1/Value;)V
    .locals 1

    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->ensureArgsIsMutable()V

    .line 197
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iput-object p1, p0, Lcom/google/firestore/v1/Function;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 116
    invoke-static {p1}, Lcom/google/firestore/v1/Function;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Function;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsOptions(Ljava/lang/String;)Z
    .locals 1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 860
    sget-object p2, Lcom/google/firestore/v1/Function$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 906
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 900
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 885
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Function;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 887
    const-class p2, Lcom/google/firestore/v1/Function;

    monitor-enter p2

    .line 888
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Function;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 890
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 893
    sput-object p1, Lcom/google/firestore/v1/Function;->PARSER:Lcom/google/protobuf/Parser;

    .line 895
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

    .line 882
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    return-object p1

    .line 868
    :pswitch_4
    const-string p1, "name_"

    const-string p2, "args_"

    const-class p3, Lcom/google/firestore/v1/Value;

    const-string v0, "options_"

    sget-object v1, Lcom/google/firestore/v1/Function$OptionsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 875
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0001\u0000\u0001\u0208\u0002\u001b\u00032"

    .line 878
    sget-object p3, Lcom/google/firestore/v1/Function;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Function;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/Function;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 865
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Function$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/Function$Builder;-><init>(Lcom/google/firestore/v1/Function$1;)V

    return-object p1

    .line 862
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Function;

    invoke-direct {p1}, Lcom/google/firestore/v1/Function;-><init>()V

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

.method public getArgs(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1
.end method

.method public getArgsCount()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getArgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getArgsOrBuilder(I)Lcom/google/firestore/v1/ValueOrBuilder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/ValueOrBuilder;

    return-object p1
.end method

.method public getArgsOrBuilderList()Ljava/util/List;
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

    .line 143
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/firestore/v1/Function;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
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

    .line 309
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 287
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsMap()Ljava/util/Map;
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

    .line 322
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 321
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 341
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

.method public getOptionsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    invoke-direct {p0}, Lcom/google/firestore/v1/Function;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 357
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 358
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
