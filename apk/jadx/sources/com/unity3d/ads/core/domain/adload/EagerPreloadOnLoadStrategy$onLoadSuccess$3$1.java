package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$3$1", f = "EagerPreloadOnLoadStrategy.kt", i = {}, l = {79}, m = "invokeSuspend", n = {}, s = {})
final class EagerPreloadOnLoadStrategy$onLoadSuccess$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AndroidWebViewContainer $container;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EagerPreloadOnLoadStrategy$onLoadSuccess$3$1(AndroidWebViewContainer androidWebViewContainer, Continuation<? super EagerPreloadOnLoadStrategy$onLoadSuccess$3$1> continuation) {
        super(2, continuation);
        this.$container = androidWebViewContainer;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EagerPreloadOnLoadStrategy$onLoadSuccess$3$1(this.$container, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((EagerPreloadOnLoadStrategy$onLoadSuccess$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (this.$container.destroy(this) == coroutine_suspended) {
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
