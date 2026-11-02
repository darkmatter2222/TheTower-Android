.class public final Lcom/google/firestore/v1/StructuredPipeline;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredPipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredPipelineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredPipeline$Builder;,
        Lcom/google/firestore/v1/StructuredPipeline$OptionsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredPipeline;",
        "Lcom/google/firestore/v1/StructuredPipeline$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredPipelineOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

.field public static final OPTIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredPipeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIPELINE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

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

.field private pipeline_:Lcom/google/firestore/v1/Pipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 618
    new-instance v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredPipeline;-><init>()V

    .line 621
    sput-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    .line 622
    const-class v1, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 105
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->options_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->setPipeline(Lcom/google/firestore/v1/Pipeline;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->mergePipeline(Lcom/google/firestore/v1/Pipeline;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->clearPipeline()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->getMutableOptionsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearPipeline()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    .line 89
    iget v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1

    .line 627
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

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

    .line 224
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->internalGetMutableOptions()Lcom/google/protobuf/MapFieldLite;

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

    .line 112
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->options_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->options_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->options_:Lcom/google/protobuf/MapFieldLite;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->options_:Lcom/google/protobuf/MapFieldLite;

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

    .line 108
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->options_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergePipeline(Lcom/google/firestore/v1/Pipeline;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->getDefaultInstance()Lcom/google/firestore/v1/Pipeline;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    .line 75
    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline;->newBuilder(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Pipeline$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Pipeline$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Pipeline$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Pipeline;

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    goto :goto_0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    .line 79
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 304
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 307
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredPipeline;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredPipeline;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredPipeline;",
            ">;"
        }
    .end annotation

    .line 633
    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPipeline(Lcom/google/firestore/v1/Pipeline;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    .line 60
    iget p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsOptions(Ljava/lang/String;)Z
    .locals 1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 566
    sget-object p2, Lcom/google/firestore/v1/StructuredPipeline$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 611
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 605
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 590
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredPipeline;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 592
    const-class p2, Lcom/google/firestore/v1/StructuredPipeline;

    monitor-enter p2

    .line 593
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredPipeline;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 595
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 598
    sput-object p1, Lcom/google/firestore/v1/StructuredPipeline;->PARSER:Lcom/google/protobuf/Parser;

    .line 600
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

    .line 587
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    return-object p1

    .line 574
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "pipeline_"

    const-string p3, "options_"

    sget-object v0, Lcom/google/firestore/v1/StructuredPipeline$OptionsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 580
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u1009\u0000\u00022"

    .line 583
    sget-object p3, Lcom/google/firestore/v1/StructuredPipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/StructuredPipeline;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 571
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredPipeline$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/StructuredPipeline$Builder;-><init>(Lcom/google/firestore/v1/StructuredPipeline$1;)V

    return-object p1

    .line 568
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredPipeline;-><init>()V

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

    .line 146
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

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

    .line 163
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 186
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

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 206
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPipeline()Lcom/google/firestore/v1/Pipeline;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->pipeline_:Lcom/google/firestore/v1/Pipeline;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->getDefaultInstance()Lcom/google/firestore/v1/Pipeline;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasPipeline()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/google/firestore/v1/StructuredPipeline;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
