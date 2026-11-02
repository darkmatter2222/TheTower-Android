package kotlin;

import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class p14 extends SuspendLambda implements Function2 {
    public Mutex a;
    public r14 b;
    public String c;
    public int d;
    public final /* synthetic */ r14 e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p14(r14 r14Var, String str, Continuation continuation) {
        super(2, continuation);
        this.e = r14Var;
        this.f = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new p14(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new p14(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Mutex mutex;
        String str;
        r14 r14Var;
        Mutex mutex2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                r14 r14Var2 = this.e;
                mutex = r14Var2.n;
                str = this.f;
                this.a = mutex;
                this.b = r14Var2;
                this.c = str;
                this.d = 1;
                if (mutex.lock(null, this) != coroutine_suspended) {
                    r14Var = r14Var2;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            str = this.c;
            r14Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            CoroutineContext coroutineContext = r14Var.d;
            o14 o14Var = new o14(r14Var, str, null);
            this.a = mutex;
            this.b = null;
            this.c = null;
            this.d = 2;
            if (BuildersKt.withContext(coroutineContext, o14Var, this) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }
}
