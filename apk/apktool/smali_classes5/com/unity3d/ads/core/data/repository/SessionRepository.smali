.class public interface abstract Lcom/unity3d/ads/core/data/repository/SessionRepository;
.super Ljava/lang/Object;
.source "SessionRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u001b\u0008`\u0018\u00002\u00020\u0001J\u000e\u0010b\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010cJ\u0016\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010gJ\u000e\u0010h\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010cJ\u0016\u0010i\u001a\u00020e2\u0006\u0010f\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010gJ\u000e\u0010j\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010cJ\u0016\u0010k\u001a\u00020e2\u0006\u0010f\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010gJ\u0008\u0010l\u001a\u00020eH&J\u0008\u0010m\u001a\u00020eH&J\u0008\u0010n\u001a\u00020eH&J\u0008\u0010o\u001a\u00020eH&J\u0008\u0010p\u001a\u00020eH&J\u000e\u0010q\u001a\u00020eH\u00a6@\u00a2\u0006\u0002\u0010cJ\u0008\u0010r\u001a\u00020eH&J\u0008\u0010s\u001a\u00020eH&J\u0008\u0010t\u001a\u00020eH&J\u0008\u0010u\u001a\u00020eH&J\u0008\u0010v\u001a\u00020eH&J\u0010\u0010w\u001a\u00020e2\u0006\u0010x\u001a\u00020SH&J\u0008\u0010y\u001a\u00020eH&J\u0010\u0010z\u001a\u00020e2\u0006\u0010{\u001a\u00020SH&J\u0010\u0010|\u001a\u00020e2\u0006\u0010{\u001a\u00020SH&J\u0008\u0010}\u001a\u00020eH&J\u0008\u0010~\u001a\u00020eH&J\u0008\u0010\u007f\u001a\u00020eH&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0012X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u0018X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0018\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00180+X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0012\u0010.\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u00100R\u0012\u00101\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00100R\u0012\u00102\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00100R\u0018\u00103\u001a\u000204X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u0018\u00109\u001a\u00020:X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u0004\u0018\u00010\u0012X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008@\u0010\u0014\"\u0004\u0008A\u0010\u0016R\u0018\u0010B\u001a\u00020/X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u00100\"\u0004\u0008D\u0010ER\u0012\u0010F\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010\u0005R\u0012\u0010H\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u00100R\u0018\u0010I\u001a\u0008\u0012\u0004\u0012\u00020K0JX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u0012\u0010N\u001a\u00020OX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010QR\u0012\u0010R\u001a\u00020SX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0012\u0010V\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u00100R\u0012\u0010W\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u00100R\u0014\u0010X\u001a\u0004\u0018\u00010\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010\u0014R\u0014\u0010Z\u001a\u0004\u0018\u00010\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u0014R\u001a\u0010\\\u001a\u0004\u0018\u00010]X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010a\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "",
        "sessionToken",
        "Lcom/google/protobuf/ByteString;",
        "getSessionToken",
        "()Lcom/google/protobuf/ByteString;",
        "setSessionToken",
        "(Lcom/google/protobuf/ByteString;)V",
        "gatewayState",
        "getGatewayState",
        "setGatewayState",
        "nativeConfiguration",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "getNativeConfiguration",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "setNativeConfiguration",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V",
        "gatewayUrl",
        "",
        "getGatewayUrl",
        "()Ljava/lang/String;",
        "setGatewayUrl",
        "(Ljava/lang/String;)V",
        "initializationState",
        "Lcom/unity3d/ads/core/data/model/InitializationState;",
        "getInitializationState",
        "()Lcom/unity3d/ads/core/data/model/InitializationState;",
        "setInitializationState",
        "(Lcom/unity3d/ads/core/data/model/InitializationState;)V",
        "initializationError",
        "Lcom/unity3d/ads/core/data/model/exception/InitializationException;",
        "getInitializationError",
        "()Lcom/unity3d/ads/core/data/model/exception/InitializationException;",
        "setInitializationError",
        "(Lcom/unity3d/ads/core/data/model/exception/InitializationException;)V",
        "requestUrlOverrides",
        "",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
        "getRequestUrlOverrides",
        "()Ljava/util/List;",
        "setRequestUrlOverrides",
        "(Ljava/util/List;)V",
        "observeInitializationState",
        "Lkotlinx/coroutines/flow/Flow;",
        "getObserveInitializationState",
        "()Lkotlinx/coroutines/flow/Flow;",
        "isSdkInitialized",
        "",
        "()Z",
        "isNativeConfigReady",
        "isDiagnosticsEnabled",
        "sessionCounters",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;",
        "getSessionCounters",
        "()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;",
        "setSessionCounters",
        "(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V",
        "tokenCounters",
        "Lcom/unity3d/ads/core/data/model/TokenCounters;",
        "getTokenCounters",
        "()Lcom/unity3d/ads/core/data/model/TokenCounters;",
        "setTokenCounters",
        "(Lcom/unity3d/ads/core/data/model/TokenCounters;)V",
        "gameId",
        "getGameId",
        "setGameId",
        "shouldInitialize",
        "getShouldInitialize",
        "setShouldInitialize",
        "(Z)V",
        "sessionId",
        "getSessionId",
        "isTestModeEnabled",
        "onChange",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "Lcom/unity3d/ads/core/data/model/SessionChange;",
        "getOnChange",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "featureFlags",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "getFeatureFlags",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "headerBiddingTokenCounter",
        "",
        "getHeaderBiddingTokenCounter",
        "()I",
        "isOmEnabled",
        "isFirstInitAttempt",
        "unityInstallationId",
        "getUnityInstallationId",
        "unityMegaSessionId",
        "getUnityMegaSessionId",
        "initializationConfiguration",
        "Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;",
        "getInitializationConfiguration",
        "()Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;",
        "setInitializationConfiguration",
        "(Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;)V",
        "getGatewayCache",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setGatewayCache",
        "",
        "value",
        "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPrivacy",
        "setPrivacy",
        "getPrivacyFsm",
        "setPrivacyFsm",
        "incrementLoadRequestCount",
        "incrementLoadRequestAdmCount",
        "incrementBannerLoadRequestCount",
        "incrementBannerLoadRequestAdmCount",
        "incrementBannerImpressionCount",
        "persistNativeConfiguration",
        "incrementTokenSequenceNumber",
        "incrementTokenWinsCount",
        "incrementTokenStartsCount",
        "resetTokenCounters",
        "incrementGlobalAdsFocusChangeCount",
        "addTimeToGlobalAdsFocusTime",
        "timeMs",
        "incrementFocusChangeCount",
        "setInitializationLatency",
        "ms",
        "setLastLoadLatency",
        "incrementAllErrorsCount",
        "incrementCacheTimeoutErrorsCount",
        "incrementSuccessCount",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addTimeToGlobalAdsFocusTime(I)V
