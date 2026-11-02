.class public final Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AdViewerRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewerRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_STATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

.field public static final DYNAMIC_DEVICE_INFO_FIELD_NUMBER:I = 0x3

.field public static final IMPRESSION_OPPORTUNITY_ID_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x6

.field public static final SESSION_COUNTERS_FIELD_NUMBER:I = 0x1

.field public static final STATIC_DEVICE_INFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

.field private dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

.field private impressionOpportunityId_:Lcom/google/protobuf/ByteString;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field private staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 998
    new-instance v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;-><init>()V

    .line 1001
    sput-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    .line 1002
    const-class v1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 125
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    .line 126
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1

    .line 119
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearCampaignState()V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearImpressionOpportunityId()V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearPayload()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearSessionCounters()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearStaticDeviceInfo()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearDynamicDeviceInfo()V

    return-void
.end method

.method private clearCampaignState()V
    .locals 1

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 390
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private clearDynamicDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 324
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private clearImpressionOpportunityId()V
    .locals 1

    .line 429
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 468
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSessionCounters()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 192
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private clearStaticDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 258
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1

    .line 1007
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object v0
.end method

.method private mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 2

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getDefaultInstance()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 376
    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->newBuilder(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    goto :goto_0

    .line 378
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 380
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 2

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 310
    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    goto :goto_0

    .line 312
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 314
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 178
    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    goto :goto_0

    .line 180
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 182
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 244
    invoke-static {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->newBuilder(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    goto :goto_0

    .line 246
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 248
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 548
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 551
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 494
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 481
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 506
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
            ">;"
        }
    .end annotation

    .line 1013
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 0

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 361
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 295
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 163
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 229
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 943
    sget-object p2, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 991
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 985
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 970
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 972
    const-class p2, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    monitor-enter p2

    .line 973
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 975
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 978
    sput-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 980
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 967
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p1

    .line 951
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "sessionCounters_"

    const-string v2, "staticDeviceInfo_"

    const-string v3, "dynamicDeviceInfo_"

    const-string v4, "campaignState_"

    const-string v5, "impressionOpportunityId_"

    const-string v6, "payload_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 960
    const-string p2, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\n\u0006\n"

    .line 963
    sget-object p3, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 948
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;-><init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;)V

    return-object p1

    .line 945
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;-><init>()V

    return-object p1

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

.method public getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .locals 1

    .line 349
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getDefaultInstance()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 283
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 405
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 444
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 151
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 217
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasCampaignState()Z
    .locals 1

    .line 338
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 272
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

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

    .line 140
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

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

    .line 206
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
