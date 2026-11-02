.class public final Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RequestContextConfigOptions.java"

# interfaces
.implements Lorg/chromium/net/impl/proto/RequestContextConfigOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/impl/proto/RequestContextConfigOptions;",
        "Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;",
        ">;",
        "Lorg/chromium/net/impl/proto/RequestContextConfigOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BROTLI_ENABLED_FIELD_NUMBER:I = 0x6

.field public static final BYPASS_PUBLIC_KEY_PINNING_FOR_LOCAL_TRUST_ANCHORS_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

.field public static final DISABLE_CACHE_FIELD_NUMBER:I = 0x7

.field public static final ENABLE_NETWORK_QUALITY_ESTIMATOR_FIELD_NUMBER:I = 0xc

.field public static final EXPERIMENTAL_OPTIONS_FIELD_NUMBER:I = 0xa

.field public static final HTTP2_ENABLED_FIELD_NUMBER:I = 0x5

.field public static final HTTP_CACHE_MAX_SIZE_FIELD_NUMBER:I = 0x9

.field public static final HTTP_CACHE_MODE_FIELD_NUMBER:I = 0x8

.field public static final MOCK_CERT_VERIFIER_FIELD_NUMBER:I = 0xb

.field public static final NETWORK_THREAD_PRIORITY_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/impl/proto/RequestContextConfigOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXY_OPTIONS_FIELD_NUMBER:I = 0xf

.field public static final QUIC_DEFAULT_USER_AGENT_ID_FIELD_NUMBER:I = 0x4

.field public static final QUIC_ENABLED_FIELD_NUMBER:I = 0x3

.field public static final STORAGE_PATH_FIELD_NUMBER:I = 0x2

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private brotliEnabled_:Z

.field private bypassPublicKeyPinningForLocalTrustAnchors_:Z

.field private disableCache_:Z

.field private enableNetworkQualityEstimator_:Z

.field private experimentalOptions_:Ljava/lang/String;

.field private http2Enabled_:Z

.field private httpCacheMaxSize_:J

.field private httpCacheMode_:I

.field private mockCertVerifier_:J

.field private networkThreadPriority_:I

.field private proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

.field private quicDefaultUserAgentId_:Ljava/lang/String;

.field private quicEnabled_:Z

.field private storagePath_:Ljava/lang/String;

