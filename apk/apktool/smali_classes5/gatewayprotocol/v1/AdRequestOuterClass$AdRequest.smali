.class public final Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AdRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;,
        Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$ExtrasDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;",
        "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0xd

.field public static final AD_REQUEST_TYPE_FIELD_NUMBER:I = 0xb

.field public static final BANNER_SIZE_FIELD_NUMBER:I = 0xc

.field public static final CAMPAIGN_STATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

.field public static final DYNAMIC_DEVICE_INFO_FIELD_NUMBER:I = 0x3

.field public static final EXTERNAL_USER_IDENTIFIER_FIELD_NUMBER:I = 0x11

.field public static final EXTRAS_FIELD_NUMBER:I = 0xf

.field public static final IMPRESSION_OPPORTUNITY_ID_FIELD_NUMBER:I = 0x5

.field public static final MEDIATION_AD_UNIT_ID_FIELD_NUMBER:I = 0xe

.field public static final MEDIATION_INFO_FIELD_NUMBER:I = 0x10

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_ID_FIELD_NUMBER:I = 0x6

.field public static final REQUEST_IMPRESSION_CONFIGURATION_FIELD_NUMBER:I = 0x7

.field public static final SCAR_SIGNAL_FIELD_NUMBER:I = 0x8

.field public static final SESSION_COUNTERS_FIELD_NUMBER:I = 0x1

.field public static final STATIC_DEVICE_INFO_FIELD_NUMBER:I = 0x2

.field public static final TCF_FIELD_NUMBER:I = 0xa

.field public static final WEBVIEW_VERSION_FIELD_NUMBER:I = 0x9


# instance fields
.field private adFormat_:I

.field private adRequestType_:I

.field private bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

.field private bitField0_:I

.field private campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

.field private dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

.field private externalUserIdentifier_:Ljava/lang/String;

.field private extras_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impressionOpportunityId_:Lcom/google/protobuf/ByteString;

.field private mediationAdUnitId_:Ljava/lang/String;

.field private mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

.field private placementId_:Ljava/lang/String;

.field private requestImpressionConfiguration_:Z

.field private scarSignal_:Lcom/google/protobuf/ByteString;

.field private sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field private staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

.field private tcf_:Lcom/google/protobuf/ByteString;

.field private webviewVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3268
    new-instance v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;-><init>()V

    .line 3271
    sput-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    .line 3272
    const-class v1, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 815
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1678
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->extras_:Lcom/google/protobuf/MapFieldLite;

    .line 816
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    .line 817
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->placementId_:Ljava/lang/String;

    .line 818
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->scarSignal_:Lcom/google/protobuf/ByteString;

    .line 819
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->tcf_:Lcom/google/protobuf/ByteString;

    .line 820
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationAdUnitId_:Ljava/lang/String;

    .line 821
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->externalUserIdentifier_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearStaticDeviceInfo()V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearDynamicDeviceInfo()V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearCampaignState()V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearImpressionOpportunityId()V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setPlacementId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearPlacementId()V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setPlacementIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Z)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setRequestImpressionConfiguration(Z)V

    return-void
.end method

.method static synthetic access$2500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearRequestImpressionConfiguration()V

    return-void
.end method

.method static synthetic access$2600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setScarSignal(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearScarSignal()V

    return-void
.end method

.method static synthetic access$2800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;I)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setWebviewVersion(I)V

    return-void
.end method

.method static synthetic access$2900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearWebviewVersion()V

    return-void
.end method

.method static synthetic access$3000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setTcf(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearTcf()V

    return-void
.end method

.method static synthetic access$3200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;I)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setAdRequestTypeValue(I)V

    return-void
.end method

.method static synthetic access$3300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setAdRequestType(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)V

    return-void
.end method

.method static synthetic access$3400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearAdRequestType()V

    return-void
.end method

.method static synthetic access$3500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V

    return-void
.end method

.method static synthetic access$3600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mergeBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V

    return-void
.end method

.method static synthetic access$3700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearBannerSize()V

    return-void
.end method

.method static synthetic access$3800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;I)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setAdFormatValue(I)V

    return-void
.end method

.method static synthetic access$3900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-void
.end method

.method static synthetic access$4000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearAdFormat()V

    return-void
.end method

.method static synthetic access$4100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setMediationAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearMediationAdUnitId()V

    return-void
.end method

.method static synthetic access$4300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setMediationAdUnitIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Ljava/util/Map;
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getMutableExtrasMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-void
.end method

.method static synthetic access$4600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mergeMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-void
.end method

.method static synthetic access$4700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearMediationInfo()V

    return-void
.end method

.method static synthetic access$4800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setExternalUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearExternalUserIdentifier()V

    return-void
.end method

.method static synthetic access$5000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setExternalUserIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1

    .line 810
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object v0
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->clearSessionCounters()V

    return-void
