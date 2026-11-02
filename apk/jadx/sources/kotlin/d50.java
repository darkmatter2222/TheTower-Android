package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class d50 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ s24 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d50(s24 s24Var, Continuation continuation) {
        super(2, continuation);
        this.b = s24Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        d50 d50Var = new d50(this.b, continuation);
        d50Var.a = obj;
        return d50Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        d50 d50Var = new d50(this.b, (Continuation) obj2);
        d50Var.a = (r31) obj;
        return d50Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ((r31) this.a).b().r = this.b;
        return p005kotlin.Unit.INSTANCE;
    }
}
