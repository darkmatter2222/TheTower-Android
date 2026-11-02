.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

.field public static final DURATION_MS_FIELD_NUMBER:I = 0x4

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final IMPRESSION_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final MONITORING_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private eventType_:I

.field private impressionNumber_:J

.field private monitoringId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 754
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;-><init>()V

    .line 757
    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 758
    const-class v1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1

    .line 199
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setImpressionNumber(J)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearImpressionNumber()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setEventTypeValue(I)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearEventType()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setMonitoringId(I)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearMonitoringId()V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setDurationMs(J)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearDurationMs()V

    return-void
.end method

.method private clearDurationMs()V
    .locals 2

    .line 391
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 392
    iput-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->durationMs_:J

    return-void
.end method

.method private clearEventType()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return-void
.end method

.method private clearImpressionNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->impressionNumber_:J

    return-void
.end method

.method private clearMonitoringId()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->monitoringId_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1

    .line 763
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 472
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 475
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 411
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 418
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 398
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 405
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 423
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 430
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
            ">;"
        }
    .end annotation

    .line 769
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDurationMs(J)V
    .locals 1

    .line 380
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    .line 381
    iput-wide p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->durationMs_:J

    return-void
.end method

.method private setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V
    .locals 0

    .line 292
    invoke-virtual {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return-void
.end method

.method private setEventTypeValue(I)V
    .locals 0

    .line 281
    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return-void
.end method

.method private setImpressionNumber(J)V
    .locals 0

    .line 231
    iput-wide p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->impressionNumber_:J

    return-void
.end method

.method private setMonitoringId(I)V
    .locals 0

    .line 331
    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->monitoringId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 701
    sget-object p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 747
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 741
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 726
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 728
    const-class p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    monitor-enter p2

    .line 729
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 731
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 734
    sput-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 736
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

    .line 723
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p1

    .line 709
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "impressionNumber_"

    const-string p3, "eventType_"

    const-string v0, "monitoringId_"

    const-string v1, "durationMs_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 716
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0002\u0002\u000c\u0003\u0004\u0004\u1002\u0000"

    .line 719
    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 706
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V

    return-object p1

    .line 703
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-direct {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;-><init>()V

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

.method public getDurationMs()J
    .locals 2

    .line 369
    iget-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->durationMs_:J

    return-wide v0
.end method

.method public getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .locals 1

    .line 269
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->forNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->UNRECOGNIZED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    :cond_0
    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    .line 257
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return v0
.end method

.method public getImpressionNumber()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->impressionNumber_:J

    return-wide v0
.end method

.method public getMonitoringId()I
    .locals 1

    .line 319
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->monitoringId_:I

    return v0
.end method

.method public hasDurationMs()Z
    .locals 2

    .line 357
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
