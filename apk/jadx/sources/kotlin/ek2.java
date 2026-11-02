package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.ironsource.C3510b4;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ek2 implements zj2, ox0 {
    public final CoroutineScope a;
    public final cw2 b;
    public final cl2 c;
    public final g83 d;
    public final tx e;
    public final Mutex f;
    public final ConcurrentHashMap g;
    public boolean h;
    public CompletableJob i;

    public ek2(CoroutineScope backgroundScope, dw2 persistentCacheFillManager, cl2 flags, g83 rootTraceCreator, tx clock) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(persistentCacheFillManager, "persistentCacheFillManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = backgroundScope;
        this.b = persistentCacheFillManager;
        this.c = flags;
        this.d = rootTraceCreator;
        this.e = clock;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = new ConcurrentHashMap();
        this.h = true;
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        if (this.h || !flags.b()) {
            completableJobJob$default.complete();
        }
        this.i = completableJobJob$default;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
    
        if (r6.join(r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.ek2 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof kotlin.dk2
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.dk2 r0 = (kotlin.dk2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.e = r1
            goto L1b
        L16:
            ads_mobile_sdk.dk2 r0 = new ads_mobile_sdk.dk2
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L42
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L7a
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlinx.coroutines.sync.Mutex r6 = r0.b
            ads_mobile_sdk.ek2 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r2
            goto L54
        L42:
            p005kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.f
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r7.lock(r5, r0)
            if (r2 != r1) goto L54
            goto L79
        L54:
            ads_mobile_sdk.cl2 r2 = r6.c     // Catch: java.lang.Throwable -> L7d
            boolean r2 = r2.b()     // Catch: java.lang.Throwable -> L7d
            if (r2 == 0) goto L67
            kotlinx.coroutines.CompletableJob r2 = r6.i     // Catch: java.lang.Throwable -> L7d
            boolean r2 = r2.isCompleted()     // Catch: java.lang.Throwable -> L7d
            if (r2 != 0) goto L67
            kotlinx.coroutines.CompletableJob r6 = r6.i     // Catch: java.lang.Throwable -> L7d
            goto L68
        L67:
            r6 = r5
        L68:
            r7.unlock(r5)
            if (r6 == 0) goto L7a
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r6 = r6.join(r0)
            if (r6 != r1) goto L7a
        L79:
            return r1
        L7a:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L7d:
            r6 = move-exception
            r7.unlock(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ek2.a(ads_mobile_sdk.ek2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(ek2 ek2Var, Continuation continuation) {
        bk2 bk2Var;
        Mutex mutex;
        if (continuation instanceof bk2) {
            bk2Var = (bk2) continuation;
            int i = bk2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bk2Var.e = i - Integer.MIN_VALUE;
            } else {
                bk2Var = new bk2(ek2Var, continuation);
            }
        } else {
            bk2Var = new bk2(ek2Var, continuation);
        }
        Object obj = bk2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bk2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = ek2Var.f;
            bk2Var.a = ek2Var;
            bk2Var.b = mutex;
            bk2Var.e = 1;
            if (mutex.lock(null, bk2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = bk2Var.b;
            ek2 ek2Var2 = bk2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            ek2Var = ek2Var2;
        }
        try {
            ek2Var.h = false;
            if (ek2Var.c.b() && ek2Var.i.isCompleted()) {
                ek2Var.i = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object c(ek2 ek2Var, Continuation continuation) {
        ck2 ck2Var;
        Mutex mutex;
        if (continuation instanceof ck2) {
            ck2Var = (ck2) continuation;
            int i = ck2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ck2Var.e = i - Integer.MIN_VALUE;
            } else {
                ck2Var = new ck2(ek2Var, continuation);
            }
        } else {
            ck2Var = new ck2(ek2Var, continuation);
        }
        Object obj = ck2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ck2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = ek2Var.f;
            ck2Var.a = ek2Var;
            ck2Var.b = mutex;
            ck2Var.e = 1;
            if (mutex.lock(null, ck2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = ck2Var.b;
            ek2 ek2Var2 = ck2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            ek2Var = ek2Var2;
        }
        try {
            cl2 cl2Var = ek2Var.c;
            cl2Var.getClass();
            Intrinsics.checkNotNullParameter("gads:pc:reschedule_auto_refresh_on_app_foreground", C3510b4.i.W);
            if (((Boolean) cl2Var.a("gads:pc:reschedule_auto_refresh_on_app_foreground", Boolean.FALSE, yr.b)).booleanValue()) {
                ek2Var.a();
            }
            ek2Var.h = true;
            ek2Var.i.complete();
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    public final Job a(ko koVar, long j) {
        CoroutineScope coroutineScope = this.a;
        ak2 block = new ak2(j, this, koVar, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final void a() {
        long duration;
        this.e.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (ko koVar : this.g.values()) {
            if (koVar.h.isActive()) {
                long j = koVar.g - jCurrentTimeMillis;
                if (j <= 0) {
                    duration = Duration.INSTANCE.m4458getZEROUwyO8pc();
                } else {
                    Duration.Companion companion = Duration.INSTANCE;
                    duration = DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
                }
                Job.DefaultImpls.cancel$default(koVar.h, (CancellationException) null, 1, (Object) null);
                Intrinsics.checkNotNull(koVar);
                Job jobA = a(koVar, duration);
                Intrinsics.checkNotNullParameter(jobA, "<set-?>");
                koVar.h = jobA;
            }
        }
    }

    public final void a(AdRequest adRequest, j53 format, int i, om2 token) {
        long rawValue;
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(format, "requestType");
        Intrinsics.checkNotNullParameter(token, "token");
        cl2 cl2Var = this.c;
        cl2Var.getClass();
        Intrinsics.checkNotNullParameter("gads:pc:enable_auto_refresh", C3510b4.i.W);
        if (((Boolean) cl2Var.a("gads:pc:enable_auto_refresh", Boolean.FALSE, yr.b)).booleanValue()) {
            Intrinsics.checkNotNullParameter(format, "format");
            int iOrdinal = format.ordinal();
            if (iOrdinal == 1) {
                cl2 cl2Var2 = this.c;
                cl2Var2.getClass();
                Duration.Companion companion = Duration.INSTANCE;
                rawValue = ((Duration) cl2Var2.a("gads:pc:app_open_ad_auto_refresh_interval_millis", wm2.a(6, DurationUnit.HOURS, "gads:pc:app_open_ad_auto_refresh_interval_millis", C3510b4.i.W), yr.j)).getRawValue();
            } else if (iOrdinal == 3) {
                cl2 cl2Var3 = this.c;
                cl2Var3.getClass();
                Duration.Companion companion2 = Duration.INSTANCE;
                rawValue = ((Duration) cl2Var3.a("gads:pc:icon_ad_auto_refresh_interval_millis", wm2.a(12, DurationUnit.HOURS, "gads:pc:icon_ad_auto_refresh_interval_millis", C3510b4.i.W), yr.j)).getRawValue();
            } else if (iOrdinal != 5) {
                rawValue = Duration.INSTANCE.m4458getZEROUwyO8pc();
            } else {
                cl2 cl2Var4 = this.c;
                cl2Var4.getClass();
                Duration.Companion companion3 = Duration.INSTANCE;
                rawValue = ((Duration) cl2Var4.a("gads:pc:native_ad_auto_refresh_interval_millis", wm2.a(6, DurationUnit.HOURS, "gads:pc:native_ad_auto_refresh_interval_millis", C3510b4.i.W), yr.j)).getRawValue();
            }
            long j = rawValue;
            if (Duration.m4366compareToLRDsOJo(j, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                return;
            }
            a(token.a);
            m21 m21Var = o21.f;
            String strC = m21.c(adRequest.getAdUnitId());
            if (strC == null) {
                strC = adRequest.getAdUnitId();
            }
            this.e.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            ko koVar = new ko(strC, adRequest, format, i, token, jCurrentTimeMillis, Duration.m4378getInWholeMillisecondsimpl(j) + jCurrentTimeMillis, JobKt__JobKt.Job$default((Job) null, 1, (Object) null));
            Job jobA = a(koVar, j);
            Intrinsics.checkNotNullParameter(jobA, "<set-?>");
            koVar.h = jobA;
            this.g.put(token.a, koVar);
        }
    }

    public final void a(String filename) {
        Job job;
        Intrinsics.checkNotNullParameter(filename, "filename");
        ko koVar = (ko) this.g.remove(filename);
        if (koVar == null || (job = koVar.h) == null) {
            return;
        }
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
    }

    @Override // kotlin.ox0
    public final Object b(long j, Continuation continuation) {
        return c(this, continuation);
    }

    @Override // kotlin.ox0
    public final Object d(long j, Continuation continuation) {
        return b(this, continuation);
    }
}
