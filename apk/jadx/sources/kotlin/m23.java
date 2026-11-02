package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class m23 extends SuspendLambda implements Function1 {
    public Mutex a;
    public e33 b;
    public int c;
    public final /* synthetic */ e33 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m23(e33 e33Var, Continuation continuation) {
        super(1, continuation);
        this.d = e33Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new m23(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new m23(this.d, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        e33 e33Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            e33 e33Var2 = this.d;
            mutex = e33Var2.e;
            this.a = mutex;
            this.b = e33Var2;
            this.c = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = e33Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            e33Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            return Duration.m4365boximpl(e33Var.n);
        } finally {
            mutex.unlock(null);
        }
    }
}