.end method

.method private clearAdFormat()V
    .locals 1

    .line 1582
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 1583
    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adFormat_:I

    return-void
.end method

.method private clearAdRequestType()V
    .locals 1

    .line 1442
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 1443
    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adRequestType_:I

    return-void
.end method

.method private clearBannerSize()V
    .locals 1

    const/4 v0, 0x0

    .line 1508
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 1509
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private clearCampaignState()V
    .locals 1

    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1085
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private clearDynamicDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1018
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 1019
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private clearExternalUserIdentifier()V
    .locals 1

    .line 1907
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1908
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExternalUserIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->externalUserIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private clearImpressionOpportunityId()V
    .locals 1

    .line 1124
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMediationAdUnitId()V
    .locals 1

    .line 1647
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1648
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationAdUnitId_:Ljava/lang/String;

    return-void
.end method

.method private clearMediationInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1842
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    .line 1843
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private clearPlacementId()V
    .locals 1

    .line 1177
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->placementId_:Ljava/lang/String;

    return-void
.end method

.method private clearRequestImpressionConfiguration()V
    .locals 1

    const/4 v0, 0x0

    .line 1229
    iput-boolean v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->requestImpressionConfiguration_:Z

    return-void
.end method

.method private clearScarSignal()V
    .locals 1

    .line 1268
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getScarSignal()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->scarSignal_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSessionCounters()V
    .locals 1

    const/4 v0, 0x0

    .line 886
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 887
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private clearStaticDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 953
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private clearTcf()V
    .locals 1

    .line 1368
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1369
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getTcf()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->tcf_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearWebviewVersion()V
    .locals 1

    .line 1317
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 1318
    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->webviewVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1

    .line 3277
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object v0
.end method

