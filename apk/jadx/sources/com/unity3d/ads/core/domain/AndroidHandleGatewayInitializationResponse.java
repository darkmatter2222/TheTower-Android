package com.unity3d.ads.core.domain;

import com.ironsource.Ue;
import com.unity3d.ads.UnityAdsErrorKt;
import com.unity3d.ads.core.data.manager.TransactionEventManager;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import com.unity3d.ads.core.data.model.exception.InitializationException;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.adquality.InitializeAdQuality;
import com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager;
import com.unity3d.ads.core.domain.events.AdRevenueObserver;
import com.unity3d.ads.core.domain.events.LifecycleEventObserver;
import com.unity3d.ads.core.domain.events.MaxAdRevenueObserver;
import com.unity3d.ads.core.extensions.ErrorExtensionsKt;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.NativeConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import java.util.List;
import kotlin.fh;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidHandleGatewayInitializationResponse.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0096B¢\u0006\u0002\u0010#R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHandleGatewayInitializationResponse;", "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "transactionEventManager", "Lcom/unity3d/ads/core/data/manager/TransactionEventManager;", "adRevenueObserver", "Lcom/unity3d/ads/core/domain/events/AdRevenueObserver;", "maxAdRevenueObserver", "Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;", "lifecycleEventObserver", "Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;", "triggerInitializationCompletedRequest", "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "sdkScope", "Lkotlinx/coroutines/CoroutineScope;", "handleDebugSettings", "Lcom/unity3d/ads/core/domain/HandleDebugSettings;", "getSafeguardedInitializationPolicy", "Lcom/unity3d/ads/core/domain/GetSafeguardedInitializationPolicy;", "defaultNativeConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;", "initializeAdQuality", "Lcom/unity3d/ads/core/domain/adquality/InitializeAdQuality;", "deliverModuleConfigs", "Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;", "coherenceLibraryManager", "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;", "coherenceScope", "<init>", "(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lcom/unity3d/ads/core/domain/events/AdRevenueObserver;Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/domain/HandleDebugSettings;Lcom/unity3d/ads/core/domain/GetSafeguardedInitializationPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lcom/unity3d/ads/core/domain/adquality/InitializeAdQuality;Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;Lkotlinx/coroutines/CoroutineScope;)V", "invoke", "", Ue.n, "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;", "(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidHandleGatewayInitializationResponse implements HandleGatewayInitializationResponse {
    private final AdRevenueObserver adRevenueObserver;
    private final CoherenceLibraryManager coherenceLibraryManager;
    private final CoroutineScope coherenceScope;
    private final NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration;
    private final DeliverModuleConfigs deliverModuleConfigs;
    private final GetSafeguardedInitializationPolicy getSafeguardedInitializationPolicy;
    private final HandleDebugSettings handleDebugSettings;
    private final InitializeAdQuality initializeAdQuality;
    private final LifecycleEventObserver lifecycleEventObserver;
    private final MaxAdRevenueObserver maxAdRevenueObserver;
    private final CoroutineScope sdkScope;
    private final SessionRepository sessionRepository;
    private final TransactionEventManager transactionEventManager;
    private final TriggerInitializationCompletedRequest triggerInitializationCompletedRequest;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayInitializationResponse$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayInitializationResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayInitializationResponse$invoke$4", f = "AndroidHandleGatewayInitializationResponse.kt", i = {}, l = {fh.A0}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayInitializationResponse.this.new AnonymousClass4(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidHandleGatewayInitializationResponse.this.triggerInitializationCompletedRequest.invoke(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayInitializationResponse$invoke$5, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayInitializationResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayInitializationResponse$invoke$5", f = "AndroidHandleGatewayInitializationResponse.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InitializationResponseOuterClass.InitializationResponse $initResponse;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(InitializationResponseOuterClass.InitializationResponse initializationResponse, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$initResponse = initializationResponse;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayInitializationResponse.this.new AnonymousClass5(this.$initResponse, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            CoherenceLibraryManager coherenceLibraryManager = AndroidHandleGatewayInitializationResponse.this.coherenceLibraryManager;
            byte[] byteArray = this.$initResponse.getNativeConfiguration().getDataLibraryWasmModule().toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
            coherenceLibraryManager.initialize(byteArray);
            return Unit.INSTANCE;
        }
    }

    public AndroidHandleGatewayInitializationResponse(TransactionEventManager transactionEventManager, AdRevenueObserver adRevenueObserver, MaxAdRevenueObserver maxAdRevenueObserver, LifecycleEventObserver lifecycleEventObserver, TriggerInitializationCompletedRequest triggerInitializationCompletedRequest, SessionRepository sessionRepository, CoroutineScope sdkScope, HandleDebugSettings handleDebugSettings, GetSafeguardedInitializationPolicy getSafeguardedInitializationPolicy, NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration, InitializeAdQuality initializeAdQuality, DeliverModuleConfigs deliverModuleConfigs, CoherenceLibraryManager coherenceLibraryManager, CoroutineScope coherenceScope) {
        Intrinsics.checkNotNullParameter(transactionEventManager, "transactionEventManager");
        Intrinsics.checkNotNullParameter(adRevenueObserver, "adRevenueObserver");
        Intrinsics.checkNotNullParameter(maxAdRevenueObserver, "maxAdRevenueObserver");
        Intrinsics.checkNotNullParameter(lifecycleEventObserver, "lifecycleEventObserver");
        Intrinsics.checkNotNullParameter(triggerInitializationCompletedRequest, "triggerInitializationCompletedRequest");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(sdkScope, "sdkScope");
        Intrinsics.checkNotNullParameter(handleDebugSettings, "handleDebugSettings");
        Intrinsics.checkNotNullParameter(getSafeguardedInitializationPolicy, "getSafeguardedInitializationPolicy");
        Intrinsics.checkNotNullParameter(defaultNativeConfiguration, "defaultNativeConfiguration");
        Intrinsics.checkNotNullParameter(initializeAdQuality, "initializeAdQuality");
        Intrinsics.checkNotNullParameter(deliverModuleConfigs, "deliverModuleConfigs");
        Intrinsics.checkNotNullParameter(coherenceLibraryManager, "coherenceLibraryManager");
        Intrinsics.checkNotNullParameter(coherenceScope, "coherenceScope");
        this.transactionEventManager = transactionEventManager;
        this.adRevenueObserver = adRevenueObserver;
        this.maxAdRevenueObserver = maxAdRevenueObserver;
        this.lifecycleEventObserver = lifecycleEventObserver;
        this.triggerInitializationCompletedRequest = triggerInitializationCompletedRequest;
        this.sessionRepository = sessionRepository;
        this.sdkScope = sdkScope;
        this.handleDebugSettings = handleDebugSettings;
        this.getSafeguardedInitializationPolicy = getSafeguardedInitializationPolicy;
        this.defaultNativeConfiguration = defaultNativeConfiguration;
        this.initializeAdQuality = initializeAdQuality;
        this.deliverModuleConfigs = deliverModuleConfigs;
        this.coherenceLibraryManager = coherenceLibraryManager;
        this.coherenceScope = coherenceScope;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0245  */
    /* JADX WARN: Code duplicated, block: B:64:0x0253  */
    @Override // com.unity3d.ads.core.domain.HandleGatewayInitializationResponse
    public Object invoke(UniversalResponseOuterClass.UniversalResponse universalResponse, Continuation<? super Unit> continuation) throws GatewayException, InitializationException {
        String universalRequestUrl;
        if (universalResponse.hasPayload() && universalResponse.getPayload().hasInitializationResponse() && universalResponse.getPayload().getInitializationResponse().hasError()) {
            ErrorOuterClass.PublicErrorCode errorCode = universalResponse.getPayload().getInitializationResponse().getError().getErrorCode();
            Intrinsics.checkNotNullExpressionValue(errorCode, "getErrorCode(...)");
            String initErrorMsg = UnityAdsErrorKt.getInitErrorMsg(errorCode, this.sessionRepository.getGameId());
            if (initErrorMsg == null) {
                initErrorMsg = universalResponse.getPayload().getInitializationResponse().getError().getErrorText();
            }
            String str = initErrorMsg;
            Intrinsics.checkNotNull(str);
            IllegalStateException illegalStateException = new IllegalStateException(universalResponse.getPayload().getInitializationResponse().getError().getErrorText());
            String errorText = universalResponse.getPayload().getInitializationResponse().getError().getErrorText();
            ErrorOuterClass.PublicErrorCode errorCode2 = universalResponse.getPayload().getInitializationResponse().getError().getErrorCode();
            ErrorOuterClass.Error error = universalResponse.getPayload().getInitializationResponse().getError();
            Intrinsics.checkNotNullExpressionValue(error, "getError(...)");
            throw new GatewayException(str, illegalStateException, "gateway_initialization", errorText, errorCode2, ErrorExtensionsKt.getErrorTokenOrNull(error));
        }
        if (universalResponse.hasError()) {
            ErrorOuterClass.PublicErrorCode errorCode3 = universalResponse.getError().getErrorCode();
            Intrinsics.checkNotNullExpressionValue(errorCode3, "getErrorCode(...)");
            String initErrorMsg2 = UnityAdsErrorKt.getInitErrorMsg(errorCode3, this.sessionRepository.getGameId());
            if (initErrorMsg2 == null) {
                initErrorMsg2 = universalResponse.getError().getErrorText();
            }
            String str2 = initErrorMsg2;
            Intrinsics.checkNotNull(str2);
            IllegalStateException illegalStateException2 = new IllegalStateException(universalResponse.getError().getErrorText());
            String errorText2 = universalResponse.getError().getErrorText();
            ErrorOuterClass.PublicErrorCode errorCode4 = universalResponse.getError().getErrorCode();
            ErrorOuterClass.Error error2 = universalResponse.getError();
            Intrinsics.checkNotNullExpressionValue(error2, "getError(...)");
            throw new InitializationException(str2, illegalStateException2, "gateway_initialization", errorText2, errorCode4, ErrorExtensionsKt.getErrorTokenOrNull(error2));
        }
        if (!universalResponse.hasPayload() || !universalResponse.getPayload().hasInitializationResponse()) {
            throw new InitializationException(UnityAdsErrorKt.MSG_INIT_FAIL_PARSING_ERROR, null, "gateway", "No payload", ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_INIT_PROTO, null, 34, null);
        }
        InitializationResponseOuterClass.InitializationResponse initializationResponse = universalResponse.getPayload().getInitializationResponse();
        SessionRepository sessionRepository = this.sessionRepository;
        NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration = initializationResponse.getNativeConfiguration();
        Intrinsics.checkNotNullExpressionValue(nativeConfiguration, "getNativeConfiguration(...)");
        NativeConfigurationKt.Dsl.Companion companion = NativeConfigurationKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.NativeConfiguration.Builder builder = nativeConfiguration.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        NativeConfigurationKt.Dsl dsl_create = companion._create(builder);
        dsl_create.setInitPolicy(this.getSafeguardedInitializationPolicy.invoke(dsl_create.getInitPolicy()));
        dsl_create.setMaxExtrasSizeKb(dsl_create.getMaxExtrasSizeKb() == 0 ? this.defaultNativeConfiguration.getMaxExtrasSizeKb() : dsl_create.getMaxExtrasSizeKb());
        sessionRepository.setNativeConfiguration(dsl_create._build());
        if (initializationResponse.hasUniversalRequestUrl() && (universalRequestUrl = initializationResponse.getUniversalRequestUrl()) != null && universalRequestUrl.length() != 0) {
            SessionRepository sessionRepository2 = this.sessionRepository;
            String universalRequestUrl2 = initializationResponse.getUniversalRequestUrl();
            Intrinsics.checkNotNullExpressionValue(universalRequestUrl2, "getUniversalRequestUrl(...)");
            sessionRepository2.setGatewayUrl(universalRequestUrl2);
        }
        List<InitializationResponseOuterClass.RequestUrlOverride> requestUrlOverridesList = initializationResponse.getRequestUrlOverridesList();
        if (requestUrlOverridesList != null) {
            this.sessionRepository.setRequestUrlOverrides(requestUrlOverridesList);
        }
        if (initializationResponse.getTriggerInitializationCompletedRequest()) {
            BuildersKt__Builders_commonKt.launch$default(this.sdkScope, null, null, new AnonymousClass4(null), 3, null);
        }
        if (initializationResponse.getNativeConfiguration().getEnableIapEvent()) {
            this.transactionEventManager.invoke();
        }
        if (initializationResponse.getNativeConfiguration().getFeatureFlags().getCollectIlrData()) {
            this.adRevenueObserver.invoke();
        }
        this.maxAdRevenueObserver.invoke();
        if (initializationResponse.getNativeConfiguration().getFeatureFlags().getCollectLifecycleEvents()) {
            this.lifecycleEventObserver.invoke();
        }
        if (initializationResponse.getNativeConfiguration().getFeatureFlags().getEnableCoherenceLibrary()) {
            BuildersKt__Builders_commonKt.launch$default(this.coherenceScope, null, null, new AnonymousClass5(initializationResponse, null), 3, null);
        }
        if (initializationResponse.getNativeConfiguration().hasDebugSettings()) {
            HandleDebugSettings handleDebugSettings = this.handleDebugSettings;
            NativeConfigurationOuterClass.DebugSettings debugSettings = initializationResponse.getNativeConfiguration().getDebugSettings();
            Intrinsics.checkNotNullExpressionValue(debugSettings, "getDebugSettings(...)");
            handleDebugSettings.invoke(debugSettings);
        }
        String levelPlayAppKey = initializationResponse.getNativeConfiguration().getLevelPlayAppKey();
        if (initializationResponse.getNativeConfiguration().hasLevelPlayAppKey()) {
            Intrinsics.checkNotNull(levelPlayAppKey);
            if (!StringsKt.isBlank(levelPlayAppKey)) {
                this.initializeAdQuality.invoke(levelPlayAppKey, this.sessionRepository.getSessionToken());
            } else if (initializationResponse.getNativeConfiguration().getFeatureFlags().getShouldInitAdqWithGameId()) {
                this.initializeAdQuality.invokeWithGameId(this.sessionRepository.getSessionToken());
            }
        } else if (initializationResponse.getNativeConfiguration().getFeatureFlags().getShouldInitAdqWithGameId()) {
            this.initializeAdQuality.invokeWithGameId(this.sessionRepository.getSessionToken());
        }
        DeliverModuleConfigs deliverModuleConfigs = this.deliverModuleConfigs;
        Intrinsics.checkNotNull(initializationResponse);
        deliverModuleConfigs.invoke(initializationResponse);
        return Unit.INSTANCE;
    }
}
