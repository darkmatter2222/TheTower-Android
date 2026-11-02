package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class d61 extends SuspendLambda implements Function2 {
    public final /* synthetic */ e61 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d61(e61 e61Var, Continuation continuation) {
        super(2, continuation);
        this.a = e61Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new d61(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new d61(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        r31 r31Var = (r31) this.a.b.d.get();
        if (r31Var != null) {
            r31Var.setVisibility(8);
        }
        this.a.c.h.getAndSet(false);
        return p005kotlin.Unit.INSTANCE;
    }
}
