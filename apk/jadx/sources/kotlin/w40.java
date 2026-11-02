package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class w40 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ ry1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w40(ry1 ry1Var, Continuation continuation) {
        super(2, continuation);
        this.b = ry1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        w40 w40Var = new w40(this.b, continuation);
        w40Var.a = obj;
        return w40Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        w40 w40Var = new w40(this.b, (Continuation) obj2);
        w40Var.a = (r31) obj;
        return w40Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ((r31) this.a).b().q = this.b;
        return p005kotlin.Unit.INSTANCE;
    }
}
