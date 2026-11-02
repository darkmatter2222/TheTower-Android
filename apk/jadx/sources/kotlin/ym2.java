package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ym2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g01 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ym2(g01 g01Var, Continuation continuation) {
        super(2, continuation);
        this.b = g01Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ym2(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ym2(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            g01 g01Var = this.b;
            this.a = 1;
            Object objB = g01Var.a.b(this);
            if (objB != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objB = p005kotlin.Unit.INSTANCE;
            }
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
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
