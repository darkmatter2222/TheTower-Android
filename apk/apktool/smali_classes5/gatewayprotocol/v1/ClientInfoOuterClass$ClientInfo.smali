.class public final Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_QUALITY_SDK_VERSION_FIELD_NUMBER:I = 0x10

.field public static final CUSTOM_MEDIATION_NAME_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

.field public static final GAME_ID_FIELD_NUMBER:I = 0x3

.field public static final IS_FID_AVAILABLE_FIELD_NUMBER:I = 0xe

.field public static final MEDIATION_ADAPTER_VERSION_FIELD_NUMBER:I = 0xf

.field public static final MEDIATION_PROVIDER_FIELD_NUMBER:I = 0x6

.field public static final MEDIATION_VERSION_FIELD_NUMBER:I = 0x8

.field public static final OFFERWALL_VERSION_FIELD_NUMBER:I = 0xd

.field public static final OMID_PARTNER_VERSION_FIELD_NUMBER:I = 0x9

.field public static final OMID_VERSION_FIELD_NUMBER:I = 0xa

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FIELD_NUMBER:I = 0x5

.field public static final SCAR_VERSION_NAME_FIELD_NUMBER:I = 0xc

.field public static final SDK_DEVELOPMENT_PLATFORM_FIELD_NUMBER:I = 0xb

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x1

.field public static final SDK_VERSION_NAME_FIELD_NUMBER:I = 0x2

.field public static final TEST_FIELD_NUMBER:I = 0x4


# instance fields
.field private adQualitySdkVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private customMediationName_:Ljava/lang/String;

.field private gameId_:Ljava/lang/String;

.field private isFidAvailable_:Z

.field private mediationAdapterVersion_:Ljava/lang/String;

.field private mediationProvider_:I

.field private mediationVersion_:Ljava/lang/String;

.field private offerwallVersion_:Ljava/lang/String;

.field private omidPartnerVersion_:Ljava/lang/String;

.field private omidVersion_:Ljava/lang/String;

.field private platform_:I

.field private scarVersionName_:Ljava/lang/String;

.field private sdkDevelopmentPlatform_:Ljava/lang/String;

.field private sdkVersionName_:Ljava/lang/String;

.field private sdkVersion_:I

.field private test_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3076
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;-><init>()V

    .line 3079
    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    .line 3080
    const-class v1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 661
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    .line 664
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    .line 665
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    .line 666
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    .line 667
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    .line 668
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    .line 669
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    .line 670
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    .line 671
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    .line 672
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1

    .line 656
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearTest()V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setPlatformValue(I)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearPlatform()V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationProviderValue(I)V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearMediationProvider()V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setCustomMediationName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearCustomMediationName()V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearSdkVersion()V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearMediationVersion()V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidPartnerVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearOmidPartnerVersion()V

    return-void
.end method

.method static synthetic access$2500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidPartnerVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearOmidVersion()V

    return-void
.end method

.method static synthetic access$2800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkDevelopmentPlatform(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearSdkDevelopmentPlatform()V

    return-void
.end method

.method static synthetic access$3100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkDevelopmentPlatformBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setScarVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearScarVersionName()V

    return-void
.end method

.method static synthetic access$3400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setScarVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOfferwallVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearOfferwallVersion()V

    return-void
.end method

.method static synthetic access$3700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOfferwallVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Z)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setIsFidAvailable(Z)V

    return-void
.end method

.method static synthetic access$3900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearIsFidAvailable()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearSdkVersionName()V

    return-void
.end method

.method static synthetic access$4000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationAdapterVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearMediationAdapterVersion()V

    return-void
.end method

.method static synthetic access$4200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationAdapterVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setAdQualitySdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearAdQualitySdkVersion()V

    return-void
.end method

.method static synthetic access$4500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setAdQualitySdkVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setGameId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearGameId()V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setGameIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Z)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setTest(Z)V

    return-void
