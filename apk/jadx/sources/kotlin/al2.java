package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.ironsource.C3510b4;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class al2 {
    public final CoroutineScope a;
    public final im2 b;
    public final cl2 c;
    public final Map d;
    public final v8 e;
    public final g83 f;
    public final f13 g;
    public final du1 h;
    public final c63 i;
    public final ca2 j;
    public final ur3 k;
    public final cw2 l;
    public final Mutex m;
    public final LinkedHashSet n;

    public al2(CoroutineScope backgroundScope, im2 persistentCacheManager, cl2 flags, Map componentFactories, v8 adRequestKeyGenerator, g83 rootTraceCreator, f13 randomGenerator, du1 macroExpander, c63 retryingUrlPinger, ca2 networkConnectivityManager, ur3 traceLogger, dw2 persistentCacheAutoRefreshManager) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(componentFactories, "componentFactories");
        Intrinsics.checkNotNullParameter(adRequestKeyGenerator, "adRequestKeyGenerator");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(networkConnectivityManager, "networkConnectivityManager");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(persistentCacheAutoRefreshManager, "persistentCacheAutoRefreshManager");
        this.a = backgroundScope;
        this.b = persistentCacheManager;
        this.c = flags;
        this.d = componentFactories;
        this.e = adRequestKeyGenerator;
        this.f = rootTraceCreator;
        this.g = randomGenerator;
        this.h = macroExpander;
        this.i = retryingUrlPinger;
        this.j = networkConnectivityManager;
        this.k = traceLogger;
        this.l = persistentCacheAutoRefreshManager;
        this.m = MutexKt.Mutex$default(false, 1, null);
        this.n = new LinkedHashSet();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:22:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:26:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:30:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:36:0x0134  */
    /* JADX WARN: Code duplicated, block: B:40:0x0154  */
    /* JADX WARN: Code duplicated, block: B:43:0x0163  */
    /* JADX WARN: Code duplicated, block: B:45:0x0166 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x016c  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0154 -> B:41:0x015b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlin.al2 r17, com.google.android.libraries.ads.mobile.sdk.common.AdRequest r18, kotlin.j53 r19, java.lang.String r20, int r21, kotlin.om2 r22, p005kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.al2.a(ads_mobile_sdk.al2, com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53, java.lang.String, int, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d6 A[Catch: all -> 0x0039, TryCatch #1 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00ca, B:38:0x00db, B:37:0x00d6), top: B:47:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(al2 al2Var, p005kotlin.Pair pair, om2 om2Var, Continuation continuation) throws Throwable {
        tk2 tk2Var;
        int iMin;
        Mutex mutex;
        Mutex mutex2;
        al2 al2Var2;
        int i;
        p005kotlin.Pair pair2;
        al2Var.getClass();
        if (continuation instanceof tk2) {
            tk2Var = (tk2) continuation;
            int i2 = tk2Var.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                tk2Var.g = i2 - Integer.MIN_VALUE;
            } else {
                tk2Var = new tk2(al2Var, continuation);
            }
        } else {
            tk2Var = new tk2(al2Var, continuation);
        }
        Object obj = tk2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = tk2Var.g;
        boolean z = true;
        try {
            if (i3 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                int iA = al2Var.b.a((j53) pair.getFirst());
                cl2 cl2Var = al2Var.c;
                cl2Var.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:cache_fill_count_per_request", C3510b4.i.W);
                iMin = Math.min(((Number) cl2Var.a("gads:pc:cache_fill_count_per_request", 2, yr.f)).intValue(), iA);
                if (om2Var != null) {
                    iMin++;
                }
                mutex = al2Var.m;
                tk2Var.a = al2Var;
                tk2Var.b = pair;
                tk2Var.c = mutex;
                tk2Var.d = iMin;
                tk2Var.g = 1;
                if (mutex.lock(null, tk2Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i = tk2Var.d;
                mutex2 = tk2Var.c;
                pair2 = tk2Var.b;
                al2Var2 = tk2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    if (((Number) obj).intValue() >= i) {
                        mutex = mutex2;
                        z = false;
                        mutex2 = mutex;
                    } else {
                        al2Var2.n.add(pair2);
                    }
                    Boolean boolBoxBoolean = Boxing.boxBoolean(z);
                    mutex2.unlock(null);
                    return boolBoxBoolean;
                } catch (Throwable th) {
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            int i4 = tk2Var.d;
            Mutex mutex3 = tk2Var.c;
            p005kotlin.Pair pair3 = tk2Var.b;
            al2 al2Var3 = tk2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            pair = pair3;
            iMin = i4;
            al2Var = al2Var3;
            if (!al2Var.n.contains(pair)) {
                im2 im2Var = al2Var.b;
                j53 j53Var = (j53) pair.getFirst();
                String str = (String) pair.getSecond();
                tk2Var.a = al2Var;
                tk2Var.b = pair;
                tk2Var.c = mutex;
                tk2Var.d = iMin;
                tk2Var.g = 2;
                Object objA = im2Var.a(j53Var, str, tk2Var);
                if (objA != coroutine_suspended) {
                    al2Var2 = al2Var;
                    i = iMin;
                    obj = objA;
                    Mutex mutex4 = mutex;
                    pair2 = pair;
                    mutex2 = mutex4;
                    if (((Number) obj).intValue() >= i) {
                        mutex = mutex2;
                    } else {
                        al2Var2.n.add(pair2);
                    }
                    Boolean boolBoxBoolean2 = Boxing.boxBoolean(z);
                    mutex2.unlock(null);
                    return boolBoxBoolean2;
                }
                return coroutine_suspended;
            }
            z = false;
            mutex2 = mutex;
            Boolean boolBoxBoolean3 = Boxing.boxBoolean(z);
            mutex2.unlock(null);
            return boolBoxBoolean3;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    public final ik2 a(AdRequest adRequest, j53 j53Var) {
        ik2 value = this.b.a(adRequest, j53Var);
        if (value == null) {
            cl2 cl2Var = this.c;
            cl2Var.getClass();
            Intrinsics.checkNotNullParameter("gads:pc:enable_cache_fill_on_cellular", C3510b4.i.W);
            value = (((Boolean) cl2Var.a("gads:pc:enable_cache_fill_on_cellular", Boolean.TRUE, yr.b)).booleanValue() || this.j.n.get() != 0) ? null : ik2.FILL_DISABLED_REASON_CELLULAR_NETWORK;
        }
        if (value == null) {
            return value;
        }
        g83 g83Var = this.f;
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_FILL_CHECK;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                rr3 rr3VarA = hs3.a();
                uj2 uj2VarE = rr3VarA.e();
                hk2 builder = kk2.v();
                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(value);
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                uj2VarE.N = (kk2) vz0VarB;
                rr3VarA.a.a.c = j53Var;
                Object obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return value;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
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
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        }
        rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            rr3 rr3VarA3 = hs3.a();
            uj2 uj2VarE2 = rr3VarA3.e();
            hk2 builder2 = kk2.v();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Intrinsics.checkNotNullParameter(value, "value");
            builder2.a(value);
            vz0 vz0VarB2 = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            uj2VarE2.N = (kk2) vz0VarB2;
            rr3VarA3.a.a.c = j53Var;
            Object obj2 = p005kotlin.Unit.INSTANCE;
            if (obj2 instanceof i01) {
                xs3.a((i01) obj2, false);
            }
            CloseableKt.closeFinally(rr3VarA2, null);
            return value;
        } catch (Throwable th4) {
            try {
                rr3VarA2.b(th4);
                if (th4 instanceof v24) {
                    throw th4;
                }
                if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                    rr3VarA2.a(th4);
                }
                if (th4 instanceof TimeoutCancellationException) {
                    throw new i21(th4);
                }
                if (th4 instanceof CancellationException) {
                    throw new wz0(th4);
                }
                if (th4 instanceof w01) {
                    throw th4;
                }
                throw new b01(th4);
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    CloseableKt.closeFinally(rr3VarA2, th5);
                    throw th6;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0252  */
    /* JADX WARN: Code duplicated, block: B:102:0x0258  */
    /* JADX WARN: Code duplicated, block: B:105:0x0309  */
    /* JADX WARN: Code duplicated, block: B:108:0x0319  */
    /* JADX WARN: Code duplicated, block: B:109:0x0324  */
    /* JADX WARN: Code duplicated, block: B:111:0x0327  */
    /* JADX WARN: Code duplicated, block: B:143:0x036c  */
    /* JADX WARN: Code duplicated, block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:31:0x0103  */
    /* JADX WARN: Code duplicated, block: B:33:0x0106  */
    /* JADX WARN: Code duplicated, block: B:35:0x011b  */
    /* JADX WARN: Code duplicated, block: B:40:0x015e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0169 A[Catch: all -> 0x008c, TRY_LEAVE, TryCatch #6 {all -> 0x008c, blocks: (B:41:0x0163, B:43:0x0169, B:22:0x0087), top: B:156:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0173  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:91:0x023f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0242  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [ads_mobile_sdk.sk2] */
    /* JADX WARN: Type inference failed for: r0v49, types: [ads_mobile_sdk.sk2] */
    /* JADX WARN: Type inference failed for: r0v67, types: [ads_mobile_sdk.sk2] */
    /* JADX WARN: Type inference failed for: r0v68, types: [ads_mobile_sdk.sk2] */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.lang.Enum] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0309 -> B:106:0x030d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0319 -> B:27:0x00f7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0248 -> B:107:0x0310). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest r25, kotlin.j53 r26, java.lang.String r27, int r28, kotlin.om2 r29, p005kotlin.coroutines.Continuation r30) {
        /*
            Method dump skipped, instruction units count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.al2.a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53, java.lang.String, int, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0268  */
    /* JADX WARN: Code duplicated, block: B:103:0x026d  */
    /* JADX WARN: Code duplicated, block: B:104:0x026f  */
    /* JADX WARN: Code duplicated, block: B:107:0x0274  */
    /* JADX WARN: Code duplicated, block: B:110:0x027a  */
    /* JADX WARN: Code duplicated, block: B:113:0x029a  */
    /* JADX WARN: Code duplicated, block: B:116:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:122:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:127:0x0322  */
    /* JADX WARN: Code duplicated, block: B:129:0x0357  */
    /* JADX WARN: Code duplicated, block: B:130:0x035b  */
    /* JADX WARN: Code duplicated, block: B:132:0x035e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0366  */
    /* JADX WARN: Code duplicated, block: B:135:0x0369  */
    /* JADX WARN: Code duplicated, block: B:139:0x037c  */
    /* JADX WARN: Code duplicated, block: B:147:0x03de  */
    /* JADX WARN: Code duplicated, block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0131  */
    /* JADX WARN: Code duplicated, block: B:45:0x0171  */
    /* JADX WARN: Code duplicated, block: B:47:0x0175  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:91:0x024c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x024e  */
    /* JADX WARN: Code duplicated, block: B:95:0x0253  */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0271, code lost:
    
        if (r9.a == null) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0276, code lost:
    
        if (r9.d != null) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0169, code lost:
    
        if (r14.a(r7, (kotlin.ac3) null, r2, r1, r3) == r6) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01c3, code lost:
    
        if (r14.a(r7, r4, "Failed to get ad config from server response", r1, r2) == r6) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0250, code lost:
    
        if (r9.a != null) goto L109;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest r19, kotlin.j53 r20, java.lang.String r21, int r22, kotlin.rk2 r23, kotlin.om2 r24, p005kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 1022
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.al2.a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53, java.lang.String, int, ads_mobile_sdk.rk2, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final p005kotlin.Unit a(rk2 rk2Var, ac3 ac3Var, String str, int i, bs0 bs0Var) {
        if (ac3Var != null) {
            a(ac3Var.b.m, (i2) null, new ec3(new wb3(rk2Var.a()), ac3Var), i, l33.a((i2) CollectionsKt.firstOrNull(ac3Var.a), bs0Var, Duration.INSTANCE.m4458getZEROUwyO8pc(), null));
        }
        if (rk2Var.b() < rk2Var.c()) {
            xs3.a(str, null, 6);
        } else {
            xs3.a("Terminal failure after " + rk2Var.c() + " attempts: " + str, null, 6);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final void a(AdRequest adRequest, j53 requestType, int i, om2 om2Var) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        if (this.b.b(adRequest, requestType) && a(adRequest, requestType) == null) {
            CoroutineScope coroutineScope = this.a;
            zk2 block = new zk2(this, requestType, om2Var, adRequest, i, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public final void a(List list, i2 i2Var, ec3 ec3Var, int i, String str) {
        CoroutineScope coroutineScope = this.a;
        xk2 block = new xk2(this, list, ec3Var, i2Var, i, str, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}
