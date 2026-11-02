package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pq2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public rq2 b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ long e;
    public final /* synthetic */ rq2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq2(long j, rq2 rq2Var, Continuation continuation) {
        super(2, continuation);
        this.e = j;
        this.f = rq2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        pq2 pq2Var = new pq2(this.e, this.f, continuation);
        pq2Var.d = obj;
        return pq2Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((pq2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0073 A[PHI: r1
  0x0073: PHI (r1v4 kotlinx.coroutines.CoroutineScope) = 
  (r1v3 kotlinx.coroutines.CoroutineScope)
  (r1v3 kotlinx.coroutines.CoroutineScope)
  (r1v10 kotlinx.coroutines.CoroutineScope)
 binds: [B:16:0x0055, B:21:0x0070, B:10:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0086  */
    /* JADX WARN: Code duplicated, block: B:29:0x009b A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:27:0x0089, B:29:0x009b, B:30:0x009d), top: B:36:0x0089 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineScope coroutineScope;
        rq2 rq2Var;
        Mutex mutex;
        rq2 rq2Var2;
        CoroutineScope coroutineScope2;
        Mutex mutex2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.d;
            long j = this.e;
            this.d = coroutineScope;
            this.c = 1;
            if (DelayKt.m4512delayVtjQ1oo(j, this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            coroutineScope = (CoroutineScope) this.d;
            p005kotlin.ResultKt.throwOnFailure(obj);
        } else {
            if (i == 2) {
                coroutineScope = (CoroutineScope) this.d;
                p005kotlin.ResultKt.throwOnFailure(obj);
                rq2Var = this.f;
                mutex = rq2Var.f;
                this.d = coroutineScope;
                this.a = mutex;
                this.b = rq2Var;
                this.c = 3;
                if (mutex.lock(null, this) != coroutine_suspended) {
                    rq2Var2 = rq2Var;
                    coroutineScope2 = coroutineScope;
                    mutex2 = mutex;
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rq2Var2 = this.b;
            mutex2 = this.a;
            coroutineScope2 = (CoroutineScope) this.d;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (Intrinsics.areEqual(rq2Var2.g, coroutineScope2.getCoroutineContext().get(Job.INSTANCE))) {
                rq2Var2.g = null;
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex2.unlock(null);
        }
        if (this.f.e.compareAndSet(false, true)) {
            tq2 tq2Var = this.f.a;
            s11 s11Var = s11.CUI_NAME_PRELOAD_AD_CLOSE_TIMEOUT;
            this.d = coroutineScope;
            this.c = 2;
            Object objA = ((pt2) tq2Var).a(s11Var, this);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA != coroutine_suspended) {
                rq2Var = this.f;
                mutex = rq2Var.f;
                this.d = coroutineScope;
                this.a = mutex;
                this.b = rq2Var;
                this.c = 3;
                if (mutex.lock(null, this) != coroutine_suspended) {
                    rq2Var2 = rq2Var;
                    coroutineScope2 = coroutineScope;
                    mutex2 = mutex;
                    if (Intrinsics.areEqual(rq2Var2.g, coroutineScope2.getCoroutineContext().get(Job.INSTANCE))) {
                        rq2Var2.g = null;
                    }
                    return p005kotlin.Unit.INSTANCE;
                }
            }
        } else {
            rq2Var = this.f;
            mutex = rq2Var.f;
            this.d = coroutineScope;
            this.a = mutex;
            this.b = rq2Var;
            this.c = 3;
            if (mutex.lock(null, this) != coroutine_suspended) {
                rq2Var2 = rq2Var;
                coroutineScope2 = coroutineScope;
                mutex2 = mutex;
                if (Intrinsics.areEqual(rq2Var2.g, coroutineScope2.getCoroutineContext().get(Job.INSTANCE))) {
                    rq2Var2.g = null;
                }
                return p005kotlin.Unit.INSTANCE;
            }
        }
        return coroutine_suspended;
    }
}
