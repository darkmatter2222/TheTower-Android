package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class oq2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ rq2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oq2(rq2 rq2Var, Continuation continuation) {
        super(2, continuation);
        this.b = rq2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new oq2(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new oq2(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            tq2 tq2Var = this.b.a;
            this.a = 1;
            Object objA = ((pt2) tq2Var).a(s11.CUI_NAME_CENTRALIZED_MANAGER_RESUME_FOR_AD_CLOSE, this);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA == coroutine_suspended) {
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
