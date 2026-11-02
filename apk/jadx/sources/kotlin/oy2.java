package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class oy2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ei1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oy2(ei1 ei1Var, Continuation continuation) {
        super(2, continuation);
        this.a = ei1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new oy2(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new oy2(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ei1 ei1Var = this.a;
        if (ei1Var != null) {
            ei1Var.a();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
