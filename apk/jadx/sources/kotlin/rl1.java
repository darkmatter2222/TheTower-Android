package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class rl1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ oc1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rl1(oc1 oc1Var, Continuation continuation) {
        super(2, continuation);
        this.b = oc1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new rl1(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new rl1(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            return obj;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        oc1 oc1Var = this.b;
        this.a = 1;
        Object objT = ((nc1) oc1Var.a.get()).t(this);
        return objT == coroutine_suspended ? coroutine_suspended : objT;
    }
}
