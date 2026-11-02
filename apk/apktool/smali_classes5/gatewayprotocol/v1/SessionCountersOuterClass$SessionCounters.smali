.class public final Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SessionCountersOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCountersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/SessionCountersOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionCounters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;",
        ">;",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCountersOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALL_ERRORS_COUNT_FIELD_NUMBER:I = 0xb

.field public static final BANNER_IMPRESSIONS_FIELD_NUMBER:I = 0x5

.field public static final BANNER_LOAD_REQUESTS_FIELD_NUMBER:I = 0x3

.field public static final BANNER_REQUESTS_ADM_FIELD_NUMBER:I = 0x4

.field public static final CACHE_TIMEOUT_ERRORS_COUNT_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field public static final FOCUS_CHANGE_COUNT_FIELD_NUMBER:I = 0x8

.field public static final GLOBAL_ADS_FOCUS_CHANGE_COUNT_FIELD_NUMBER:I = 0x7

.field public static final GLOBAL_ADS_FOCUS_TIME_FIELD_NUMBER:I = 0x6

.field public static final INITIALIZATION_LATENCY_FIELD_NUMBER:I = 0x9

.field public static final LAST_LOAD_LATENCY_FIELD_NUMBER:I = 0xa

.field public static final LOAD_REQUESTS_ADM_FIELD_NUMBER:I = 0x2

.field public static final LOAD_REQUESTS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUCCESS_COUNT_FIELD_NUMBER:I = 0xd


# instance fields
.field private allErrorsCount_:I

.field private bannerImpressions_:I

.field private bannerLoadRequests_:I

.field private bannerRequestsAdm_:I

.field private cacheTimeoutErrorsCount_:I

.field private focusChangeCount_:I

.field private globalAdsFocusChangeCount_:I

.field private globalAdsFocusTime_:I

.field private initializationLatency_:I

.field private lastLoadLatency_:I

.field private loadRequestsAdm_:I

.field private loadRequests_:I

