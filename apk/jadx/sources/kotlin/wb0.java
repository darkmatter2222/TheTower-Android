package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class wb0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ qb0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wb0(qb0 qb0Var, Continuation continuation) {
        super(2, continuation);
        this.a = qb0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new wb0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        qb0 qb0Var = this.a;
        new wb0(qb0Var, (Continuation) obj2);
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(unit);
        return qb0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        return this.a;
    }
}
