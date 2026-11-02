.class public final Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LimitedSessionToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;",
        "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;",
        ">;",
        "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionTokenOrBuilder;"
    }
.end annotation


# static fields
.field public static final CUSTOM_MEDIATION_NAME_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

.field public static final DEVICE_MAKE_FIELD_NUMBER:I = 0x1

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x2

.field public static final GAME_ID_FIELD_NUMBER:I = 0x8

.field public static final IDFI_FIELD_NUMBER:I = 0x4

.field public static final MEDIATION_PROVIDER_FIELD_NUMBER:I = 0xa

.field public static final MEDIATION_VERSION_FIELD_NUMBER:I = 0xc

.field public static final OS_VERSION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FIELD_NUMBER:I = 0x9

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x5

.field public static final SDK_VERSION_NAME_FIELD_NUMBER:I = 0x7

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xd


# instance fields
.field private bitField0_:I

.field private customMediationName_:Ljava/lang/String;

.field private deviceMake_:Ljava/lang/String;

.field private deviceModel_:Ljava/lang/String;

.field private gameId_:Ljava/lang/String;

.field private idfi_:Ljava/lang/String;

.field private mediationProvider_:I

.field private mediationVersion_:Ljava/lang/String;

.field private osVersion_:Ljava/lang/String;

.field private platform_:I

.field private sdkVersionName_:Ljava/lang/String;

.field private sdkVersion_:I

.field private sessionId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2028
    new-instance v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-direct {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;-><init>()V

    .line 2031
    sput-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    .line 2032
    const-class v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 273
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceMake_:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceModel_:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->osVersion_:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->idfi_:Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersionName_:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->gameId_:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->customMediationName_:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationVersion_:Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sessionId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1

    .line 268
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setDeviceMake(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setIdfi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearIdfi()V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setIdfiBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;I)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setSdkVersion(I)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearSdkVersion()V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setSdkVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearSdkVersionName()V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setGameId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearGameId()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearDeviceMake()V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setGameIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;I)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setPlatformValue(I)V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearPlatform()V

    return-void
.end method

.method static synthetic access$2400(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;I)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setMediationProviderValue(I)V

    return-void
.end method

