package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class bg1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ eg1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg1(eg1 eg1Var, Continuation continuation) {
        super(2, continuation);
        this.a = eg1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bg1(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new bg1(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        OnAdInspectorClosedListener onAdInspectorClosedListener = this.a.G;
        AdInspectorError adInspectorError = if1.N;
        onAdInspectorClosedListener.onAdInspectorClosed(if1.P);
        return p005kotlin.Unit.INSTANCE;
    }
}
