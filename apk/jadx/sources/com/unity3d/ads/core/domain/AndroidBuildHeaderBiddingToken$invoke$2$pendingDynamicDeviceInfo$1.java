package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: AndroidBuildHeaderBiddingToken.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken$invoke$2$pendingDynamicDeviceInfo$1", f = "AndroidBuildHeaderBiddingToken.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class AndroidBuildHeaderBiddingToken$invoke$2$pendingDynamicDeviceInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DynamicDeviceInfoOuterClass.DynamicDeviceInfo>, Object> {
    int label;
    final /* synthetic */ AndroidBuildHeaderBiddingToken this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidBuildHeaderBiddingToken$invoke$2$pendingDynamicDeviceInfo$1(AndroidBuildHeaderBiddingToken androidBuildHeaderBiddingToken, Continuation<? super AndroidBuildHeaderBiddingToken$invoke$2$pendingDynamicDeviceInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = androidBuildHeaderBiddingToken;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidBuildHeaderBiddingToken$invoke$2$pendingDynamicDeviceInfo$1(this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DynamicDeviceInfoOuterClass.DynamicDeviceInfo> continuation) {
        return ((AndroidBuildHeaderBiddingToken$invoke$2$pendingDynamicDeviceInfo$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.deviceInfoRepository.getDynamicDeviceInfo();
    }
}