.end method

.method private clearAdQualitySdkVersion()V
    .locals 1

    .line 1752
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1753
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearCustomMediationName()V
    .locals 1

    .line 1070
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1071
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getCustomMediationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private clearGameId()V
    .locals 1

    .line 830
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private clearIsFidAvailable()V
    .locals 1

    .line 1608
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    const/4 v0, 0x0

    .line 1609
    iput-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->isFidAvailable_:Z

    return-void
.end method

.method private clearMediationAdapterVersion()V
    .locals 1

    .line 1673
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1674
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationAdapterVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearMediationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 1006
    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private clearMediationVersion()V
    .locals 1

    .line 1149
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1150
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOfferwallVersion()V
    .locals 1

    .line 1544
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1545
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOfferwallVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOmidPartnerVersion()V
    .locals 1

    .line 1228
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1229
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidPartnerVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOmidVersion()V
    .locals 1

    .line 1307
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1308
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearPlatform()V
    .locals 1

    const/4 v0, 0x0

    .line 944
    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private clearScarVersionName()V
    .locals 1

    .line 1465
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1466
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getScarVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkDevelopmentPlatform()V
    .locals 1

    .line 1386
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1387
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkDevelopmentPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 710
    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return-void
.end method

.method private clearSdkVersionName()V
    .locals 1

    .line 763
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private clearTest()V
    .locals 1

    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1

    .line 3085
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .locals 1

    .line 1847
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .locals 1

    .line 1850
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1823
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1830
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1786
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1793
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1835
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1842
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1810
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1773
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1780
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1798
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1805
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
            ">;"
        }
    .end annotation

    .line 3091
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdQualitySdkVersion(Ljava/lang/String;)V
    .locals 1

    .line 1740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1741
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1742
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private setAdQualitySdkVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1765
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1766
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    .line 1767
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setCustomMediationName(Ljava/lang/String;)V
    .locals 1

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1060
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1083
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1084
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    .line 1085
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setGameId(Ljava/lang/String;)V
    .locals 0

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setGameIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 842
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 843
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setIsFidAvailable(Z)V
    .locals 1

    .line 1597
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1598
    iput-boolean p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->isFidAvailable_:Z

    return-void
.end method

.method private setMediationAdapterVersion(Ljava/lang/String;)V
    .locals 1

    .line 1661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1663
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediationAdapterVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1686
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1687
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    .line 1688
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 0

    .line 994
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private setMediationProviderValue(I)V
    .locals 0

    .line 983
    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private setMediationVersion(Ljava/lang/String;)V
    .locals 1

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1139
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1162
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1163
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    .line 1164
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setOfferwallVersion(Ljava/lang/String;)V
    .locals 1

    .line 1532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1534
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOfferwallVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1557
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1558
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    .line 1559
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setOmidPartnerVersion(Ljava/lang/String;)V
    .locals 1

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1218
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOmidPartnerVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1241
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1242
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    .line 1243
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setOmidVersion(Ljava/lang/String;)V
    .locals 1

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1296
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1297
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOmidVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1320
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1321
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    .line 1322
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .locals 0

    .line 932
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private setPlatformValue(I)V
    .locals 0

    .line 921
    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private setScarVersionName(Ljava/lang/String;)V
    .locals 1

    .line 1453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1454
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1455
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setScarVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1478
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1479
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    .line 1480
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setSdkDevelopmentPlatform(Ljava/lang/String;)V
    .locals 1

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1375
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1376
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    return-void
.end method

.method private setSdkDevelopmentPlatformBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1399
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1400
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    .line 1401
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setSdkVersion(I)V
    .locals 0

    .line 699
    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return-void
.end method

