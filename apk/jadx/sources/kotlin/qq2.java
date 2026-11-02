package kotlin;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qq2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public rq2 b;
    public long c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ rq2 f;
    public final /* synthetic */ long g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qq2(long j, rq2 rq2Var, Continuation continuation) {
        super(2, continuation);
        this.f = rq2Var;
        this.g = j;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        qq2 qq2Var = new qq2(this.g, this.f, continuation);
        qq2Var.e = obj;
        return qq2Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((qq2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0071 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:21:0x0069, B:23:0x0071, B:25:0x0075, B:26:0x0078, B:27:0x009c), top: B:33:0x0069 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0075 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:21:0x0069, B:23:0x0071, B:25:0x0075, B:26:0x0078, B:27:0x009c), top: B:33:0x0069 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineScope coroutineScope;
        Mutex mutex;
        rq2 rq2Var;
        long j;
        Job job;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.e;
            tq2 tq2Var = this.f.a;
            this.e = coroutineScope2;
            this.d = 1;
            Object objW = ((pt2) tq2Var).w(this);
            if (objW != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objW = p005kotlin.Unit.INSTANCE;
            }
            if (objW != coroutine_suspended) {
                coroutineScope = coroutineScope2;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            CoroutineScope coroutineScope3 = (CoroutineScope) this.e;
            p005kotlin.ResultKt.throwOnFailure(obj);
            coroutineScope = coroutineScope3;
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = this.c;
            rq2Var = this.b;
            mutex = this.a;
            coroutineScope = (CoroutineScope) this.e;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (!rq2Var.e.get()) {
                job = rq2Var.g;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                pq2 block = new pq2(j, rq2Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                rq2Var.g = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
        rq2 rq2Var2 = this.f;
        mutex = rq2Var2.f;
        long j2 = this.g;
        this.e = coroutineScope;
        this.a = mutex;
        this.b = rq2Var2;
        this.c = j2;
        this.d = 2;
        if (mutex.lock(null, this) != coroutine_suspended) {
            rq2Var = rq2Var2;
            j = j2;
            if (!rq2Var.e.get()) {
                job = rq2Var.g;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                pq2 block2 = new pq2(j, rq2Var, null);
                EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                rq2Var.g = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context2, null, new ws3(block2, null), 2, null);
            }
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }
}
