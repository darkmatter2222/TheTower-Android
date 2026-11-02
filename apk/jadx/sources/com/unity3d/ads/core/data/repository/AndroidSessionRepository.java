package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.datasource.AndroidUnityInfoDataSource;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.GatewayUrl;
import com.unity3d.ads.core.data.model.InitializationConfigurationInternal;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.SessionChange;
import com.unity3d.ads.core.data.model.TokenCounters;
import com.unity3d.ads.core.data.model.exception.InitializationException;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.properties.SessionIdReader;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.SessionCountersKt;
import gatewayprotocol.v1.SessionCountersOuterClass;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidSessionRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010E\u001a\u00020FH\u0016J\b\u0010G\u001a\u00020FH\u0016J\b\u0010H\u001a\u00020FH\u0016J\b\u0010I\u001a\u00020FH\u0016J\b\u0010J\u001a\u00020FH\u0016J\b\u0010K\u001a\u00020FH\u0016J\u0010\u0010L\u001a\u00020F2\u0006\u0010M\u001a\u00020NH\u0016J\b\u0010O\u001a\u00020FH\u0016J\u0010\u0010P\u001a\u00020F2\u0006\u0010Q\u001a\u00020NH\u0016J\u0010\u0010R\u001a\u00020F2\u0006\u0010Q\u001a\u00020NH\u0016J\b\u0010S\u001a\u00020FH\u0016J\b\u0010T\u001a\u00020FH\u0016J\b\u0010U\u001a\u00020FH\u0016J\b\u0010V\u001a\u00020FH\u0016J\b\u0010W\u001a\u00020FH\u0016J\b\u0010X\u001a\u00020FH\u0016J\b\u0010Y\u001a\u00020FH\u0016J\u0010\u0010\u0088\u0001\u001a\u00020)H\u0096@¢\u0006\u0003\u0010\u0089\u0001J\u0018\u0010\u008a\u0001\u001a\u00020F2\u0006\u0010\"\u001a\u00020)H\u0096@¢\u0006\u0003\u0010\u008b\u0001J\u0010\u0010\u008c\u0001\u001a\u00020)H\u0096@¢\u0006\u0003\u0010\u0089\u0001J\u0018\u0010\u008d\u0001\u001a\u00020F2\u0006\u0010\"\u001a\u00020)H\u0096@¢\u0006\u0003\u0010\u008b\u0001J\u0010\u0010\u008e\u0001\u001a\u00020)H\u0096@¢\u0006\u0003\u0010\u0089\u0001J\u0018\u0010\u008f\u0001\u001a\u00020F2\u0006\u0010\"\u001a\u00020)H\u0096@¢\u0006\u0003\u0010\u008b\u0001J\u0010\u0010\u0096\u0001\u001a\u00020FH\u0096@¢\u0006\u0003\u0010\u0089\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001dX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010#\u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010!8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00100\u001a\b\u0012\u0004\u0012\u0002010\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R$\u00102\u001a\u0002012\u0006\u0010\"\u001a\u0002018V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0014\u00107\u001a\b\u0012\u0004\u0012\u0002080\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R$\u00109\u001a\u0002082\u0006\u0010\"\u001a\u0002088V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010?0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010@\u001a\u0004\u0018\u00010?2\b\u0010\"\u001a\u0004\u0018\u00010?8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0014\u0010Z\u001a\b\u0012\u0004\u0012\u00020)0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010[\u001a\u00020)2\u0006\u0010\"\u001a\u00020)8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\\\u0010,\"\u0004\b]\u0010^R\u0014\u0010_\u001a\b\u0012\u0004\u0012\u00020)0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010`\u001a\u00020)2\u0006\u0010\"\u001a\u00020)8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\ba\u0010,\"\u0004\bb\u0010^R$\u0010c\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\n8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u0014\u0010h\u001a\b\u0012\u0004\u0012\u00020!0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020!2\u0006\u0010\"\u001a\u00020!8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bi\u0010%\"\u0004\bj\u0010'R\u0014\u0010k\u001a\b\u0012\u0004\u0012\u00020l0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010m\u001a\u00020l2\u0006\u0010\"\u001a\u00020l8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\u001a\u0010r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020t0s0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R0\u0010u\u001a\b\u0012\u0004\u0012\u00020t0s2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020t0s8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR\u001a\u0010z\u001a\b\u0012\u0004\u0012\u00020l0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010|R\u0014\u0010}\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b}\u0010/R\u0014\u0010~\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b~\u0010/R\u0014\u0010\u007f\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010/R\u0018\u0010\u0080\u0001\u001a\u00030\u0081\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0015\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u00020N0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0085\u0001\u001a\u00020N8VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0015\u0010\u0090\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0091\u0001\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u00168V@VX\u0096\u000e¢\u0006\u000f\u001a\u0005\b\u0092\u0001\u0010/\"\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0016\u0010\u0095\u0001\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010/R\u0015\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0098\u0001\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010/R\u0018\u0010\u0099\u0001\u001a\u0004\u0018\u00010!8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010%R\u0018\u0010\u009b\u0001\u001a\u0004\u0018\u00010!8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010%R\"\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u0001X\u0096\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u009f\u0001\u0010 \u0001\"\u0006\b¡\u0001\u0010¢\u0001¨\u0006£\u0001"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "gatewayCacheDataSource", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "privacyDataSource", "fsmDataSource", "nativeConfigDataSource", "unityInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/AndroidUnityInfoDataSource;", "defaultNativeConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "gatewayUrl", "Lcom/unity3d/ads/core/data/model/GatewayUrl;", "<init>", "(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AndroidUnityInfoDataSource;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "_sdkConfiguration", "Lkotlinx/coroutines/flow/MutableStateFlow;", "isInit", "", "persistedNativeConfiguration", "Lkotlinx/coroutines/flow/Flow;", "_onChange", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/unity3d/ads/core/data/model/SessionChange;", "onChange", "Lkotlinx/coroutines/flow/SharedFlow;", "getOnChange", "()Lkotlinx/coroutines/flow/SharedFlow;", "_gameId", "", "value", AndroidGetAdPlayerContext.KEY_GAME_ID, "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "_sessionId", "Lcom/google/protobuf/ByteString;", "sessionId", "getSessionId", "()Lcom/google/protobuf/ByteString;", "_isTestModeEnabled", "isTestModeEnabled", "()Z", "_sessionCounters", "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "sessionCounters", "getSessionCounters", "()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "setSessionCounters", "(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V", "_tokenCounters", "Lcom/unity3d/ads/core/data/model/TokenCounters;", "tokenCounters", "getTokenCounters", "()Lcom/unity3d/ads/core/data/model/TokenCounters;", "setTokenCounters", "(Lcom/unity3d/ads/core/data/model/TokenCounters;)V", "_initializationError", "Lcom/unity3d/ads/core/data/model/exception/InitializationException;", "initializationError", "getInitializationError", "()Lcom/unity3d/ads/core/data/model/exception/InitializationException;", "setInitializationError", "(Lcom/unity3d/ads/core/data/model/exception/InitializationException;)V", "incrementLoadRequestCount", "", "incrementLoadRequestAdmCount", "incrementBannerLoadRequestCount", "incrementBannerLoadRequestAdmCount", "incrementBannerImpressionCount", "incrementGlobalAdsFocusChangeCount", "addTimeToGlobalAdsFocusTime", "timeMs", "", "incrementFocusChangeCount", "setInitializationLatency", "ms", "setLastLoadLatency", "incrementAllErrorsCount", "incrementCacheTimeoutErrorsCount", "incrementSuccessCount", "incrementTokenSequenceNumber", "incrementTokenWinsCount", "incrementTokenStartsCount", "resetTokenCounters", "_sessionToken", "sessionToken", "getSessionToken", "setSessionToken", "(Lcom/google/protobuf/ByteString;)V", "_currentState", "gatewayState", "getGatewayState", "setGatewayState", "nativeConfiguration", "getNativeConfiguration", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;", "setNativeConfiguration", "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V", "_gatewayUrl", "getGatewayUrl", "setGatewayUrl", "_initializationState", "Lcom/unity3d/ads/core/data/model/InitializationState;", "initializationState", "getInitializationState", "()Lcom/unity3d/ads/core/data/model/InitializationState;", "setInitializationState", "(Lcom/unity3d/ads/core/data/model/InitializationState;)V", "_requestUrlOverride", "", "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;", "requestUrlOverrides", "getRequestUrlOverrides", "()Ljava/util/List;", "setRequestUrlOverrides", "(Ljava/util/List;)V", "observeInitializationState", "getObserveInitializationState", "()Lkotlinx/coroutines/flow/Flow;", "isSdkInitialized", "isNativeConfigReady", "isDiagnosticsEnabled", "featureFlags", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;", "getFeatureFlags", "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;", "_headerBiddingTokenCounter", "headerBiddingTokenCounter", "getHeaderBiddingTokenCounter", "()I", "getGatewayCache", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setGatewayCache", "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPrivacy", "setPrivacy", "getPrivacyFsm", "setPrivacyFsm", "_shouldInitialize", "shouldInitialize", "getShouldInitialize", "setShouldInitialize", "(Z)V", "isOmEnabled", "persistNativeConfiguration", "_isFirstInitAttempt", "isFirstInitAttempt", "unityInstallationId", "getUnityInstallationId", "unityMegaSessionId", "getUnityMegaSessionId", "initializationConfiguration", "Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;", "getInitializationConfiguration", "()Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;", "setInitializationConfiguration", "(Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;)V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidSessionRepository implements SessionRepository {
    private final MutableStateFlow<ByteString> _currentState;
    private MutableStateFlow<String> _gameId;
    private final MutableStateFlow<String> _gatewayUrl;
    private final MutableStateFlow<Integer> _headerBiddingTokenCounter;
    private final MutableStateFlow<InitializationException> _initializationError;
    private final MutableStateFlow<InitializationState> _initializationState;
    private final MutableStateFlow<Boolean> _isFirstInitAttempt;
    private final MutableStateFlow<Boolean> _isTestModeEnabled;
    private MutableSharedFlow<SessionChange> _onChange;
    private final MutableStateFlow<List<InitializationResponseOuterClass.RequestUrlOverride>> _requestUrlOverride;
    private final MutableStateFlow<NativeConfigurationOuterClass.NativeConfiguration> _sdkConfiguration;
    private final MutableStateFlow<SessionCountersOuterClass.SessionCounters> _sessionCounters;
    private final MutableStateFlow<ByteString> _sessionId;
    private final MutableStateFlow<ByteString> _sessionToken;
    private final MutableStateFlow<Boolean> _shouldInitialize;
    private final MutableStateFlow<TokenCounters> _tokenCounters;
    private final ByteStringDataSource fsmDataSource;
    private final ByteStringDataSource gatewayCacheDataSource;
    private InitializationConfigurationInternal initializationConfiguration;
    private final MutableStateFlow<Boolean> isInit;
    private final ByteStringDataSource nativeConfigDataSource;
    private final SharedFlow<SessionChange> onChange;
    private final Flow<NativeConfigurationOuterClass.NativeConfiguration> persistedNativeConfiguration;
    private final ByteStringDataSource privacyDataSource;
    private final AndroidUnityInfoDataSource unityInfoDataSource;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidSessionRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$1", f = "AndroidSessionRepository.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SendDiagnosticEvent $sendDiagnosticEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SendDiagnosticEvent sendDiagnosticEvent, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$sendDiagnosticEvent = sendDiagnosticEvent;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidSessionRepository.this.new AnonymousClass1(this.$sendDiagnosticEvent, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = AndroidSessionRepository.this.nativeConfigDataSource.get(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ByteString data = ((ByteStringStoreOuterClass.ByteStringStore) obj).getData();
                if (!data.isEmpty()) {
                    MutableStateFlow mutableStateFlow = AndroidSessionRepository.this._sdkConfiguration;
                    NativeConfigurationOuterClass.NativeConfiguration from = NativeConfigurationOuterClass.NativeConfiguration.parseFrom(data);
                    Intrinsics.checkNotNullExpressionValue(from, "parseFrom(...)");
                    mutableStateFlow.setValue(from);
                }
            } catch (Exception e) {
                SendDiagnosticEvent sendDiagnosticEvent = this.$sendDiagnosticEvent;
                String message = e.getMessage();
                if (message == null) {
                    message = "unknown";
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_initialize_missed_native_parsing", (Double) null, MapsKt.mapOf(TuplesKt.to("debugReason", message)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
            }
            AndroidSessionRepository.this.isInit.setValue(Boxing.boxBoolean(true));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$getGatewayCache$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidSessionRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository", f = "AndroidSessionRepository.kt", i = {}, l = {266}, m = "getGatewayCache", n = {}, s = {})
    static final class C40091 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C40091(Continuation<? super C40091> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidSessionRepository.this.getGatewayCache(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidSessionRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository", f = "AndroidSessionRepository.kt", i = {}, l = {269}, m = "getPrivacy", n = {}, s = {})
    static final class C40101 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C40101(Continuation<? super C40101> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidSessionRepository.this.getPrivacy(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacyFsm$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidSessionRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository", f = "AndroidSessionRepository.kt", i = {}, l = {275}, m = "getPrivacyFsm", n = {}, s = {})
    static final class C40111 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C40111(Continuation<? super C40111> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidSessionRepository.this.getPrivacyFsm(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidSessionRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository", f = "AndroidSessionRepository.kt", i = {0}, l = {271, 272}, m = "setPrivacy", n = {"value"}, s = {"L$0"})
    static final class C40121 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40121(Continuation<? super C40121> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidSessionRepository.this.setPrivacy(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidSessionRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository", f = "AndroidSessionRepository.kt", i = {0}, l = {277, 278}, m = "setPrivacyFsm", n = {"value"}, s = {"L$0"})
    static final class C40131 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40131(Continuation<? super C40131> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidSessionRepository.this.setPrivacyFsm(null, this);
        }
    }

    private AndroidSessionRepository(ByteStringDataSource gatewayCacheDataSource, ByteStringDataSource privacyDataSource, ByteStringDataSource fsmDataSource, ByteStringDataSource nativeConfigDataSource, AndroidUnityInfoDataSource unityInfoDataSource, NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration, CoroutineDispatcher dispatcher, SendDiagnosticEvent sendDiagnosticEvent, String gatewayUrl) {
        Intrinsics.checkNotNullParameter(gatewayCacheDataSource, "gatewayCacheDataSource");
        Intrinsics.checkNotNullParameter(privacyDataSource, "privacyDataSource");
        Intrinsics.checkNotNullParameter(fsmDataSource, "fsmDataSource");
        Intrinsics.checkNotNullParameter(nativeConfigDataSource, "nativeConfigDataSource");
        Intrinsics.checkNotNullParameter(unityInfoDataSource, "unityInfoDataSource");
        Intrinsics.checkNotNullParameter(defaultNativeConfiguration, "defaultNativeConfiguration");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(gatewayUrl, "gatewayUrl");
        this.gatewayCacheDataSource = gatewayCacheDataSource;
        this.privacyDataSource = privacyDataSource;
        this.fsmDataSource = fsmDataSource;
        this.nativeConfigDataSource = nativeConfigDataSource;
        this.unityInfoDataSource = unityInfoDataSource;
        MutableStateFlow<NativeConfigurationOuterClass.NativeConfiguration> MutableStateFlow = StateFlowKt.MutableStateFlow(defaultNativeConfiguration);
        this._sdkConfiguration = MutableStateFlow;
        MutableStateFlow<Boolean> MutableStateFlow2 = StateFlowKt.MutableStateFlow(false);
        this.isInit = MutableStateFlow2;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(dispatcher), null, null, new AnonymousClass1(sendDiagnosticEvent, null), 3, null);
        final Flow flowFlowCombine = FlowKt.flowCombine(MutableStateFlow, MutableStateFlow2, new AndroidSessionRepository$persistedNativeConfiguration$1(null));
        final Flow<Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>> flow = new Flow<Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>>() { // from class: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1

            /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2", f = "AndroidSessionRepository.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        if (((Boolean) ((Pair) obj).getSecond()).booleanValue()) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>> flowCollector, Continuation continuation) {
                Object objCollect = flowFlowCombine.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
        this.persistedNativeConfiguration = new Flow<NativeConfigurationOuterClass.NativeConfiguration>() { // from class: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1

            /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2", f = "AndroidSessionRepository.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        Object first = ((Pair) obj).getFirst();
                        anonymousClass1.label = 1;
                        if (flowCollector.emit(first, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super NativeConfigurationOuterClass.NativeConfiguration> flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
        MutableSharedFlow<SessionChange> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._onChange = mutableSharedFlowMutableSharedFlow$default;
        this.onChange = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        String gameId = ClientProperties.getGameId();
        this._gameId = StateFlowKt.MutableStateFlow(gameId == null ? null : gameId);
        UUID uuidFromString = UUID.fromString(SessionIdReader.INSTANCE.getSessionId());
        Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(...)");
        this._sessionId = StateFlowKt.MutableStateFlow(ProtobufExtensionsKt.toByteString(uuidFromString));
        this._isTestModeEnabled = StateFlowKt.MutableStateFlow(Boolean.valueOf(SdkProperties.isTestMode()));
        this._sessionCounters = StateFlowKt.MutableStateFlow(SessionCountersOuterClass.SessionCounters.newBuilder().build());
        this._tokenCounters = StateFlowKt.MutableStateFlow(new TokenCounters(0, 0, 0));
        this._initializationError = StateFlowKt.MutableStateFlow(null);
        this._sessionToken = StateFlowKt.MutableStateFlow(ByteString.EMPTY);
        this._currentState = StateFlowKt.MutableStateFlow(ByteString.EMPTY);
        this._gatewayUrl = StateFlowKt.MutableStateFlow(gatewayUrl);
        this._initializationState = StateFlowKt.MutableStateFlow(InitializationState.NOT_INITIALIZED);
        this._requestUrlOverride = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this._headerBiddingTokenCounter = StateFlowKt.MutableStateFlow(0);
        this._shouldInitialize = StateFlowKt.MutableStateFlow(true);
        this._isFirstInitAttempt = StateFlowKt.MutableStateFlow(true);
    }

    public /* synthetic */ AndroidSessionRepository(ByteStringDataSource byteStringDataSource, ByteStringDataSource byteStringDataSource2, ByteStringDataSource byteStringDataSource3, ByteStringDataSource byteStringDataSource4, AndroidUnityInfoDataSource androidUnityInfoDataSource, NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration, CoroutineDispatcher coroutineDispatcher, SendDiagnosticEvent sendDiagnosticEvent, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringDataSource, byteStringDataSource2, byteStringDataSource3, byteStringDataSource4, androidUnityInfoDataSource, nativeConfiguration, coroutineDispatcher, sendDiagnosticEvent, (i & 256) != 0 ? GatewayUrl.m2752constructorimpl(UnityAdsConstants.DefaultUrls.GATEWAY_URL) : str, null);
    }

    public /* synthetic */ AndroidSessionRepository(ByteStringDataSource byteStringDataSource, ByteStringDataSource byteStringDataSource2, ByteStringDataSource byteStringDataSource3, ByteStringDataSource byteStringDataSource4, AndroidUnityInfoDataSource androidUnityInfoDataSource, NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration, CoroutineDispatcher coroutineDispatcher, SendDiagnosticEvent sendDiagnosticEvent, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringDataSource, byteStringDataSource2, byteStringDataSource3, byteStringDataSource4, androidUnityInfoDataSource, nativeConfiguration, coroutineDispatcher, sendDiagnosticEvent, str);
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void addTimeToGlobalAdsFocusTime(int timeMs) {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setGlobalAdsFocusTime(dsl_create.getGlobalAdsFocusTime() + timeMs);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public NativeConfigurationOuterClass.FeatureFlags getFeatureFlags() {
        NativeConfigurationOuterClass.FeatureFlags featureFlags = getNativeConfiguration().getFeatureFlags();
        Intrinsics.checkNotNullExpressionValue(featureFlags, "getFeatureFlags(...)");
        return featureFlags;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public String getGameId() {
        String value;
        String gameId;
        MutableStateFlow<String> mutableStateFlow = this._gameId;
        do {
            value = mutableStateFlow.getValue();
            gameId = ClientProperties.getGameId();
            if (gameId == null) {
                gameId = null;
            }
        } while (!mutableStateFlow.compareAndSet(value, gameId));
        return gameId;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public Object getGatewayCache(Continuation<? super ByteString> continuation) {
        C40091 c40091;
        if (continuation instanceof C40091) {
            c40091 = (C40091) continuation;
            if ((c40091.label & Integer.MIN_VALUE) != 0) {
                c40091.label -= Integer.MIN_VALUE;
            } else {
                c40091 = new C40091(continuation);
            }
        } else {
            c40091 = new C40091(continuation);
        }
        Object obj = c40091.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40091.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ByteStringDataSource byteStringDataSource = this.gatewayCacheDataSource;
            c40091.label = 1;
            obj = byteStringDataSource.get(c40091);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        ByteString data = ((ByteStringStoreOuterClass.ByteStringStore) obj).getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        return data;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public ByteString getGatewayState() {
        return this._currentState.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public String getGatewayUrl() {
        return this._gatewayUrl.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public int getHeaderBiddingTokenCounter() {
        Integer value;
        Integer num;
        MutableStateFlow<Integer> mutableStateFlow = this._headerBiddingTokenCounter;
        do {
            value = mutableStateFlow.getValue();
            num = value;
        } while (!mutableStateFlow.compareAndSet(value, Integer.valueOf(num.intValue() + 1)));
        return num.intValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public InitializationConfigurationInternal getInitializationConfiguration() {
        return this.initializationConfiguration;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public InitializationException getInitializationError() {
        return this._initializationError.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public InitializationState getInitializationState() {
        return this._initializationState.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public NativeConfigurationOuterClass.NativeConfiguration getNativeConfiguration() {
        return !this.isInit.getValue().booleanValue() ? (NativeConfigurationOuterClass.NativeConfiguration) BuildersKt__BuildersKt.runBlocking$default(null, new AndroidSessionRepository$nativeConfiguration$1(this, null), 1, null) : this._sdkConfiguration.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public Flow<InitializationState> getObserveInitializationState() {
        return this._initializationState;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public SharedFlow<SessionChange> getOnChange() {
        return this.onChange;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public Object getPrivacy(Continuation<? super ByteString> continuation) {
        C40101 c40101;
        if (continuation instanceof C40101) {
            c40101 = (C40101) continuation;
            if ((c40101.label & Integer.MIN_VALUE) != 0) {
                c40101.label -= Integer.MIN_VALUE;
            } else {
                c40101 = new C40101(continuation);
            }
        } else {
            c40101 = new C40101(continuation);
        }
        Object obj = c40101.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40101.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ByteStringDataSource byteStringDataSource = this.privacyDataSource;
            c40101.label = 1;
            obj = byteStringDataSource.get(c40101);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        ByteString data = ((ByteStringStoreOuterClass.ByteStringStore) obj).getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        return data;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public Object getPrivacyFsm(Continuation<? super ByteString> continuation) {
        C40111 c40111;
        if (continuation instanceof C40111) {
            c40111 = (C40111) continuation;
            if ((c40111.label & Integer.MIN_VALUE) != 0) {
                c40111.label -= Integer.MIN_VALUE;
            } else {
                c40111 = new C40111(continuation);
            }
        } else {
            c40111 = new C40111(continuation);
        }
        Object obj = c40111.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40111.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ByteStringDataSource byteStringDataSource = this.fsmDataSource;
            c40111.label = 1;
            obj = byteStringDataSource.get(c40111);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        ByteString data = ((ByteStringStoreOuterClass.ByteStringStore) obj).getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        return data;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public List<InitializationResponseOuterClass.RequestUrlOverride> getRequestUrlOverrides() {
        return this._requestUrlOverride.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public SessionCountersOuterClass.SessionCounters getSessionCounters() {
        return this._sessionCounters.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public ByteString getSessionId() {
        return this._sessionId.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public ByteString getSessionToken() {
        return this._sessionToken.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean getShouldInitialize() {
        return this._shouldInitialize.getValue().booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public TokenCounters getTokenCounters() {
        return this._tokenCounters.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public String getUnityInstallationId() {
        return this.unityInfoDataSource.getUnityInstallationId();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public String getUnityMegaSessionId() {
        return this.unityInfoDataSource.getUnityMegaSessionId();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementAllErrorsCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setAllErrorsCount(dsl_create.getAllErrorsCount() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementBannerImpressionCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setBannerImpressions(dsl_create.getBannerImpressions() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementBannerLoadRequestAdmCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setBannerRequestsAdm(dsl_create.getBannerRequestsAdm() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementBannerLoadRequestCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setBannerLoadRequests(dsl_create.getBannerLoadRequests() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementCacheTimeoutErrorsCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setCacheTimeoutErrorsCount(dsl_create.getCacheTimeoutErrorsCount() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementFocusChangeCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setFocusChangeCount(dsl_create.getFocusChangeCount() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementGlobalAdsFocusChangeCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setGlobalAdsFocusChangeCount(dsl_create.getGlobalAdsFocusChangeCount() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementLoadRequestAdmCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setLoadRequestsAdm(dsl_create.getLoadRequestsAdm() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementLoadRequestCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setLoadRequests(dsl_create.getLoadRequests() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementSuccessCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setSuccessCount(dsl_create.getSuccessCount() + 1);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementTokenSequenceNumber() {
        TokenCounters value;
        TokenCounters tokenCounters;
        MutableStateFlow<TokenCounters> mutableStateFlow = this._tokenCounters;
        do {
            value = mutableStateFlow.getValue();
            tokenCounters = value;
        } while (!mutableStateFlow.compareAndSet(value, TokenCounters.copy$default(tokenCounters, tokenCounters.getSeq() + 1, 0, 0, 6, null)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementTokenStartsCount() {
        TokenCounters value;
        TokenCounters tokenCounters;
        MutableStateFlow<TokenCounters> mutableStateFlow = this._tokenCounters;
        do {
            value = mutableStateFlow.getValue();
            tokenCounters = value;
        } while (!mutableStateFlow.compareAndSet(value, TokenCounters.copy$default(tokenCounters, 0, 0, tokenCounters.getStarts() + 1, 3, null)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementTokenWinsCount() {
        TokenCounters value;
        TokenCounters tokenCounters;
        MutableStateFlow<TokenCounters> mutableStateFlow = this._tokenCounters;
        do {
            value = mutableStateFlow.getValue();
            tokenCounters = value;
        } while (!mutableStateFlow.compareAndSet(value, TokenCounters.copy$default(tokenCounters, 0, tokenCounters.getWins() + 1, 0, 5, null)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isDiagnosticsEnabled() {
        return getNativeConfiguration().getDiagnosticEvents().getEnabled();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isFirstInitAttempt() {
        Boolean value;
        Boolean bool;
        MutableStateFlow<Boolean> mutableStateFlow = this._isFirstInitAttempt;
        do {
            value = mutableStateFlow.getValue();
            bool = value;
            bool.booleanValue();
        } while (!mutableStateFlow.compareAndSet(value, false));
        return bool.booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isNativeConfigReady() {
        return this.isInit.getValue().booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isOmEnabled() {
        return getNativeConfiguration().getEnableOm();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isSdkInitialized() {
        return getInitializationState() == InitializationState.INITIALIZED;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isTestModeEnabled() {
        Boolean value;
        Boolean boolValueOf;
        MutableStateFlow<Boolean> mutableStateFlow = this._isTestModeEnabled;
        do {
            value = mutableStateFlow.getValue();
            value.booleanValue();
            boolValueOf = Boolean.valueOf(SdkProperties.isTestMode());
        } while (!mutableStateFlow.compareAndSet(value, boolValueOf));
        return boolValueOf.booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public Object persistNativeConfiguration(Continuation<? super Unit> continuation) {
        ByteStringDataSource byteStringDataSource = this.nativeConfigDataSource;
        ByteString byteString = getNativeConfiguration().toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "toByteString(...)");
        Object obj = byteStringDataSource.set(byteString, continuation);
        return obj == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? obj : Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void resetTokenCounters() {
        MutableStateFlow<TokenCounters> mutableStateFlow = this._tokenCounters;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), new TokenCounters(0, 0, 0))) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setGameId(String str) {
        String value;
        MutableStateFlow<String> mutableStateFlow = this._gameId;
        do {
            value = mutableStateFlow.getValue();
            ClientProperties.setGameId(str);
        } while (!mutableStateFlow.compareAndSet(value, str));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public Object setGatewayCache(ByteString byteString, Continuation<? super Unit> continuation) {
        Object obj = this.gatewayCacheDataSource.set(byteString, continuation);
        return obj == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? obj : Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setGatewayState(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<ByteString> mutableStateFlow = this._currentState;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setGatewayUrl(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<String> mutableStateFlow = this._gatewayUrl;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setInitializationConfiguration(InitializationConfigurationInternal initializationConfigurationInternal) {
        this.initializationConfiguration = initializationConfigurationInternal;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setInitializationError(InitializationException initializationException) {
        MutableStateFlow<InitializationException> mutableStateFlow = this._initializationError;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), initializationException)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setInitializationLatency(int ms) {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setInitializationLatency(ms);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setInitializationState(InitializationState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<InitializationState> mutableStateFlow = this._initializationState;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setLastLoadLatency(int ms) {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl dsl_create;
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        do {
            value = mutableStateFlow.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.INSTANCE;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            dsl_create = companion._create(builder);
            dsl_create.setLastLoadLatency(ms);
        } while (!mutableStateFlow.compareAndSet(value, dsl_create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setNativeConfiguration(NativeConfigurationOuterClass.NativeConfiguration value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<NativeConfigurationOuterClass.NativeConfiguration> mutableStateFlow = this._sdkConfiguration;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        if (r7.emit(r2, r0) == r1) goto L21;
     */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object setPrivacy(com.google.protobuf.ByteString r6, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository.C40121
            if (r0 == 0) goto L14
            r0 = r7
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository.C40121) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L60
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$0
            com.google.protobuf.ByteString r6 = (com.google.protobuf.ByteString) r6
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r7)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r7 = r5.privacyDataSource
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r7.set(r6, r0)
            if (r7 != r1) goto L4d
            goto L5f
        L4d:
            kotlinx.coroutines.flow.MutableSharedFlow<com.unity3d.ads.core.data.model.SessionChange> r7 = r5._onChange
            com.unity3d.ads.core.data.model.SessionChange$UserConsentChange r2 = new com.unity3d.ads.core.data.model.SessionChange$UserConsentChange
            r2.<init>(r6)
            r6 = 0
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r6 = r7.emit(r2, r0)
            if (r6 != r1) goto L60
        L5f:
            return r1
        L60:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.setPrivacy(com.google.protobuf.ByteString, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        if (r7.emit(r2, r0) == r1) goto L21;
     */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object setPrivacyFsm(com.google.protobuf.ByteString r6, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository.C40131
            if (r0 == 0) goto L14
            r0 = r7
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository.C40131) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L60
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$0
            com.google.protobuf.ByteString r6 = (com.google.protobuf.ByteString) r6
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r7)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r7 = r5.fsmDataSource
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r7.set(r6, r0)
            if (r7 != r1) goto L4d
            goto L5f
        L4d:
            kotlinx.coroutines.flow.MutableSharedFlow<com.unity3d.ads.core.data.model.SessionChange> r7 = r5._onChange
            com.unity3d.ads.core.data.model.SessionChange$PrivacyFsmChange r2 = new com.unity3d.ads.core.data.model.SessionChange$PrivacyFsmChange
            r2.<init>(r6)
            r6 = 0
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r6 = r7.emit(r2, r0)
            if (r6 != r1) goto L60
        L5f:
            return r1
        L60:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.setPrivacyFsm(com.google.protobuf.ByteString, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setRequestUrlOverrides(List<InitializationResponseOuterClass.RequestUrlOverride> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<List<InitializationResponseOuterClass.RequestUrlOverride>> mutableStateFlow = this._requestUrlOverride;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setSessionCounters(SessionCountersOuterClass.SessionCounters value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<SessionCountersOuterClass.SessionCounters> mutableStateFlow = this._sessionCounters;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setSessionToken(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<ByteString> mutableStateFlow = this._sessionToken;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setShouldInitialize(boolean z) {
        Boolean value;
        MutableStateFlow<Boolean> mutableStateFlow = this._shouldInitialize;
        do {
            value = mutableStateFlow.getValue();
            value.booleanValue();
        } while (!mutableStateFlow.compareAndSet(value, Boolean.valueOf(z)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setTokenCounters(TokenCounters value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MutableStateFlow<TokenCounters> mutableStateFlow = this._tokenCounters;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), value)) {
        }
    }
}
