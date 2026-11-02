package kotlin;

import com.ironsource.C3510b4;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class rq2 implements ai1 {
    public final tq2 a;
    public final CoroutineScope b;
    public final j53 c;
    public final ex0 d;
    public final AtomicBoolean e;
    public final Mutex f;
    public Job g;
    public final boolean h;

    public rq2(tq2 adCloseManager, CoroutineScope backgroundScope, j53 requestType, ex0 flags, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(adCloseManager, "adCloseManager");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = adCloseManager;
        this.b = backgroundScope;
        this.c = requestType;
        this.d = flags;
        boolean z = false;
        this.e = new AtomicBoolean(false);
        this.f = MutexKt.Mutex$default(false, 1, null);
        if (flags.H() && SetsKt.setOf((Object[]) new j53[]{j53.h, j53.j, j53.k, j53.e}).contains(requestType)) {
            z = true;
        }
        this.h = z;
    }

    @Override // kotlin.ai1
    public final p005kotlin.Unit e() {
        long rawValue;
        if (!this.h) {
            return p005kotlin.Unit.INSTANCE;
        }
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 1) {
            ex0 ex0Var = this.d;
            ex0Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            rawValue = ((Duration) ex0Var.a("gads:app_open_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:app_open_ad_close_timeout", C3510b4.i.W), yr.j)).getRawValue();
        } else if (iOrdinal == 4) {
            ex0 ex0Var2 = this.d;
            ex0Var2.getClass();
            Duration.Companion companion2 = Duration.INSTANCE;
            rawValue = ((Duration) ex0Var2.a("gads:interstitial_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:interstitial_ad_close_timeout", C3510b4.i.W), yr.j)).getRawValue();
        } else if (iOrdinal == 6) {
            ex0 ex0Var3 = this.d;
            ex0Var3.getClass();
            Duration.Companion companion3 = Duration.INSTANCE;
            rawValue = ((Duration) ex0Var3.a("gads:rewarded_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:rewarded_ad_close_timeout", C3510b4.i.W), yr.j)).getRawValue();
        } else if (iOrdinal != 7) {
            rawValue = Duration.INSTANCE.m4458getZEROUwyO8pc();
        } else {
            ex0 ex0Var4 = this.d;
            ex0Var4.getClass();
            Duration.Companion companion4 = Duration.INSTANCE;
            rawValue = ((Duration) ex0Var4.a("gads:rewarded_interstitial_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:rewarded_interstitial_ad_close_timeout", C3510b4.i.W), yr.j)).getRawValue();
        }
        if (Duration.m4394isPositiveimpl(rawValue)) {
            CoroutineScope coroutineScope = this.b;
            qq2 block = new qq2(rawValue, this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ai1
    public final Object h(Continuation continuation) {
        nq2 nq2Var;
        rq2 rq2Var;
        Mutex mutex;
        if (continuation instanceof nq2) {
            nq2Var = (nq2) continuation;
            int i = nq2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                nq2Var.e = i - Integer.MIN_VALUE;
            } else {
                nq2Var = new nq2(this, continuation);
            }
        } else {
            nq2Var = new nq2(this, continuation);
        }
        Object obj = nq2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = nq2Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if (!this.h) {
                    return p005kotlin.Unit.INSTANCE;
                }
                if (this.e.compareAndSet(false, true)) {
                    Mutex mutex2 = this.f;
                    nq2Var.a = this;
                    nq2Var.b = mutex2;
                    nq2Var.e = 1;
                    if (mutex2.lock(null, nq2Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    rq2Var = this;
                    mutex = mutex2;
                }
                return p005kotlin.Unit.INSTANCE;
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = nq2Var.b;
            rq2Var = nq2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            Job job = rq2Var.g;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            rq2Var.g = null;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            CoroutineScope coroutineScope = rq2Var.b;
            oq2 block = new oq2(rq2Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
