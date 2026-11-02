package kotlin;

import android.widget.Toolbar;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class iu3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ nu3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iu3(nu3 nu3Var, Continuation continuation) {
        super(2, continuation);
        this.b = nu3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new iu3(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new iu3(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            nu3 nu3Var = this.b;
            Toolbar toolbar = nu3Var.t;
            if (toolbar != null) {
                df2 df2Var = nu3Var.H;
                tx0 tx0Var = tx0.NOT_VISIBLE;
                this.a = 1;
                if (df2Var.a(toolbar, tx0Var, null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
