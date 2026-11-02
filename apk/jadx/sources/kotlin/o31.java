package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class o31 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ r31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o31(r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new o31(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new o31(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            g33 g33Var = this.b.q;
            if (g33Var != null) {
                this.a = 1;
                if (g33Var.b(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