.field private successCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1343
    new-instance v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-direct {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;-><init>()V

    .line 1346
    sput-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 1347
    const-class v1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 150
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setLoadRequests(I)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearBannerImpressions()V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setGlobalAdsFocusTime(I)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearGlobalAdsFocusTime()V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setGlobalAdsFocusChangeCount(I)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearGlobalAdsFocusChangeCount()V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setFocusChangeCount(I)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearFocusChangeCount()V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setInitializationLatency(I)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearInitializationLatency()V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setLastLoadLatency(I)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearLoadRequests()V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearLastLoadLatency()V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setAllErrorsCount(I)V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearAllErrorsCount()V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setCacheTimeoutErrorsCount(I)V

    return-void
.end method

.method static synthetic access$2400(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearCacheTimeoutErrorsCount()V

    return-void
.end method

.method static synthetic access$2500(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setSuccessCount(I)V

    return-void
.end method

.method static synthetic access$2600(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearSuccessCount()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setLoadRequestsAdm(I)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearLoadRequestsAdm()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setBannerLoadRequests(I)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearBannerLoadRequests()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setBannerRequestsAdm(I)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->clearBannerRequestsAdm()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->setBannerImpressions(I)V

    return-void
.end method

.method private clearAllErrorsCount()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->allErrorsCount_:I

    return-void
.end method

.method private clearBannerImpressions()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerImpressions_:I

    return-void
.end method

.method private clearBannerLoadRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerLoadRequests_:I

    return-void
.end method

.method private clearBannerRequestsAdm()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerRequestsAdm_:I

    return-void
.end method

.method private clearCacheTimeoutErrorsCount()V
    .locals 1

    const/4 v0, 0x0

    .line 613
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->cacheTimeoutErrorsCount_:I

    return-void
.end method

.method private clearFocusChangeCount()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->focusChangeCount_:I

    return-void
.end method

.method private clearGlobalAdsFocusChangeCount()V
    .locals 1

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->globalAdsFocusChangeCount_:I

    return-void
.end method

.method private clearGlobalAdsFocusTime()V
    .locals 1

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->globalAdsFocusTime_:I

    return-void
.end method

.method private clearInitializationLatency()V
    .locals 1

    const/4 v0, 0x0

    .line 499
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->initializationLatency_:I

    return-void
.end method

.method private clearLastLoadLatency()V
    .locals 1

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->lastLoadLatency_:I

    return-void
.end method

.method private clearLoadRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->loadRequests_:I

    return-void
.end method

.method private clearLoadRequestsAdm()V
    .locals 1

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->loadRequestsAdm_:I

    return-void
.end method

.method private clearSuccessCount()V
    .locals 1

    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->successCount_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 1352
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 731
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 734
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 670
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 677
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 657
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 664
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 682
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 689
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;",
            ">;"
        }
    .end annotation

    .line 1358
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllErrorsCount(I)V
    .locals 0

    .line 564
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->allErrorsCount_:I

    return-void
.end method

.method private setBannerImpressions(I)V
    .locals 0

    .line 333
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerImpressions_:I

    return-void
.end method

.method private setBannerLoadRequests(I)V
    .locals 0

    .line 257
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerLoadRequests_:I

    return-void
.end method

.method private setBannerRequestsAdm(I)V
    .locals 0

    .line 295
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerRequestsAdm_:I

    return-void
.end method

.method private setCacheTimeoutErrorsCount(I)V
    .locals 0

    .line 602
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->cacheTimeoutErrorsCount_:I

    return-void
.end method

.method private setFocusChangeCount(I)V
    .locals 0

    .line 447
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->focusChangeCount_:I

    return-void
.end method

.method private setGlobalAdsFocusChangeCount(I)V
    .locals 0

    .line 409
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->globalAdsFocusChangeCount_:I

    return-void
.end method

.method private setGlobalAdsFocusTime(I)V
    .locals 0

    .line 371
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->globalAdsFocusTime_:I

    return-void
.end method

.method private setInitializationLatency(I)V
    .locals 0

    .line 487
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->initializationLatency_:I

    return-void
.end method

.method private setLastLoadLatency(I)V
    .locals 0

    .line 526
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->lastLoadLatency_:I

    return-void
.end method

.method private setLoadRequests(I)V
    .locals 0

    .line 181
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->loadRequests_:I

    return-void
.end method

.method private setLoadRequestsAdm(I)V
    .locals 0

    .line 219
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->loadRequestsAdm_:I

    return-void
.end method

.method private setSuccessCount(I)V
    .locals 0

    .line 640
    iput p1, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->successCount_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1281
    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1336
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    const/4 p1, 0x1

    .line 1330
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1315
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1317
    const-class v1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    monitor-enter v1

    .line 1318
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1320
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-direct {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1323
    sput-object p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->PARSER:Lcom/google/protobuf/Parser;

    .line 1325
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

    .line 1312
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object p1

    .line 1289
    :pswitch_4
    const-string v0, "loadRequests_"

    const-string v1, "loadRequestsAdm_"

    const-string v2, "bannerLoadRequests_"

    const-string v3, "bannerRequestsAdm_"

    const-string v4, "bannerImpressions_"

    const-string v5, "globalAdsFocusTime_"

    const-string v6, "globalAdsFocusChangeCount_"

    const-string v7, "focusChangeCount_"

    const-string v8, "initializationLatency_"

    const-string v9, "lastLoadLatency_"

    const-string v10, "allErrorsCount_"

    const-string v11, "cacheTimeoutErrorsCount_"

    const-string v12, "successCount_"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    .line 1304
    const-string v0, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0006\u0004\u0007\u0004\u0008\u0004\t\u0004\n\u0004\u000b\u0004\u000c\u0004\r\u0004"

    .line 1308
    sget-object v1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v1, v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1286
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-direct {p1, v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;-><init>(Lgatewayprotocol/v1/SessionCountersOuterClass$1;)V

    return-object p1

    .line 1283
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-direct {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;-><init>()V

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

.method public getAllErrorsCount()I
    .locals 1

    .line 552
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->allErrorsCount_:I

    return v0
.end method

.method public getBannerImpressions()I
    .locals 1

    .line 321
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerImpressions_:I

    return v0
.end method

.method public getBannerLoadRequests()I
    .locals 1

    .line 245
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerLoadRequests_:I

    return v0
.end method

.method public getBannerRequestsAdm()I
    .locals 1

    .line 283
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->bannerRequestsAdm_:I

    return v0
.end method

.method public getCacheTimeoutErrorsCount()I
    .locals 1

    .line 590
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->cacheTimeoutErrorsCount_:I

    return v0
.end method

.method public getFocusChangeCount()I
    .locals 1

    .line 435
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->focusChangeCount_:I

    return v0
.end method

.method public getGlobalAdsFocusChangeCount()I
    .locals 1

    .line 397
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->globalAdsFocusChangeCount_:I

    return v0
.end method

.method public getGlobalAdsFocusTime()I
    .locals 1

    .line 359
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->globalAdsFocusTime_:I

    return v0
.end method

.method public getInitializationLatency()I
    .locals 1

    .line 474
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->initializationLatency_:I

    return v0
.end method

.method public getLastLoadLatency()I
    .locals 1

    .line 514
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->lastLoadLatency_:I

    return v0
.end method

.method public getLoadRequests()I
    .locals 1

    .line 169
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->loadRequests_:I

    return v0
.end method

.method public getLoadRequestsAdm()I
    .locals 1

    .line 207
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->loadRequestsAdm_:I

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    .line 628
    iget v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->successCount_:I

    return v0
.end method
