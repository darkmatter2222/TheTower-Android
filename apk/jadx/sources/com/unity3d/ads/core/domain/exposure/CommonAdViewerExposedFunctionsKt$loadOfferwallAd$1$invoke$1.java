package com.unity3d.ads.core.domain.exposure;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1", f = "CommonAdViewerExposedFunctions.kt", i = {}, l = {TypedValues.PositionType.TYPE_PERCENT_HEIGHT}, m = "invoke", n = {}, s = {})
final class CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonAdViewerExposedFunctionsKt.C40581 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1(CommonAdViewerExposedFunctionsKt.C40581 c40581, Continuation<? super CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1> continuation) {
        super(continuation);
        this.this$0 = c40581;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke2((Object[]) null, (Continuation<? super Unit>) this);
    }
}
