.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringEventRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

.field public static final DYNAMIC_DEVICE_INFO_FIELD_NUMBER:I = 0x2

.field public static final MONITORING_EVENT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATIC_DEVICE_INFO_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

.field private monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

.field private staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1420
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;-><init>()V

    .line 1423
    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    .line 1424
    const-class v1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 846
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1

    .line 841
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object v0
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 0

    .line 841
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->clearStaticDeviceInfo()V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 0

    .line 841
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->clearDynamicDeviceInfo()V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->mergeMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 0

    .line 841
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->clearMonitoringEvent()V

    return-void
.end method

.method private clearDynamicDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 977
    iput-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 978
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private clearMonitoringEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 1043
    iput-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1044
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private clearStaticDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 912
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1

    .line 1429
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object v0
.end method

.method private mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 2

    .line 960
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-eqz v0, :cond_0

    .line 962
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 964
    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    goto :goto_0

    .line 966
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 968
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private mergeMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 2

    .line 1026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1027
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    if-eqz v0, :cond_0

    .line 1028
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1030
    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    goto :goto_0

    .line 1032
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1034
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 2

    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-eqz v0, :cond_0

    .line 896
    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 897
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 898
    invoke-static {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->newBuilder(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    goto :goto_0

    .line 900
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 902
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1124
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1127
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1063
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1070
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1050
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1057
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1075
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1082
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
            ">;"
        }
    .end annotation

    .line 1435
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 949
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .locals 0

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1015
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 883
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1368
    sget-object p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1413
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1407
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1392
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1394
    const-class p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    monitor-enter p2

    .line 1395
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1397
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1400
    sput-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1402
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

    .line 1389
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p1

    .line 1376
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "staticDeviceInfo_"

    const-string p3, "dynamicDeviceInfo_"

    const-string v0, "monitoringEvent_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 1382
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    .line 1385
    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1373
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V

    return-object p1

    .line 1370
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;-><init>()V

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

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 937
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1

    .line 1003
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 871
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 926
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMonitoringEvent()Z
    .locals 1

    .line 992
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 2

    .line 860
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
