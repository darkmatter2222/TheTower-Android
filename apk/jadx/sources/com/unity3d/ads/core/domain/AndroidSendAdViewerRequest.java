package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidSendAdViewerRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0096B¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;", "Lcom/unity3d/ads/core/domain/SendAdViewerRequest;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getAdViewerRequest", "Lcom/unity3d/ads/core/domain/GetAdViewerRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdViewerRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)V", "invoke", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;", "opportunityId", "Lcom/google/protobuf/ByteString;", HandleInvocationsFromAdViewer.KEY_PAYLOAD, "(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidSendAdViewerRequest implements SendAdViewerRequest {
    private final CoroutineDispatcher defaultDispatcher;
    private final GatewayClient gatewayClient;
    private final GetAdViewerRequest getAdViewerRequest;
    private final GetRequestPolicy getRequestPolicy;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidSendAdViewerRequest.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidSendAdViewerRequest", f = "AndroidSendAdViewerRequest.kt", i = {}, l = {20}, m = "invoke", n = {}, s = {})
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
            return AndroidSendAdViewerRequest.this.invoke(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidSendAdViewerRequest.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2", f = "AndroidSendAdViewerRequest.kt", i = {}, l = {21, 23}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AdViewerResponseOuterClass.AdViewerResponse>, Object> {
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ ByteString $payload;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ByteString byteString, ByteString byteString2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$opportunityId = byteString;
            this.$payload = byteString2;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidSendAdViewerRequest.this.new AnonymousClass2(this.$opportunityId, this.$payload, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AdViewerResponseOuterClass.AdViewerResponse> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        
            if (r12 == r0) goto L15;
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
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r12)
                goto L5b
            L12:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L1a:
                p005kotlin.ResultKt.throwOnFailure(r12)
                goto L37
            L1e:
                p005kotlin.ResultKt.throwOnFailure(r12)
                com.unity3d.ads.core.domain.AndroidSendAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.this
                com.unity3d.ads.core.domain.GetAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.access$getGetAdViewerRequest$p(r12)
                com.google.protobuf.ByteString r1 = r11.$opportunityId
                com.google.protobuf.ByteString r4 = r11.$payload
                r5 = r11
                kotlin.coroutines.Continuation r5 = (p005kotlin.coroutines.Continuation) r5
                r11.label = r3
                java.lang.Object r12 = r12.invoke(r1, r4, r5)
                if (r12 != r0) goto L37
                goto L5a
            L37:
                r5 = r12
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r5 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r5
                com.unity3d.ads.core.domain.AndroidSendAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.this
                com.unity3d.ads.core.domain.GetRequestPolicy r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.access$getGetRequestPolicy$p(r12)
                com.unity3d.ads.gatewayclient.RequestPolicy r6 = r12.invoke()
                com.unity3d.ads.core.domain.AndroidSendAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.this
                com.unity3d.ads.gatewayclient.GatewayClient r3 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.access$getGatewayClient$p(r12)
                com.unity3d.ads.core.data.model.OperationType r7 = com.unity3d.ads.core.data.model.OperationType.AD_VIEWER_REQUEST
                r8 = r11
                kotlin.coroutines.Continuation r8 = (p005kotlin.coroutines.Continuation) r8
                r11.label = r2
                r4 = 0
                r9 = 1
                r10 = 0
                java.lang.Object r12 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r3, r4, r5, r6, r7, r8, r9, r10)
                if (r12 != r0) goto L5b
            L5a:
                return r0
            L5b:
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r12 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r12
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse$Payload r12 = r12.getPayload()
                gatewayprotocol.v1.AdViewerResponseOuterClass$AdViewerResponse r12 = r12.getAdViewerResponse()
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public AndroidSendAdViewerRequest(CoroutineDispatcher defaultDispatcher, GetAdViewerRequest getAdViewerRequest, GetRequestPolicy getRequestPolicy, GatewayClient gatewayClient) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(getAdViewerRequest, "getAdViewerRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        this.defaultDispatcher = defaultDispatcher;
        this.getAdViewerRequest = getAdViewerRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.gatewayClient = gatewayClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.SendAdViewerRequest
    public Object invoke(ByteString byteString, ByteString byteString2, Continuation<? super AdViewerResponseOuterClass.AdViewerResponse> continuation) {
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
        Object objWithContext = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithContext);
            CoroutineDispatcher coroutineDispatcher = this.defaultDispatcher;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(byteString, byteString2, null);
            anonymousClass1.label = 1;
            objWithContext = BuildersKt.withContext(coroutineDispatcher, anonymousClass2, anonymousClass1);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithContext);
        }
        Intrinsics.checkNotNullExpressionValue(objWithContext, "withContext(...)");
        return objWithContext;
    }
}
