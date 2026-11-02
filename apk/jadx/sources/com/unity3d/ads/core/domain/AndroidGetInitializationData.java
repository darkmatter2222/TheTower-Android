package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.InitializationDataKt;
import gatewayprotocol.v1.InitializationDataOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetInitializationData.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0096B¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;", "Lcom/unity3d/ads/core/domain/GetInitializationData;", "getInitializeRequestPayload", "Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;", "getUniversalRequestSharedData", "Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;", "<init>", "(Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)V", "invoke", "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetInitializationData implements GetInitializationData {
    private final GetInitializationRequestPayload getInitializeRequestPayload;
    private final GetUniversalRequestSharedData getUniversalRequestSharedData;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetInitializationData$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetInitializationData.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetInitializationData", f = "AndroidGetInitializationData.kt", i = {0}, l = {10, 11}, m = "invoke", n = {"$this$invoke_u24lambda_u240"}, s = {"L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidGetInitializationData.this.invoke(this);
        }
    }

    public AndroidGetInitializationData(GetInitializationRequestPayload getInitializeRequestPayload, GetUniversalRequestSharedData getUniversalRequestSharedData) {
        Intrinsics.checkNotNullParameter(getInitializeRequestPayload, "getInitializeRequestPayload");
        Intrinsics.checkNotNullParameter(getUniversalRequestSharedData, "getUniversalRequestSharedData");
        this.getInitializeRequestPayload = getInitializeRequestPayload;
        this.getUniversalRequestSharedData = getUniversalRequestSharedData;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.GetInitializationData
    public Object invoke(Continuation<? super InitializationDataOuterClass.InitializationData> continuation) {
        AnonymousClass1 anonymousClass1;
        InitializationDataKt.Dsl dsl_create;
        InitializationDataKt.Dsl dsl;
        InitializationDataKt.Dsl dsl2;
        InitializationDataKt.Dsl dsl3;
        InitializationDataKt.Dsl dsl4;
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
        int i = anonymousClass1.label;
        if (i != 0) {
            if (i == 1) {
                InitializationDataKt.Dsl dsl5 = (InitializationDataKt.Dsl) anonymousClass1.L$2;
                dsl = (InitializationDataKt.Dsl) anonymousClass1.L$1;
                InitializationDataKt.Dsl dsl6 = (InitializationDataKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
                dsl2 = dsl5;
                dsl_create = dsl6;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dsl4 = (InitializationDataKt.Dsl) anonymousClass1.L$1;
                dsl3 = (InitializationDataKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            dsl4.setSharedData((UniversalRequestOuterClass.UniversalRequest.SharedData) objInvoke);
            return dsl3._build();
        }
        ResultKt.throwOnFailure(objInvoke);
        InitializationDataKt.Dsl.Companion companion = InitializationDataKt.Dsl.INSTANCE;
        InitializationDataOuterClass.InitializationData.Builder builderNewBuilder = InitializationDataOuterClass.InitializationData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        dsl_create = companion._create(builderNewBuilder);
        GetInitializationRequestPayload getInitializationRequestPayload = this.getInitializeRequestPayload;
        anonymousClass1.L$0 = dsl_create;
        anonymousClass1.L$1 = dsl_create;
        anonymousClass1.L$2 = dsl_create;
        anonymousClass1.label = 1;
        objInvoke = getInitializationRequestPayload.invoke(anonymousClass1);
        if (objInvoke != coroutine_suspended) {
            dsl = dsl_create;
            dsl2 = dsl;
        }
        return coroutine_suspended;
        dsl2.setInitializationRequest((InitializationRequestOuterClass.InitializationRequest) objInvoke);
        GetUniversalRequestSharedData getUniversalRequestSharedData = this.getUniversalRequestSharedData;
        anonymousClass1.L$0 = dsl_create;
        anonymousClass1.L$1 = dsl;
        anonymousClass1.L$2 = null;
        anonymousClass1.label = 2;
        objInvoke = getUniversalRequestSharedData.invoke(anonymousClass1);
        if (objInvoke != coroutine_suspended) {
            dsl3 = dsl_create;
            dsl4 = dsl;
            dsl4.setSharedData((UniversalRequestOuterClass.UniversalRequest.SharedData) objInvoke);
            return dsl3._build();
        }
        return coroutine_suspended;
    }
}
