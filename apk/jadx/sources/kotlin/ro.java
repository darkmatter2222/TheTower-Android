package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ro extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ wy2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ro(wy2 wy2Var, Continuation continuation) {
        super(2, continuation);
        this.b = wy2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ro roVar = new ro(this.b, continuation);
        roVar.a = obj;
        return roVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ro roVar = new ro(this.b, (Continuation) obj2);
        roVar.a = (ck1) obj;
        return roVar.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        return new k33((ck1) this.a, this.b.c(), this.b);
    }
}
