package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class oi2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ vi2 b;
    public final /* synthetic */ n01 c;
    public final /* synthetic */ i2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oi2(vi2 vi2Var, n01 n01Var, i2 i2Var, Continuation continuation) {
        super(2, continuation);
        this.b = vi2Var;
        this.c = n01Var;
        this.d = i2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new oi2(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((oi2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            v33 v33Var = this.b.e;
            n01 n01Var = this.c;
            i2 i2Var = this.d;
            long jM4458getZEROUwyO8pc = Duration.INSTANCE.m4458getZEROUwyO8pc();
            this.a = 1;
            if (v33Var.a(n01Var, i2Var, jM4458getZEROUwyO8pc, this) == coroutine_suspended) {
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
