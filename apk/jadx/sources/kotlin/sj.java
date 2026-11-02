package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.random.Random;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class sj extends nc1 implements ox0 {
    public boolean A;
    public long B;
    public final CoroutineScope c;
    public final CoroutineScope d;
    public final ex0 e;
    public final tx f;
    public final e01 g;
    public final ni h;
    public final vi i;
    public final g83 j;
    public long k;
    public long l;
    public long m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public boolean p;
    public Job q;
    public Job r;
    public aj s;
    public final i11 t;
    public e11 u;
    public String v;
    public final Mutex w;
    public long x;
    public final Channel y;
    public final Mutex z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sj(CoroutineScope backgroundScope, CoroutineScope uiScope, ex0 flags, tx clock, e01 httpClient, ni anrDataCollector, vi anrLogsDataStore, g83 rootTraceCreator) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(anrDataCollector, "anrDataCollector");
        Intrinsics.checkNotNullParameter(anrLogsDataStore, "anrLogsDataStore");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.c = backgroundScope;
        this.d = uiScope;
        this.e = flags;
        this.f = clock;
        this.g = httpClient;
        this.h = anrDataCollector;
        this.i = anrLogsDataStore;
        this.j = rootTraceCreator;
        Duration.Companion companion = Duration.INSTANCE;
        this.k = companion.m4458getZEROUwyO8pc();
        this.l = companion.m4458getZEROUwyO8pc();
        this.m = companion.m4458getZEROUwyO8pc();
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.s = aj.NO_ANR;
        this.t = l11.v();
        this.w = MutexKt.Mutex$default(false, 1, null);
        this.x = companion.m4458getZEROUwyO8pc();
        this.y = ChannelKt.Channel$default(0, null, null, 7, null);
        this.z = MutexKt.Mutex$default(false, 1, null);
        this.A = true;
        this.B = companion.m4458getZEROUwyO8pc();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(sj sjVar, long j, Continuation continuation) {
        dj djVar;
        Mutex mutex;
        if (continuation instanceof dj) {
            djVar = (dj) continuation;
            int i = djVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                djVar.f = i - Integer.MIN_VALUE;
            } else {
                djVar = new dj(sjVar, continuation);
            }
        } else {
            djVar = new dj(sjVar, continuation);
        }
        Object obj = djVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = djVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = sjVar.z;
            djVar.a = sjVar;
            djVar.b = mutex;
            djVar.c = j;
            djVar.f = 1;
            if (mutex.lock(null, djVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = djVar.c;
            Mutex mutex2 = djVar.b;
            sj sjVar2 = djVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            sjVar = sjVar2;
        }
        try {
            if (Duration.m4366compareToLRDsOJo(j, sjVar.B) > 0 && sjVar.A) {
                sjVar.A = false;
                sjVar.B = j;
                sjVar.n.set(false);
                Job job = sjVar.q;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                Job job2 = sjVar.r;
                if (job2 != null) {
                    Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                }
                Splitter splitter = f01.a;
                f01.b("ANR watchdog stopped", null);
                return p005kotlin.Unit.INSTANCE;
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(sj sjVar, Continuation continuation) {
        fj fjVar;
        sjVar.getClass();
        if (continuation instanceof fj) {
            fjVar = (fj) continuation;
            int i = fjVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                fjVar.d = i - Integer.MIN_VALUE;
            } else {
                fjVar = new fj(sjVar, continuation);
            }
        } else {
            fjVar = new fj(sjVar, continuation);
        }
        Object obj = fjVar.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = fjVar.d;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sjVar = fjVar.a;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        while (sjVar.n.get()) {
            BuildersKt__Builders_commonKt.launch$default(sjVar.d, null, null, new gj(sjVar, null), 3, null);
            long j = sjVar.m;
            fjVar.a = sjVar;
            fjVar.d = 1;
            if (DelayKt.m4512delayVtjQ1oo(j, fjVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(sj sjVar, long j, Continuation continuation) throws Throwable {
        ej ejVar;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof ej) {
            ejVar = (ej) continuation;
            int i = ejVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ejVar.f = i - Integer.MIN_VALUE;
            } else {
                ejVar = new ej(sjVar, continuation);
            }
        } else {
            ejVar = new ej(sjVar, continuation);
        }
        Object obj = ejVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ejVar.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = sjVar.z;
                ejVar.a = sjVar;
                ejVar.b = mutex;
                ejVar.c = j;
                ejVar.f = 1;
                if (mutex.lock(null, ejVar) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) ejVar.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            j = ejVar.c;
            Mutex mutex3 = ejVar.b;
            sj sjVar2 = (sj) ejVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            sjVar = sjVar2;
            if (Duration.m4366compareToLRDsOJo(j, sjVar.B) > 0 && !sjVar.A) {
                sjVar.A = true;
                sjVar.B = j;
                ejVar.a = mutex;
                ejVar.b = null;
                ejVar.f = 2;
                Object objD = d(sjVar, ejVar);
                if (objD != coroutine_suspended) {
                    Mutex mutex4 = mutex;
                    obj = objD;
                    mutex2 = mutex4;
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit2;
                }
                return coroutine_suspended;
            }
            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            return unit3;
        } catch (Throwable th3) {
            th = th3;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:30:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:? A[LOOP:0: B:22:0x0062->B:32:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
    
        if (r7 == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(kotlin.sj r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof kotlin.oj
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.oj r0 = (kotlin.oj) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f = r1
            goto L1b
        L16:
            ads_mobile_sdk.oj r0 = new ads_mobile_sdk.oj
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.util.Iterator r6 = r0.c
            java.util.Map r2 = r0.b
            ads_mobile_sdk.sj r4 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L62
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            ads_mobile_sdk.sj r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L43:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.vi r7 = r6.i
            r0.a = r6
            r0.f = r4
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L53
            goto L88
        L53:
            r2 = r7
            java.util.Map r2 = (java.util.Map) r2
            if (r2 == 0) goto L89
            java.util.Set r7 = r2.entrySet()
            java.util.Iterator r7 = r7.iterator()
            r4 = r6
            r6 = r7
        L62:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L89
            java.lang.Object r7 = r6.next()
            java.util.Map$Entry r7 = (java.util.Map.Entry) r7
            java.lang.Object r5 = r7.getKey()
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r7 = r7.getValue()
            ads_mobile_sdk.e11 r7 = (kotlin.e11) r7
            r0.a = r4
            r0.b = r2
            r0.c = r6
            r0.f = r3
            java.lang.Object r7 = r4.a(r5, r7, r0)
            if (r7 != r1) goto L62
        L88:
            return r1
        L89:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sj.b(ads_mobile_sdk.sj, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048 A[PHI: r9
  0x0048: PHI (r9v3 ads_mobile_sdk.sj) = (r9v1 ads_mobile_sdk.sj), (r9v5 ads_mobile_sdk.sj) binds: [B:18:0x0045, B:28:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0050  */
    /* JADX WARN: Code duplicated, block: B:24:0x005b A[PHI: r9 r10
  0x005b: PHI (r9v2 ads_mobile_sdk.sj) = (r9v3 ads_mobile_sdk.sj), (r9v6 ads_mobile_sdk.sj) binds: [B:22:0x0058, B:17:0x003f] A[DONT_GENERATE, DONT_INLINE]
  0x005b: PHI (r10v2 java.lang.Object) = (r10v8 java.lang.Object), (r10v1 java.lang.Object) binds: [B:22:0x0058, B:17:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x008c A[PHI: r9
  0x008c: PHI (r9v5 ads_mobile_sdk.sj) = (r9v2 ads_mobile_sdk.sj), (r9v7 ads_mobile_sdk.sj) binds: [B:25:0x0089, B:16:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0094 -> B:19:0x0048). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object c(kotlin.sj r9, p005kotlin.coroutines.Continuation r10) {
        /*
            r9.getClass()
            boolean r0 = r10 instanceof kotlin.pj
            if (r0 == 0) goto L16
            r0 = r10
            ads_mobile_sdk.pj r0 = (kotlin.pj) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.pj r0 = new ads_mobile_sdk.pj
            r0.<init>(r9, r10)
        L1b:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L45
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            ads_mobile_sdk.sj r9 = r0.a
            goto L45
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            ads_mobile_sdk.sj r9 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L8c
        L3f:
            ads_mobile_sdk.sj r9 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L5b
        L45:
            p005kotlin.ResultKt.throwOnFailure(r10)
        L48:
            java.util.concurrent.atomic.AtomicBoolean r10 = r9.n
            boolean r10 = r10.get()
            if (r10 == 0) goto L97
            r0.a = r9
            r0.d = r5
            java.lang.Object r10 = r9.w(r0)
            if (r10 != r1) goto L5b
            goto L96
        L5b:
            kotlin.time.Duration r10 = (p005kotlin.time.Duration) r10
            long r6 = r10.getRawValue()
            kotlinx.coroutines.selects.SelectImplementation r10 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            r10.<init>(r2)
            ads_mobile_sdk.qj r2 = new ads_mobile_sdk.qj
            r8 = 0
            r2.<init>(r8)
            kotlinx.coroutines.selects.OnTimeoutKt.m4606onTimeout8Mi8wO0(r10, r6, r2)
            kotlinx.coroutines.channels.Channel r2 = r9.y
            kotlinx.coroutines.selects.SelectClause1 r2 = r2.getOnReceive()
            ads_mobile_sdk.rj r6 = new ads_mobile_sdk.rj
            r6.<init>(r8)
            r10.invoke(r2, r6)
            r0.a = r9
            r0.d = r4
            java.lang.Object r10 = r10.doSelect(r0)
            if (r10 != r1) goto L8c
            goto L96
        L8c:
            r0.a = r9
            r0.d = r3
            java.lang.Object r10 = r9.x(r0)
            if (r10 != r1) goto L48
        L96:
            return r1
        L97:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sj.c(ads_mobile_sdk.sj, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object d(sj sjVar, Continuation continuation) {
        jj jjVar;
        Mutex mutex;
        sj sjVar2 = sjVar;
        if (continuation instanceof jj) {
            jjVar = (jj) continuation;
            int i = jjVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                jjVar.e = i - Integer.MIN_VALUE;
            } else {
                jjVar = new jj(sjVar2, continuation);
            }
        } else {
            jjVar = new jj(sjVar2, continuation);
        }
        Object obj = jjVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jjVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = sjVar2.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:system_health:anr_watchdog:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:system_health:anr_watchdog:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                return new m01("ANR watchdog is disabled", kk1.INTERNAL_ERROR);
            }
            if (sjVar2.o.compareAndSet(false, true)) {
                double dNextDouble = Random.INSTANCE.nextDouble(1.0d);
                ex0 ex0Var2 = sjVar2.e;
                ex0Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:system_health:anr_watchdog:sample_rate", C3510b4.i.W);
                sjVar2.p = dNextDouble < ((Number) ex0Var2.a("gads:system_health:anr_watchdog:sample_rate", Double.valueOf(0.05d), yr.c)).doubleValue();
            }
            if (!sjVar2.p) {
                return new m01("ANR watchdog is disabled due to sampling", kk1.INTERNAL_ERROR);
            }
            ex0 ex0Var3 = sjVar2.e;
            ex0Var3.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            DurationUnit durationUnit = DurationUnit.MILLISECONDS;
            Duration durationA = wm2.a(1000, durationUnit, "gads:system_health:early_anr_threshold_millis", C3510b4.i.W);
            sr srVar = yr.j;
            if (Duration.m4366compareToLRDsOJo(((Duration) ex0Var3.a("gads:system_health:early_anr_threshold_millis", durationA, srVar)).getRawValue(), companion.m4458getZEROUwyO8pc()) > 0) {
                ex0 ex0Var4 = sjVar2.e;
                ex0Var4.getClass();
                long duration = DurationKt.toDuration(4500, durationUnit);
                Intrinsics.checkNotNullParameter("gads:system_health:full_anr_threshold_millis", C3510b4.i.W);
                if (Duration.m4366compareToLRDsOJo(((Duration) ex0Var4.a("gads:system_health:full_anr_threshold_millis", Duration.m4365boximpl(duration), srVar)).getRawValue(), companion.m4458getZEROUwyO8pc()) > 0) {
                    ex0 ex0Var5 = sjVar2.e;
                    ex0Var5.getClass();
                    long duration2 = DurationKt.toDuration(500, durationUnit);
                    Intrinsics.checkNotNullParameter("gads:system_health:anr_polling_millis", C3510b4.i.W);
                    if (Duration.m4366compareToLRDsOJo(((Duration) ex0Var5.a("gads:system_health:anr_polling_millis", Duration.m4365boximpl(duration2), srVar)).getRawValue(), companion.m4458getZEROUwyO8pc()) > 0) {
                        if (sjVar2.n.getAndSet(true)) {
                            Splitter splitter = f01.a;
                            f01.b("ANR watchdog is already running", null);
                            return new q01(p005kotlin.Unit.INSTANCE);
                        }
                        ex0 ex0Var6 = sjVar2.e;
                        ex0Var6.getClass();
                        long duration3 = DurationKt.toDuration(1000, durationUnit);
                        Intrinsics.checkNotNullParameter("gads:system_health:early_anr_threshold_millis", C3510b4.i.W);
                        sjVar2.k = ((Duration) ex0Var6.a("gads:system_health:early_anr_threshold_millis", Duration.m4365boximpl(duration3), srVar)).getRawValue();
                        ex0 ex0Var7 = sjVar2.e;
                        ex0Var7.getClass();
                        long duration4 = DurationKt.toDuration(4500, durationUnit);
                        Intrinsics.checkNotNullParameter("gads:system_health:full_anr_threshold_millis", C3510b4.i.W);
                        sjVar2.l = ((Duration) ex0Var7.a("gads:system_health:full_anr_threshold_millis", Duration.m4365boximpl(duration4), srVar)).getRawValue();
                        ex0 ex0Var8 = sjVar2.e;
                        ex0Var8.getClass();
                        long duration5 = DurationKt.toDuration(500, durationUnit);
                        Intrinsics.checkNotNullParameter("gads:system_health:anr_polling_millis", C3510b4.i.W);
                        sjVar2.m = ((Duration) ex0Var8.a("gads:system_health:anr_polling_millis", Duration.m4365boximpl(duration5), srVar)).getRawValue();
                        mutex = sjVar2.w;
                        jjVar.a = sjVar2;
                        jjVar.b = mutex;
                        jjVar.e = 1;
                        if (mutex.lock(null, jjVar) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
            }
            return new m01("Invalid ANR watchdog flags", kk1.INTERNAL_ERROR);
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Mutex mutex2 = jjVar.b;
        sj sjVar3 = jjVar.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        mutex = mutex2;
        sjVar2 = sjVar3;
        try {
            Duration.Companion companion2 = Duration.INSTANCE;
            sjVar2.f.getClass();
            sjVar2.x = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            xs3.a(sjVar2.c, new kj(sjVar2, null));
            sjVar2.q = xs3.a(sjVar2.c, new lj(sjVar2, null));
            sjVar2.r = xs3.a(sjVar2.c, new mj(sjVar2, null));
            cl0.a(4, "ANR watchdog started");
            return new q01(unit);
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bb, code lost:
    
        if (r9 == r1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r8, kotlin.e11 r9, p005kotlin.coroutines.Continuation r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof kotlin.ij
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.ij r0 = (kotlin.ij) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ij r0 = new ads_mobile_sdk.ij
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            ads_mobile_sdk.sj r8 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto Lbe
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            java.lang.String r8 = r0.b
            ads_mobile_sdk.sj r9 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            r6 = r9
            r9 = r8
            r8 = r6
            goto L90
        L42:
            p005kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String r10 = "log"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r10)
            ads_mobile_sdk.i11 r10 = r7.t
            ads_mobile_sdk.j11 r2 = kotlin.k11.v()
            java.lang.String r5 = "newBuilder(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            java.lang.String r5 = "builder"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.String r5 = "value"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r5)
            r2.a(r9)
            ads_mobile_sdk.vz0 r9 = r2.b()
            java.lang.String r2 = "build(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r2)
            ads_mobile_sdk.k11 r9 = (kotlin.k11) r9
            r10.a(r9)
            ads_mobile_sdk.i11 r9 = r7.t
            ads_mobile_sdk.vz0 r9 = r9.b()
            ads_mobile_sdk.l11 r9 = (kotlin.l11) r9
            byte[] r9 = r9.c()
            java.lang.String r10 = "toByteArray(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r10 = r7.a(r9, r0)
            if (r10 != r1) goto L8e
            goto Lbd
        L8e:
            r9 = r8
            r8 = r7
        L90:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lbe
            ads_mobile_sdk.vi r10 = r8.i
            r0.a = r8
            r2 = 0
            r0.b = r2
            r0.e = r3
            ads_mobile_sdk.ks1 r10 = r10.a
            java.lang.Object r10 = r10.get()
            androidx.datastore.core.DataStore r10 = (androidx.datastore.core.DataStore) r10
            ads_mobile_sdk.ti r3 = new ads_mobile_sdk.ti
            r3.<init>(r9, r2)
            java.lang.Object r9 = r10.updateData(r3, r0)
            java.lang.Object r10 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto Lb9
            goto Lbb
        Lb9:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
        Lbb:
            if (r9 != r1) goto Lbe
        Lbd:
            return r1
        Lbe:
            ads_mobile_sdk.i11 r8 = r8.t
            r8.h()
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sj.a(java.lang.String, ads_mobile_sdk.e11, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(byte[] bArr, Continuation continuation) {
        nj njVar;
        if (continuation instanceof nj) {
            njVar = (nj) continuation;
            int i = njVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                njVar.c = i - Integer.MIN_VALUE;
            } else {
                njVar = new nj(this, continuation);
            }
        } else {
            njVar = new nj(this, continuation);
        }
        nj njVar2 = njVar;
        Object objA = njVar2.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = njVar2.c;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objA);
                f81 f81VarA = new e81().b(this.e.w0()).b(CommonGatewayClient.HEADER_PROTOBUF, bArr).a();
                e01 e01Var = this.g;
                njVar2.c = 1;
                objA = e01.a(e01Var, f81VarA, (Duration) null, false, (Continuation) njVar2, 30);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objA);
            }
            return Boxing.boxBoolean(((v01) objA) instanceof q01);
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.b("Failed to ping RCS payload: " + e, null);
            return Boxing.boxBoolean(false);
        }
    }

    @Override // kotlin.ox0
    public final Object b(long j, Continuation continuation) {
        return b(this, j, continuation);
    }

    @Override // kotlin.ox0
    public final Object d(long j, Continuation continuation) {
        return a(this, j, continuation);
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return d(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object v(Continuation continuation) {
        bj bjVar;
        sj sjVar;
        sj sjVar2;
        if (continuation instanceof bj) {
            bjVar = (bj) continuation;
            int i = bjVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bjVar.e = i - Integer.MIN_VALUE;
            } else {
                bjVar = new bj(this, continuation);
            }
        } else {
            bjVar = new bj(this, continuation);
        }
        Object objA = bjVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bjVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            ni niVar = this.h;
            bjVar.a = this;
            bjVar.b = this;
            bjVar.e = 1;
            objA = niVar.a(bjVar);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            sjVar = this;
            sjVar2 = sjVar;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sjVar2 = bjVar.b;
            sjVar = bjVar.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        sjVar2.u = (e11) objA;
        sjVar.v = UUID.randomUUID().toString();
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(Continuation continuation) {
        cj cjVar;
        sj sjVar;
        long j;
        Mutex mutex;
        long jM4395minusLRDsOJo;
        if (continuation instanceof cj) {
            cjVar = (cj) continuation;
            int i = cjVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                cjVar.f = i - Integer.MIN_VALUE;
            } else {
                cjVar = new cj(this, continuation);
            }
        } else {
            cjVar = new cj(this, continuation);
        }
        Object obj = cjVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cjVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            this.f.getClass();
            long duration = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
            Mutex mutex2 = this.w;
            cjVar.a = this;
            cjVar.b = mutex2;
            cjVar.c = duration;
            cjVar.f = 1;
            if (mutex2.lock(null, cjVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            sjVar = this;
            j = duration;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = cjVar.c;
            mutex = cjVar.b;
            sjVar = cjVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            long j2 = sjVar.x;
            mutex.unlock(null);
            long jM4395minusLRDsOJo2 = Duration.m4395minusLRDsOJo(j, j2);
            int iOrdinal = sjVar.s.ordinal();
            if (iOrdinal == 0) {
                jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(sjVar.k, jM4395minusLRDsOJo2);
            } else if (iOrdinal == 1) {
                jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(sjVar.l, jM4395minusLRDsOJo2);
            } else {
                if (iOrdinal != 2) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                jM4395minusLRDsOJo = sjVar.m;
            }
            return ComparisonsKt.maxOf(Duration.m4365boximpl(Duration.INSTANCE.m4458getZEROUwyO8pc()), Duration.m4365boximpl(jM4395minusLRDsOJo));
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:107:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f3 A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #1 {all -> 0x0043, blocks: (B:16:0x003e, B:108:0x01ed, B:110:0x01f3), top: B:154:0x003e }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0208 A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0217 A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x021b A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x021f A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0220 A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0226 A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x022e A[Catch: all -> 0x0237, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0236 A[Catch: all -> 0x0237, TRY_LEAVE, TryCatch #2 {all -> 0x0237, blocks: (B:115:0x0201, B:117:0x0208, B:119:0x020c, B:121:0x0210, B:122:0x0213, B:124:0x0217, B:126:0x021b, B:128:0x021f, B:129:0x0220, B:130:0x0225, B:131:0x0226, B:132:0x022d, B:133:0x022e, B:134:0x0235, B:135:0x0236), top: B:156:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0169  */
    /* JADX WARN: Code duplicated, block: B:68:0x017d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0185 A[Catch: all -> 0x005b, TRY_LEAVE, TryCatch #6 {all -> 0x005b, blocks: (B:23:0x0056, B:69:0x017f, B:71:0x0185), top: B:162:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x019b A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:85:0x01aa A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01ae A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01b2 A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01b3 A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01b9 A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01c1 A[Catch: all -> 0x01ca, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01c9 A[Catch: all -> 0x01ca, TRY_LEAVE, TryCatch #4 {all -> 0x01ca, blocks: (B:76:0x0194, B:78:0x019b, B:80:0x019f, B:82:0x01a3, B:83:0x01a6, B:85:0x01aa, B:87:0x01ae, B:89:0x01b2, B:90:0x01b3, B:91:0x01b8, B:92:0x01b9, B:93:0x01c0, B:94:0x01c1, B:95:0x01c8, B:96:0x01c9), top: B:159:0x0194 }] */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if (r15.v(r2) == r3) goto L106;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(p005kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sj.x(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
