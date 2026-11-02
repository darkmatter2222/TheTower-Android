.class public final Lcom/google/firestore/v1/StructuredQuery$Order;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$Order;",
        "Lcom/google/firestore/v1/StructuredQuery$Order$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

.field public static final DIRECTION_FIELD_NUMBER:I = 0x2

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private direction_:I

.field private field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4475
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;-><init>()V

    .line 4478
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 4479
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4048
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5000()Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1

    .line 4043
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 4043
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 4043
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0

    .line 4043
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Order;->clearField()V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/firestore/v1/StructuredQuery$Order;I)V
    .locals 0

    .line 4043
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setDirectionValue(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$Direction;)V
    .locals 0

    .line 4043
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0

    .line 4043
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Order;->clearDirection()V

    return-void
.end method

.method private clearDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 4176
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    return-void
.end method

.method private clearField()V
    .locals 1

    const/4 v0, 0x0

    .line 4113
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4114
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1

    .line 4484
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v0
.end method

.method private mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 2

    .line 4096
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4097
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz v0, :cond_0

    .line 4098
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4099
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4100
    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    goto :goto_0

    .line 4102
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4104
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1

    .line 4256
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1

    .line 4259
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$Order;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4232
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$Order;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4239
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4195
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4202
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4244
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4251
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4219
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4226
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4182
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4189
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4207
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4214
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation

    .line 4490
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)V
    .locals 0

    .line 4164
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Direction;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    return-void
.end method

.method private setDirectionValue(I)V
    .locals 0

    .line 4153
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    return-void
.end method

.method private setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 4083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4084
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4085
    iget p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4424
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 4462
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4447
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4449
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$Order;

    monitor-enter p2

    .line 4450
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4452
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4455
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    .line 4457
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

    .line 4444
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p1

    .line 4432
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "field_"

    const-string p3, "direction_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 4437
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000c"

    .line 4440
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4429
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 4426
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$Order;-><init>()V

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

.method public getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1

    .line 4141
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Direction;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4142
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    :cond_0
    return-object v0
.end method

.method public getDirectionValue()I
    .locals 1

    .line 4129
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    return v0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 4073
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasField()Z
    .locals 2

    .line 4062
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
