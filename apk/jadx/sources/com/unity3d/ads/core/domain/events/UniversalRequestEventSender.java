package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.gatewayclient.GatewayClient;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalRequestEventSender.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086B¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;", "", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "handleGatewayEventResponse", "Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;", "universalRequestTtlValidator", "Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;", "operationType", "Lcom/unity3d/ads/core/data/model/OperationType;", "<init>", "(Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;Lcom/unity3d/ads/core/data/model/OperationType;)V", "invoke", "", "universalRequest", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "requestPolicy", "Lcom/unity3d/ads/gatewayclient/RequestPolicy;", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UniversalRequestEventSender {
    private final GatewayClient gatewayClient;
    private final HandleGatewayEventResponse handleGatewayEventResponse;
    private final OperationType operationType;
    private final UniversalRequestTtlValidator universalRequestTtlValidator;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: UniversalRequestEventSender.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.UniversalRequestEventSender", f = "UniversalRequestEventSender.kt", i = {}, l = {23, 37}, m = "invoke", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UniversalRequestEventSender.this.invoke(null, null, this);
        }
    }

    public UniversalRequestEventSender(GatewayClient gatewayClient, HandleGatewayEventResponse handleGatewayEventResponse, UniversalRequestTtlValidator universalRequestTtlValidator, OperationType operationType) {
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(handleGatewayEventResponse, "handleGatewayEventResponse");
        Intrinsics.checkNotNullParameter(universalRequestTtlValidator, "universalRequestTtlValidator");
        Intrinsics.checkNotNullParameter(operationType, "operationType");
        this.gatewayClient = gatewayClient;
        this.handleGatewayEventResponse = handleGatewayEventResponse;
        this.universalRequestTtlValidator = universalRequestTtlValidator;
        this.operationType = operationType;
    }

    public /* synthetic */ UniversalRequestEventSender(GatewayClient gatewayClient, HandleGatewayEventResponse handleGatewayEventResponse, UniversalRequestTtlValidator universalRequestTtlValidator, OperationType operationType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gatewayClient, handleGatewayEventResponse, universalRequestTtlValidator, (i & 8) != 0 ? OperationType.UNIVERSAL_EVENT : operationType);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008c, code lost:
    
        if (r13.invoke((gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r12, r6) == r9) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest r12, com.unity3d.ads.gatewayclient.RequestPolicy r13, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.core.domain.events.UniversalRequestEventSender.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r14
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1 r0 = (com.unity3d.ads.core.domain.events.UniversalRequestEventSender.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1 r0 = new com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1
            r0.<init>(r14)
        L19:
            r6 = r0
            java.lang.Object r14 = r6.result
            java.lang.Object r9 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r6.label
            r10 = 2
            r1 = 1
            if (r0 == 0) goto L3d
            if (r0 == r1) goto L36
            if (r0 != r10) goto L2e
            p005kotlin.ResultKt.throwOnFailure(r14)
            goto L8f
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L36:
            p005kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L3a
            goto L63
        L3a:
            r0 = move-exception
            r12 = r0
            goto L6a
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r14)
            com.unity3d.ads.core.domain.events.UniversalRequestTtlValidator r14 = r11.universalRequestTtlValidator
            boolean r14 = r14.invoke(r12, r13)
            if (r14 != 0) goto L4b
            kotlin.Unit r12 = p005kotlin.Unit.INSTANCE
            return r12
        L4b:
            kotlin.Result$Companion r14 = p005kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L3a
            r14 = r11
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender r14 = (com.unity3d.ads.core.domain.events.UniversalRequestEventSender) r14     // Catch: java.lang.Throwable -> L3a
            r14 = r1
            com.unity3d.ads.gatewayclient.GatewayClient r1 = r11.gatewayClient     // Catch: java.lang.Throwable -> L3a
            com.unity3d.ads.core.data.model.OperationType r5 = r11.operationType     // Catch: java.lang.Throwable -> L3a
            r6.label = r14     // Catch: java.lang.Throwable -> L3a
            r2 = 0
            r7 = 1
            r8 = 0
            r3 = r12
            r4 = r13
            java.lang.Object r14 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L3a
            if (r14 != r9) goto L63
            goto L8e
        L63:
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r14 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r14     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r12 = p005kotlin.Result.m3022constructorimpl(r14)     // Catch: java.lang.Throwable -> L3a
            goto L74
        L6a:
            kotlin.Result$Companion r13 = p005kotlin.Result.INSTANCE
            java.lang.Object r12 = p005kotlin.ResultKt.createFailure(r12)
            java.lang.Object r12 = p005kotlin.Result.m3022constructorimpl(r12)
        L74:
            java.lang.Throwable r13 = p005kotlin.Result.m3025exceptionOrNullimpl(r12)
            boolean r13 = r13 instanceof com.unity3d.ads.core.data.model.exception.GatewayException
            if (r13 == 0) goto L7f
            kotlin.Unit r12 = p005kotlin.Unit.INSTANCE
            return r12
        L7f:
            com.unity3d.ads.core.domain.events.HandleGatewayEventResponse r13 = r11.handleGatewayEventResponse
            p005kotlin.ResultKt.throwOnFailure(r12)
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r12 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r12
            r6.label = r10
            java.lang.Object r12 = r13.invoke(r12, r6)
            if (r12 != r9) goto L8f
        L8e:
            return r9
        L8f:
            kotlin.Unit r12 = p005kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.UniversalRequestEventSender.invoke(gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest, com.unity3d.ads.gatewayclient.RequestPolicy, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
