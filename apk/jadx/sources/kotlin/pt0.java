package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class pt0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ zy b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt0(zy zyVar, Continuation continuation) {
        super(2, continuation);
        this.b = zyVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        pt0 pt0Var = new pt0(this.b, continuation);
        pt0Var.a = obj;
        return pt0Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        pt0 pt0Var = new pt0(this.b, (Continuation) obj2);
        pt0Var.a = (r31) obj;
        return pt0Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        g41 g41VarB = ((r31) this.a).b();
        g41VarB.o.setValue(g41VarB, g41.w[3], Boolean.valueOf(this.b.u));
        return p005kotlin.Unit.INSTANCE;
    }
}
