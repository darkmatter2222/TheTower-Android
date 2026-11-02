package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jj1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ kj1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jj1(kj1 kj1Var, Continuation continuation) {
        super(2, continuation);
        this.b = kj1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new jj1(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new jj1(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            bb2 bb2Var = this.b.f;
            this.a = 1;
            bb2Var.getClass();
            obj = bb2.b(bb2Var, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        v01 v01Var = (v01) obj;
        if (v01Var instanceof i01) {
            return (i01) v01Var;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        ac3 ac3Var = ((ec3) ((q01) v01Var).b).b;
        return ac3Var.d == null ? new m01("Raw JSON for cache is missing", kk1.INTERNAL_ERROR) : new q01(ac3Var);
    }
}
