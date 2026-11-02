package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class jt0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ g33 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jt0(g33 g33Var, Continuation continuation) {
        super(2, continuation);
        this.b = g33Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        jt0 jt0Var = new jt0(this.b, continuation);
        jt0Var.a = obj;
        return jt0Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        jt0 jt0Var = new jt0(this.b, (Continuation) obj2);
        jt0Var.a = (r31) obj;
        return jt0Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ((r31) this.a).q = this.b;
        return p005kotlin.Unit.INSTANCE;
    }
}
