package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class q40 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ v3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q40(v3 v3Var, Continuation continuation) {
        super(2, continuation);
        this.b = v3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        q40 q40Var = new q40(this.b, continuation);
        q40Var.a = obj;
        return q40Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        q40 q40Var = new q40(this.b, (Continuation) obj2);
        q40Var.a = (r31) obj;
        return q40Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        g41 g41VarB = ((r31) this.a).b();
        g41VarB.p.setValue(g41VarB, g41.w[4], this.b);
        return p005kotlin.Unit.INSTANCE;
    }
}
