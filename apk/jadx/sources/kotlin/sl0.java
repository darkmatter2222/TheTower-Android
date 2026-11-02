package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class sl0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ fm0 a;
    public final /* synthetic */ FullScreenContentError b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sl0(Continuation continuation, fm0 fm0Var, FullScreenContentError fullScreenContentError) {
        super(2, continuation);
        this.a = fm0Var;
        this.b = fullScreenContentError;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sl0(continuation, this.a, this.b);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new sl0((Continuation) obj2, this.a, this.b).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        AdEventCallback adEventCallbackF = this.a.f();
        if (adEventCallbackF != null) {
            adEventCallbackF.onAdFailedToShowFullScreenContent(this.b);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
