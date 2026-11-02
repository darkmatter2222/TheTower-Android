package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nf2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ vf2 a;
    public final /* synthetic */ k9 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nf2(vf2 vf2Var, k9 k9Var, Continuation continuation) {
        super(2, continuation);
        this.a = vf2Var;
        this.b = k9Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new nf2(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new nf2(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        kd2 kd2Var = this.a.f;
        k9 adSession = this.b;
        kd2Var.getClass();
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        return (p005kotlin.Unit) kd2Var.f.a("FinishOmidSession", new zc2(adSession));
    }
}
