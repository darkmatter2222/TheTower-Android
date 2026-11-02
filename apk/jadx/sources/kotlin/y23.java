package kotlin;

import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class y23 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ SharedFlow b;
    public final /* synthetic */ Job c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y23(SharedFlow sharedFlow, Job job, Continuation continuation) {
        super(2, continuation);
        this.b = sharedFlow;
        this.c = job;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y23(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new y23(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            SharedFlow sharedFlow = this.b;
            x23 x23Var = new x23(this.c);
            this.a = 1;
            if (sharedFlow.collect(x23Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        throw new p005kotlin.KotlinNothingValueException();
    }
}