.method private setSdkVersionName(Ljava/lang/String;)V
    .locals 0

    .line 750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 775
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 776
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setTest(Z)V
    .locals 0

    .line 871
    iput-boolean p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 3009
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3069
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 3063
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3048
    :pswitch_2
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 3050
    const-class v1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    monitor-enter v1

    .line 3051
    :try_start_0
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 3053
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3056
    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 3058
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

    .line 3045
    :pswitch_3
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0

    .line 3017
    :pswitch_4
    const-string v2, "bitField0_"

    const-string v3, "sdkVersion_"

    const-string v4, "sdkVersionName_"

    const-string v5, "gameId_"

    const-string v6, "test_"

    const-string v7, "platform_"

    const-string v8, "mediationProvider_"

    const-string v9, "customMediationName_"

    const-string v10, "mediationVersion_"

    const-string v11, "omidPartnerVersion_"

    const-string v12, "omidVersion_"

    const-string v13, "sdkDevelopmentPlatform_"

    const-string v14, "scarVersionName_"

    const-string v15, "offerwallVersion_"

    const-string v16, "isFidAvailable_"

    const-string v17, "mediationAdapterVersion_"

    const-string v18, "adQualitySdkVersion_"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    .line 3036
    const-string v1, "\u0000\u0010\u0000\u0001\u0001\u0010\u0010\u0000\u0000\u0000\u0001\u000b\u0002\u0208\u0003\u0208\u0004\u0007\u0005\u000c\u0006\u000c\u0007\u1208\u0000\u0008\u1208\u0001\t\u1208\u0002\n\u1208\u0003\u000b\u1208\u0004\u000c\u1208\u0005\r\u1208\u0006\u000e\u1007\u0007\u000f\u1208\u0008\u0010\u1208\t"

    .line 3041
    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v2, v1, v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3014
    :pswitch_5
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;-><init>(Lgatewayprotocol/v1/ClientInfoOuterClass$1;)V

    return-object v0

    .line 3011
    :pswitch_6
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;-><init>()V

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

.method public getAdQualitySdkVersion()Ljava/lang/String;
    .locals 1

    .line 1715
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdQualitySdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1728
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustomMediationName()Ljava/lang/String;
    .locals 1

    .line 1033
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1046
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 792
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 805
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFidAvailable()Z
    .locals 1

    .line 1586
    iget-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->isFidAvailable_:Z

    return v0
.end method

.method public getMediationAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 1636
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationAdapterVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1649
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 971
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 972
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    :cond_0
    return-object v0
.end method

.method public getMediationProviderValue()I
    .locals 1

    .line 959
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 1112
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1125
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOfferwallVersion()Ljava/lang/String;
    .locals 1

    .line 1507
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferwallVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1520
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOmidPartnerVersion()Ljava/lang/String;
    .locals 1

    .line 1191
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOmidPartnerVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1204
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOmidVersion()Ljava/lang/String;
    .locals 1

    .line 1270
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOmidVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1283
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .locals 1

    .line 909
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 910
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    :cond_0
    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 897
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return v0
.end method

.method public getScarVersionName()Ljava/lang/String;
    .locals 1

    .line 1428
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getScarVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1441
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkDevelopmentPlatform()Ljava/lang/String;
    .locals 1

    .line 1349
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkDevelopmentPlatformBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1362
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 687
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .locals 1

    .line 725
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 738
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return v0
.end method

.method public hasAdQualitySdkVersion()Z
    .locals 1

    .line 1703
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomMediationName()Z
    .locals 2

    .line 1021
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIsFidAvailable()Z
    .locals 1

    .line 1574
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationAdapterVersion()Z
    .locals 1

    .line 1624
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationVersion()Z
    .locals 1

    .line 1100
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOfferwallVersion()Z
    .locals 1

    .line 1495
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOmidPartnerVersion()Z
    .locals 1

    .line 1179
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOmidVersion()Z
    .locals 1

    .line 1258
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasScarVersionName()Z
    .locals 1

    .line 1416
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSdkDevelopmentPlatform()Z
    .locals 1

    .line 1337
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
