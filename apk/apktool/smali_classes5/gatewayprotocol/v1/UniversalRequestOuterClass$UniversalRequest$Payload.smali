.class public final Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;,
        Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;",
        ">;",
        "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_REQUEST_FIELD_NUMBER:I = 0x9

.field public static final AD_PLAYER_CONFIG_REQUEST_FIELD_NUMBER:I = 0x6

.field public static final AD_REQUEST_FIELD_NUMBER:I = 0x3

.field public static final AD_REVENUE_EVENT_REQUEST_FIELD_NUMBER:I = 0xd

.field public static final AD_VIEWER_REQUEST_FIELD_NUMBER:I = 0x11

.field public static final AUDIENCE_MANAGEMENT_REQUEST_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

.field public static final DIAGNOSTIC_EVENT_REQUEST_FIELD_NUMBER:I = 0x5

.field public static final GET_TOKEN_EVENT_REQUEST_FIELD_NUMBER:I = 0x7

.field public static final INITIALIZATION_COMPLETED_EVENT_REQUEST_FIELD_NUMBER:I = 0xa

.field public static final INITIALIZATION_REQUEST_FIELD_NUMBER:I = 0x2

.field public static final LIFECYCLE_EVENT_REQUEST_FIELD_NUMBER:I = 0xf

.field public static final MONITORING_EVENT_REQUEST_FIELD_NUMBER:I = 0xe

.field public static final OPERATIVE_EVENT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_UPDATE_REQUEST_FIELD_NUMBER:I = 0x8

.field public static final REWARDED_OFFERS_REQUEST_FIELD_NUMBER:I = 0x10

