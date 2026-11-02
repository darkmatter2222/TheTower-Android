package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vn2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ao2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vn2(ao2 ao2Var, Continuation continuation) {
        super(2, continuation);
        this.a = ao2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vn2(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vn2(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ao2 ao2Var = this.a;
        do2 do2Var = ao2Var.i;
        if (do2Var != null) {
            ao2Var.a(do2Var);
        }
        this.a.i = null;
        return p005kotlin.Unit.INSTANCE;
    }
}
