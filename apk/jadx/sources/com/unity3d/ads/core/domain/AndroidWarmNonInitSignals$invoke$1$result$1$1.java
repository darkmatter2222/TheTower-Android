package com.unity3d.ads.core.domain;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: AndroidWarmNonInitSignals.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidWarmNonInitSignals$invoke$1$result$1$1", f = "AndroidWarmNonInitSignals.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class AndroidWarmNonInitSignals$invoke$1$result$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidWarmNonInitSignals this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidWarmNonInitSignals$invoke$1$result$1$1(AndroidWarmNonInitSignals androidWarmNonInitSignals, Continuation<? super AndroidWarmNonInitSignals$invoke$1$result$1$1> continuation) {
        super(2, continuation);
        this.this$0 = androidWarmNonInitSignals;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidWarmNonInitSignals$invoke$1$result$1$1(this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AndroidWarmNonInitSignals$invoke$1$result$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.this$0.privacyDeviceInfoDataSource.warmUp();
        return Unit.INSTANCE;
    }
}
