package kotlin;

import android.os.SystemClock;
import com.ironsource.C3510b4;
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
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class f14 extends SuspendLambda implements Function2 {
    public Mutex a;
    public r14 b;
    public int c;
    public final /* synthetic */ r14 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f14(r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.d = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f14(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f14(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0083 A[Catch: all -> 0x00ba, TryCatch #0 {all -> 0x00ba, blocks: (B:12:0x0031, B:14:0x0035, B:16:0x0039, B:19:0x0040, B:21:0x0048, B:24:0x0083, B:25:0x00b4), top: B:31:0x0031 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        r14 r14Var;
        Job job;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            r14 r14Var2 = this.d;
            mutex = r14Var2.o;
            this.a = mutex;
            this.b = r14Var2;
            this.c = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            r14Var = r14Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r14Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (r14Var.m != null && ((job = r14Var.r) == null || !job.isActive())) {
                if (r14Var.q != 0) {
                    r14Var.k.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - r14Var.q;
                    ex0 ex0Var = r14Var.c;
                    ex0Var.getClass();
                    Duration.Companion companion = Duration.INSTANCE;
                    long duration = DurationKt.toDuration(30, DurationUnit.SECONDS);
                    Intrinsics.checkNotNullParameter("gads:webview_optimize_profile_throttle_duration", C3510b4.i.W);
                    if (jElapsedRealtime >= Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:webview_optimize_profile_throttle_duration", Duration.m4365boximpl(duration), yr.l)).getRawValue())) {
                        r14Var.k.getClass();
                        r14Var.q = SystemClock.elapsedRealtime();
                        CoroutineScope coroutineScope = r14Var.e;
                        e14 block = new e14(r14Var, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        r14Var.r = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                    }
                } else {
                    r14Var.k.getClass();
                    r14Var.q = SystemClock.elapsedRealtime();
                    CoroutineScope coroutineScope2 = r14Var.e;
                    e14 block2 = new e14(r14Var, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    r14Var.r = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                }
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}
