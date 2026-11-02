package kotlin;

import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import com.ironsource.C3510b4;
import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class h6 implements ox0, n92 {
    public static final Set K = SetsKt.setOf((Object[]) new LoadAdError.ErrorCode[]{LoadAdError.ErrorCode.INVALID_REQUEST, LoadAdError.ErrorCode.INVALID_AD_RESPONSE, LoadAdError.ErrorCode.REQUEST_ID_MISMATCH, LoadAdError.ErrorCode.APP_ID_MISSING, LoadAdError.ErrorCode.AD_RESPONSE_ALREADY_USED});
    public Job A;
    public Job B;
    public final Queue C;
    public CompletableJob D;
    public final CompletableJob E;
    public CompletableJob F;
    public CompletableJob G;
    public CompletableJob H;
    public CompletableJob I;
    public CompletableJob J;
    public final CoroutineScope a;
    public final String b;
    public final PreloadConfiguration c;
    public final PreloadCallback d;
    public final g83 e;
    public final tx f;
    public final ex0 g;
    public final f13 h;
    public final pt2 i;
    public final boolean j;
    public final j53 k;
    public final k6 l;
    public final long m;
    public final boolean n;
    public final long o;
    public final int p;
    public final int q;
    public final double r;
    public final long s;
    public final double t;
    public final Mutex u;
    public w4 v;
    public int w;
    public long x;
    public boolean y;
    public Job z;

    public h6(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, j53 requestType, ex0 flags, k6 adPreloadingValidator, pt2 preloadManager, g83 rootTraceCreator, tx clock, f13 randomGenerator, String preloadId, CoroutineScope backgroundScope, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(preloadConfiguration, "preloadConfiguration");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(preloadManager, "preloadManager");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adPreloadingValidator, "adPreloadingValidator");
        this.a = backgroundScope;
        this.b = preloadId;
        this.c = preloadConfiguration;
        this.d = preloadCallback;
        this.e = rootTraceCreator;
        this.f = clock;
        this.g = flags;
        this.h = randomGenerator;
        this.i = preloadManager;
        this.j = z3;
        this.k = requestType;
        this.l = adPreloadingValidator;
        this.m = flags.v0();
        this.n = flags.z0();
        long jG = flags.g();
        this.o = jG;
        Integer bufferSize = preloadConfiguration.getBufferSize();
        this.p = Math.max(Math.min(bufferSize != null ? bufferSize.intValue() : flags.f(), flags.i()), flags.l());
        this.q = flags.k();
        flags.p0();
        this.r = flags.h();
        this.s = flags.j();
        this.t = flags.m();
        this.u = MutexKt.Mutex$default(false, 1, null);
        this.v = w4.IDLE;
        this.x = jG;
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default.complete();
        this.z = completableJobJob$default;
        CompletableJob completableJobJob$default2 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default2.complete();
        this.A = completableJobJob$default2;
        this.B = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.C = flags.N() ? new au2() : new PriorityQueue(new b6(new a6()));
        CompletableJob completableJobJob$default3 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default3.complete();
        this.D = completableJobJob$default3;
        CompletableJob completableJobJob$default4 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default4.complete();
        this.E = completableJobJob$default4;
        CompletableJob completableJobJob$default5 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default5.complete();
        this.F = completableJobJob$default5;
        CompletableJob completableJobJob$default6 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default6.complete();
        this.G = completableJobJob$default6;
        CompletableJob completableJobJob$default7 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default7.complete();
        this.H = completableJobJob$default7;
        CompletableJob completableJobJob$default8 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        if (z) {
            completableJobJob$default8.complete();
        }
        this.I = completableJobJob$default8;
        CompletableJob completableJobJob$default9 = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        if (z2) {
            completableJobJob$default9.complete();
        }
        this.J = completableJobJob$default9;
    }

    public static ar2 a(h6 h6Var, boolean z, String value, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            value = "";
        }
        h6Var.getClass();
        zq2 builder = ar2.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        String value2 = h6Var.b;
        Intrinsics.checkNotNullParameter(value2, "value");
        builder.b(value2);
        builder.a(h6Var.p);
        builder.b(h6Var.C.size());
        builder.a(z);
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        builder.b(h6Var.v == w4.ACTIVE);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ar2) vz0VarB;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a A[Catch: all -> 0x00a7, TryCatch #0 {all -> 0x00a7, blocks: (B:13:0x0032, B:23:0x0064, B:25:0x006a, B:27:0x008f, B:30:0x00a1, B:22:0x005c), top: B:36:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0064 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0064 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public static final Object a(h6 h6Var, Continuation continuation) {
        z4 z4Var;
        Mutex mutex;
        h6 h6Var2;
        Iterator it;
        yt2 yt2Var;
        h6Var.getClass();
        if (continuation instanceof z4) {
            z4Var = (z4) continuation;
            int i = z4Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                z4Var.f = i - Integer.MIN_VALUE;
            } else {
                z4Var = new z4(h6Var, continuation);
            }
        } else {
            z4Var = new z4(h6Var, continuation);
        }
        Object obj = z4Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = z4Var.f;
        try {
            if (r2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                Mutex mutex2 = h6Var.u;
                z4Var.a = h6Var;
                z4Var.b = mutex2;
                z4Var.f = 1;
                if (mutex2.lock(null, z4Var) != coroutine_suspended) {
                    mutex = mutex2;
                }
                return coroutine_suspended;
            }
            if (r2 == 1) {
                Mutex mutex3 = z4Var.b;
                h6 h6Var3 = z4Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = mutex3;
                h6Var = h6Var3;
            } else {
                if (r2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = z4Var.c;
                Mutex mutex4 = z4Var.b;
                h6Var2 = z4Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                r2 = mutex4;
            }
            while (it.hasNext()) {
                yt2Var = (yt2) it.next();
                Duration.Companion companion = Duration.INSTANCE;
                h6Var2.f.getClass();
                if (Duration.m4366compareToLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), Duration.m4396plusLRDsOJo(yt2Var.b, h6Var2.m)) >= 0) {
                    Intrinsics.checkNotNull(yt2Var);
                    z4Var.a = h6Var2;
                    z4Var.b = r2;
                    z4Var.c = it;
                    z4Var.f = 2;
                    if (h6Var2.a(it, yt2Var, z4Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            r2.unlock(null);
            return unit;
            h6Var2 = h6Var;
            it = h6Var.C.iterator();
            r2 = mutex;
            while (it.hasNext()) {
                yt2Var = (yt2) it.next();
                Duration.Companion companion2 = Duration.INSTANCE;
                h6Var2.f.getClass();
                if (Duration.m4366compareToLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), Duration.m4396plusLRDsOJo(yt2Var.b, h6Var2.m)) >= 0) {
                    Intrinsics.checkNotNull(yt2Var);
                    z4Var.a = h6Var2;
                    z4Var.b = r2;
                    z4Var.c = it;
                    z4Var.f = 2;
                    if (h6Var2.a(it, yt2Var, z4Var) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            r2.unlock(null);
            return unit2;
        } catch (Throwable th) {
            r2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:122:0x0204  */
    /* JADX WARN: Code duplicated, block: B:134:0x0238  */
    /* JADX WARN: Code duplicated, block: B:137:0x0242 A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #13 {all -> 0x006f, blocks: (B:135:0x023c, B:137:0x0242, B:20:0x006a), top: B:235:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:144:0x0264 A[Catch: all -> 0x02d7, TryCatch #15 {all -> 0x02d7, blocks: (B:142:0x0260, B:144:0x0264, B:145:0x0270), top: B:239:0x0260 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x0279  */
    /* JADX WARN: Code duplicated, block: B:151:0x0290  */
    /* JADX WARN: Code duplicated, block: B:153:0x0294  */
    /* JADX WARN: Code duplicated, block: B:156:0x02a7 A[PHI: r14
  0x02a7: PHI (r14v56 ads_mobile_sdk.h6) = (r14v15 ads_mobile_sdk.h6), (r14v59 ads_mobile_sdk.h6), (r14v59 ads_mobile_sdk.h6), (r14v59 ads_mobile_sdk.h6) binds: [B:16:0x0048, B:152:0x0292, B:154:0x02a4, B:149:0x028d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:159:0x02bb A[Catch: all -> 0x02d2, PHI: r2 r14
  0x02bb: PHI (r2v26 ads_mobile_sdk.h6) = (r2v12 ads_mobile_sdk.h6), (r2v27 ads_mobile_sdk.h6) binds: [B:15:0x003d, B:157:0x02b8] A[DONT_GENERATE, DONT_INLINE]
  0x02bb: PHI (r14v55 kotlinx.coroutines.sync.Mutex) = (r14v17 kotlinx.coroutines.sync.Mutex), (r14v57 kotlinx.coroutines.sync.Mutex) binds: [B:15:0x003d, B:157:0x02b8] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #14 {all -> 0x02d2, blocks: (B:13:0x0038, B:162:0x02ca, B:159:0x02bb), top: B:237:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x005c A[PHI: r2 r7 r14
  0x005c: PHI (r2v28 java.lang.Object) = (r2v11 java.lang.Object), (r2v32 java.lang.Object) binds: [B:17:0x004f, B:140:0x025d] A[DONT_GENERATE, DONT_INLINE]
  0x005c: PHI (r7v14 ads_mobile_sdk.h6) = (r7v8 ads_mobile_sdk.h6), (r7v19 ads_mobile_sdk.h6) binds: [B:17:0x004f, B:140:0x025d] A[DONT_GENERATE, DONT_INLINE]
  0x005c: PHI (r14v58 kotlinx.coroutines.sync.Mutex) = (r14v14 kotlinx.coroutines.sync.Mutex), (r14v61 kotlinx.coroutines.sync.Mutex) binds: [B:17:0x004f, B:140:0x025d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c9 A[PHI: r14
  0x00c9: PHI (r14v84 ads_mobile_sdk.h6) = (r14v0 ads_mobile_sdk.h6), (r14v81 ads_mobile_sdk.h6), (r14v86 ads_mobile_sdk.h6) binds: [B:42:0x00c6, B:50:0x00ed, B:163:0x02cc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d7 A[PHI: r14
  0x00d7: PHI (r14v83 ads_mobile_sdk.h6) = (r14v1 ads_mobile_sdk.h6), (r14v84 ads_mobile_sdk.h6) binds: [B:41:0x00c0, B:44:0x00d3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e7 A[PHI: r14 r15
  0x00e7: PHI (r14v81 ads_mobile_sdk.h6) = (r14v2 ads_mobile_sdk.h6), (r14v83 ads_mobile_sdk.h6) binds: [B:40:0x00ba, B:47:0x00e3] A[DONT_GENERATE, DONT_INLINE]
  0x00e7: PHI (r15v54 java.lang.Object) = (r15v1 java.lang.Object), (r15v59 java.lang.Object) binds: [B:40:0x00ba, B:47:0x00e3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:58:0x0133  */
    /* JADX WARN: Code duplicated, block: B:62:0x014c  */
    /* JADX WARN: Code duplicated, block: B:74:0x0180  */
    /* JADX WARN: Code duplicated, block: B:77:0x018a A[Catch: all -> 0x0097, TRY_LEAVE, TryCatch #16 {all -> 0x0097, blocks: (B:75:0x0184, B:77:0x018a, B:30:0x0092), top: B:241:0x0092 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:160:0x02c7 -> B:162:0x02ca). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00ed -> B:43:0x00c9). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object b(kotlin.h6 r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h6.b(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object c(h6 h6Var, Continuation continuation) {
        x4 x4Var;
        h6 h6Var2;
        Mutex mutex;
        if (continuation instanceof x4) {
            x4Var = (x4) continuation;
            int i = x4Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                x4Var.e = i - Integer.MIN_VALUE;
            } else {
                x4Var = new x4(h6Var, continuation);
            }
        } else {
            x4Var = new x4(h6Var, continuation);
        }
        Object objD = x4Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x4Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objD);
            x4Var.a = h6Var;
            x4Var.e = 1;
            h6Var.getClass();
            objD = d(h6Var, x4Var);
            if (objD != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            h6Var = x4Var.a;
            p005kotlin.ResultKt.throwOnFailure(objD);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = x4Var.b;
            h6Var2 = x4Var.a;
            p005kotlin.ResultKt.throwOnFailure(objD);
        }
        try {
            h6Var2.H.complete();
            h6Var2.v = w4.ALLOWED;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
        if (!((Boolean) objD).booleanValue()) {
            return p005kotlin.Unit.INSTANCE;
        }
        Mutex mutex2 = h6Var.u;
        x4Var.a = h6Var;
        x4Var.b = mutex2;
        x4Var.e = 2;
        if (mutex2.lock(null, x4Var) != coroutine_suspended) {
            h6Var2 = h6Var;
            mutex = mutex2;
            h6Var2.H.complete();
            h6Var2.v = w4.ALLOWED;
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object d(h6 h6Var, Continuation continuation) {
        y4 y4Var;
        Mutex mutex;
        if (continuation instanceof y4) {
            y4Var = (y4) continuation;
            int i = y4Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                y4Var.e = i - Integer.MIN_VALUE;
            } else {
                y4Var = new y4(h6Var, continuation);
            }
        } else {
            y4Var = new y4(h6Var, continuation);
        }
        Object obj = y4Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = y4Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = h6Var.u;
            y4Var.a = h6Var;
            y4Var.b = mutex;
            y4Var.e = 1;
            if (mutex.lock(null, y4Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = y4Var.b;
            h6 h6Var2 = y4Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            h6Var = h6Var2;
        }
        try {
            if (h6Var.y || h6Var.C.size() >= h6Var.p || h6Var.v == w4.ACTIVE || !h6Var.E.isCompleted() || !h6Var.I.isCompleted() || !h6Var.J.isCompleted() || !h6Var.F.isCompleted() || !h6Var.G.isCompleted()) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object e(h6 h6Var, Continuation continuation) {
        n5 n5Var;
        Mutex mutex;
        if (continuation instanceof n5) {
            n5Var = (n5) continuation;
            int i = n5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                n5Var.e = i - Integer.MIN_VALUE;
            } else {
                n5Var = new n5(h6Var, continuation);
            }
        } else {
            n5Var = new n5(h6Var, continuation);
        }
        Object obj = n5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = n5Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = h6Var.u;
            n5Var.a = h6Var;
            n5Var.b = mutex;
            n5Var.e = 1;
            if (mutex.lock(null, n5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = n5Var.b;
            h6 h6Var2 = n5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            h6Var = h6Var2;
        }
        try {
            if (h6Var.v != w4.ACTIVE) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object f(h6 h6Var, Continuation continuation) {
        o5 o5Var;
        Mutex mutex;
        if (continuation instanceof o5) {
            o5Var = (o5) continuation;
            int i = o5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                o5Var.e = i - Integer.MIN_VALUE;
            } else {
                o5Var = new o5(h6Var, continuation);
            }
        } else {
            o5Var = new o5(h6Var, continuation);
        }
        Object obj = o5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o5Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = h6Var.u;
            o5Var.a = h6Var;
            o5Var.b = mutex;
            o5Var.e = 1;
            if (mutex.lock(null, o5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = o5Var.b;
            h6 h6Var2 = o5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            h6Var = h6Var2;
        }
        try {
            return Boxing.boxInt(h6Var.C.size());
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object g(h6 h6Var, Continuation continuation) {
        r5 r5Var;
        Mutex mutex;
        if (continuation instanceof r5) {
            r5Var = (r5) continuation;
            int i = r5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                r5Var.e = i - Integer.MIN_VALUE;
            } else {
                r5Var = new r5(h6Var, continuation);
            }
        } else {
            r5Var = new r5(h6Var, continuation);
        }
        Object obj = r5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r5Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = h6Var.u;
            r5Var.a = h6Var;
            r5Var.b = mutex;
            r5Var.e = 1;
            if (mutex.lock(null, r5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = r5Var.b;
            h6 h6Var2 = r5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            h6Var = h6Var2;
        }
        try {
            if (!h6Var.J.isCompleted()) {
                return p005kotlin.Unit.INSTANCE;
            }
            h6Var.J = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
            if (h6Var.j && h6Var.v == w4.ALLOWED) {
                h6Var.v = w4.IDLE;
                h6Var.H = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r7.x(r0) == r1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object h(kotlin.h6 r7, p005kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof kotlin.s5
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.s5 r0 = (kotlin.s5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.s5 r0 = new ads_mobile_sdk.s5
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            p005kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L72
        L31:
            r8 = move-exception
            goto L78
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.h6 r2 = (kotlin.h6) r2
            p005kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.u
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L6e
        L59:
            kotlinx.coroutines.CompletableJob r2 = r7.J     // Catch: java.lang.Throwable -> L6f
            r2.complete()     // Catch: java.lang.Throwable -> L6f
            boolean r2 = r7.n     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L71
            r0.a = r8     // Catch: java.lang.Throwable -> L6f
            r0.b = r5     // Catch: java.lang.Throwable -> L6f
            r0.e = r3     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r7 = r7.x(r0)     // Catch: java.lang.Throwable -> L6f
            if (r7 != r1) goto L71
        L6e:
            return r1
        L6f:
            r7 = move-exception
            goto L7b
        L71:
            r7 = r8
        L72:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L78:
            r6 = r8
            r8 = r7
            r7 = r6
        L7b:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h6.h(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object i(h6 h6Var, Continuation continuation) {
        t5 t5Var;
        Mutex mutex;
        if (continuation instanceof t5) {
            t5Var = (t5) continuation;
            int i = t5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                t5Var.e = i - Integer.MIN_VALUE;
            } else {
                t5Var = new t5(h6Var, continuation);
            }
        } else {
            t5Var = new t5(h6Var, continuation);
        }
        Object obj = t5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = t5Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = h6Var.u;
            t5Var.a = h6Var;
            t5Var.b = mutex;
            t5Var.e = 1;
            if (mutex.lock(null, t5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = t5Var.b;
            h6 h6Var2 = t5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            h6Var = h6Var2;
        }
        try {
            h6Var.I.complete();
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object j(h6 h6Var, Continuation continuation) {
        u5 u5Var;
        Mutex mutex;
        if (continuation instanceof u5) {
            u5Var = (u5) continuation;
            int i = u5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                u5Var.e = i - Integer.MIN_VALUE;
            } else {
                u5Var = new u5(h6Var, continuation);
            }
        } else {
            u5Var = new u5(h6Var, continuation);
        }
        Object obj = u5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = u5Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = h6Var.u;
            u5Var.a = h6Var;
            u5Var.b = mutex;
            u5Var.e = 1;
            if (mutex.lock(null, u5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = u5Var.b;
            h6 h6Var2 = u5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            h6Var = h6Var2;
        }
        try {
            if (!h6Var.I.isCompleted()) {
                return p005kotlin.Unit.INSTANCE;
            }
            h6Var.I = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
            if (h6Var.j && h6Var.v == w4.ALLOWED) {
                h6Var.v = w4.IDLE;
                h6Var.H = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056  */
    /* JADX WARN: Code duplicated, block: B:24:0x0061 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0064 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x006c A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x006f A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0077 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x007a A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0082 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0085 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x008d A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0090 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0098 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x009b A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a3 A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #0 {all -> 0x00bc, blocks: (B:22:0x0059, B:24:0x0061, B:25:0x0064, B:27:0x006c, B:28:0x006f, B:30:0x0077, B:31:0x007a, B:33:0x0082, B:34:0x0085, B:36:0x008d, B:37:0x0090, B:39:0x0098, B:40:0x009b, B:42:0x00a3), top: B:55:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b6, code lost:
    
        if (r6.join(r0) == r1) goto L49;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00b6 -> B:13:0x002e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object A(p005kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof kotlin.g6
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.g6 r0 = (kotlin.g6) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.g6 r0 = new ads_mobile_sdk.g6
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L42
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            ads_mobile_sdk.h6 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
        L2e:
            r9 = r2
            goto L46
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L38:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.h6 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            r2 = r6
            goto L59
        L42:
            p005kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
        L46:
            kotlinx.coroutines.sync.Mutex r2 = r9.u
            r0.a = r9
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r2.lock(r5, r0)
            if (r6 != r1) goto L56
            goto Lb8
        L56:
            r7 = r2
            r2 = r9
            r9 = r7
        L59:
            kotlinx.coroutines.CompletableJob r6 = r2.D     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L64
            kotlinx.coroutines.CompletableJob r6 = r2.D     // Catch: java.lang.Throwable -> Lbc
            goto La7
        L64:
            kotlinx.coroutines.CompletableJob r6 = r2.E     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L6f
            kotlinx.coroutines.CompletableJob r6 = r2.E     // Catch: java.lang.Throwable -> Lbc
            goto La7
        L6f:
            kotlinx.coroutines.CompletableJob r6 = r2.F     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L7a
            kotlinx.coroutines.CompletableJob r6 = r2.F     // Catch: java.lang.Throwable -> Lbc
            goto La7
        L7a:
            kotlinx.coroutines.CompletableJob r6 = r2.I     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L85
            kotlinx.coroutines.CompletableJob r6 = r2.I     // Catch: java.lang.Throwable -> Lbc
            goto La7
        L85:
            kotlinx.coroutines.CompletableJob r6 = r2.J     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L90
            kotlinx.coroutines.CompletableJob r6 = r2.J     // Catch: java.lang.Throwable -> Lbc
            goto La7
        L90:
            kotlinx.coroutines.CompletableJob r6 = r2.G     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L9b
            kotlinx.coroutines.CompletableJob r6 = r2.G     // Catch: java.lang.Throwable -> Lbc
            goto La7
        L9b:
            kotlinx.coroutines.CompletableJob r6 = r2.H     // Catch: java.lang.Throwable -> Lbc
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto La6
            kotlinx.coroutines.CompletableJob r6 = r2.H     // Catch: java.lang.Throwable -> Lbc
            goto La7
        La6:
            r6 = r5
        La7:
            r9.unlock(r5)
            if (r6 == 0) goto Lb9
            r0.a = r2
            r0.b = r5
            r0.e = r3
            java.lang.Object r9 = r6.join(r0)
            if (r9 != r1) goto L2e
        Lb8:
            return r1
        Lb9:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        Lbc:
            r0 = move-exception
            r9.unlock(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h6.A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.n92
    public final Object a(long j, Continuation continuation) {
        return i(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x013d A[Catch: all -> 0x017a, TryCatch #1 {all -> 0x017a, blocks: (B:51:0x0121, B:53:0x0135, B:56:0x0147, B:60:0x0157, B:55:0x013d), top: B:75:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0155  */
    /* JADX WARN: Code duplicated, block: B:59:0x0156  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a1, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r2, r11, r3) == r4) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00af, code lost:
    
        if (r5.invoke(r3) == r4) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0174, code lost:
    
        if (r12.a(r0, r2) == r4) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.qx2 r19, p005kotlin.coroutines.Continuation r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h6.a(ads_mobile_sdk.qx2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public final Object a(xt2 xt2Var, Continuation continuation) {
        g5 g5Var;
        Mutex mutex;
        h6 h6Var;
        yt2 yt2Var;
        xt2 xt2Var2 = xt2Var;
        if (continuation instanceof g5) {
            g5Var = (g5) continuation;
            int i = g5Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                g5Var.g = i - Integer.MIN_VALUE;
            } else {
                g5Var = new g5(this, continuation);
            }
        } else {
            g5Var = new g5(this, continuation);
        }
        Object obj = g5Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = g5Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            this.f.getClass();
            yt2 yt2Var2 = new yt2(xt2Var2, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS));
            mutex = this.u;
            g5Var.a = this;
            g5Var.b = xt2Var2;
            g5Var.c = yt2Var2;
            g5Var.d = mutex;
            g5Var.g = 1;
            if (mutex.lock(null, g5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            h6Var = this;
            yt2Var = yt2Var2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = g5Var.d;
            yt2Var = g5Var.c;
            xt2 xt2Var3 = g5Var.b;
            h6Var = g5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            xt2Var2 = xt2Var3;
        }
        try {
            h6Var.v = w4.IDLE;
            h6Var.C.add(yt2Var);
            CoroutineScope coroutineScope = h6Var.a;
            h5 block = new h5(h6Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            if (h6Var.n) {
                yt2Var.c = jobLaunch$default;
            }
            if (h6Var.C.size() >= h6Var.p) {
                h6Var.D = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
            }
            h6Var.w = 0;
            h6Var.x = h6Var.o;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            PreloadCallback preloadCallback = h6Var.d;
            if (preloadCallback != null) {
                CoroutineScope coroutineScope2 = h6Var.a;
                l5 block2 = new l5(preloadCallback, h6Var, xt2Var2, null);
                Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context, null, new ws3(block2, null), 2, null);
            }
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0180 A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0188 A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0190 A[Catch: all -> 0x0191, TRY_LEAVE, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00bc A[Catch: all -> 0x004c, TRY_LEAVE, TryCatch #7 {all -> 0x004c, blocks: (B:20:0x0048, B:34:0x00b6, B:36:0x00bc), top: B:124:0x0048 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d1 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00e0 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e8 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00e9 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00ef A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00f7 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ff A[Catch: all -> 0x0100, TRY_LEAVE, TryCatch #0 {all -> 0x0100, blocks: (B:41:0x00ca, B:43:0x00d1, B:45:0x00d5, B:47:0x00d9, B:48:0x00dc, B:50:0x00e0, B:52:0x00e4, B:54:0x00e8, B:55:0x00e9, B:56:0x00ee, B:57:0x00ef, B:58:0x00f6, B:59:0x00f7, B:60:0x00fe, B:61:0x00ff), top: B:112:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:78:0x014c A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #6 {all -> 0x0039, blocks: (B:13:0x0034, B:76:0x0146, B:78:0x014c), top: B:122:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:87:0x0162 A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0171 A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0175 A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0179 A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:99:0x017a A[Catch: all -> 0x0191, TryCatch #1 {all -> 0x0191, blocks: (B:85:0x015b, B:87:0x0162, B:89:0x0166, B:91:0x016a, B:92:0x016d, B:94:0x0171, B:96:0x0175, B:98:0x0179, B:99:0x017a, B:100:0x017f, B:101:0x0180, B:102:0x0187, B:103:0x0188, B:104:0x018f, B:105:0x0190), top: B:113:0x015b }] */
    public final Object a(Iterator it, yt2 yt2Var, Continuation continuation) {
        a5 a5Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object obj;
        Object obj2;
        if (continuation instanceof a5) {
            a5Var = (a5) continuation;
            int i = a5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                a5Var.e = i - Integer.MIN_VALUE;
            } else {
                a5Var = new a5(this, continuation);
            }
        } else {
            a5Var = new a5(this, continuation);
        }
        Object obj3 = a5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a5Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj3);
            g83 g83Var = this.e;
            s11 s11Var = s11.CUI_NAME_EVICT_AD;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    hs3.a().e().C = a(this, false, yt2Var.a.a.f(), 1);
                    it.remove();
                    Job job = yt2Var.c;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                    }
                    yt2Var.a.a.destroy();
                    a5Var.a = rr3VarA2;
                    a5Var.b = rr3VarA2;
                    a5Var.e = 1;
                    if (a(false, (ContinuationImpl) a5Var) != coroutine_suspended) {
                        rr3Var4 = rr3VarA2;
                        rr3Var3 = rr3Var4;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3Var3, null);
                    }
                } catch (Throwable th) {
                    th = th;
                    rr3Var3 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA2.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    hs3.a().e().C = a(this, false, yt2Var.a.a.f(), 1);
                    it.remove();
                    Job job2 = yt2Var.c;
                    if (job2 != null) {
                        Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                    }
                    yt2Var.a.a.destroy();
                    a5Var.a = rr3VarA;
                    a5Var.b = rr3VarA;
                    a5Var.e = 2;
                    if (a(false, (ContinuationImpl) a5Var) != coroutine_suspended) {
                        rr3Var2 = rr3VarA;
                        rr3Var = rr3Var2;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var, null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            rr3Var3 = a5Var.b;
            rr3Var4 = a5Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(rr3Var3, null);
            } catch (Throwable th3) {
                th = th3;
                rr3VarA2 = rr3Var4;
                try {
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var3, th4);
                        throw th5;
                    }
                }
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = a5Var.b;
            rr3Var2 = a5Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
            } catch (Throwable th6) {
                th = th6;
                rr3VarA = rr3Var2;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var, th7);
                        throw th8;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final p005kotlin.Unit a(int i, boolean z) {
        if (!this.j) {
            return p005kotlin.Unit.INSTANCE;
        }
        pt2 pt2Var = this.i;
        CoroutineScope coroutineScope = pt2Var.c;
        sr2 block = new sr2(pt2Var, this, i, z, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return unit;
    }

    public final p005kotlin.Unit a(boolean z, ContinuationImpl continuationImpl) {
        if (this.C.isEmpty()) {
            m21 m21Var = o21.f;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuationImpl.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new p5(this, null), 3, null);
        }
        this.D.complete();
        if (!z && this.A.isActive()) {
            return p005kotlin.Unit.INSTANCE;
        }
        Job.DefaultImpls.cancel$default(this.A, (CancellationException) null, 1, (Object) null);
        this.F.complete();
        this.F = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        if (this.j && this.v == w4.ALLOWED) {
            this.v = w4.IDLE;
            this.H = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        }
        CoroutineScope coroutineScope = this.a;
        q5 block = new q5(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        this.A = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ox0
    public final Object b(long j, Continuation continuation) {
        return h(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        b5 b5Var;
        h6 h6Var;
        Mutex mutex;
        if (continuation instanceof b5) {
            b5Var = (b5) continuation;
            int i = b5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                b5Var.e = i - Integer.MIN_VALUE;
            } else {
                b5Var = new b5(this, continuation);
            }
        } else {
            b5Var = new b5(this, continuation);
        }
        Object obj = b5Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = b5Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.u;
            b5Var.a = this;
            b5Var.b = mutex2;
            b5Var.e = 1;
            if (mutex2.lock(null, b5Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            h6Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = b5Var.b;
            h6Var = b5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            int size = h6Var.C.size();
            int i3 = size - 1;
            w4 w4Var = h6Var.v;
            if (w4Var != w4.ACTIVE && w4Var != w4.ALLOWED) {
                size = i3;
            }
            return Boxing.boxInt(Math.max(0, size));
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // kotlin.n92
    public final Object c(long j, Continuation continuation) {
        return j(this, continuation);
    }

    @Override // kotlin.ox0
    public final Object d(long j, Continuation continuation) {
        return g(this, continuation);
    }

    public final int f() {
        return this.p;
    }

    public final String g() {
        return this.b;
    }

    public final j53 i() {
        return this.k;
    }

    public final p005kotlin.Unit k() {
        Job.DefaultImpls.cancel$default(this.B, (CancellationException) null, 1, (Object) null);
        this.G.complete();
        this.G = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        CoroutineScope coroutineScope = this.a;
        e6 block = new e6(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        this.B = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0184 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0188 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0189 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:105:0x018f A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0197 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:109:0x019f A[Catch: all -> 0x01a0, TRY_LEAVE, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00dc A[Catch: all -> 0x0057, TRY_LEAVE, TryCatch #7 {all -> 0x0057, blocks: (B:22:0x0052, B:39:0x00d5, B:41:0x00dc, B:44:0x00e7, B:45:0x00ea, B:38:0x00cd), top: B:137:0x0052, inners: #6 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f4 A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0103 A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0107 A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:61:0x010b A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:62:0x010c A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0112 A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:66:0x011a A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0122 A[Catch: all -> 0x0123, TRY_LEAVE, TryCatch #3 {all -> 0x0123, blocks: (B:48:0x00ed, B:50:0x00f4, B:52:0x00f8, B:54:0x00fc, B:55:0x00ff, B:57:0x0103, B:59:0x0107, B:61:0x010b, B:62:0x010c, B:63:0x0111, B:64:0x0112, B:65:0x0119, B:66:0x011a, B:67:0x0121, B:68:0x0122), top: B:130:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:82:0x0158 A[Catch: all -> 0x0047, TRY_LEAVE, TryCatch #8 {all -> 0x0047, blocks: (B:17:0x0042, B:80:0x0151, B:82:0x0158, B:85:0x0162, B:86:0x0165, B:79:0x0149), top: B:138:0x0042, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0171 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0180 A[Catch: all -> 0x01a0, TryCatch #0 {all -> 0x01a0, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:96:0x017c, B:98:0x0180, B:100:0x0184, B:102:0x0188, B:103:0x0189, B:104:0x018e, B:105:0x018f, B:106:0x0196, B:107:0x0197, B:108:0x019e, B:109:0x019f), top: B:125:0x016a }] */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01b6, code lost:
    
        if (r15 == r1) goto L118;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h6.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public abstract Object t(Continuation continuation);

    public final Object u(Continuation continuation) {
        return f(this, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0157 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x015f A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0167 A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a6 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #8 {all -> 0x004e, blocks: (B:20:0x004a, B:32:0x009f, B:34:0x00a6, B:38:0x00b1, B:39:0x00b4, B:31:0x0097), top: B:123:0x004a, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00be A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00cd A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00d1 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00dc A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e4 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ec A[Catch: all -> 0x00ed, TRY_LEAVE, TryCatch #7 {all -> 0x00ed, blocks: (B:42:0x00b7, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c9, B:51:0x00cd, B:53:0x00d1, B:55:0x00d5, B:56:0x00d6, B:57:0x00db, B:58:0x00dc, B:59:0x00e3, B:60:0x00e4, B:61:0x00eb, B:62:0x00ec), top: B:122:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0121 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #3 {all -> 0x0037, blocks: (B:13:0x0032, B:74:0x011a, B:76:0x0121, B:80:0x012c, B:81:0x012f, B:73:0x0112), top: B:116:0x0032, inners: #6 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:86:0x0139 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0148 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x014c A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0150 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0151 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:84:0x0132, B:86:0x0139, B:88:0x013d, B:90:0x0141, B:91:0x0144, B:93:0x0148, B:95:0x014c, B:97:0x0150, B:98:0x0151, B:99:0x0156, B:100:0x0157, B:101:0x015e, B:102:0x015f, B:103:0x0166, B:104:0x0167), top: B:117:0x0132 }] */
    public final Object v(Continuation continuation) {
        v5 v5Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        h6 h6Var;
        Mutex mutex;
        rr3 rr3VarA2;
        rr3 rr3Var2;
        h6 h6Var2;
        Mutex mutex2;
        Object obj;
        Object obj2;
        if (continuation instanceof v5) {
            v5Var = (v5) continuation;
            int i = v5Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                v5Var.g = i - Integer.MIN_VALUE;
            } else {
                v5Var = new v5(this, continuation);
            }
        } else {
            v5Var = new v5(this, continuation);
        }
        Object obj3 = v5Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = v5Var.g;
        if (i2 != 0) {
            if (i2 == 1) {
                mutex2 = v5Var.d;
                rr3VarA2 = v5Var.c;
                rr3Var2 = v5Var.b;
                h6Var2 = v5Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    try {
                        obj = (yt2) h6Var2.C.peek();
                        mutex2.unlock(null);
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return obj;
                    } catch (Throwable th) {
                        mutex2.unlock(null);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        rr3Var2.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            rr3Var2.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            throw new i21(th);
                        }
                        if (!(th instanceof CancellationException)) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.closeFinally(rr3VarA2, th3);
                            throw th4;
                        }
                    }
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = v5Var.d;
            rr3VarA = v5Var.c;
            rr3Var = v5Var.b;
            h6Var = v5Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                try {
                    obj2 = (yt2) h6Var.C.peek();
                    mutex.unlock(null);
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return obj2;
                } catch (Throwable th5) {
                    mutex.unlock(null);
                    throw th5;
                }
            } catch (Throwable th6) {
                th = th6;
                try {
                    rr3Var.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3VarA, th7);
                        throw th8;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj3);
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_PEEK_PRELOADED_AD;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                Mutex mutex3 = this.u;
                v5Var.a = this;
                v5Var.b = rr3VarA2;
                v5Var.c = rr3VarA2;
                v5Var.d = mutex3;
                v5Var.g = 1;
                if (mutex3.lock(null, v5Var) != coroutine_suspended) {
                    h6Var2 = this;
                    mutex2 = mutex3;
                    rr3Var2 = rr3VarA2;
                    obj = (yt2) h6Var2.C.peek();
                    mutex2.unlock(null);
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                    return obj;
                }
            } catch (Throwable th9) {
                th = th9;
                rr3Var2 = rr3VarA2;
                rr3Var2.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3Var2.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        } else {
            rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                Mutex mutex4 = this.u;
                v5Var.a = this;
                v5Var.b = rr3VarA;
                v5Var.c = rr3VarA;
                v5Var.d = mutex4;
                v5Var.g = 2;
                if (mutex4.lock(null, v5Var) != coroutine_suspended) {
                    h6Var = this;
                    mutex = mutex4;
                    rr3Var = rr3VarA;
                    obj2 = (yt2) h6Var.C.peek();
                    mutex.unlock(null);
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return obj2;
                }
            } catch (Throwable th10) {
                th = th10;
                rr3Var = rr3VarA;
                rr3Var.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3Var.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0200 A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0204 A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x020f A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0213 A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0217 A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0218 A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x021e A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0226 A[Catch: all -> 0x022f, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x022e A[Catch: all -> 0x022f, TRY_LEAVE, TryCatch #7 {all -> 0x022f, blocks: (B:102:0x01f9, B:104:0x0200, B:106:0x0204, B:108:0x0208, B:109:0x020b, B:111:0x020f, B:113:0x0213, B:115:0x0217, B:116:0x0218, B:117:0x021d, B:118:0x021e, B:119:0x0225, B:120:0x0226, B:121:0x022d, B:122:0x022e), top: B:259:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0287 A[Catch: all -> 0x03b6, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x03b6, blocks: (B:137:0x026f, B:140:0x0287, B:143:0x029b, B:148:0x02b2, B:152:0x02c7, B:156:0x02d5, B:158:0x02e0, B:161:0x02e5), top: B:267:0x026f }] */
    /* JADX WARN: Code duplicated, block: B:143:0x029b A[Catch: all -> 0x03b6, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x03b6, blocks: (B:137:0x026f, B:140:0x0287, B:143:0x029b, B:148:0x02b2, B:152:0x02c7, B:156:0x02d5, B:158:0x02e0, B:161:0x02e5), top: B:267:0x026f }] */
    /* JADX WARN: Code duplicated, block: B:145:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:147:0x02ab A[Catch: all -> 0x03b4, TRY_LEAVE, TryCatch #10 {all -> 0x03b4, blocks: (B:138:0x0271, B:141:0x0289, B:146:0x02a4, B:147:0x02ab, B:154:0x02d1, B:157:0x02da, B:159:0x02e2, B:162:0x02e7), top: B:264:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:151:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:154:0x02d1 A[Catch: all -> 0x03b4, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x03b4, blocks: (B:138:0x0271, B:141:0x0289, B:146:0x02a4, B:147:0x02ab, B:154:0x02d1, B:157:0x02da, B:159:0x02e2, B:162:0x02e7), top: B:264:0x0271 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x02d5 A[Catch: all -> 0x03b6, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x03b6, blocks: (B:137:0x026f, B:140:0x0287, B:143:0x029b, B:148:0x02b2, B:152:0x02c7, B:156:0x02d5, B:158:0x02e0, B:161:0x02e5), top: B:267:0x026f }] */
    /* JADX WARN: Code duplicated, block: B:165:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:172:0x0309 A[PHI: r0 r4 r7 r12 r13 r15
  0x0309: PHI (r0v72 ads_mobile_sdk.yt2) = (r0v59 ads_mobile_sdk.yt2), (r0v77 ads_mobile_sdk.yt2) binds: [B:153:0x02cf, B:171:0x0304] A[DONT_GENERATE, DONT_INLINE]
  0x0309: PHI (r4v35 kotlinx.coroutines.sync.Mutex) = (r4v29 kotlinx.coroutines.sync.Mutex), (r4v41 kotlinx.coroutines.sync.Mutex) binds: [B:153:0x02cf, B:171:0x0304] A[DONT_GENERATE, DONT_INLINE]
  0x0309: PHI (r7v18 ??) = (r7v24 ??), (r7v25 ??) binds: [B:153:0x02cf, B:171:0x0304] A[DONT_GENERATE, DONT_INLINE]
  0x0309: PHI (r12v12 java.lang.Object) = (r12v10 java.lang.Object), (r12v14 java.lang.Object) binds: [B:153:0x02cf, B:171:0x0304] A[DONT_GENERATE, DONT_INLINE]
  0x0309: PHI (r13v8 ??) = (r13v12 ??), (r13v9 ??) binds: [B:153:0x02cf, B:171:0x0304] A[DONT_GENERATE, DONT_INLINE]
  0x0309: PHI (r15v11 ads_mobile_sdk.h6) = (r15v9 ads_mobile_sdk.h6), (r15v12 ads_mobile_sdk.h6) binds: [B:153:0x02cf, B:171:0x0304] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:177:0x0313 A[Catch: all -> 0x006e, TryCatch #6 {all -> 0x006e, blocks: (B:175:0x030e, B:177:0x0313, B:179:0x0317, B:181:0x031b, B:215:0x03bd, B:216:0x03c0, B:23:0x0068), top: B:258:0x0068 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x033f A[Catch: all -> 0x0047, TRY_LEAVE, TryCatch #3 {all -> 0x0047, blocks: (B:13:0x0042, B:185:0x0334, B:187:0x033b, B:189:0x033f), top: B:252:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x0364  */
    /* JADX WARN: Code duplicated, block: B:196:0x038a  */
    /* JADX WARN: Code duplicated, block: B:199:0x0397  */
    /* JADX WARN: Code duplicated, block: B:221:0x03ca A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x03ce A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:228:0x03d9 A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:230:0x03dd A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:232:0x03e1 A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:233:0x03e2 A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:235:0x03e8 A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:237:0x03f0 A[Catch: all -> 0x03f9, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:239:0x03f8 A[Catch: all -> 0x03f9, TRY_LEAVE, TryCatch #14 {all -> 0x03f9, blocks: (B:219:0x03c3, B:221:0x03ca, B:223:0x03ce, B:225:0x03d2, B:226:0x03d5, B:228:0x03d9, B:230:0x03dd, B:232:0x03e1, B:233:0x03e2, B:234:0x03e7, B:235:0x03e8, B:236:0x03ef, B:237:0x03f0, B:238:0x03f7, B:239:0x03f8), top: B:271:0x03c3 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0124 A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:52:0x010c, B:54:0x0124, B:56:0x0138, B:58:0x0140, B:59:0x0148, B:60:0x014f, B:64:0x0164, B:66:0x016e, B:68:0x0172, B:69:0x0177), top: B:256:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0161  */
    /* JADX WARN: Code duplicated, block: B:63:0x0163  */
    /* JADX WARN: Code duplicated, block: B:66:0x016e A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:52:0x010c, B:54:0x0124, B:56:0x0138, B:58:0x0140, B:59:0x0148, B:60:0x014f, B:64:0x0164, B:66:0x016e, B:68:0x0172, B:69:0x0177), top: B:256:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0172 A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:52:0x010c, B:54:0x0124, B:56:0x0138, B:58:0x0140, B:59:0x0148, B:60:0x014f, B:64:0x0164, B:66:0x016e, B:68:0x0172, B:69:0x0177), top: B:256:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:72:0x018c  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ad A[Catch: all -> 0x01f5, TryCatch #11 {all -> 0x01f5, blocks: (B:76:0x01a8, B:78:0x01ad, B:80:0x01b1, B:82:0x01b5, B:96:0x01f1, B:97:0x01f4), top: B:266:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:91:0x01dc A[Catch: all -> 0x0080, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:28:0x007b, B:86:0x01cf, B:89:0x01d8, B:91:0x01dc), top: B:246:0x007b }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x01d4: MOVE (r4 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:87:0x01d4 */
    /* JADX WARN: Type inference failed for: r13v1, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /* JADX WARN: Type inference failed for: r4v49, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v50 */
    /* JADX WARN: Type inference failed for: r4v51, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v52 */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r7v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public final Object w(Continuation continuation) {
        w5 w5Var;
        rr3 rr3Var;
        rr3 rr3VarA;
        ?? r6;
        ?? A;
        ?? r14;
        Mutex mutex;
        h6 h6Var;
        ?? r7;
        rr3 rr3Var2;
        Closeable closeable;
        Mutex mutex2;
        Mutex mutex3;
        ex0 ex0Var;
        Boolean bool;
        ir irVar;
        yt2 yt2Var;
        boolean z;
        Object obj;
        Closeable closeable2;
        Job job;
        h6 h6Var2;
        yt2 yt2Var2;
        ex0 ex0Var2;
        Closeable closeable3;
        rr3 rr3Var3;
        xt2 xt2Var;
        zh1 zh1Var;
        yt2 yt2Var3;
        h6 h6Var3;
        ?? r13;
        Mutex mutex4;
        ?? r8;
        ex0 ex0Var3;
        Boolean bool2;
        ir irVar2;
        boolean z2;
        Object obj2;
        Job job2;
        h6 h6Var4;
        yt2 yt2Var4;
        ex0 ex0Var4;
        ?? r15;
        ?? r9;
        ?? r16;
        ?? r4;
        ?? r5;
        xt2 xt2Var2;
        zh1 zh1Var2;
        yt2 yt2Var5;
        ?? r10;
        ?? r11;
        h6 h6Var5;
        ex0 ex0Var5;
        Boolean bool3;
        ir irVar3;
        k6 k6Var;
        String preloadId;
        j53 requestType;
        ex0 ex0Var6;
        uq2 uq2Var;
        if (continuation instanceof w5) {
            w5Var = (w5) continuation;
            int i = w5Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                w5Var.h = i - Integer.MIN_VALUE;
            } else {
                w5Var = new w5(this, continuation);
            }
        } else {
            w5Var = new w5(this, continuation);
        }
        Object obj3 = w5Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (w5Var.h) {
                case 0:
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    g83 g83Var = this.e;
                    s11 s11Var = s11.CUI_NAME_POLL_PRELOADED_AD;
                    List listEmptyList = CollectionsKt.emptyList();
                    ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        rr3VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            if (this.g.q0()) {
                                k6 k6Var2 = this.l;
                                String preloadId2 = this.b;
                                k6Var2.getClass();
                                Intrinsics.checkNotNullParameter(preloadId2, "preloadId");
                                k6Var2.e.remove(preloadId2);
                            }
                            Mutex mutex5 = this.u;
                            w5Var.a = this;
                            w5Var.b = rr3VarA;
                            w5Var.c = rr3VarA;
                            w5Var.d = mutex5;
                            w5Var.h = 1;
                            if (mutex5.lock(null, w5Var) != coroutine_suspended) {
                                h6Var = this;
                                rr3Var2 = rr3VarA;
                                closeable = rr3Var2;
                                mutex2 = mutex5;
                                try {
                                    ex0Var = h6Var.g;
                                    ex0Var.getClass();
                                    Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnPollAd:enabled", C3510b4.i.W);
                                    bool = Boolean.FALSE;
                                    irVar = yr.b;
                                    if (((Boolean) ex0Var.a("gads:resetExponentialBackoffOnPollAd:enabled", bool, irVar)).booleanValue()) {
                                        ex0Var2 = h6Var.g;
                                        ex0Var2.getClass();
                                        Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnSingleAd:enabled", C3510b4.i.W);
                                        if (((Boolean) ex0Var2.a("gads:resetExponentialBackoffOnSingleAd:enabled", bool, irVar)).booleanValue() || h6Var.C.size() == 1) {
                                            h6Var.w = 0;
                                            h6Var.x = h6Var.o;
                                        }
                                    }
                                    yt2Var = (yt2) h6Var.C.poll();
                                    uj2 uj2VarE = hs3.a().e();
                                    if (yt2Var != null) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    obj = null;
                                    uj2VarE.C = a(h6Var, z, null, 2);
                                    if (yt2Var != null) {
                                        closeable2 = closeable;
                                        mutex2.unlock(obj);
                                        if (yt2Var != null) {
                                        }
                                        closeable3 = closeable2;
                                        rr3Var3 = rr3Var2;
                                        if (yt2Var instanceof i01) {
                                            xs3.a((i01) yt2Var, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable3, null);
                                        ex0Var5 = h6Var.g;
                                        ex0Var5.getClass();
                                        Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                        bool3 = Boolean.FALSE;
                                        irVar3 = yr.b;
                                        if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                            k6Var = h6Var.l;
                                            preloadId = h6Var.b;
                                            requestType = h6Var.k;
                                            k6Var.getClass();
                                            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                            Intrinsics.checkNotNullParameter(requestType, "requestType");
                                            ex0Var6 = k6Var.a;
                                            ex0Var6.getClass();
                                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                            if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                                vq2 vq2Var = wq2.b;
                                                uq2Var = (uq2) wq2.c.get();
                                                if (uq2Var != null) {
                                                    k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                                }
                                            }
                                        }
                                        return yt2Var;
                                    }
                                    job = yt2Var.c;
                                    if (job != null) {
                                        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                    }
                                    w5Var.a = h6Var;
                                    w5Var.b = rr3Var2;
                                    w5Var.c = closeable;
                                    w5Var.d = mutex2;
                                    w5Var.e = yt2Var;
                                    w5Var.h = 2;
                                    if (h6Var.a(true, (ContinuationImpl) w5Var) != coroutine_suspended) {
                                        mutex3 = mutex2;
                                        closeable2 = closeable;
                                        h6Var2 = h6Var;
                                        yt2Var2 = yt2Var;
                                        hs3.a().a.d.b = yt2Var2.a.a.f();
                                        yt2Var = yt2Var2;
                                        mutex2 = mutex3;
                                        h6Var = h6Var2;
                                        obj = null;
                                        mutex2.unlock(obj);
                                        if (yt2Var != null || (xt2Var = yt2Var.a) == null || (zh1Var = xt2Var.a) == null) {
                                            closeable3 = closeable2;
                                            rr3Var3 = rr3Var2;
                                        } else {
                                            w5Var.a = h6Var;
                                            w5Var.b = rr3Var2;
                                            w5Var.c = closeable2;
                                            w5Var.d = yt2Var;
                                            w5Var.e = null;
                                            w5Var.h = 3;
                                            if (zh1Var.a((ContinuationImpl) w5Var) != coroutine_suspended) {
                                                yt2Var3 = yt2Var;
                                                closeable3 = closeable2;
                                                rr3Var3 = rr3Var2;
                                                h6Var3 = h6Var;
                                                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                                h6Var = h6Var3;
                                                yt2Var = yt2Var3;
                                            }
                                        }
                                        if (yt2Var instanceof i01) {
                                            xs3.a((i01) yt2Var, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(closeable3, null);
                                        ex0Var5 = h6Var.g;
                                        ex0Var5.getClass();
                                        Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                        bool3 = Boolean.FALSE;
                                        irVar3 = yr.b;
                                        if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                            k6Var = h6Var.l;
                                            preloadId = h6Var.b;
                                            requestType = h6Var.k;
                                            k6Var.getClass();
                                            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                            Intrinsics.checkNotNullParameter(requestType, "requestType");
                                            ex0Var6 = k6Var.a;
                                            ex0Var6.getClass();
                                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                            if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                                vq2 vq2Var2 = wq2.b;
                                                uq2Var = (uq2) wq2.c.get();
                                                if (uq2Var != null && Intrinsics.areEqual(uq2Var.a, preloadId) && uq2Var.b == requestType && uq2Var.c == xq2.ON_AD_PRELOADED) {
                                                    k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                                }
                                            }
                                        }
                                        return yt2Var;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    mutex3 = mutex2;
                                    mutex3.unlock(null);
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r6 = rr3VarA;
                            try {
                                rr3VarA.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    rr3VarA.a(th);
                                }
                                if (th instanceof TimeoutCancellationException) {
                                    throw new i21(th);
                                }
                                if (th instanceof CancellationException) {
                                    throw new wz0(th);
                                }
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            } catch (Throwable th3) {
                                try {
                                    throw th3;
                                } catch (Throwable th4) {
                                    CloseableKt.closeFinally(r6, th3);
                                    throw th4;
                                }
                            }
                        }
                    } else {
                        A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            if (this.g.q0()) {
                                k6 k6Var3 = this.l;
                                String preloadId3 = this.b;
                                k6Var3.getClass();
                                Intrinsics.checkNotNullParameter(preloadId3, "preloadId");
                                k6Var3.e.remove(preloadId3);
                            }
                            Mutex mutex6 = this.u;
                            w5Var.a = this;
                            w5Var.b = A;
                            w5Var.c = A;
                            w5Var.d = mutex6;
                            w5Var.h = 4;
                            if (mutex6.lock(null, w5Var) != coroutine_suspended) {
                                mutex = mutex6;
                                h6Var = this;
                                r7 = A;
                                r13 = A;
                                try {
                                    ex0Var3 = h6Var.g;
                                    try {
                                        ex0Var3.getClass();
                                        Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnPollAd:enabled", C3510b4.i.W);
                                        bool2 = Boolean.FALSE;
                                        irVar2 = yr.b;
                                        if (((Boolean) ex0Var3.a("gads:resetExponentialBackoffOnPollAd:enabled", bool2, irVar2)).booleanValue()) {
                                            ex0Var4 = h6Var.g;
                                            ex0Var4.getClass();
                                            Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnSingleAd:enabled", C3510b4.i.W);
                                            if (((Boolean) ex0Var4.a("gads:resetExponentialBackoffOnSingleAd:enabled", bool2, irVar2)).booleanValue()) {
                                                h6Var.w = 0;
                                                h6Var.x = h6Var.o;
                                            } else if (h6Var.C.size() == 1) {
                                                h6Var.w = 0;
                                                h6Var.x = h6Var.o;
                                            }
                                        }
                                        yt2Var = (yt2) h6Var.C.poll();
                                        uj2 uj2VarE2 = hs3.a().e();
                                        if (yt2Var != null) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        obj2 = null;
                                        uj2VarE2.C = a(h6Var, z2, null, 2);
                                        r9 = r7;
                                        r15 = r13;
                                        if (yt2Var == null) {
                                            r16 = r9;
                                            mutex.unlock(obj2);
                                            if (yt2Var != null || (xt2Var2 = yt2Var.a) == null || (zh1Var2 = xt2Var2.a) == null) {
                                                r4 = r15;
                                                r5 = r16;
                                            } else {
                                                w5Var.a = h6Var;
                                                w5Var.b = r16;
                                                w5Var.c = r15;
                                                w5Var.d = yt2Var;
                                                w5Var.e = null;
                                                w5Var.h = 6;
                                                if (zh1Var2.a((ContinuationImpl) w5Var) != coroutine_suspended) {
                                                    yt2Var5 = yt2Var;
                                                    r10 = r15;
                                                    r11 = r16;
                                                    h6Var5 = h6Var;
                                                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                                    h6Var = h6Var5;
                                                    yt2Var = yt2Var5;
                                                    r4 = r10;
                                                    r5 = r11;
                                                }
                                            }
                                            if (yt2Var instanceof i01) {
                                                xs3.a((i01) yt2Var, false);
                                                break;
                                            }
                                            CloseableKt.closeFinally(r4, null);
                                            ex0Var5 = h6Var.g;
                                            ex0Var5.getClass();
                                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                            bool3 = Boolean.FALSE;
                                            irVar3 = yr.b;
                                            if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                                k6Var = h6Var.l;
                                                preloadId = h6Var.b;
                                                requestType = h6Var.k;
                                                k6Var.getClass();
                                                Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                                Intrinsics.checkNotNullParameter(requestType, "requestType");
                                                ex0Var6 = k6Var.a;
                                                ex0Var6.getClass();
                                                Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                                if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                                    vq2 vq2Var3 = wq2.b;
                                                    uq2Var = (uq2) wq2.c.get();
                                                    if (uq2Var != null) {
                                                        k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                                    }
                                                }
                                            }
                                            return yt2Var;
                                        }
                                        job2 = yt2Var.c;
                                        if (job2 != null) {
                                            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                        }
                                        w5Var.a = h6Var;
                                        w5Var.b = r7;
                                        w5Var.c = r13;
                                        w5Var.d = mutex;
                                        w5Var.e = yt2Var;
                                        w5Var.h = 5;
                                        if (h6Var.a(true, (ContinuationImpl) w5Var) != coroutine_suspended) {
                                            mutex4 = mutex;
                                            r8 = r13;
                                            h6Var4 = h6Var;
                                            yt2Var4 = yt2Var;
                                            r7 = r7;
                                            try {
                                                hs3.a().a.d.b = yt2Var4.a.a.f();
                                                yt2Var = yt2Var4;
                                                mutex = mutex4;
                                                r15 = r8;
                                                h6Var = h6Var4;
                                                obj2 = null;
                                                r9 = r7;
                                                r16 = r9;
                                                mutex.unlock(obj2);
                                                if (yt2Var != null) {
                                                }
                                                r4 = r15;
                                                r5 = r16;
                                                if (yt2Var instanceof i01) {
                                                    xs3.a((i01) yt2Var, false);
                                                    break;
                                                }
                                                CloseableKt.closeFinally(r4, null);
                                                ex0Var5 = h6Var.g;
                                                ex0Var5.getClass();
                                                Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                                bool3 = Boolean.FALSE;
                                                irVar3 = yr.b;
                                                if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                                    k6Var = h6Var.l;
                                                    preloadId = h6Var.b;
                                                    requestType = h6Var.k;
                                                    k6Var.getClass();
                                                    Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                                    Intrinsics.checkNotNullParameter(requestType, "requestType");
                                                    ex0Var6 = k6Var.a;
                                                    ex0Var6.getClass();
                                                    Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                                    if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                                        vq2 vq2Var4 = wq2.b;
                                                        uq2Var = (uq2) wq2.c.get();
                                                        if (uq2Var != null) {
                                                            k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                                        }
                                                    }
                                                }
                                                return yt2Var;
                                            } catch (Throwable th5) {
                                                th = th5;
                                                mutex = mutex4;
                                                mutex.unlock(null);
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        mutex.unlock(null);
                                        throw th;
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    mutex4 = mutex;
                                    r8 = r13;
                                    mutex = mutex4;
                                    mutex.unlock(null);
                                    throw th;
                                }
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            r14 = A;
                            try {
                                r14.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    r14.a(th);
                                }
                                if (th instanceof TimeoutCancellationException) {
                                    throw new i21(th);
                                }
                                if (th instanceof CancellationException) {
                                    throw new wz0(th);
                                }
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            } catch (Throwable th9) {
                                try {
                                    throw th9;
                                } catch (Throwable th10) {
                                    CloseableKt.closeFinally(A, th9);
                                    throw th10;
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                case 1:
                    mutex2 = (Mutex) w5Var.d;
                    closeable = w5Var.c;
                    rr3 rr3Var4 = w5Var.b;
                    h6Var = w5Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        rr3Var2 = rr3Var4;
                        ex0Var = h6Var.g;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnPollAd:enabled", C3510b4.i.W);
                        bool = Boolean.FALSE;
                        irVar = yr.b;
                        if (((Boolean) ex0Var.a("gads:resetExponentialBackoffOnPollAd:enabled", bool, irVar)).booleanValue()) {
                            ex0Var2 = h6Var.g;
                            ex0Var2.getClass();
                            Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnSingleAd:enabled", C3510b4.i.W);
                            if (((Boolean) ex0Var2.a("gads:resetExponentialBackoffOnSingleAd:enabled", bool, irVar)).booleanValue()) {
                                h6Var.w = 0;
                                h6Var.x = h6Var.o;
                            } else {
                                h6Var.w = 0;
                                h6Var.x = h6Var.o;
                            }
                        }
                        yt2Var = (yt2) h6Var.C.poll();
                        uj2 uj2VarE3 = hs3.a().e();
                        if (yt2Var != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        obj = null;
                        uj2VarE3.C = a(h6Var, z, null, 2);
                        if (yt2Var != null) {
                            closeable2 = closeable;
                            mutex2.unlock(obj);
                            if (yt2Var != null) {
                                break;
                            }
                            closeable3 = closeable2;
                            rr3Var3 = rr3Var2;
                            if (yt2Var instanceof i01) {
                                xs3.a((i01) yt2Var, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            ex0Var5 = h6Var.g;
                            ex0Var5.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            bool3 = Boolean.FALSE;
                            irVar3 = yr.b;
                            if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                k6Var = h6Var.l;
                                preloadId = h6Var.b;
                                requestType = h6Var.k;
                                k6Var.getClass();
                                Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                Intrinsics.checkNotNullParameter(requestType, "requestType");
                                ex0Var6 = k6Var.a;
                                ex0Var6.getClass();
                                Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                    vq2 vq2Var5 = wq2.b;
                                    uq2Var = (uq2) wq2.c.get();
                                    if (uq2Var != null) {
                                        k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                    }
                                }
                            }
                            return yt2Var;
                        }
                        job = yt2Var.c;
                        if (job != null) {
                            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                            p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                        }
                        w5Var.a = h6Var;
                        w5Var.b = rr3Var2;
                        w5Var.c = closeable;
                        w5Var.d = mutex2;
                        w5Var.e = yt2Var;
                        w5Var.h = 2;
                        if (h6Var.a(true, (ContinuationImpl) w5Var) != coroutine_suspended) {
                            mutex3 = mutex2;
                            closeable2 = closeable;
                            h6Var2 = h6Var;
                            yt2Var2 = yt2Var;
                            hs3.a().a.d.b = yt2Var2.a.a.f();
                            yt2Var = yt2Var2;
                            mutex2 = mutex3;
                            h6Var = h6Var2;
                            obj = null;
                            mutex2.unlock(obj);
                            if (yt2Var != null) {
                                break;
                            }
                            closeable3 = closeable2;
                            rr3Var3 = rr3Var2;
                            if (yt2Var instanceof i01) {
                                xs3.a((i01) yt2Var, false);
                                break;
                            }
                            CloseableKt.closeFinally(closeable3, null);
                            ex0Var5 = h6Var.g;
                            ex0Var5.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            bool3 = Boolean.FALSE;
                            irVar3 = yr.b;
                            if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                k6Var = h6Var.l;
                                preloadId = h6Var.b;
                                requestType = h6Var.k;
                                k6Var.getClass();
                                Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                Intrinsics.checkNotNullParameter(requestType, "requestType");
                                ex0Var6 = k6Var.a;
                                ex0Var6.getClass();
                                Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                    vq2 vq2Var6 = wq2.b;
                                    uq2Var = (uq2) wq2.c.get();
                                    if (uq2Var != null) {
                                        k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                    }
                                }
                            }
                            return yt2Var;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th11) {
                        th = th11;
                        closeable3 = closeable;
                        rr3Var3 = rr3Var4;
                        r6 = closeable3;
                        rr3VarA = rr3Var3;
                        rr3VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            rr3VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    }
                case 2:
                    yt2Var2 = w5Var.e;
                    mutex3 = (Mutex) w5Var.d;
                    closeable2 = w5Var.c;
                    rr3Var2 = w5Var.b;
                    h6Var2 = w5Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        hs3.a().a.d.b = yt2Var2.a.a.f();
                        yt2Var = yt2Var2;
                        mutex2 = mutex3;
                        h6Var = h6Var2;
                        obj = null;
                        mutex2.unlock(obj);
                        if (yt2Var != null) {
                            break;
                        }
                        closeable3 = closeable2;
                        rr3Var3 = rr3Var2;
                        if (yt2Var instanceof i01) {
                            xs3.a((i01) yt2Var, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable3, null);
                        ex0Var5 = h6Var.g;
                        ex0Var5.getClass();
                        Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                        bool3 = Boolean.FALSE;
                        irVar3 = yr.b;
                        if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                            k6Var = h6Var.l;
                            preloadId = h6Var.b;
                            requestType = h6Var.k;
                            k6Var.getClass();
                            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                            Intrinsics.checkNotNullParameter(requestType, "requestType");
                            ex0Var6 = k6Var.a;
                            ex0Var6.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                vq2 vq2Var7 = wq2.b;
                                uq2Var = (uq2) wq2.c.get();
                                if (uq2Var != null) {
                                    k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                }
                            }
                        }
                        return yt2Var;
                    } catch (Throwable th12) {
                        th = th12;
                        mutex3.unlock(null);
                        throw th;
                    }
                case 3:
                    yt2Var3 = (yt2) w5Var.d;
                    closeable3 = w5Var.c;
                    rr3Var3 = w5Var.b;
                    h6Var3 = w5Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                        h6Var = h6Var3;
                        yt2Var = yt2Var3;
                        if (yt2Var instanceof i01) {
                            xs3.a((i01) yt2Var, false);
                            break;
                        }
                        CloseableKt.closeFinally(closeable3, null);
                        ex0Var5 = h6Var.g;
                        ex0Var5.getClass();
                        Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                        bool3 = Boolean.FALSE;
                        irVar3 = yr.b;
                        if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                            k6Var = h6Var.l;
                            preloadId = h6Var.b;
                            requestType = h6Var.k;
                            k6Var.getClass();
                            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                            Intrinsics.checkNotNullParameter(requestType, "requestType");
                            ex0Var6 = k6Var.a;
                            ex0Var6.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                vq2 vq2Var8 = wq2.b;
                                uq2Var = (uq2) wq2.c.get();
                                if (uq2Var != null) {
                                    k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                }
                            }
                        }
                        return yt2Var;
                    } catch (Throwable th13) {
                        th = th13;
                        r6 = closeable3;
                        rr3VarA = rr3Var3;
                        rr3VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    }
                case 4:
                    mutex = (Mutex) w5Var.d;
                    A = w5Var.c;
                    r14 = w5Var.b;
                    h6Var = w5Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r7 = r14;
                        r13 = A;
                        ex0Var3 = h6Var.g;
                        ex0Var3.getClass();
                        Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnPollAd:enabled", C3510b4.i.W);
                        bool2 = Boolean.FALSE;
                        irVar2 = yr.b;
                        if (((Boolean) ex0Var3.a("gads:resetExponentialBackoffOnPollAd:enabled", bool2, irVar2)).booleanValue()) {
                            ex0Var4 = h6Var.g;
                            ex0Var4.getClass();
                            Intrinsics.checkNotNullParameter("gads:resetExponentialBackoffOnSingleAd:enabled", C3510b4.i.W);
                            if (((Boolean) ex0Var4.a("gads:resetExponentialBackoffOnSingleAd:enabled", bool2, irVar2)).booleanValue()) {
                                h6Var.w = 0;
                                h6Var.x = h6Var.o;
                            } else if (h6Var.C.size() == 1) {
                                h6Var.w = 0;
                                h6Var.x = h6Var.o;
                            }
                        }
                        yt2Var = (yt2) h6Var.C.poll();
                        uj2 uj2VarE4 = hs3.a().e();
                        if (yt2Var != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        obj2 = null;
                        uj2VarE4.C = a(h6Var, z2, null, 2);
                        r9 = r7;
                        r15 = r13;
                        if (yt2Var == null) {
                            r16 = r9;
                            mutex.unlock(obj2);
                            if (yt2Var != null) {
                                break;
                            }
                            r4 = r15;
                            r5 = r16;
                            if (yt2Var instanceof i01) {
                                xs3.a((i01) yt2Var, false);
                                break;
                            }
                            CloseableKt.closeFinally(r4, null);
                            ex0Var5 = h6Var.g;
                            ex0Var5.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            bool3 = Boolean.FALSE;
                            irVar3 = yr.b;
                            if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                k6Var = h6Var.l;
                                preloadId = h6Var.b;
                                requestType = h6Var.k;
                                k6Var.getClass();
                                Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                Intrinsics.checkNotNullParameter(requestType, "requestType");
                                ex0Var6 = k6Var.a;
                                ex0Var6.getClass();
                                Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                    vq2 vq2Var9 = wq2.b;
                                    uq2Var = (uq2) wq2.c.get();
                                    if (uq2Var != null) {
                                        k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                    }
                                }
                            }
                            return yt2Var;
                        }
                        job2 = yt2Var.c;
                        if (job2 != null) {
                            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                            p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                        }
                        w5Var.a = h6Var;
                        w5Var.b = r7;
                        w5Var.c = r13;
                        w5Var.d = mutex;
                        w5Var.e = yt2Var;
                        w5Var.h = 5;
                        if (h6Var.a(true, (ContinuationImpl) w5Var) != coroutine_suspended) {
                            mutex4 = mutex;
                            r8 = r13;
                            h6Var4 = h6Var;
                            yt2Var4 = yt2Var;
                            r7 = r7;
                            hs3.a().a.d.b = yt2Var4.a.a.f();
                            yt2Var = yt2Var4;
                            mutex = mutex4;
                            r15 = r8;
                            h6Var = h6Var4;
                            obj2 = null;
                            r9 = r7;
                            r16 = r9;
                            mutex.unlock(obj2);
                            if (yt2Var != null) {
                                break;
                            }
                            r4 = r15;
                            r5 = r16;
                            if (yt2Var instanceof i01) {
                                xs3.a((i01) yt2Var, false);
                                break;
                            }
                            CloseableKt.closeFinally(r4, null);
                            ex0Var5 = h6Var.g;
                            ex0Var5.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            bool3 = Boolean.FALSE;
                            irVar3 = yr.b;
                            if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                k6Var = h6Var.l;
                                preloadId = h6Var.b;
                                requestType = h6Var.k;
                                k6Var.getClass();
                                Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                                Intrinsics.checkNotNullParameter(requestType, "requestType");
                                ex0Var6 = k6Var.a;
                                ex0Var6.getClass();
                                Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                                if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                    vq2 vq2Var10 = wq2.b;
                                    uq2Var = (uq2) wq2.c.get();
                                    if (uq2Var != null) {
                                        k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                    }
                                }
                            }
                            return yt2Var;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th14) {
                        th = th14;
                        r14.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r14.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    }
                case 5:
                    yt2Var4 = w5Var.e;
                    mutex4 = (Mutex) w5Var.d;
                    r8 = w5Var.c;
                    r7 = w5Var.b;
                    h6Var4 = w5Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r8 = r8;
                        r7 = r7;
                        hs3.a().a.d.b = yt2Var4.a.a.f();
                        yt2Var = yt2Var4;
                        mutex = mutex4;
                        r15 = r8;
                        h6Var = h6Var4;
                        obj2 = null;
                        r9 = r7;
                        r16 = r9;
                        mutex.unlock(obj2);
                        if (yt2Var != null) {
                            break;
                        }
                        r4 = r15;
                        r5 = r16;
                        if (yt2Var instanceof i01) {
                            xs3.a((i01) yt2Var, false);
                            break;
                        }
                        CloseableKt.closeFinally(r4, null);
                        ex0Var5 = h6Var.g;
                        ex0Var5.getClass();
                        Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                        bool3 = Boolean.FALSE;
                        irVar3 = yr.b;
                        if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                            k6Var = h6Var.l;
                            preloadId = h6Var.b;
                            requestType = h6Var.k;
                            k6Var.getClass();
                            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                            Intrinsics.checkNotNullParameter(requestType, "requestType");
                            ex0Var6 = k6Var.a;
                            ex0Var6.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                vq2 vq2Var11 = wq2.b;
                                uq2Var = (uq2) wq2.c.get();
                                if (uq2Var != null) {
                                    k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                }
                            }
                        }
                        return yt2Var;
                    } catch (Throwable th15) {
                        th = th15;
                        mutex = mutex4;
                        mutex.unlock(null);
                        throw th;
                    }
                case 6:
                    yt2Var5 = (yt2) w5Var.d;
                    r4 = w5Var.c;
                    r5 = w5Var.b;
                    h6Var5 = w5Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r10 = r4;
                        r11 = r5;
                        p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                        h6Var = h6Var5;
                        yt2Var = yt2Var5;
                        r4 = r10;
                        r5 = r11;
                        if (yt2Var instanceof i01) {
                            xs3.a((i01) yt2Var, false);
                            break;
                        }
                        CloseableKt.closeFinally(r4, null);
                        ex0Var5 = h6Var.g;
                        ex0Var5.getClass();
                        Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                        bool3 = Boolean.FALSE;
                        irVar3 = yr.b;
                        if (((Boolean) ex0Var5.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                            k6Var = h6Var.l;
                            preloadId = h6Var.b;
                            requestType = h6Var.k;
                            k6Var.getClass();
                            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                            Intrinsics.checkNotNullParameter(requestType, "requestType");
                            ex0Var6 = k6Var.a;
                            ex0Var6.getClass();
                            Intrinsics.checkNotNullParameter("gads:preload_validator_polled_in_callback_check:enabled", C3510b4.i.W);
                            if (((Boolean) ex0Var6.a("gads:preload_validator_polled_in_callback_check:enabled", bool3, irVar3)).booleanValue()) {
                                vq2 vq2Var12 = wq2.b;
                                uq2Var = (uq2) wq2.c.get();
                                if (uq2Var != null) {
                                    k6Var.a(bu2.POLLED_IN_AD_PRELOADED_CALLBACK, preloadId, requestType, null);
                                }
                            }
                        }
                        return yt2Var;
                    } catch (Throwable th16) {
                        th = th16;
                        A = r4;
                        r14 = r5;
                        r14.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r14.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    }
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th17) {
            th = th17;
            rr3VarA = rr3Var;
            r6 = "gads:resetExponentialBackoffOnPollAd:enabled";
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object x(Continuation continuation) {
        y5 y5Var;
        long duration;
        Iterator it;
        h6 h6Var;
        if (continuation instanceof y5) {
            y5Var = (y5) continuation;
            int i = y5Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                y5Var.f = i - Integer.MIN_VALUE;
            } else {
                y5Var = new y5(this, continuation);
            }
        } else {
            y5Var = new y5(this, continuation);
        }
        Object obj = y5Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = y5Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            this.f.getClass();
            duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
            it = this.C.iterator();
            h6Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            duration = y5Var.c;
            it = y5Var.b;
            h6Var = y5Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            yt2 yt2Var = (yt2) it.next();
            long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(Duration.m4396plusLRDsOJo(yt2Var.b, h6Var.m), duration);
            if (Duration.m4366compareToLRDsOJo(jM4395minusLRDsOJo, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                Intrinsics.checkNotNull(yt2Var);
                y5Var.a = h6Var;
                y5Var.b = it;
                y5Var.c = duration;
                y5Var.f = 1;
                if (h6Var.a(it, yt2Var, y5Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                Job job = yt2Var.c;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                CoroutineScope coroutineScope = h6Var.a;
                z5 block = new z5(jM4395minusLRDsOJo, h6Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                yt2Var.c = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0207 A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0216 A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x021a A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x021e A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x021f A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0225 A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x022d A[Catch: all -> 0x0236, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0235 A[Catch: all -> 0x0236, TRY_LEAVE, TryCatch #3 {all -> 0x0236, blocks: (B:107:0x0200, B:109:0x0207, B:111:0x020b, B:113:0x020f, B:114:0x0212, B:116:0x0216, B:118:0x021a, B:120:0x021e, B:121:0x021f, B:122:0x0224, B:123:0x0225, B:124:0x022c, B:125:0x022d, B:126:0x0234, B:127:0x0235), top: B:138:0x0200 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4 A[Catch: all -> 0x010e, TryCatch #9 {all -> 0x010e, blocks: (B:33:0x00aa, B:36:0x00c4, B:38:0x00c8, B:39:0x00ce), top: B:148:0x00aa, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c8 A[Catch: all -> 0x010e, TryCatch #9 {all -> 0x010e, blocks: (B:33:0x00aa, B:36:0x00c4, B:38:0x00c8, B:39:0x00ce), top: B:148:0x00aa, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0102 A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {all -> 0x0061, blocks: (B:22:0x005d, B:40:0x00f7, B:42:0x0102, B:45:0x010f, B:46:0x0112, B:33:0x00aa, B:36:0x00c4, B:38:0x00c8, B:39:0x00ce), top: B:134:0x005d, inners: #9 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x011c A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x012b A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x012f A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0133 A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0134 A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x013a A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0142 A[Catch: all -> 0x014b, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x014a A[Catch: all -> 0x014b, TRY_LEAVE, TryCatch #6 {all -> 0x014b, blocks: (B:49:0x0115, B:51:0x011c, B:53:0x0120, B:55:0x0124, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:62:0x0133, B:63:0x0134, B:64:0x0139, B:65:0x013a, B:66:0x0141, B:67:0x0142, B:68:0x0149, B:69:0x014a), top: B:143:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:83:0x018a  */
    /* JADX WARN: Code duplicated, block: B:84:0x018c A[Catch: all -> 0x01f9, TryCatch #5 {all -> 0x01f9, blocks: (B:81:0x0172, B:84:0x018c, B:86:0x0190, B:87:0x0196), top: B:141:0x0172, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0190 A[Catch: all -> 0x01f9, TryCatch #5 {all -> 0x01f9, blocks: (B:81:0x0172, B:84:0x018c, B:86:0x0190, B:87:0x0196), top: B:141:0x0172, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01ca A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #1 {all -> 0x0052, blocks: (B:17:0x004d, B:88:0x01bf, B:90:0x01ca, B:103:0x01fa, B:104:0x01fd, B:81:0x0172, B:84:0x018c, B:86:0x0190, B:87:0x0196), top: B:135:0x004d, inners: #5 }] */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01f0, code lost:
    
        if (r14.a(0, false) == r3) goto L98;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object y(p005kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h6.y(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01e5 A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01f4 A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01f8 A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01fc A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01fd A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0203 A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:122:0x020b A[Catch: all -> 0x0214, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0213 A[Catch: all -> 0x0214, TRY_LEAVE, TryCatch #0 {all -> 0x0214, blocks: (B:104:0x01de, B:106:0x01e5, B:108:0x01e9, B:110:0x01ed, B:111:0x01f0, B:113:0x01f4, B:115:0x01f8, B:117:0x01fc, B:118:0x01fd, B:119:0x0202, B:120:0x0203, B:121:0x020a, B:122:0x020b, B:123:0x0212, B:124:0x0213), top: B:130:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:148:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x00e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00db A[Catch: all -> 0x0108, TryCatch #5 {all -> 0x0108, blocks: (B:34:0x00b2, B:35:0x00d5, B:37:0x00db, B:39:0x00e5, B:40:0x00e8, B:41:0x00f0), top: B:138:0x00b2, outer: #9 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00e5 A[Catch: all -> 0x0108, TryCatch #5 {all -> 0x0108, blocks: (B:34:0x00b2, B:35:0x00d5, B:37:0x00db, B:39:0x00e5, B:40:0x00e8, B:41:0x00f0), top: B:138:0x00b2, outer: #9 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00fe A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #9 {all -> 0x004f, blocks: (B:20:0x004b, B:42:0x00f7, B:44:0x00fe, B:48:0x0109, B:49:0x010c, B:34:0x00b2, B:35:0x00d5, B:37:0x00db, B:39:0x00e5, B:40:0x00e8, B:41:0x00f0), top: B:145:0x004b, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0116 A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0125 A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0129 A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:65:0x012d A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:66:0x012e A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0134 A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:70:0x013c A[Catch: all -> 0x0145, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0144 A[Catch: all -> 0x0145, TRY_LEAVE, TryCatch #1 {all -> 0x0145, blocks: (B:52:0x010f, B:54:0x0116, B:56:0x011a, B:58:0x011e, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:65:0x012d, B:66:0x012e, B:67:0x0133, B:68:0x0134, B:69:0x013b, B:70:0x013c, B:71:0x0143, B:72:0x0144), top: B:131:0x010f }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:89:0x01aa A[Catch: all -> 0x01d7, TryCatch #4 {all -> 0x01d7, blocks: (B:86:0x0181, B:87:0x01a4, B:89:0x01aa, B:91:0x01b4, B:92:0x01b7, B:93:0x01bf), top: B:136:0x0181, outer: #6 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01b4 A[Catch: all -> 0x01d7, TryCatch #4 {all -> 0x01d7, blocks: (B:86:0x0181, B:87:0x01a4, B:89:0x01aa, B:91:0x01b4, B:92:0x01b7, B:93:0x01bf), top: B:136:0x0181, outer: #6 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01cd A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #6 {all -> 0x0038, blocks: (B:13:0x0033, B:94:0x01c6, B:96:0x01cd, B:100:0x01d8, B:101:0x01db, B:86:0x0181, B:87:0x01a4, B:89:0x01aa, B:91:0x01b4, B:92:0x01b7, B:93:0x01bf), top: B:140:0x0033, inners: #4 }] */
    public final Object z(Continuation continuation) {
        f6 f6Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        h6 h6Var;
        Mutex mutex;
        rr3 rr3VarA2;
        rr3 rr3Var2;
        h6 h6Var2;
        Mutex mutex2;
        Object obj;
        Job job;
        Object obj2;
        Job job2;
        if (continuation instanceof f6) {
            f6Var = (f6) continuation;
            int i = f6Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                f6Var.g = i - Integer.MIN_VALUE;
            } else {
                f6Var = new f6(this, continuation);
            }
        } else {
            f6Var = new f6(this, continuation);
        }
        Object obj3 = f6Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = f6Var.g;
        if (i2 != 0) {
            if (i2 == 1) {
                mutex2 = f6Var.d;
                rr3VarA2 = f6Var.c;
                rr3Var2 = f6Var.b;
                h6Var2 = f6Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    try {
                        hs3.a().e().C = a(h6Var2, false, null, 3);
                        Job.DefaultImpls.cancel$default(h6Var2.z, (CancellationException) null, 1, (Object) null);
                        Job.DefaultImpls.cancel$default((Job) h6Var2.D, (CancellationException) null, 1, (Object) null);
                        Job.DefaultImpls.cancel$default((Job) h6Var2.F, (CancellationException) null, 1, (Object) null);
                        for (yt2 yt2Var : h6Var2.C) {
                            job = yt2Var.c;
                            if (job != null) {
                                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                            }
                            yt2Var.a.a.destroy();
                        }
                        h6Var2.C.clear();
                        obj = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return obj;
                    } catch (Throwable th) {
                        mutex2.unlock(null);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        rr3Var2.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            rr3Var2.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            throw new i21(th);
                        }
                        if (!(th instanceof CancellationException)) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.closeFinally(rr3VarA2, th3);
                            throw th4;
                        }
                    }
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = f6Var.d;
            rr3VarA = f6Var.c;
            rr3Var = f6Var.b;
            h6Var = f6Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                try {
                    hs3.a().e().C = a(h6Var, false, null, 3);
                    Job.DefaultImpls.cancel$default(h6Var.z, (CancellationException) null, 1, (Object) null);
                    Job.DefaultImpls.cancel$default((Job) h6Var.D, (CancellationException) null, 1, (Object) null);
                    Job.DefaultImpls.cancel$default((Job) h6Var.F, (CancellationException) null, 1, (Object) null);
                    for (yt2 yt2Var2 : h6Var.C) {
                        job2 = yt2Var2.c;
                        if (job2 != null) {
                            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                        }
                        yt2Var2.a.a.destroy();
                    }
                    h6Var.C.clear();
                    obj2 = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return obj2;
                } catch (Throwable th5) {
                    mutex.unlock(null);
                    throw th5;
                }
            } catch (Throwable th6) {
                th = th6;
                try {
                    rr3Var.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3VarA, th7);
                        throw th8;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj3);
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_STOP_PRELOAD;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                if (this.g.q0()) {
                    k6 k6Var = this.l;
                    String preloadId = this.b;
                    k6Var.getClass();
                    Intrinsics.checkNotNullParameter(preloadId, "preloadId");
                    k6Var.e.remove(preloadId);
                }
                Mutex mutex3 = this.u;
                f6Var.a = this;
                f6Var.b = rr3VarA2;
                f6Var.c = rr3VarA2;
                f6Var.d = mutex3;
                f6Var.g = 1;
                if (mutex3.lock(null, f6Var) != coroutine_suspended) {
                    h6Var2 = this;
                    mutex2 = mutex3;
                    rr3Var2 = rr3VarA2;
                    hs3.a().e().C = a(h6Var2, false, null, 3);
                    Job.DefaultImpls.cancel$default(h6Var2.z, (CancellationException) null, 1, (Object) null);
                    Job.DefaultImpls.cancel$default((Job) h6Var2.D, (CancellationException) null, 1, (Object) null);
                    Job.DefaultImpls.cancel$default((Job) h6Var2.F, (CancellationException) null, 1, (Object) null);
                    while (r15.hasNext()) {
                        job = yt2Var.c;
                        if (job != null) {
                            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                        }
                        yt2Var.a.a.destroy();
                    }
                    h6Var2.C.clear();
                    obj = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                    return obj;
                }
            } catch (Throwable th9) {
                th = th9;
                rr3Var2 = rr3VarA2;
                rr3Var2.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3Var2.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        } else {
            rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                if (this.g.q0()) {
                    k6 k6Var2 = this.l;
                    String preloadId2 = this.b;
                    k6Var2.getClass();
                    Intrinsics.checkNotNullParameter(preloadId2, "preloadId");
                    k6Var2.e.remove(preloadId2);
                }
                Mutex mutex4 = this.u;
                f6Var.a = this;
                f6Var.b = rr3VarA;
                f6Var.c = rr3VarA;
                f6Var.d = mutex4;
                f6Var.g = 2;
                if (mutex4.lock(null, f6Var) != coroutine_suspended) {
                    h6Var = this;
                    mutex = mutex4;
                    rr3Var = rr3VarA;
                    hs3.a().e().C = a(h6Var, false, null, 3);
                    Job.DefaultImpls.cancel$default(h6Var.z, (CancellationException) null, 1, (Object) null);
                    Job.DefaultImpls.cancel$default((Job) h6Var.D, (CancellationException) null, 1, (Object) null);
                    Job.DefaultImpls.cancel$default((Job) h6Var.F, (CancellationException) null, 1, (Object) null);
                    while (r15.hasNext()) {
                        job2 = yt2Var2.c;
                        if (job2 != null) {
                            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                        }
                        yt2Var2.a.a.destroy();
                    }
                    h6Var.C.clear();
                    obj2 = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return obj2;
                }
            } catch (Throwable th10) {
                th = th10;
                rr3Var = rr3VarA;
                rr3Var.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3Var.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        }
        return coroutine_suspended;
    }
}
