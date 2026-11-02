package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class mx2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ei1 a;
    public final /* synthetic */ sx2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mx2(ei1 ei1Var, sx2 sx2Var, Continuation continuation) {
        super(2, continuation);
        this.a = ei1Var;
        this.b = sx2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mx2(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new mx2(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.a(((qx2) this.b).a);
        return p005kotlin.Unit.INSTANCE;
    }
}
