package com.unity3d.ads.core.domain;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.protobuf.ByteString;
import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: CommonInitAwaitingGetHeaderBiddingToken.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ*\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\b\u0010!\u001a\u0004\u0018\u00010\"H\u0096B¢\u0006\u0002\u00101J \u00102\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0082@¢\u0006\u0002\u00103J\"\u00104\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u00105\u001a\u0002062\b\u0010/\u001a\u0004\u0018\u000100H\u0002J0\u00107\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u00108\u001a\u0004\u0018\u0001062\n\b\u0002\u00109\u001a\u0004\u0018\u0001062\b\u0010/\u001a\u0004\u0018\u000100H\u0002J\u001a\u0010:\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u001c\u001a\u00020\u001d¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u000e\u0010'\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken;", "Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;", "getHeaderBiddingToken", "Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getInitializationState", "Lcom/unity3d/ads/core/domain/GetInitializationState;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "safeCallbackInvoke", "Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;Lcom/unity3d/ads/core/log/Logger;)V", "getGetHeaderBiddingToken", "()Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;", "getSendDiagnosticEvent", "()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getGetInitializationState", "()Lcom/unity3d/ads/core/domain/GetInitializationState;", "getSessionRepository", "()Lcom/unity3d/ads/core/data/repository/SessionRepository;", "getSafeCallbackInvoke", "()Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;", "getLogger", "()Lcom/unity3d/ads/core/log/Logger;", "startTime", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "getStartTime-z9LOYto", "()J", "J", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/ads/IUnityAdsTokenListener;", "getListener", "()Lcom/unity3d/ads/IUnityAdsTokenListener;", "setListener", "(Lcom/unity3d/ads/IUnityAdsTokenListener;)V", "didAwaitInit", "", "startState", "Lcom/unity3d/ads/core/data/model/InitializationState;", "invoke", "", "tokenNumber", "", "tokenConfiguration", "Lcom/unity3d/ads/TokenConfiguration;", "(ILcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchToken", "(ILcom/unity3d/ads/TokenConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tokenSuccess", "token", "", "tokenFailure", "reason", "reasonDebug", "tokenStart", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonInitAwaitingGetHeaderBiddingToken implements GetAsyncHeaderBiddingToken {
    private boolean didAwaitInit;
    private final GetHeaderBiddingToken getHeaderBiddingToken;
    private final GetInitializationState getInitializationState;
    private IUnityAdsTokenListener listener;
    private final Logger logger;
    private final SafeCallbackInvoke safeCallbackInvoke;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private InitializationState startState;
    private final long startTime;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$fetchToken$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonInitAwaitingGetHeaderBiddingToken.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken", f = "CommonInitAwaitingGetHeaderBiddingToken.kt", i = {0, 0}, l = {62}, m = "fetchToken", n = {"tokenConfiguration", "tokenNumber"}, s = {"L$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonInitAwaitingGetHeaderBiddingToken.this.fetchToken(0, null, this);
        }
    }

    public CommonInitAwaitingGetHeaderBiddingToken(GetHeaderBiddingToken getHeaderBiddingToken, SendDiagnosticEvent sendDiagnosticEvent, GetInitializationState getInitializationState, SessionRepository sessionRepository, SafeCallbackInvoke safeCallbackInvoke, Logger logger) {
        Intrinsics.checkNotNullParameter(getHeaderBiddingToken, "getHeaderBiddingToken");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.getHeaderBiddingToken = getHeaderBiddingToken;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getInitializationState = getInitializationState;
        this.sessionRepository = sessionRepository;
        this.safeCallbackInvoke = safeCallbackInvoke;
        this.logger = logger;
        this.startTime = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fetchToken(int i, TokenConfiguration tokenConfiguration, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        String shortenedStackTrace$default;
        String str;
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
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass1.label;
        String str2 = null;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                GetHeaderBiddingToken getHeaderBiddingToken = this.getHeaderBiddingToken;
                anonymousClass1.L$0 = tokenConfiguration;
                anonymousClass1.I$0 = i;
                anonymousClass1.label = 1;
                objInvoke = getHeaderBiddingToken.invoke(i, tokenConfiguration, anonymousClass1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i = anonymousClass1.I$0;
                tokenConfiguration = (TokenConfiguration) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            str = null;
            str2 = (String) objInvoke;
            shortenedStackTrace$default = null;
        } catch (Exception e) {
            shortenedStackTrace$default = ExceptionExtensionsKt.getShortenedStackTrace$default(e, 0, 1, null);
            str = "uncaught_exception";
        }
        if (!this.sessionRepository.getShouldInitialize()) {
            tokenFailure(i, "gateway", "!sessionRepository.shouldInitialize", tokenConfiguration);
            return Unit.INSTANCE;
        }
        if (str2 == null) {
            tokenFailure(i, str, shortenedStackTrace$default, tokenConfiguration);
        } else {
            tokenSuccess(i, str2, tokenConfiguration);
        }
        return Unit.INSTANCE;
    }

    private final void tokenFailure(int tokenNumber, String reason, String reasonDebug, TokenConfiguration tokenConfiguration) {
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_GATEWAY_TOKEN_FAILURE_TIME;
        Double dValueOf = Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(this.startTime)));
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("sync", "false");
        mapCreateMapBuilder.put("state", String.valueOf(this.startState));
        mapCreateMapBuilder.put("complete_state", GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null).toString());
        mapCreateMapBuilder.put("awaited_init", String.valueOf(this.didAwaitInit));
        mapCreateMapBuilder.put("new_api", String.valueOf(tokenConfiguration != null ? tokenConfiguration.get_isNewApi() : false));
        if (reason != null) {
        }
        if (reasonDebug != null) {
            mapCreateMapBuilder.put("reason_debug", reasonDebug);
        }
        Unit unit = Unit.INSTANCE;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dValueOf, MapsKt.build(mapCreateMapBuilder), (Map) null, (AdObject) null, Integer.valueOf(tokenNumber), (ByteString) null, tokenConfiguration != null ? tokenConfiguration.get_mediationInfo() : null, 88, (Object) null);
        Logger.DefaultImpls.error$default(this.logger, "Returned nil token due to: " + reason, null, 2, null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonInitAwaitingGetHeaderBiddingToken.tokenFailure$lambda$4(this.f$0);
            }
        });
    }

    static /* synthetic */ void tokenFailure$default(CommonInitAwaitingGetHeaderBiddingToken commonInitAwaitingGetHeaderBiddingToken, int i, String str, String str2, TokenConfiguration tokenConfiguration, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        commonInitAwaitingGetHeaderBiddingToken.tokenFailure(i, str, str2, tokenConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit tokenFailure$lambda$4(CommonInitAwaitingGetHeaderBiddingToken commonInitAwaitingGetHeaderBiddingToken) {
        IUnityAdsTokenListener iUnityAdsTokenListener = commonInitAwaitingGetHeaderBiddingToken.listener;
        if (iUnityAdsTokenListener != null) {
            iUnityAdsTokenListener.onUnityAdsTokenReady(null);
        }
        return Unit.INSTANCE;
    }

    private final void tokenStart(int tokenNumber, TokenConfiguration tokenConfiguration) {
        this.logger.info("Token generation started");
        this.startState = GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null);
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_GATEWAY_TOKEN_STARTED;
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("sync", "false");
        mapCreateMapBuilder.put("state", String.valueOf(this.startState));
        mapCreateMapBuilder.put("new_api", String.valueOf(tokenConfiguration != null ? tokenConfiguration.get_isNewApi() : false));
        Unit unit = Unit.INSTANCE;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, (Double) null, MapsKt.build(mapCreateMapBuilder), (Map) null, (AdObject) null, Integer.valueOf(tokenNumber), (ByteString) null, tokenConfiguration != null ? tokenConfiguration.get_mediationInfo() : null, 90, (Object) null);
    }

    private final void tokenSuccess(int tokenNumber, final String token, TokenConfiguration tokenConfiguration) {
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_GATEWAY_TOKEN_SUCCESS_TIME;
        Double dValueOf = Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(this.startTime)));
        Pair[] pairArr = new Pair[5];
        pairArr[0] = TuplesKt.to("sync", "false");
        pairArr[1] = TuplesKt.to("state", String.valueOf(this.startState));
        pairArr[2] = TuplesKt.to("complete_state", GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null).toString());
        pairArr[3] = TuplesKt.to("awaited_init", String.valueOf(this.didAwaitInit));
        pairArr[4] = TuplesKt.to("new_api", String.valueOf(tokenConfiguration != null ? tokenConfiguration.get_isNewApi() : false));
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dValueOf, MapsKt.mapOf(pairArr), (Map) null, (AdObject) null, Integer.valueOf(tokenNumber), (ByteString) null, tokenConfiguration != null ? tokenConfiguration.get_mediationInfo() : null, 88, (Object) null);
        this.logger.info("Generated a valid token.");
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommonInitAwaitingGetHeaderBiddingToken.tokenSuccess$lambda$0(this.f$0, token);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit tokenSuccess$lambda$0(CommonInitAwaitingGetHeaderBiddingToken commonInitAwaitingGetHeaderBiddingToken, String str) {
        IUnityAdsTokenListener iUnityAdsTokenListener = commonInitAwaitingGetHeaderBiddingToken.listener;
        if (iUnityAdsTokenListener != null) {
            iUnityAdsTokenListener.onUnityAdsTokenReady(str);
        }
        return Unit.INSTANCE;
    }

    public final GetHeaderBiddingToken getGetHeaderBiddingToken() {
        return this.getHeaderBiddingToken;
    }

    public final GetInitializationState getGetInitializationState() {
        return this.getInitializationState;
    }

    public final IUnityAdsTokenListener getListener() {
        return this.listener;
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final SafeCallbackInvoke getSafeCallbackInvoke() {
        return this.safeCallbackInvoke;
    }

    public final SendDiagnosticEvent getSendDiagnosticEvent() {
        return this.sendDiagnosticEvent;
    }

    public final SessionRepository getSessionRepository() {
        return this.sessionRepository;
    }

    /* JADX INFO: renamed from: getStartTime-z9LOYto, reason: not valid java name and from getter */
    public final long getStartTime() {
        return this.startTime;
    }

    @Override // com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken
    public Object invoke(int i, TokenConfiguration tokenConfiguration, IUnityAdsTokenListener iUnityAdsTokenListener, Continuation<? super Unit> continuation) {
        this.listener = iUnityAdsTokenListener;
        tokenStart(i, tokenConfiguration);
        if (iUnityAdsTokenListener == null) {
            tokenFailure(i, "listener_null", "IUnityAdsTokenListener is null", tokenConfiguration);
            return Unit.INSTANCE;
        }
        if (!this.sessionRepository.getShouldInitialize()) {
            tokenFailure(i, "gateway", "!sessionRepository.shouldInitialize", tokenConfiguration);
            return Unit.INSTANCE;
        }
        this.didAwaitInit = ArraysKt.contains(new InitializationState[]{InitializationState.NOT_INITIALIZED, InitializationState.INITIALIZING}, this.startState);
        Object objFetchToken = fetchToken(i, tokenConfiguration, continuation);
        return objFetchToken == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFetchToken : Unit.INSTANCE;
    }

    public final void setListener(IUnityAdsTokenListener iUnityAdsTokenListener) {
        this.listener = iUnityAdsTokenListener;
    }
}
