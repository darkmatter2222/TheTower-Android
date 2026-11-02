.class public final Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AudienceManagementRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AudienceManagementRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudienceManagementRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;",
        "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIENCE_MANAGEMENT_DATA_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

.field public static final DYNAMIC_DEVICE_INFO_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_COUNTERS_FIELD_NUMBER:I = 0x1

.field public static final STATIC_DEVICE_INFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private audienceManagementData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

.field private sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field private staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 742
    new-instance v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;-><init>()V

    .line 745
    sput-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    .line 746
    const-class v1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 92
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1

    .line 86
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->setAudienceManagementData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->clearAudienceManagementData()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->clearSessionCounters()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->clearStaticDeviceInfo()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->clearDynamicDeviceInfo()V

    return-void
.end method

.method private clearAudienceManagementData()V
    .locals 1

    .line 329
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getAudienceManagementData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDynamicDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 290
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method private clearSessionCounters()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 158
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method private clearStaticDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 224
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1

    .line 751
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object v0
.end method

.method private mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 2

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 276
    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    goto :goto_0

    .line 278
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 280
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method private mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 144
    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    goto :goto_0

    .line 146
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 148
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method private mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 2

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 210
    invoke-static {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->newBuilder(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    goto :goto_0

    .line 212
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 214
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 409
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 412
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 348
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 355
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 335
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 342
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 360
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 367
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;",
            ">;"
        }
    .end annotation

    .line 757
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAudienceManagementData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 261
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method private setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 129
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method

.method private setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 195
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 689
    sget-object p2, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 735
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 729
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 714
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 716
    const-class p2, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    monitor-enter p2

    .line 717
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 719
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 722
    sput-object p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 724
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

    .line 711
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object p1

    .line 697
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "sessionCounters_"

    const-string p3, "staticDeviceInfo_"

    const-string v0, "dynamicDeviceInfo_"

    const-string v1, "audienceManagementData_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 704
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\n"

    .line 707
    sget-object p3, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 694
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;-><init>(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$1;)V

    return-object p1

    .line 691
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;-><init>()V

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

.method public getAudienceManagementData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 305
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 249
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 183
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 238
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 2

    .line 106
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 172
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
