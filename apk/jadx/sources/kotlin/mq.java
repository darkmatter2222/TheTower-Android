package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class mq extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ nq b;
    public final /* synthetic */ h41 c;
    public final /* synthetic */ ot0 d;
    public final /* synthetic */ r31 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mq(nq nqVar, h41 h41Var, ot0 ot0Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = nqVar;
        this.c = h41Var;
        this.d = ot0Var;
        this.e = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mq(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((mq) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            nq nqVar = this.b;
            h41 h41Var = this.c;
            i2 i2Var = nqVar.f;
            tk0 tk0VarB = this.d.b();
            this.a = 1;
            nqVar.getClass();
            if (at0.a(nqVar, h41Var, i2Var, tk0VarB, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        this.e.onPause();
        return p005kotlin.Unit.INSTANCE;
    }
}
