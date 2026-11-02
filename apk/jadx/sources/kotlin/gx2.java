package kotlin;

import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class gx2 extends SuspendLambda implements Function3 {
    public int a;
    public final /* synthetic */ CoroutineContext b;
    public final /* synthetic */ ei1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gx2(CoroutineContext coroutineContext, ei1 ei1Var, Continuation continuation) {
        super(3, continuation);
        this.b = coroutineContext;
        this.c = ei1Var;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return new gx2(this.b, this.c, (Continuation) obj3).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            CoroutineContext coroutineContext = this.b;
            fx2 fx2Var = new fx2(this.c, null);
            this.a = 1;
            if (BuildersKt.withContext(coroutineContext, fx2Var, this) == coroutine_suspended) {
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
