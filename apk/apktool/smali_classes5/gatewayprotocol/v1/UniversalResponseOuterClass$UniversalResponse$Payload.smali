.class public final Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;,
        Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;",
        ">;",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_RESPONSE_FIELD_NUMBER:I = 0x4

.field public static final AD_PLAYER_CONFIG_RESPONSE_FIELD_NUMBER:I = 0x3

.field public static final AD_RESPONSE_FIELD_NUMBER:I = 0x2

.field public static final AD_VIEWER_RESPONSE_FIELD_NUMBER:I = 0x8

.field public static final AUDIENCE_MANAGEMENT_RESPONSE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

.field public static final INITIALIZATION_RESPONSE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_UPDATE_RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final REWARDED_OFFERS_RESPONSE_FIELD_NUMBER:I = 0x7


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1639
    new-instance v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;-><init>()V

    .line 1642
    sput-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    .line 1643
    const-class v1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1

    .line 256
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearValue()V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdPlayerConfigResponse()V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdDataRefreshResponse()V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergePrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearPrivacyUpdateResponse()V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAudienceManagementResponse()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearRewardedOffersResponse()V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-void
.end method

.method static synthetic access$2400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-void
.end method

.method static synthetic access$2500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdViewerResponse()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearInitializationResponse()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdResponse()V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-void
.end method

.method private clearAdDataRefreshResponse()V
    .locals 2

    .line 592
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 593
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdPlayerConfigResponse()V
    .locals 2

    .line 522
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdResponse()V
    .locals 2

    .line 452
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 453
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdViewerResponse()V
    .locals 2

    .line 877
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 878
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 879
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAudienceManagementResponse()V
    .locals 2

    .line 732
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 733
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 734
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearInitializationResponse()V
    .locals 2

    .line 382
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPrivacyUpdateResponse()V
    .locals 2

    .line 662
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 663
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRewardedOffersResponse()V
    .locals 2

    .line 807
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 808
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1

    .line 1648
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method private mergeAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .locals 3

    .line 574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 576
    invoke-static {}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 577
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->newBuilder(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 580
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 582
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .locals 3

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 506
    invoke-static {}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 507
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->newBuilder(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 510
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 512
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .locals 3

    .line 434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 436
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 437
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->newBuilder(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 442
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .locals 3

    .line 859
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 861
    invoke-static {}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 862
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->newBuilder(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    move-result-object v0

    .line 863
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 865
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 867
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 3

    .line 714
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 716
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 717
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->newBuilder(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;

    move-result-object v0

    .line 718
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 720
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 722
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .locals 3

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 366
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 367
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->newBuilder(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 370
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 372
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergePrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .locals 3

    .line 644
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 646
    invoke-static {}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->getDefaultInstance()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 647
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->newBuilder(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 650
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 652
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 3

    .line 788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 790
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 791
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->newBuilder(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    move-result-object v0

    .line 792
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 794
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    .line 796
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 960
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 963
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 899
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 906
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 886
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 893
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 911
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 918
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
            ">;"
        }
    .end annotation

    .line 1654
    sget-object v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .locals 0

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 564
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .locals 0

    .line 492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 494
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .locals 0

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 424
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .locals 0

    .line 847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 849
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 0

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 704
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .locals 0

    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 354
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .locals 0

    .line 632
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 634
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 0

    .line 775
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 777
    iput p1, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1581
    sget-object p2, Lgatewayprotocol/v1/UniversalResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1632
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1626
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1611
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1613
    const-class p2, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    monitor-enter p2

    .line 1614
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1616
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1619
    sput-object p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/Parser;

    .line 1621
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

    .line 1608
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p1

    .line 1589
    :pswitch_4
    const-string v0, "value_"

    const-string v1, "valueCase_"

    const-class v2, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    const-class v3, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    const-class v4, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    const-class v5, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    const-class v6, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    const-class v7, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    const-class v8, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    const-class v9, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    .line 1601
    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    .line 1604
    sget-object p3, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1586
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;-><init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$1;)V

    return-object p1

    .line 1583
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;-><init>()V

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

.method public getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .locals 2

    .line 549
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    return-object v0

    .line 552
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .locals 2

    .line 479
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    return-object v0

    .line 482
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .locals 2

    .line 409
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object v0

    .line 412
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewerResponse()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .locals 2

    .line 834
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 835
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object v0

    .line 837
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAudienceManagementResponse()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 2

    .line 689
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object v0

    .line 692
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .locals 2

    .line 339
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0

    .line 342
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .locals 2

    .line 619
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    return-object v0

    .line 622
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->getDefaultInstance()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedOffersResponse()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 762
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object v0

    .line 764
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 1

    .line 309
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->forNumber(I)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshResponse()Z
    .locals 2

    .line 538
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdPlayerConfigResponse()Z
    .locals 2

    .line 468
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdResponse()Z
    .locals 2

    .line 398
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdViewerResponse()Z
    .locals 2

    .line 823
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAudienceManagementResponse()Z
    .locals 2

    .line 678
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitializationResponse()Z
    .locals 2

    .line 328
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacyUpdateResponse()Z
    .locals 2

    .line 608
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasRewardedOffersResponse()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    iget v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
