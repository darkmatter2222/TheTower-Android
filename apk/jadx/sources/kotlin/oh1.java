package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class oh1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ th1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oh1(th1 th1Var, Continuation continuation) {
        super(2, continuation);
        this.a = th1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new oh1(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new oh1(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        dh1 dh1Var = this.a.h.b;
        if (dh1Var != null) {
            dh1Var.a = 3;
            if (dh1Var.e != null) {
                gh1.a("Unbinding from service.");
                dh1Var.b.unbindService(dh1Var.e);
                dh1Var.e = null;
            }
            dh1Var.d = null;
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
