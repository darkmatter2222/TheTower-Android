package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.AdRevenueRepository;
import com.unity3d.ads.core.domain.GetRequestPolicy;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdRevenueObserver.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0013\u001a\u00020\u0014H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/unity3d/ads/core/domain/events/AdRevenueObserver;", "", "getUniversalRequestForPayLoad", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "adRevenueRepository", "Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/log/Logger;)V", "isRunning", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "invoke", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdRevenueObserver {
    private final AdRevenueRepository adRevenueRepository;
    private final GatewayClient gatewayClient;
    private final GetRequestPolicy getRequestPolicy;
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    private final MutableStateFlow<Boolean> isRunning;
    private final Logger logger;
    private final CoroutineScope scope;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.events.AdRevenueObserver$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AdRevenueObserver.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "currentAdRevenueEventRequest", "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.AdRevenueObserver$invoke$2", f = "AdRevenueObserver.kt", i = {}, l = {36, 37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<AdRevenueEventRequestOuterClass.AdRevenueEventRequest, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = AdRevenueObserver.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(AdRevenueEventRequestOuterClass.AdRevenueEventRequest adRevenueEventRequest, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(adRevenueEventRequest, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
        
            if (com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r11.this$0.gatewayClient, null, r5, r11.this$0.getRequestPolicy.invoke(), com.unity3d.ads.core.data.model.OperationType.AD_REVENUE_EVENT, r11, 1, null) == r0) goto L20;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L21
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                goto L83
            L12:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L1a:
                p005kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                goto L52
            L1e:
                r0 = move-exception
                r12 = r0
                goto L76
            L21:
                p005kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.L$0
                gatewayprotocol.v1.AdRevenueEventRequestOuterClass$AdRevenueEventRequest r12 = (gatewayprotocol.v1.AdRevenueEventRequestOuterClass.AdRevenueEventRequest) r12
                gatewayprotocol.v1.UniversalRequestKt r1 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r1 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.INSTANCE     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r4 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                java.lang.String r5 = "newBuilder(...)"
                p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r1 = r1._create(r4)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                r1.setAdRevenueEventRequest(r12)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r12 = r1._build()     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.core.domain.events.AdRevenueObserver r1 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r1 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getGetUniversalRequestForPayLoad$p(r1)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                r4 = r11
                kotlin.coroutines.Continuation r4 = (p005kotlin.coroutines.Continuation) r4     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                r11.label = r3     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                java.lang.Object r12 = r1.invoke(r12, r4)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                if (r12 != r0) goto L52
                goto L75
            L52:
                r5 = r12
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r5 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r5     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.core.domain.events.AdRevenueObserver r12 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.gatewayclient.GatewayClient r3 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getGatewayClient$p(r12)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.core.domain.events.AdRevenueObserver r12 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.core.domain.GetRequestPolicy r12 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getGetRequestPolicy$p(r12)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.gatewayclient.RequestPolicy r6 = r12.invoke()     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                com.unity3d.ads.core.data.model.OperationType r7 = com.unity3d.ads.core.data.model.OperationType.AD_REVENUE_EVENT     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                r8 = r11
                kotlin.coroutines.Continuation r8 = (p005kotlin.coroutines.Continuation) r8     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                r11.label = r2     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                r4 = 0
                r9 = 1
                r10 = 0
                java.lang.Object r12 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L1e com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L83
                if (r12 != r0) goto L83
            L75:
                return r0
            L76:
                com.unity3d.ads.core.domain.events.AdRevenueObserver r0 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this
                com.unity3d.ads.core.log.Logger r0 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getLogger$p(r0)
                java.lang.String r1 = "Unexpected error processing ad revenue event"
                java.lang.Throwable r12 = (java.lang.Throwable) r12
                r0.trace(r1, r12)
            L83:
                kotlin.Unit r12 = p005kotlin.Unit.INSTANCE
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.AdRevenueObserver.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public AdRevenueObserver(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, CoroutineScope scope, AdRevenueRepository adRevenueRepository, GatewayClient gatewayClient, GetRequestPolicy getRequestPolicy, Logger logger) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(adRevenueRepository, "adRevenueRepository");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.scope = scope;
        this.adRevenueRepository = adRevenueRepository;
        this.gatewayClient = gatewayClient;
        this.getRequestPolicy = getRequestPolicy;
        this.logger = logger;
        this.isRunning = StateFlowKt.MutableStateFlow(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1(AdRevenueObserver adRevenueObserver, Throwable th) {
        adRevenueObserver.isRunning.setValue(false);
        return Unit.INSTANCE;
    }

    public final void invoke() {
        Boolean value;
        Boolean bool;
        MutableStateFlow<Boolean> mutableStateFlow = this.isRunning;
        do {
            value = mutableStateFlow.getValue();
            bool = value;
            bool.booleanValue();
        } while (!mutableStateFlow.compareAndSet(value, true));
        if (bool.booleanValue()) {
            return;
        }
        FlowKt.launchIn(FlowKt.onEach(this.adRevenueRepository.getAdRevenueEvents(), new AnonymousClass2(null)), this.scope).invokeOnCompletion(new Function1() { // from class: com.unity3d.ads.core.domain.events.AdRevenueObserver$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AdRevenueObserver.invoke$lambda$1(this.f$0, (Throwable) obj);
            }
        });
    }
}