.method static synthetic access$2500(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    return-void
.end method

.method static synthetic access$2600(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearMediationProvider()V

    return-void
.end method

.method static synthetic access$2700(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setCustomMediationName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearCustomMediationName()V

    return-void
.end method

.method static synthetic access$2900(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setDeviceMakeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setMediationVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearMediationVersion()V

    return-void
.end method

.method static synthetic access$3200(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setSessionId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearSessionId()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setDeviceModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearDeviceModel()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setDeviceModelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Ljava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setOsVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->clearOsVersion()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->setOsVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCustomMediationName()V
    .locals 1

    .line 910
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    .line 911
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getCustomMediationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceMake()V
    .locals 1

    .line 335
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDeviceMake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceMake_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceModel()V
    .locals 1

    .line 402
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method private clearGameId()V
    .locals 1

    .line 708
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private clearIdfi()V
    .locals 1

    .line 536
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getIdfi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->idfi_:Ljava/lang/String;

    return-void
.end method

.method private clearMediationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 846
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationProvider_:I

    return-void
.end method

.method private clearMediationVersion()V
    .locals 1

    .line 989
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    .line 990
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOsVersion()V
    .locals 1

    .line 469
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearPlatform()V
    .locals 1

    const/4 v0, 0x0

    .line 784
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->platform_:I

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersion_:I

    return-void
.end method

.method private clearSdkVersionName()V
    .locals 1

    .line 641
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private clearSessionId()V
    .locals 1

    .line 1054
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    .line 1055
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sessionId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1

    .line 2037
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;
    .locals 1

    .line 1135
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;
    .locals 1

    .line 1138
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1111
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1074
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1081
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1130
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1061
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1068
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1086
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1093
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;",
            ">;"
        }
    .end annotation

    .line 2043
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCustomMediationName(Ljava/lang/String;)V
    .locals 1

    .line 898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    .line 900
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 923
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 924
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->customMediationName_:Ljava/lang/String;

    .line 925
    iget p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    return-void
.end method

.method private setDeviceMake(Ljava/lang/String;)V
    .locals 0

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceMake_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceMakeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 347
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 348
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceMake_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceModelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 414
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 415
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method private setGameId(Ljava/lang/String;)V
    .locals 0

    .line 695
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setGameIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 720
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 721
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setIdfi(Ljava/lang/String;)V
    .locals 0

    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->idfi_:Ljava/lang/String;

    return-void
.end method

.method private setIdfiBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 548
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->idfi_:Ljava/lang/String;

    return-void
.end method

.method private setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 0

    .line 834
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationProvider_:I

    return-void
.end method

.method private setMediationProviderValue(I)V
    .locals 0

    .line 823
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationProvider_:I

    return-void
.end method

.method private setMediationVersion(Ljava/lang/String;)V
    .locals 1

    .line 977
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    .line 979
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1002
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1003
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationVersion_:Ljava/lang/String;

    .line 1004
    iget p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    return-void
.end method

.method private setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOsVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 481
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 482
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method private setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .locals 0

    .line 772
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->platform_:I

    return-void
.end method

.method private setPlatformValue(I)V
    .locals 0

    .line 761
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->platform_:I

    return-void
.end method

.method private setSdkVersion(I)V
    .locals 0

    .line 577
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersion_:I

    return-void
.end method

.method private setSdkVersionName(Ljava/lang/String;)V
    .locals 0

    .line 628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 653
    invoke-static {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 654
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1043
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    .line 1044
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sessionId_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1966
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2021
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    const/4 p1, 0x1

    .line 2015
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2000
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2002
    const-class v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    monitor-enter v1

    .line 2003
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2005
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-direct {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2008
    sput-object p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->PARSER:Lcom/google/protobuf/Parser;

    .line 2010
    :cond_0
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 1997
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    return-object p1

    .line 1974
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "deviceMake_"

    const-string v2, "deviceModel_"

    const-string v3, "osVersion_"

    const-string v4, "idfi_"

    const-string v5, "sdkVersion_"

    const-string v6, "sdkVersionName_"

    const-string v7, "gameId_"

    const-string v8, "platform_"

    const-string v9, "mediationProvider_"

    const-string v10, "customMediationName_"

    const-string v11, "mediationVersion_"

    const-string v12, "sessionId_"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    .line 1989
    const-string v0, "\u0000\u000c\u0000\u0001\u0001\r\u000c\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u000b\u0007\u0208\u0008\u0208\t\u000c\n\u000c\u000b\u1208\u0000\u000c\u1208\u0001\r\u100a\u0002"

    .line 1993
    sget-object v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-static {v1, v0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1971
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;

    invoke-direct {p1, v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken$Builder;-><init>(Lgatewayprotocol/v1/UniversalRequestOuterClass$1;)V

    return-object p1

    .line 1968
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    invoke-direct {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;-><init>()V

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

.method public getCustomMediationName()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->customMediationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 886
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->customMediationName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMake()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceMake_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 310
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceMake_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 377
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->deviceModel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->gameId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 683
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->gameId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdfi()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->idfi_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfiBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 511
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->idfi_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 811
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationProvider_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 812
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    :cond_0
    return-object v0
.end method

.method public getMediationProviderValue()I
    .locals 1

    .line 799
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationProvider_:I

    return v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 952
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 965
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->mediationVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->osVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 444
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->osVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .locals 1

    .line 749
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->platform_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 750
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    :cond_0
    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 737
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->platform_:I

    return v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 565
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersion_:I

    return v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 616
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sdkVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1031
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->sessionId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasCustomMediationName()Z
    .locals 2

    .line 861
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationVersion()Z
    .locals 1

    .line 940
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionId()Z
    .locals 1

    .line 1019
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
