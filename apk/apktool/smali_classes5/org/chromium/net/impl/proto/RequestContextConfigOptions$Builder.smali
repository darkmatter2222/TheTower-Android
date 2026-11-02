.class public final Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RequestContextConfigOptions.java"

# interfaces
.implements Lorg/chromium/net/impl/proto/RequestContextConfigOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/proto/RequestContextConfigOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lorg/chromium/net/impl/proto/RequestContextConfigOptions;",
        "Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;",
        ">;",
        "Lorg/chromium/net/impl/proto/RequestContextConfigOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 718
    invoke-static {}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/impl/proto/RequestContextConfigOptions-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBrotliEnabled()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 996
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 997
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearBrotliEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearBypassPublicKeyPinningForLocalTrustAnchors()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1269
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1270
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearBypassPublicKeyPinningForLocalTrustAnchors(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearDisableCache()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearDisableCache(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearEnableNetworkQualityEstimator()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1233
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1234
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearEnableNetworkQualityEstimator(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearExperimentalOptions()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1151
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearExperimentalOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearHttp2Enabled()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 960
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 961
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearHttp2Enabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearHttpCacheMaxSize()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1104
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1105
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearHttpCacheMaxSize(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearHttpCacheMode()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1068
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1069
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearHttpCacheMode(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearMockCertVerifier()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1198
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearMockCertVerifier(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearNetworkThreadPriority()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1305
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1306
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearNetworkThreadPriority(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearProxyOptions()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1353
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearQuicDefaultUserAgentId()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearQuicDefaultUserAgentId(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearQuicEnabled()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 867
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 868
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearQuicEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearStoragePath()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearStoragePath(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public clearUserAgent()Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mclearUserAgent(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;)V

    return-object p0
.end method

.method public getBrotliEnabled()Z
    .locals 1

    .line 979
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getBrotliEnabled()Z

    move-result v0

    return v0
.end method

.method public getBypassPublicKeyPinningForLocalTrustAnchors()Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getBypassPublicKeyPinningForLocalTrustAnchors()Z

    move-result v0

    return v0
.end method

.method public getDisableCache()Z
    .locals 1

    .line 1015
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getDisableCache()Z

    move-result v0

    return v0
.end method

.method public getEnableNetworkQualityEstimator()Z
    .locals 1

    .line 1216
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getEnableNetworkQualityEstimator()Z

    move-result v0

    return v0
.end method

.method public getExperimentalOptions()Ljava/lang/String;
    .locals 1

    .line 1123
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getExperimentalOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentalOptionsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1132
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getExperimentalOptionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHttp2Enabled()Z
    .locals 1

    .line 943
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getHttp2Enabled()Z

    move-result v0

    return v0
.end method

.method public getHttpCacheMaxSize()J
    .locals 2

    .line 1087
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getHttpCacheMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHttpCacheMode()I
    .locals 1

    .line 1051
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getHttpCacheMode()I

    move-result v0

    return v0
.end method

.method public getMockCertVerifier()J
    .locals 2

    .line 1180
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getMockCertVerifier()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkThreadPriority()I
    .locals 1

    .line 1288
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getNetworkThreadPriority()I

    move-result v0

    return v0
.end method

.method public getProxyOptions()Lorg/chromium/net/impl/proto/ProxyOptions;
    .locals 1

    .line 1322
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getProxyOptions()Lorg/chromium/net/impl/proto/ProxyOptions;

    move-result-object v0

    return-object v0
.end method

.method public getQuicDefaultUserAgentId()Ljava/lang/String;
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getQuicDefaultUserAgentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuicDefaultUserAgentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getQuicDefaultUserAgentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuicEnabled()Z
    .locals 1

    .line 850
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getQuicEnabled()Z

    move-result v0

    return v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    .line 793
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoragePathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getStoragePathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 745
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBrotliEnabled()Z
    .locals 1

    .line 971
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasBrotliEnabled()Z

    move-result v0

    return v0
.end method

.method public hasBypassPublicKeyPinningForLocalTrustAnchors()Z
    .locals 1

    .line 1244
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasBypassPublicKeyPinningForLocalTrustAnchors()Z

    move-result v0

    return v0
.end method

.method public hasDisableCache()Z
    .locals 1

    .line 1007
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasDisableCache()Z

    move-result v0

    return v0
.end method

.method public hasEnableNetworkQualityEstimator()Z
    .locals 1

    .line 1208
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasEnableNetworkQualityEstimator()Z

    move-result v0

    return v0
.end method

.method public hasExperimentalOptions()Z
    .locals 1

    .line 1115
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasExperimentalOptions()Z

    move-result v0

    return v0
.end method

.method public hasHttp2Enabled()Z
    .locals 1

    .line 935
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasHttp2Enabled()Z

    move-result v0

    return v0
.end method

.method public hasHttpCacheMaxSize()Z
    .locals 1

    .line 1079
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasHttpCacheMaxSize()Z

    move-result v0

    return v0
.end method

.method public hasHttpCacheMode()Z
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasHttpCacheMode()Z

    move-result v0

    return v0
.end method

.method public hasMockCertVerifier()Z
    .locals 1

    .line 1172
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasMockCertVerifier()Z

    move-result v0

    return v0
.end method

.method public hasNetworkThreadPriority()Z
    .locals 1

    .line 1280
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasNetworkThreadPriority()Z

    move-result v0

    return v0
.end method

.method public hasProxyOptions()Z
    .locals 1

    .line 1315
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasProxyOptions()Z

    move-result v0

    return v0
.end method

.method public hasQuicDefaultUserAgentId()Z
    .locals 1

    .line 878
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasQuicDefaultUserAgentId()Z

    move-result v0

    return v0
.end method

.method public hasQuicEnabled()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasQuicEnabled()Z

    move-result v0

    return v0
.end method

.method public hasStoragePath()Z
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasStoragePath()Z

    move-result v0

    return v0
.end method

.method public hasUserAgent()Z
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->hasUserAgent()Z

    move-result v0

    return v0
.end method

.method public mergeProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1345
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1346
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$mmergeProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lorg/chromium/net/impl/proto/ProxyOptions;)V

    return-object p0
.end method

.method public setBrotliEnabled(Z)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 987
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 988
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetBrotliEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V

    return-object p0
.end method

.method public setBypassPublicKeyPinningForLocalTrustAnchors(Z)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1260
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetBypassPublicKeyPinningForLocalTrustAnchors(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V

    return-object p0
.end method

.method public setDisableCache(Z)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1024
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetDisableCache(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V

    return-object p0
.end method

.method public setEnableNetworkQualityEstimator(Z)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1224
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1225
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetEnableNetworkQualityEstimator(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V

    return-object p0
.end method

.method public setExperimentalOptions(Ljava/lang/String;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1141
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1142
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetExperimentalOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentalOptionsBytes(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1162
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetExperimentalOptionsBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHttp2Enabled(Z)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 951
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 952
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetHttp2Enabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V

    return-object p0
.end method

.method public setHttpCacheMaxSize(J)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1096
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetHttpCacheMaxSize(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;J)V

    return-object p0
.end method

.method public setHttpCacheMode(I)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetHttpCacheMode(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;I)V

    return-object p0
.end method

.method public setMockCertVerifier(J)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1188
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1189
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetMockCertVerifier(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;J)V

    return-object p0
.end method

.method public setNetworkThreadPriority(I)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1296
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1297
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetNetworkThreadPriority(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;I)V

    return-object p0
.end method

.method public setProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions$Builder;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1337
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1338
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-virtual {p1}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/impl/proto/ProxyOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lorg/chromium/net/impl/proto/ProxyOptions;)V

    return-object p0
.end method

.method public setProxyOptions(Lorg/chromium/net/impl/proto/ProxyOptions;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1328
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1329
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetProxyOptions(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lorg/chromium/net/impl/proto/ProxyOptions;)V

    return-object p0
.end method

.method public setQuicDefaultUserAgentId(Ljava/lang/String;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetQuicDefaultUserAgentId(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setQuicDefaultUserAgentIdBytes(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 924
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetQuicDefaultUserAgentIdBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setQuicEnabled(Z)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetQuicEnabled(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Z)V

    return-object p0
.end method

.method public setStoragePath(Ljava/lang/String;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 812
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetStoragePath(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStoragePathBytes(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 832
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetStoragePathBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetUserAgent(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUserAgentBytes(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 775
    iget-object v0, p0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/proto/RequestContextConfigOptions;->-$$Nest$msetUserAgentBytes(Lorg/chromium/net/impl/proto/RequestContextConfigOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
