package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class n63 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;

    public n63(Continuation continuation) {
        super(2, continuation);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        n63 n63Var = new n63(continuation);
        n63Var.a = obj;
        return n63Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        n63 n63Var = new n63((Continuation) obj2);
        n63Var.a = (un1) obj;
        return n63Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        return new u63((un1) this.a);
    }
}
