package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class op2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ s93 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public op2(s93 s93Var, Continuation continuation) {
        super(2, continuation);
        this.b = s93Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        op2 op2Var = new op2(this.b, continuation);
        op2Var.a = obj;
        return op2Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        op2 op2Var = new op2(this.b, (Continuation) obj2);
        op2Var.a = (r31) obj;
        return op2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ((r31) this.a).b().u = this.b;
        return p005kotlin.Unit.INSTANCE;
    }
}