.field public static final TRANSACTION_EVENT_REQUEST_FIELD_NUMBER:I = 0xb


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6578
    new-instance v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;-><init>()V

    .line 6581
    sput-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 6582
    const-class v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4038
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4040
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method static synthetic access$10000(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdRevenueEventRequest(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)V

    return-void
.end method

.method static synthetic access$10100(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdRevenueEventRequest(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)V

    return-void
.end method

.method static synthetic access$10200(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdRevenueEventRequest()V

    return-void
.end method

.method static synthetic access$10300(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setMonitoringEventRequest(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-void
.end method

.method static synthetic access$10400(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeMonitoringEventRequest(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-void
.end method

.method static synthetic access$10500(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearMonitoringEventRequest()V

    return-void
.end method

.method static synthetic access$10600(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setLifecycleEventRequest(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    return-void
.end method

.method static synthetic access$10700(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeLifecycleEventRequest(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    return-void
.end method

.method static synthetic access$10800(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearLifecycleEventRequest()V

    return-void
.end method

.method static synthetic access$10900(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setRewardedOffersRequest(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V

    return-void
.end method

.method static synthetic access$11000(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeRewardedOffersRequest(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V

    return-void
.end method

.method static synthetic access$11100(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearRewardedOffersRequest()V

    return-void
.end method

.method static synthetic access$11200(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdViewerRequest(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-void
.end method

.method static synthetic access$11300(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdViewerRequest(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-void
.end method

.method static synthetic access$11400(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdViewerRequest()V

    return-void
.end method

.method static synthetic access$6500()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1

    .line 4033
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method static synthetic access$6600(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearValue()V

    return-void
.end method

.method static synthetic access$6700(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$6800(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$6900(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearInitializationRequest()V

    return-void
.end method

.method static synthetic access$7000(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdRequest(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-void
.end method

.method static synthetic access$7100(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdRequest(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-void
.end method

.method static synthetic access$7200(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdRequest()V

    return-void
.end method

.method static synthetic access$7300(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setOperativeEvent(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-void
.end method

.method static synthetic access$7400(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeOperativeEvent(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-void
.end method

.method static synthetic access$7500(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearOperativeEvent()V

    return-void
.end method

.method static synthetic access$7600(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setDiagnosticEventRequest(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-void
.end method

.method static synthetic access$7700(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeDiagnosticEventRequest(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-void
.end method

.method static synthetic access$7800(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearDiagnosticEventRequest()V

    return-void
.end method

.method static synthetic access$7900(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdPlayerConfigRequest(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    return-void
.end method

.method static synthetic access$8000(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdPlayerConfigRequest(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    return-void
.end method

.method static synthetic access$8100(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdPlayerConfigRequest()V

    return-void
.end method

.method static synthetic access$8200(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setGetTokenEventRequest(Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V

    return-void
.end method

.method static synthetic access$8300(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeGetTokenEventRequest(Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V

    return-void
.end method

.method static synthetic access$8400(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearGetTokenEventRequest()V

    return-void
.end method

.method static synthetic access$8500(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setPrivacyUpdateRequest(Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-void
.end method

.method static synthetic access$8600(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergePrivacyUpdateRequest(Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-void
.end method

.method static synthetic access$8700(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearPrivacyUpdateRequest()V

    return-void
.end method

.method static synthetic access$8800(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdDataRefreshRequest(Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-void
.end method

.method static synthetic access$8900(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdDataRefreshRequest(Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-void
.end method

.method static synthetic access$9000(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdDataRefreshRequest()V

    return-void
.end method

.method static synthetic access$9100(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setInitializationCompletedEventRequest(Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-void
.end method

.method static synthetic access$9200(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeInitializationCompletedEventRequest(Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-void
.end method

.method static synthetic access$9300(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearInitializationCompletedEventRequest()V

    return-void
.end method

.method static synthetic access$9400(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setTransactionEventRequest(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V

    return-void
.end method

.method static synthetic access$9500(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeTransactionEventRequest(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V

    return-void
.end method

.method static synthetic access$9600(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearTransactionEventRequest()V

    return-void
.end method

.method static synthetic access$9700(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAudienceManagementRequest(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V

    return-void
.end method

.method static synthetic access$9800(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 4033
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAudienceManagementRequest(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V

    return-void
.end method

.method static synthetic access$9900(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 4033
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAudienceManagementRequest()V

    return-void
.end method

.method private clearAdDataRefreshRequest()V
    .locals 2

    .line 4665
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4666
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4667
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdPlayerConfigRequest()V
    .locals 2

    .line 4455
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4456
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4457
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdRequest()V
    .locals 2

    .line 4245
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4246
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4247
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdRevenueEventRequest()V
    .locals 2

    .line 4945
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4946
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4947
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdViewerRequest()V
    .locals 2

    .line 5230
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5231
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 5232
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAudienceManagementRequest()V
    .locals 2

    .line 4875
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4876
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4877
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDiagnosticEventRequest()V
    .locals 2

    .line 4385
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4386
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4387
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGetTokenEventRequest()V
    .locals 2

    .line 4525
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4526
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4527
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearInitializationCompletedEventRequest()V
    .locals 2

    .line 4735
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4736
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4737
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearInitializationRequest()V
    .locals 2

    .line 4175
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4176
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4177
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLifecycleEventRequest()V
    .locals 2

    .line 5085
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5086
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 5087
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMonitoringEventRequest()V
    .locals 2

    .line 5015
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5016
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 5017
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperativeEvent()V
    .locals 2

    .line 4315
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4316
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4317
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPrivacyUpdateRequest()V
    .locals 2

    .line 4595
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4596
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4597
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRewardedOffersRequest()V
    .locals 2

    .line 5160
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5161
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 5162
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransactionEventRequest()V
    .locals 2

    .line 4805
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4806
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4807
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 4107
    iput v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 4108
    iput-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1

    .line 6587
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method private mergeAdDataRefreshRequest(Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 3

    .line 4647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4648
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4649
    invoke-static {}, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4650
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->newBuilder(Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;

    move-result-object v0

    .line 4651
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4653
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4655
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdPlayerConfigRequest(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 3

    .line 4437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4438
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4439
    invoke-static {}, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4440
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->newBuilder(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;

    move-result-object v0

    .line 4441
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4443
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4445
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdRequest(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 3

    .line 4227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4228
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4229
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4230
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->newBuilder(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    move-result-object v0

    .line 4231
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4233
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4235
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdRevenueEventRequest(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)V
    .locals 3

    .line 4927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4928
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4929
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4930
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;->newBuilder(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;

    move-result-object v0

    .line 4931
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4933
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4935
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdViewerRequest(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 3

    .line 5212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5213
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5214
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5215
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->newBuilder(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    move-result-object v0

    .line 5216
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5218
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5220
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAudienceManagementRequest(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 3

    .line 4857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4858
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4859
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4860
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->newBuilder(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;

    move-result-object v0

    .line 4861
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4863
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4865
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeDiagnosticEventRequest(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 3

    .line 4367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4368
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4369
    invoke-static {}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4370
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->newBuilder(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;

    move-result-object v0

    .line 4371
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4373
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4375
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeGetTokenEventRequest(Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 3

    .line 4507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4508
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4509
    invoke-static {}, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4510
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->newBuilder(Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;

    move-result-object v0

    .line 4511
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4513
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4515
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationCompletedEventRequest(Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 3

    .line 4717
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4718
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4719
    invoke-static {}, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4720
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->newBuilder(Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;

    move-result-object v0

    .line 4721
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4723
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4725
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 3

    .line 4157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4158
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4159
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4160
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    move-result-object v0

    .line 4161
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4163
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4165
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeLifecycleEventRequest(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V
    .locals 3

    .line 5067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5068
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5069
    invoke-static {}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5070
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->newBuilder(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;

    move-result-object v0

    .line 5071
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5073
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5075
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeMonitoringEventRequest(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 3

    .line 4997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4998
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4999
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5000
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    move-result-object v0

    .line 5001
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5003
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5005
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeOperativeEvent(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 3

    .line 4297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4298
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4299
    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4300
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->newBuilder(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    move-result-object v0

    .line 4301
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4303
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4305
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergePrivacyUpdateRequest(Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 3

    .line 4577
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4578
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4579
    invoke-static {}, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4580
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->newBuilder(Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;

    move-result-object v0

    .line 4581
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4583
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4585
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeRewardedOffersRequest(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .locals 3

    .line 5141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5142
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5143
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5144
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->newBuilder(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    move-result-object v0

    .line 5145
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5147
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 5149
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeTransactionEventRequest(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
    .locals 3

    .line 4787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4788
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4789
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4790
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;->newBuilder(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest$Builder;

    move-result-object v0

    .line 4791
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4793
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 4795
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;
    .locals 1

    .line 5313
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;
    .locals 1

    .line 5316
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5289
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5296
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5252
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5259
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5301
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5308
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5276
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5283
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5239
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5246
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5264
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5271
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            ">;"
        }
    .end annotation

    .line 6593
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdDataRefreshRequest(Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 0

    .line 4635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4636
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 4637
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdPlayerConfigRequest(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 0

    .line 4425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4426
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4427
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdRequest(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 4215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4216
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4217
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdRevenueEventRequest(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;)V
    .locals 0

    .line 4915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4916
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 4917
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdViewerRequest(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .locals 0

    .line 5200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5201
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x11

    .line 5202
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAudienceManagementRequest(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V
    .locals 0

    .line 4845
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4846
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 4847
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setDiagnosticEventRequest(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 0

    .line 4355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4356
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 4357
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setGetTokenEventRequest(Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 0

    .line 4495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4496
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 4497
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationCompletedEventRequest(Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 0

    .line 4705
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4706
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 4707
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 4145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4146
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 4147
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setLifecycleEventRequest(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V
    .locals 0

    .line 5055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5056
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 5057
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setMonitoringEventRequest(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .locals 0

    .line 4985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4986
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 4987
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setOperativeEvent(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 0

    .line 4285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4286
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 4287
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setPrivacyUpdateRequest(Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 0

    .line 4565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4566
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 4567
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setRewardedOffersRequest(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .locals 0

    .line 5128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5129
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x10

    .line 5130
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setTransactionEventRequest(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
    .locals 0

    .line 4775
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4776
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 4777
    iput p1, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 6510
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 6565
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 6550
    :pswitch_2
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 6552
    const-class v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    monitor-enter v1

    .line 6553
    :try_start_0
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 6555
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6558
    sput-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/Parser;

    .line 6560
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

    .line 6547
    :pswitch_3
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0

    .line 6518
    :pswitch_4
    const-string v2, "value_"

    const-string v3, "valueCase_"

    const-class v4, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    const-class v5, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    const-class v6, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    const-class v7, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    const-class v8, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    const-class v9, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    const-class v10, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    const-class v11, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    const-class v12, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    const-class v13, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    const-class v14, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    const-class v15, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    const-class v16, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    const-class v17, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    const-class v18, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    const-class v19, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 6538
    const-string v1, "\u0000\u0010\u0001\u0000\u0002\u0011\u0010\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000"

    .line 6543
    sget-object v2, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v2, v1, v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6515
    :pswitch_5
    new-instance v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;-><init>(Lgatewayprotocol/v1/UniversalRequestOuterClass$1;)V

    return-object v0

    .line 6512
    :pswitch_6
    new-instance v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;-><init>()V

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

.method public getAdDataRefreshRequest()Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;
    .locals 2

    .line 4622
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 4623
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    return-object v0

    .line 4625
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigRequest()Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;
    .locals 2

    .line 4412
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4413
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    return-object v0

    .line 4415
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequest()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .locals 2

    .line 4202
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4203
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object v0

    .line 4205
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdRevenueEventRequest()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;
    .locals 2

    .line 4902
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4903
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    return-object v0

    .line 4905
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewerRequest()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .locals 2

    .line 5187
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 5188
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object v0

    .line 5190
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAudienceManagementRequest()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
    .locals 2

    .line 4832
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 4833
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    return-object v0

    .line 4835
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticEventRequest()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .locals 2

    .line 4342
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4343
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    return-object v0

    .line 4345
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGetTokenEventRequest()Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
    .locals 2

    .line 4482
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 4483
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    return-object v0

    .line 4485
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationCompletedEventRequest()Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;
    .locals 2

    .line 4692
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4693
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    return-object v0

    .line 4695
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationRequest()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .locals 2

    .line 4132
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4133
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    return-object v0

    .line 4135
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleEventRequest()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;
    .locals 2

    .line 5042
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 5043
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    return-object v0

    .line 5045
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoringEventRequest()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .locals 2

    .line 4972
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 4973
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object v0

    .line 4975
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getOperativeEvent()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .locals 2

    .line 4272
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4273
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    return-object v0

    .line 4275
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateRequest()Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;
    .locals 2

    .line 4552
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4553
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    return-object v0

    .line 4555
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedOffersRequest()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5114
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 5115
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0

    .line 5117
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionEventRequest()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;
    .locals 2

    .line 4762
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 4763
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    return-object v0

    .line 4765
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .locals 1

    .line 4102
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->forNumber(I)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshRequest()Z
    .locals 2

    .line 4611
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdPlayerConfigRequest()Z
    .locals 2

    .line 4401
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdRequest()Z
    .locals 2

    .line 4191
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdRevenueEventRequest()Z
    .locals 2

    .line 4891
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdViewerRequest()Z
    .locals 2

    .line 5176
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAudienceManagementRequest()Z
    .locals 2

    .line 4821
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDiagnosticEventRequest()Z
    .locals 2

    .line 4331
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasGetTokenEventRequest()Z
    .locals 2

    .line 4471
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitializationCompletedEventRequest()Z
    .locals 2

    .line 4681
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitializationRequest()Z
    .locals 2

    .line 4121
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLifecycleEventRequest()Z
    .locals 2

    .line 5031
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMonitoringEventRequest()Z
    .locals 2

    .line 4961
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOperativeEvent()Z
    .locals 2

    .line 4261
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacyUpdateRequest()Z
    .locals 2

    .line 4541
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasRewardedOffersRequest()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5102
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransactionEventRequest()Z
    .locals 2

    .line 4751
    iget v0, p0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
