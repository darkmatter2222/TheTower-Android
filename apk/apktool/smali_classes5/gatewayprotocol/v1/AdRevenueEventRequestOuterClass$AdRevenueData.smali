.class public final Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AdRevenueEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdRevenueData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0x7

.field public static final AD_UNIT_ID_FIELD_NUMBER:I = 0x5

.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

.field public static final EVENT_ID_FIELD_NUMBER:I = 0x1

.field public static final NETWORK_NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
            ">;"
        }
    .end annotation
.end field

.field public static final REVENUE_FIELD_NUMBER:I = 0x2

.field public static final THIRD_PARTY_AD_PLACEMENT_ID_FIELD_NUMBER:I = 0x6


# instance fields
.field private adFormat_:I

.field private adUnitId_:Ljava/lang/String;

.field private bitField0_:I

.field private countryCode_:Ljava/lang/String;

.field private eventId_:Lcom/google/protobuf/ByteString;

.field private networkName_:Ljava/lang/String;

.field private revenue_:D

.field private thirdPartyAdPlacementId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1416
    new-instance v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;-><init>()V

    .line 1419
    sput-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    .line 1420
    const-class v1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 295
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->eventId_:Lcom/google/protobuf/ByteString;

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->countryCode_:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->networkName_:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adUnitId_:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->thirdPartyAdPlacementId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1

    .line 289
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setEventId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setNetworkNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearAdUnitId()V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setAdUnitIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setThirdPartyAdPlacementId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearThirdPartyAdPlacementId()V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setThirdPartyAdPlacementIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;I)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setAdFormatValue(I)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearAdFormat()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearEventId()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;D)V
    .locals 0

    .line 289
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setRevenue(D)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearRevenue()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearCountryCode()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setCountryCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->setNetworkName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->clearNetworkName()V

    return-void
.end method

.method private clearAdFormat()V
    .locals 1

    const/4 v0, 0x0

    .line 766
    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adFormat_:I

    return-void
.end method

.method private clearAdUnitId()V
    .locals 1

    .line 610
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 611
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adUnitId_:Ljava/lang/String;

    return-void
.end method

.method private clearCountryCode()V
    .locals 1

    .line 452
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 453
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private clearEventId()V
    .locals 1

    .line 338
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getEventId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->eventId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNetworkName()V
    .locals 1

    .line 531
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 532
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->networkName_:Ljava/lang/String;

    return-void
.end method

.method private clearRevenue()V
    .locals 2

    .line 387
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 388
    iput-wide v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->revenue_:D

    return-void
.end method

.method private clearThirdPartyAdPlacementId()V
    .locals 1

    .line 689
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 690
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->thirdPartyAdPlacementId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1

    .line 1425
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 846
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 849
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 785
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 792
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 772
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 779
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 797
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 804
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
            ">;"
        }
    .end annotation

    .line 1431
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .locals 0

    .line 754
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adFormat_:I

    return-void
.end method

.method private setAdFormatValue(I)V
    .locals 0

    .line 743
    iput p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adFormat_:I

    return-void
.end method

.method private setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 600
    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adUnitId_:Ljava/lang/String;

    return-void
.end method

.method private setAdUnitIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 623
    invoke-static {p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 624
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adUnitId_:Ljava/lang/String;

    .line 625
    iget p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 442
    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private setCountryCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 465
    invoke-static {p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 466
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->countryCode_:Ljava/lang/String;

    .line 467
    iget p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    return-void
.end method

.method private setEventId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->eventId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setNetworkName(Ljava/lang/String;)V
    .locals 1

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 521
    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->networkName_:Ljava/lang/String;

    return-void
.end method

.method private setNetworkNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 544
    invoke-static {p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 545
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->networkName_:Ljava/lang/String;

    .line 546
    iget p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    return-void
.end method

.method private setRevenue(D)V
    .locals 1

    .line 376
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 377
    iput-wide p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->revenue_:D

    return-void
.end method

.method private setThirdPartyAdPlacementId(Ljava/lang/String;)V
    .locals 1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    .line 679
    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->thirdPartyAdPlacementId_:Ljava/lang/String;

    return-void
.end method

.method private setThirdPartyAdPlacementIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 702
    invoke-static {p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 703
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->thirdPartyAdPlacementId_:Ljava/lang/String;

    .line 704
    iget p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1359
    sget-object p2, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1409
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1403
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1388
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1390
    const-class p2, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    monitor-enter p2

    .line 1391
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1393
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1396
    sput-object p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->PARSER:Lcom/google/protobuf/Parser;

    .line 1398
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

    .line 1385
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object p1

    .line 1367
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "eventId_"

    const-string v2, "revenue_"

    const-string v3, "countryCode_"

    const-string v4, "networkName_"

    const-string v5, "adUnitId_"

    const-string v6, "thirdPartyAdPlacementId_"

    const-string v7, "adFormat_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 1377
    const-string p2, "\u0000\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\n\u0002\u1000\u0000\u0003\u1208\u0001\u0004\u1208\u0002\u0005\u1208\u0003\u0006\u1208\u0004\u0007\u000c"

    .line 1381
    sget-object p3, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1364
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;-><init>(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$1;)V

    return-object p1

    .line 1361
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-direct {p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;-><init>()V

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

.method public getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 1

    .line 731
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adFormat_:I

    invoke-static {v0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 732
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_0
    return-object v0
.end method

.method public getAdFormatValue()I
    .locals 1

    .line 719
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adFormat_:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adUnitId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 586
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->adUnitId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 428
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->countryCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 314
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->eventId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->networkName_:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 507
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->networkName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRevenue()D
    .locals 2

    .line 365
    iget-wide v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->revenue_:D

    return-wide v0
.end method

.method public getThirdPartyAdPlacementId()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->thirdPartyAdPlacementId_:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyAdPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 665
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->thirdPartyAdPlacementId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAdUnitId()Z
    .locals 1

    .line 561
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .line 403
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNetworkName()Z
    .locals 1

    .line 482
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasRevenue()Z
    .locals 2

    .line 353
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasThirdPartyAdPlacementId()Z
    .locals 1

    .line 640
    iget v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
