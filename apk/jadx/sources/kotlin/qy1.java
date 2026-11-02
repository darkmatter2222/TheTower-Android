package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class qy1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ry1 b;
    public final /* synthetic */ f81 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qy1(ry1 ry1Var, f81 f81Var, Continuation continuation) {
        super(2, continuation);
        this.b = ry1Var;
        this.c = f81Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qy1(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qy1(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            e01 e01Var = this.b.c;
            f81 f81Var = this.c;
            this.a = 1;
            obj = e01.a(e01Var, f81Var, (Duration) null, false, (Continuation) this, 30);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        v01 v01Var = (v01) obj;
        if (!(v01Var instanceof q01)) {
            if (v01Var instanceof i01) {
                return null;
            }
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        p53 p53Var = ((h81) ((q01) v01Var).b).d;
        if (p53Var != null) {
            return p53.a(p53Var);
        }
        return null;
    }
}
