package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class kx2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ei1 b;
    public final /* synthetic */ sx2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kx2(ei1 ei1Var, sx2 sx2Var, Continuation continuation) {
        super(2, continuation);
        this.b = ei1Var;
        this.c = sx2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new kx2(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new kx2(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ei1 ei1Var = this.b;
            zh1 zh1Var = (zh1) ((rx2) this.c).a;
            this.a = 1;
            if (ei1Var.a(zh1Var, this) == coroutine_suspended) {
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
