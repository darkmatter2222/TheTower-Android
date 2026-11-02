package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class te1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ OnAdInspectorClosedListener a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public te1(Continuation continuation, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        super(2, continuation);
        this.a = onAdInspectorClosedListener;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new te1(continuation, this.a);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new te1((Continuation) obj2, this.a).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.onAdInspectorClosed(if1.P);
        return p005kotlin.Unit.INSTANCE;
    }
}
