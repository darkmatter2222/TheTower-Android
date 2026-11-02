package kotlin;

import android.os.SystemClock;
import com.ironsource.C3510b4;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ro2 {
    public final CoroutineScope a;
    public final tx b;
    public final ex0 c;
    public final eu2 d;
    public final g83 e;
    public final Mutex f;
    public long g;
    public cu2 h;
    public Job i;

    public ro2(CoroutineScope backgroundScope, tx clock, ex0 flags, eu2 prewarmManagerProvider, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(prewarmManagerProvider, "prewarmManagerProvider");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = backgroundScope;
        this.b = clock;
        this.c = flags;
        this.d = prewarmManagerProvider;
        this.e = rootTraceCreator;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = -1L;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(ro2 ro2Var, Continuation continuation) {
        oo2 oo2Var;
        Mutex mutex;
        ro2Var.getClass();
        if (continuation instanceof oo2) {
            oo2Var = (oo2) continuation;
            int i = oo2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                oo2Var.e = i - Integer.MIN_VALUE;
            } else {
                oo2Var = new oo2(ro2Var, continuation);
            }
        } else {
            oo2Var = new oo2(ro2Var, continuation);
        }
        Object obj = oo2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = oo2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = ro2Var.f;
            oo2Var.a = ro2Var;
            oo2Var.b = mutex;
            oo2Var.e = 1;
            if (mutex.lock(null, oo2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = oo2Var.b;
            ro2 ro2Var2 = oo2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            ro2Var = ro2Var2;
        }
        try {
            ro2Var.b.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime() - ro2Var.g;
            ex0 ex0Var = ro2Var.c;
            ex0Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long duration = DurationKt.toDuration(180, DurationUnit.SECONDS);
            Intrinsics.checkNotNullParameter("gads:play_prewarm_manager_connection_duration", C3510b4.i.W);
            if (jElapsedRealtime > Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:play_prewarm_manager_connection_duration", Duration.m4365boximpl(duration), yr.l)).getRawValue())) {
                cu2 cu2Var = ro2Var.h;
                if (cu2Var != null) {
                    iu2 iu2Var = ((du2) cu2Var).a;
                    if (iu2Var.a != null) {
                        iu2.c.a("detach", new Object[0]);
                        lc3 lc3Var = iu2Var.a;
                        lc3Var.getClass();
                        lc3Var.b(new gc3(lc3Var));
                    }
                }
                ro2Var.h = null;
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}
