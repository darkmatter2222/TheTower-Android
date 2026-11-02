package kotlin;

import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class rx3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ q41 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rx3(q41 q41Var, Continuation continuation) {
        super(2, continuation);
        this.a = q41Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new rx3(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new rx3(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        p005kotlin.Unit unit;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        q41 q41Var = this.a;
        synchronized (q41Var.f) {
            boolean zIsMuted = q41Var.isMuted();
            k41 k41Var = q41Var.i;
            k41 k41Var2 = k41.ENDED;
            q41Var.i = k41Var2;
            BuildersKt__Builders_commonKt.launch$default(q41Var.a, null, null, new l41(q41Var, k41Var, k41Var2, zIsMuted, zIsMuted, null), 3, null);
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