.field private userAgent_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearBrotliEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearBrotliEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBypassPublicKeyPinningForLocalTrustAnchors(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearBypassPublicKeyPinningForLocalTrustAnchors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDisableCache(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearDisableCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearEnableNetworkQualityEstimator(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearEnableNetworkQualityEstimator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearExperimentalOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearExperimentalOptions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearHttp2Enabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearHttp2Enabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearHttpCacheMaxSize(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearHttpCacheMaxSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearHttpCacheMode(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearHttpCacheMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearMockCertVerifier(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearMockCertVerifier()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearNetworkThreadPriority(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearNetworkThreadPriority()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearProxyOptions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearQuicDefaultUserAgentId(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearQuicDefaultUserAgentId()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearQuicEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearQuicEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearStoragePath(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearStoragePath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearUserAgent(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->clearUserAgent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lorg/chromium/net/impl/proto/ProxyOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->mergeProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBrotliEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setBrotliEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBypassPublicKeyPinningForLocalTrustAnchors(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setBypassPublicKeyPinningForLocalTrustAnchors(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisableCache(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setDisableCache(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnableNetworkQualityEstimator(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setEnableNetworkQualityEstimator(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExperimentalOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setExperimentalOptions(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExperimentalOptionsBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setExperimentalOptionsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHttp2Enabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setHttp2Enabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHttpCacheMaxSize(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setHttpCacheMaxSize(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHttpCacheMode(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setHttpCacheMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMockCertVerifier(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setMockCertVerifier(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNetworkThreadPriority(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setNetworkThreadPriority(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lorg/chromium/net/impl/proto/ProxyOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQuicDefaultUserAgentId(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setQuicDefaultUserAgentId(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQuicDefaultUserAgentIdBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setQuicDefaultUserAgentIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQuicEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setQuicEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStoragePath(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setStoragePath(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStoragePathBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setStoragePathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserAgent(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserAgentBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->setUserAgentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1

    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1430
    new-instance v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-direct {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;-><init>()V

    .line 1433
    sput-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    .line 1434
    const-class v1, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    return-void
.end method

.method private clearBrotliEnabled()V
    .locals 1

    .line 283
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->brotliEnabled_:Z

    return-void
.end method

.method private clearBypassPublicKeyPinningForLocalTrustAnchors()V
    .locals 1

    .line 541
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bypassPublicKeyPinningForLocalTrustAnchors_:Z

    return-void
.end method

.method private clearDisableCache()V
    .locals 1

    .line 317
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->disableCache_:Z

    return-void
.end method

.method private clearEnableNetworkQualityEstimator()V
    .locals 1

    .line 507
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->enableNetworkQualityEstimator_:Z

    return-void
.end method

.method private clearExperimentalOptions()V
    .locals 1

    .line 430
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 431
    invoke-static {}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getDefaultInstance()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getExperimentalOptions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    return-void
.end method

.method private clearHttp2Enabled()V
    .locals 1

    .line 249
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->http2Enabled_:Z

    return-void
.end method

.method private clearHttpCacheMaxSize()V
    .locals 2

    .line 385
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->httpCacheMaxSize_:J

    return-void
.end method

.method private clearHttpCacheMode()V
    .locals 1

    .line 351
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->httpCacheMode_:I

    return-void
.end method

.method private clearMockCertVerifier()V
    .locals 2

    .line 473
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 474
    iput-wide v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->mockCertVerifier_:J

    return-void
.end method

.method private clearNetworkThreadPriority()V
    .locals 1

    .line 575
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->networkThreadPriority_:I

    return-void
.end method

.method private clearProxyOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 621
    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 622
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method

.method private clearQuicDefaultUserAgentId()V
    .locals 1

    .line 206
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 207
    invoke-static {}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getDefaultInstance()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getQuicDefaultUserAgentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    return-void
.end method

.method private clearQuicEnabled()V
    .locals 1

    .line 161
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicEnabled_:Z

    return-void
.end method

.method private clearStoragePath()V
    .locals 1

    .line 118
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 119
    invoke-static {}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getDefaultInstance()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    return-void
.end method

.method private clearUserAgent()V
    .locals 1

    .line 64
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 65
    invoke-static {}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getDefaultInstance()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1

    .line 1439
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object v0
.end method

.method private mergeProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyOptions;->getDefaultInstance()Lorg/chromium/net/impl/proto/ProxyOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 611
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 612
    invoke-static {v0}, Lorg/chromium/net/impl/proto/ProxyOptions;->newBuilder(Lorg/chromium/net/impl/proto/ProxyOptions;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    invoke-virtual {p1}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/impl/proto/ProxyOptions;

    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    goto :goto_0

    .line 614
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 616
    :goto_0
    iget p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 702
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 705
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0, p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 628
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 635
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 653
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 660
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/impl/proto/RequestContextConfigOptions;",
            ">;"
        }
    .end annotation

    .line 1445
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBrotliEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 276
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 277
    iput-boolean p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->brotliEnabled_:Z

    return-void
.end method

.method private setBypassPublicKeyPinningForLocalTrustAnchors(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 534
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 535
    iput-boolean p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bypassPublicKeyPinningForLocalTrustAnchors_:Z

    return-void
.end method

.method private setDisableCache(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 310
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 311
    iput-boolean p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->disableCache_:Z

    return-void
.end method

.method private setEnableNetworkQualityEstimator(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 500
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 501
    iput-boolean p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->enableNetworkQualityEstimator_:Z

    return-void
.end method

.method private setExperimentalOptions(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 424
    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentalOptionsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    .line 440
    iget p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method

.method private setHttp2Enabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 242
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 243
    iput-boolean p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->http2Enabled_:Z

    return-void
.end method

.method private setHttpCacheMaxSize(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 378
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 379
    iput-wide p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->httpCacheMaxSize_:J

    return-void
.end method

.method private setHttpCacheMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 344
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 345
    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->httpCacheMode_:I

    return-void
.end method

.method private setMockCertVerifier(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 466
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 467
    iput-wide p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->mockCertVerifier_:J

    return-void
.end method

.method private setNetworkThreadPriority(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 568
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 569
    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->networkThreadPriority_:I

    return-void
.end method

.method private setProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    .line 601
    iget p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method

.method private setQuicDefaultUserAgentId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 200
    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    return-void
.end method

.method private setQuicDefaultUserAgentIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    .line 216
    iget p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method

.method private setQuicEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 154
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 155
    iput-boolean p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicEnabled_:Z

    return-void
.end method

.method private setStoragePath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 112
    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    return-void
.end method

.method private setStoragePathBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    .line 128
    iget p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method

.method private setUserAgent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    .line 58
    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    return-void
.end method

.method private setUserAgentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    .line 74
    iget p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1364
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 1417
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1402
    :pswitch_2
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 1404
    const-class v1, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    monitor-enter v1

    .line 1405
    :try_start_0
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 1407
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1410
    sput-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 1412
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

    .line 1399
    :pswitch_3
    sget-object v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    return-object v0

    .line 1372
    :pswitch_4
    const-string v2, "bitField0_"

    const-string v3, "userAgent_"

    const-string v4, "storagePath_"

    const-string v5, "quicEnabled_"

    const-string v6, "quicDefaultUserAgentId_"

    const-string v7, "http2Enabled_"

    const-string v8, "brotliEnabled_"

    const-string v9, "disableCache_"

    const-string v10, "httpCacheMode_"

    const-string v11, "httpCacheMaxSize_"

    const-string v12, "experimentalOptions_"

    const-string v13, "mockCertVerifier_"

    const-string v14, "enableNetworkQualityEstimator_"

    const-string v15, "bypassPublicKeyPinningForLocalTrustAnchors_"

    const-string v16, "networkThreadPriority_"

    const-string v17, "proxyOptions_"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 1390
    const-string v1, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1008\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u1002\u0008\n\u1008\t\u000b\u1002\n\u000c\u1007\u000b\r\u1007\u000c\u000e\u1004\r\u000f\u1009\u000e"

    .line 1395
    sget-object v2, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->DEFAULT_INSTANCE:Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v2, v1, v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1369
    :pswitch_5
    new-instance v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;

    invoke-direct {v0, v1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;-><init>(Lorg/chromium/net/impl/proto/RequestContextConfigOptions-IA;)V

    return-object v0

    .line 1366
    :pswitch_6
    new-instance v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-direct {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;-><init>()V

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

.method public getBrotliEnabled()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->brotliEnabled_:Z

    return v0
.end method

.method public getBypassPublicKeyPinningForLocalTrustAnchors()Z
    .locals 1

    .line 527
    iget-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bypassPublicKeyPinningForLocalTrustAnchors_:Z

    return v0
.end method

.method public getDisableCache()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->disableCache_:Z

    return v0
.end method

.method public getEnableNetworkQualityEstimator()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->enableNetworkQualityEstimator_:Z

    return v0
.end method

.method public getExperimentalOptions()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentalOptionsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHttp2Enabled()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->http2Enabled_:Z

    return v0
.end method

.method public getHttpCacheMaxSize()J
    .locals 2

    .line 371
    iget-wide v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->httpCacheMaxSize_:J

    return-wide v0
.end method

.method public getHttpCacheMode()I
    .locals 1

    .line 337
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->httpCacheMode_:I

    return v0
.end method

.method public getMockCertVerifier()J
    .locals 2

    .line 459
    iget-wide v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->mockCertVerifier_:J

    return-wide v0
.end method

.method public getNetworkThreadPriority()I
    .locals 1

    .line 561
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->networkThreadPriority_:I

    return v0
.end method

.method public getProxyOptions()Lorg/chromium/net/impl/proto/ProxyOptions;
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->proxyOptions_:Lorg/chromium/net/impl/proto/ProxyOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyOptions;->getDefaultInstance()Lorg/chromium/net/impl/proto/ProxyOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQuicDefaultUserAgentId()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuicDefaultUserAgentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuicEnabled()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->quicEnabled_:Z

    return v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    return-object v0
.end method

.method public getStoragePathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBrotliEnabled()Z
    .locals 1

    .line 261
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBypassPublicKeyPinningForLocalTrustAnchors()Z
    .locals 1

    .line 519
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDisableCache()Z
    .locals 1

    .line 295
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnableNetworkQualityEstimator()Z
    .locals 1

    .line 485
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasExperimentalOptions()Z
    .locals 1

    .line 397
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHttp2Enabled()Z
    .locals 1

    .line 227
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHttpCacheMaxSize()Z
    .locals 1

    .line 363
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHttpCacheMode()Z
    .locals 1

    .line 329
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMockCertVerifier()Z
    .locals 1

    .line 451
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNetworkThreadPriority()Z
    .locals 1

    .line 553
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasProxyOptions()Z
    .locals 1

    .line 586
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasQuicDefaultUserAgentId()Z
    .locals 1

    .line 173
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasQuicEnabled()Z
    .locals 1

    .line 139
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStoragePath()Z
    .locals 1

    .line 85
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserAgent()Z
    .locals 2

    .line 31
    iget v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