.end method

.method public abstract getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
.end method

.method public abstract getGameId()Ljava/lang/String;
.end method

.method public abstract getGatewayCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getGatewayState()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGatewayUrl()Ljava/lang/String;
.end method

.method public abstract getHeaderBiddingTokenCounter()I
.end method

.method public abstract getInitializationConfiguration()Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;
.end method

.method public abstract getInitializationError()Lcom/unity3d/ads/core/data/model/exception/InitializationException;
.end method

.method public abstract getInitializationState()Lcom/unity3d/ads/core/data/model/InitializationState;
.end method

.method public abstract getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
.end method

.method public abstract getObserveInitializationState()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/unity3d/ads/core/data/model/InitializationState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnChange()Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/unity3d/ads/core/data/model/SessionChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivacy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getPrivacyFsm(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getRequestUrlOverrides()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
.end method

.method public abstract getSessionId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSessionToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getShouldInitialize()Z
.end method

.method public abstract getTokenCounters()Lcom/unity3d/ads/core/data/model/TokenCounters;
.end method

.method public abstract getUnityInstallationId()Ljava/lang/String;
.end method

.method public abstract getUnityMegaSessionId()Ljava/lang/String;
.end method

.method public abstract incrementAllErrorsCount()V
.end method

.method public abstract incrementBannerImpressionCount()V
.end method

.method public abstract incrementBannerLoadRequestAdmCount()V
.end method

.method public abstract incrementBannerLoadRequestCount()V
.end method

.method public abstract incrementCacheTimeoutErrorsCount()V
.end method

.method public abstract incrementFocusChangeCount()V
.end method

.method public abstract incrementGlobalAdsFocusChangeCount()V
.end method

.method public abstract incrementLoadRequestAdmCount()V
.end method

.method public abstract incrementLoadRequestCount()V
.end method

.method public abstract incrementSuccessCount()V
.end method

.method public abstract incrementTokenSequenceNumber()V
.end method

.method public abstract incrementTokenStartsCount()V
.end method

.method public abstract incrementTokenWinsCount()V
.end method

.method public abstract isDiagnosticsEnabled()Z
.end method

.method public abstract isFirstInitAttempt()Z
.end method

.method public abstract isNativeConfigReady()Z
.end method

.method public abstract isOmEnabled()Z
.end method

.method public abstract isSdkInitialized()Z
.end method

.method public abstract isTestModeEnabled()Z
.end method

.method public abstract persistNativeConfiguration(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract resetTokenCounters()V
.end method

.method public abstract setGameId(Ljava/lang/String;)V
.end method

.method public abstract setGatewayCache(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setGatewayState(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract setGatewayUrl(Ljava/lang/String;)V
.end method

.method public abstract setInitializationConfiguration(Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;)V
.end method

.method public abstract setInitializationError(Lcom/unity3d/ads/core/data/model/exception/InitializationException;)V
.end method

.method public abstract setInitializationLatency(I)V
.end method

.method public abstract setInitializationState(Lcom/unity3d/ads/core/data/model/InitializationState;)V
.end method

.method public abstract setLastLoadLatency(I)V
.end method

.method public abstract setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
.end method

.method public abstract setPrivacy(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setPrivacyFsm(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setRequestUrlOverrides(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
.end method

.method public abstract setSessionToken(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract setShouldInitialize(Z)V
.end method

.method public abstract setTokenCounters(Lcom/unity3d/ads/core/data/model/TokenCounters;)V
.end method
