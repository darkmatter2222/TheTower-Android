package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidTriggerInitializationCompletedRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\f\u001a\u00020\rH\u0096B¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;", "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;", "getInitializationCompletedRequest", "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "<init>", "(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "invoke", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidTriggerInitializationCompletedRequest implements TriggerInitializationCompletedRequest {
    private final GatewayClient gatewayClient;
    private final GetInitializationCompletedRequest getInitializationCompletedRequest;
    private final GetRequestPolicy getRequestPolicy;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidTriggerInitializationCompletedRequest$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidTriggerInitializationCompletedRequest.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidTriggerInitializationCompletedRequest", f = "AndroidTriggerInitializationCompletedRequest.kt", i = {0, 1}, l = {30, 32}, m = "invoke", n = {"startTime", "startTime"}, s = {"J$0", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidTriggerInitializationCompletedRequest.this.invoke(this);
        }
    }

    public AndroidTriggerInitializationCompletedRequest(GetInitializationCompletedRequest getInitializationCompletedRequest, GetRequestPolicy getRequestPolicy, GatewayClient gatewayClient, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getInitializationCompletedRequest, "getInitializationCompletedRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getInitializationCompletedRequest = getInitializationCompletedRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.gatewayClient = gatewayClient;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd A[Catch: Exception -> 0x0133, TRY_LEAVE, TryCatch #3 {Exception -> 0x0133, blocks: (B:35:0x00b5, B:37:0x00bd), top: B:58:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x010b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    @Override // com.unity3d.ads.core.domain.TriggerInitializationCompletedRequest
    public Object invoke(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        long jM4482markNowz9LOYto;
        int i;
        long j;
        long j2;
        UniversalResponseOuterClass.UniversalResponse universalResponse;
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object objInvoke = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass2.label;
        char c = 2;
        int i3 = 1;
        if (i2 != 0) {
            if (i2 == 1) {
                jM4482markNowz9LOYto = anonymousClass2.J$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    try {
                        UniversalRequestOuterClass.UniversalRequest universalRequest = (UniversalRequestOuterClass.UniversalRequest) objInvoke;
                        RequestPolicy requestPolicyInvoke = this.getRequestPolicy.invoke();
                        GatewayClient gatewayClient = this.gatewayClient;
                        OperationType operationType = OperationType.INITIALIZATION_COMPLETED;
                        anonymousClass2.J$0 = jM4482markNowz9LOYto;
                        anonymousClass2.label = 2;
                        c = 2;
                        j2 = jM4482markNowz9LOYto;
                        i3 = 1;
                        i = 0;
                        try {
                            objInvoke = GatewayClient.DefaultImpls.request$default(gatewayClient, null, universalRequest, requestPolicyInvoke, operationType, anonymousClass2, 1, null);
                            if (objInvoke != coroutine_suspended) {
                                j = j2;
                                universalResponse = (UniversalResponseOuterClass.UniversalResponse) objInvoke;
                                if (!universalResponse.hasError()) {
                                    SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_SUCCESS_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
                                    return Unit.INSTANCE;
                                }
                                SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
                                DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_FAILURE_TIME;
                                Double dBoxDouble = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j)));
                                Pair[] pairArr = new Pair[3];
                                pairArr[i] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                                pairArr[i3] = TuplesKt.to("reason", "gateway");
                                pairArr[c] = TuplesKt.to("reason_debug", universalResponse.getError().getErrorText());
                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dBoxDouble, MapsKt.mapOf(pairArr), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
                                return Unit.INSTANCE;
                            }
                            return coroutine_suspended;
                        } catch (Exception e) {
                            e = e;
                            j = j2;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        c = 2;
                        i3 = 1;
                        j2 = jM4482markNowz9LOYto;
                        i = 0;
                    }
                } catch (Exception e3) {
                    e = e3;
                    j = jM4482markNowz9LOYto;
                    i = 0;
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = anonymousClass2.J$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    c = 2;
                    i3 = 1;
                    i = 0;
                    try {
                        universalResponse = (UniversalResponseOuterClass.UniversalResponse) objInvoke;
                        if (!universalResponse.hasError()) {
                            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_SUCCESS_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
                            return Unit.INSTANCE;
                        }
                        SendDiagnosticEvent sendDiagnosticEvent2 = this.sendDiagnosticEvent;
                        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType2 = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_FAILURE_TIME;
                        Double dBoxDouble2 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j)));
                        Pair[] pairArr2 = new Pair[3];
                        pairArr2[i] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                        pairArr2[i3] = TuplesKt.to("reason", "gateway");
                        pairArr2[c] = TuplesKt.to("reason_debug", universalResponse.getError().getErrorText());
                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, diagnosticEventType2, dBoxDouble2, MapsKt.mapOf(pairArr2), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
                        return Unit.INSTANCE;
                    } catch (Exception e4) {
                        e = e4;
                    }
                } catch (Exception e5) {
                    e = e5;
                    i = 0;
                }
            }
            i = 0;
        } else {
            ResultKt.throwOnFailure(objInvoke);
            jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_STARTED, (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 254, (Object) null);
            try {
                GetInitializationCompletedRequest getInitializationCompletedRequest = this.getInitializationCompletedRequest;
                anonymousClass2.J$0 = jM4482markNowz9LOYto;
                anonymousClass2.label = 1;
                objInvoke = getInitializationCompletedRequest.invoke(anonymousClass2);
                if (objInvoke != coroutine_suspended) {
                    UniversalRequestOuterClass.UniversalRequest universalRequest2 = (UniversalRequestOuterClass.UniversalRequest) objInvoke;
                    RequestPolicy requestPolicyInvoke2 = this.getRequestPolicy.invoke();
                    GatewayClient gatewayClient2 = this.gatewayClient;
                    OperationType operationType2 = OperationType.INITIALIZATION_COMPLETED;
                    anonymousClass2.J$0 = jM4482markNowz9LOYto;
                    anonymousClass2.label = 2;
                    c = 2;
                    j2 = jM4482markNowz9LOYto;
                    i3 = 1;
                    i = 0;
                    objInvoke = GatewayClient.DefaultImpls.request$default(gatewayClient2, null, universalRequest2, requestPolicyInvoke2, operationType2, anonymousClass2, 1, null);
                    if (objInvoke != coroutine_suspended) {
                        j = j2;
                        universalResponse = (UniversalResponseOuterClass.UniversalResponse) objInvoke;
                        if (!universalResponse.hasError()) {
                            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_SUCCESS_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
                            return Unit.INSTANCE;
                        }
                        SendDiagnosticEvent sendDiagnosticEvent3 = this.sendDiagnosticEvent;
                        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType3 = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_FAILURE_TIME;
                        Double dBoxDouble3 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j)));
                        Pair[] pairArr3 = new Pair[3];
                        pairArr3[i] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                        pairArr3[i3] = TuplesKt.to("reason", "gateway");
                        pairArr3[c] = TuplesKt.to("reason_debug", universalResponse.getError().getErrorText());
                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent3, diagnosticEventType3, dBoxDouble3, MapsKt.mapOf(pairArr3), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
                        return Unit.INSTANCE;
                    }
                }
                return coroutine_suspended;
            } catch (Exception e6) {
                e = e6;
                c = 2;
                i3 = 1;
                i = 0;
                j = jM4482markNowz9LOYto;
            }
        }
        SendDiagnosticEvent sendDiagnosticEvent4 = this.sendDiagnosticEvent;
        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType4 = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_COMPLETED_EVENT_REQUEST_FAILURE_TIME;
        Double dBoxDouble4 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j)));
        Pair[] pairArr4 = new Pair[3];
        pairArr4[i] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
        pairArr4[i3] = TuplesKt.to("reason", "uncaught_exception");
        pairArr4[c] = TuplesKt.to("reason_debug", ExceptionExtensionsKt.getShortenedStackTrace$default(e, i, i3, null));
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent4, diagnosticEventType4, dBoxDouble4, MapsKt.mapOf(pairArr4), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        return Unit.INSTANCE;
    }
}
