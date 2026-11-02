package kotlin;

import kotlinx.coroutines.Deferred;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class gf2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ Deferred b;
    public final /* synthetic */ vf2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gf2(Deferred deferred, vf2 vf2Var, Continuation continuation) {
        super(2, continuation);
        this.b = deferred;
        this.c = vf2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gf2(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gf2(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Deferred deferred = this.b;
            this.a = 1;
            obj = deferred.await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        r31 r31Var = (r31) obj;
        g41 g41VarB = r31Var != null ? r31Var.b() : null;
        if (g41VarB != null) {
            g41VarB.u = this.c.h;
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
