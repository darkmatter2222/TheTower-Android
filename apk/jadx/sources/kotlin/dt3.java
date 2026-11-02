package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class dt3 extends SuspendLambda implements Function1 {
    public final /* synthetic */ lt3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dt3(lt3 lt3Var, Continuation continuation) {
        super(1, continuation);
        this.a = lt3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new dt3(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new dt3(this.a, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        lt3 lt3Var = this.a;
        return lt3Var.o.a(lt3Var.f.a.a.getAdUnitId(), lt3Var.p);
    }
}