.method private getMutableExtrasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1777
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->internalGetMutableExtras()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetExtras()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1681
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->extras_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableExtras()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1685
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->extras_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1686
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->extras_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->extras_:Lcom/google/protobuf/MapFieldLite;

    .line 1688
    :cond_0
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->extras_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V
    .locals 2

    .line 1491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1492
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    if-eqz v0, :cond_0

    .line 1493
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1494
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 1495
    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;->newBuilder(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    goto :goto_0

    .line 1497
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 1499
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 2

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getDefaultInstance()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1070
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1071
    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->newBuilder(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    goto :goto_0

    .line 1073
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1075
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 2

    .line 1001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-eqz v0, :cond_0

    .line 1003
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1004
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 1005
    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    goto :goto_0

    .line 1007
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 1009
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private mergeMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 2

    .line 1825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1826
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    if-eqz v0, :cond_0

    .line 1827
    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getDefaultInstance()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1828
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    .line 1829
    invoke-static {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->newBuilder(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    goto :goto_0

    .line 1831
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    .line 1833
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 2

    .line 869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-eqz v0, :cond_0

    .line 871
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 873
    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    goto :goto_0

    .line 875
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 877
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 2

    .line 935
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-eqz v0, :cond_0

    .line 937
    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 938
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 939
    invoke-static {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->newBuilder(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    goto :goto_0

    .line 941
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 943
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2002
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2005
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1978
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1985
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1941
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1948
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1990
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1997
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1965
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1972
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1928
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1935
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1953
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1960
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;",
            ">;"
        }
    .end annotation

    .line 3283
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .locals 0

    .line 1571
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adFormat_:I

    .line 1572
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setAdFormatValue(I)V
    .locals 1

    .line 1560
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adFormat_:I

    return-void
.end method

.method private setAdRequestType(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)V
    .locals 0

    .line 1431
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adRequestType_:I

    .line 1432
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setAdRequestTypeValue(I)V
    .locals 1

    .line 1420
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adRequestType_:I

    return-void
.end method

.method private setBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V
    .locals 0

    .line 1478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1479
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 1480
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 0

    .line 1054
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1056
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 0

    .line 988
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 990
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setExternalUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 1895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1896
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1897
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->externalUserIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setExternalUserIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1920
    invoke-static {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1921
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->externalUserIdentifier_:Ljava/lang/String;

    .line 1922
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setMediationAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 1635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1636
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1637
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationAdUnitId_:Ljava/lang/String;

    return-void
.end method

.method private setMediationAdUnitIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1660
    invoke-static {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1661
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationAdUnitId_:Ljava/lang/String;

    .line 1662
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 1812
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1813
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    .line 1814
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 1164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->placementId_:Ljava/lang/String;

    return-void
.end method

.method private setPlacementIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1189
    invoke-static {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1190
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->placementId_:Ljava/lang/String;

    return-void
.end method

.method private setRequestImpressionConfiguration(Z)V
    .locals 0

    .line 1218
    iput-boolean p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->requestImpressionConfiguration_:Z

    return-void
.end method

.method private setScarSignal(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1257
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->scarSignal_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 858
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 0

    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 924
    iget p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    return-void
.end method

.method private setTcf(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1357
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1358
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->tcf_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setWebviewVersion(I)V
    .locals 1

    .line 1306
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    .line 1307
    iput p1, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->webviewVersion_:I

    return-void
.end method


# virtual methods
.method public containsExtras(Ljava/lang/String;)Z
    .locals 1

    .line 1706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1707
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->internalGetExtras()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 3199
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 3255
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3240
    :pswitch_2
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 3242
    const-class v1, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    monitor-enter v1

    .line 3243
    :try_start_0
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 3245
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3248
    sput-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 3250
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0

    .line 3237
    :pswitch_3
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object v0

    .line 3207
    :pswitch_4
    const-string v2, "bitField0_"

    const-string v3, "sessionCounters_"

    const-string v4, "staticDeviceInfo_"

    const-string v5, "dynamicDeviceInfo_"

    const-string v6, "campaignState_"

    const-string v7, "impressionOpportunityId_"

    const-string v8, "placementId_"

    const-string v9, "requestImpressionConfiguration_"

    const-string v10, "scarSignal_"

    const-string v11, "webviewVersion_"

    const-string v12, "tcf_"

    const-string v13, "adRequestType_"

    const-string v14, "bannerSize_"

    const-string v15, "adFormat_"

    const-string v16, "mediationAdUnitId_"

    const-string v17, "extras_"

    sget-object v18, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$ExtrasDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const-string v19, "mediationInfo_"

    const-string v20, "externalUserIdentifier_"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    .line 3228
    const-string v1, "\u0000\u0011\u0000\u0001\u0001\u0011\u0011\u0001\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\n\u0006\u0208\u0007\u0007\u0008\n\t\u1004\u0004\n\u100a\u0005\u000b\u100c\u0006\u000c\u1009\u0007\r\u100c\u0008\u000e\u1208\t\u000f2\u0010\u1009\n\u0011\u1208\u000b"

    .line 3233
    sget-object v2, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v2, v1, v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3204
    :pswitch_5
    new-instance v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$1;)V

    return-object v0

    .line 3201
    :pswitch_6
    new-instance v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;-><init>()V

    return-object v0

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

.method public getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 1

    .line 1548
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adFormat_:I

    invoke-static {v0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1549
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_0
    return-object v0
.end method

.method public getAdFormatValue()I
    .locals 1

    .line 1536
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adFormat_:I

    return v0
.end method

.method public getAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;
    .locals 1

    .line 1408
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adRequestType_:I

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;->forNumber(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1409
    sget-object v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;->UNRECOGNIZED:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;

    :cond_0
    return-object v0
.end method

.method public getAdRequestTypeValue()I
    .locals 1

    .line 1396
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->adRequestType_:I

    return v0
.end method

.method public getBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;
    .locals 1

    .line 1468
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bannerSize_:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .locals 1

    .line 1044
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getDefaultInstance()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 978
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExternalUserIdentifier()Ljava/lang/String;
    .locals 1

    .line 1870
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->externalUserIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalUserIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1883
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->externalUserIdentifier_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1715
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasCount()I
    .locals 1

    .line 1693
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->internalGetExtras()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getExtrasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1728
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->internalGetExtras()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1727
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1746
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->internalGetExtras()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1747
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getExtrasOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1762
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->internalGetExtras()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1763
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1766
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1764
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1100
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMediationAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1610
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationAdUnitId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationAdUnitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1623
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationAdUnitId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationInfo()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1

    .line 1802
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->mediationInfo_:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getDefaultInstance()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1139
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->placementId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1152
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->placementId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestImpressionConfiguration()Z
    .locals 1

    .line 1206
    iget-boolean v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->requestImpressionConfiguration_:Z

    return v0
.end method

.method public getScarSignal()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1244
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->scarSignal_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 846
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 912
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTcf()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1345
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->tcf_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getWebviewVersion()I
    .locals 1

    .line 1295
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->webviewVersion_:I

    return v0
.end method

.method public hasAdFormat()Z
    .locals 1

    .line 1524
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdRequestType()Z
    .locals 1

    .line 1384
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBannerSize()Z
    .locals 1

    .line 1457
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCampaignState()Z
    .locals 1

    .line 1033
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

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

    .line 967
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasExternalUserIdentifier()Z
    .locals 1

    .line 1858
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationAdUnitId()Z
    .locals 1

    .line 1598
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationInfo()Z
    .locals 1

    .line 1791
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 2

    .line 835
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

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

    .line 901
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTcf()Z
    .locals 1

    .line 1333
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasWebviewVersion()Z
    .locals 1

    .line 1283
    iget v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
