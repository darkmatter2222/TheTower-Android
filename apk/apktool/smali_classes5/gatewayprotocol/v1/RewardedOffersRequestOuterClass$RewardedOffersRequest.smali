.class public final Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewardedOffersRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CURSOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cursor_:Lcom/google/protobuf/ByteString;

.field private entryPoint_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 574
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;-><init>()V

    .line 577
    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    .line 578
    const-class v1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 183
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1

    .line 177
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->setEntryPointValue(I)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->clearEntryPoint()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->setCursor(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->clearCursor()V

    return-void
.end method

.method private clearCursor()V
    .locals 1

    .line 286
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getCursor()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearEntryPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1

    .line 583
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 366
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 369
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 305
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 292
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 299
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 317
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 324
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
            ">;"
        }
    .end annotation

    .line 589
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCursor(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V
    .locals 0

    .line 232
    invoke-virtual {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return-void
.end method

.method private setEntryPointValue(I)V
    .locals 0

    .line 221
    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 525
    sget-object p2, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 567
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 561
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 546
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 548
    const-class p2, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    monitor-enter p2

    .line 549
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 551
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 554
    sput-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 556
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

    .line 543
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p1

    .line 533
    :pswitch_4
    const-string p1, "entryPoint_"

    const-string p2, "cursor_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 537
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\n"

    .line 539
    sget-object p3, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 530
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;-><init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;)V

    return-object p1

    .line 527
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;-><init>()V

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

.method public getCursor()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 260
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 1

    .line 209
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    :cond_0
    return-object v0
.end method

.method public getEntryPointValue()I
    .locals 1

    .line 197
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return v0
.end method
