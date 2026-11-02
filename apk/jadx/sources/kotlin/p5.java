package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class p5 extends SuspendLambda implements Function2 {
    public final /* synthetic */ h6 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(h6 h6Var, Continuation continuation) {
        super(2, continuation);
        this.a = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new p5(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new p5(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        h6 h6Var = this.a;
        PreloadCallback preloadCallback = h6Var.d;
        if (preloadCallback != null) {
            preloadCallback.onAdsExhausted(h6Var.b);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
