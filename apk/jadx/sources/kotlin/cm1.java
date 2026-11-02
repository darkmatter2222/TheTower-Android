package kotlin;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.common.base.Splitter;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class cm1 {
    public final CompletableJob A;
    public final AtomicBoolean B;
    public long C;
    public final Context a;
    public final CoroutineScope b;
    public final CoroutineContext c;
    public final Set d;
    public final ks1 e;
    public final Set f;
    public final g83 g;
    public final sz h;
    public final hf i;
    public final ur3 j;
    public final e01 k;
    public final ex0 l;
    public final tx m;
    public final ks1 n;
    public final f0 o;
    public final l43 p;
    public final ks1 q;
    public final cb3 r;
    public final ja1 s;
    public final ks1 t;
    public final pn u;
    public final cw2 v;
    public final ks1 w;
    public final Mutex x;
    public kl1 y;
    public final CompletableJob z;

    public cm1(Context context, CoroutineScope backgroundScope, CoroutineContext backgroundContext, Set initializationTasks, ks1 dependencyInjectors, Set postInitializationTasks, g83 rootTraceCreator, sz concurrencyObjects, hf adapterInitializer, ur3 traceLogger, e01 httpClient, ex0 flags, tx clock, ks1 debugDialogManager, f0 activityTracker, l43 requestConfigurationWrapper, ks1 inspectorManager, cb3 sdkCoreDataStore, ja1 initializationConfigWrapper, ks1 sdkCoreEngine, pn appState, dw2 singletonEngineProvider, ks1 anrWatchdog) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(initializationTasks, "initializationTasks");
        Intrinsics.checkNotNullParameter(dependencyInjectors, "dependencyInjectors");
        Intrinsics.checkNotNullParameter(postInitializationTasks, "postInitializationTasks");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(debugDialogManager, "debugDialogManager");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(sdkCoreEngine, "sdkCoreEngine");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(singletonEngineProvider, "singletonEngineProvider");
        Intrinsics.checkNotNullParameter(anrWatchdog, "anrWatchdog");
        this.a = context;
        this.b = backgroundScope;
        this.c = backgroundContext;
        this.d = initializationTasks;
        this.e = dependencyInjectors;
        this.f = postInitializationTasks;
        this.g = rootTraceCreator;
        this.h = concurrencyObjects;
        this.i = adapterInitializer;
        this.j = traceLogger;
        this.k = httpClient;
        this.l = flags;
        this.m = clock;
        this.n = debugDialogManager;
        this.o = activityTracker;
        this.p = requestConfigurationWrapper;
        this.q = inspectorManager;
        this.r = sdkCoreDataStore;
        this.s = initializationConfigWrapper;
        this.t = sdkCoreEngine;
        this.u = appState;
        this.v = singletonEngineProvider;
        this.w = anrWatchdog;
        this.x = MutexKt.Mutex$default(false, 1, null);
        this.y = kl1.INITIALIZATION_NOT_STARTED;
        this.z = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.A = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.B = new AtomicBoolean(false);
        this.C = Duration.INSTANCE.m4458getZEROUwyO8pc();
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0201 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0210 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0214 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0218 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0219 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:121:0x021f A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0227 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:125:0x022f A[Catch: all -> 0x0230, TRY_LEAVE, TryCatch #0 {all -> 0x0230, blocks: (B:105:0x01fa, B:107:0x0201, B:109:0x0205, B:111:0x0209, B:112:0x020c, B:114:0x0210, B:116:0x0214, B:118:0x0218, B:119:0x0219, B:120:0x021e, B:121:0x021f, B:122:0x0226, B:123:0x0227, B:124:0x022e, B:125:0x022f), top: B:140:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0238  */
    /* JADX WARN: Code duplicated, block: B:50:0x0136  */
    /* JADX WARN: Code duplicated, block: B:52:0x015f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0175  */
    /* JADX WARN: Code duplicated, block: B:59:0x017d A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #2 {all -> 0x0061, blocks: (B:24:0x005c, B:57:0x0177, B:59:0x017d), top: B:142:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0192 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01a1 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01a5 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a9 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01aa A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b0 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01b8 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01c0 A[Catch: all -> 0x01c1, TRY_LEAVE, TryCatch #1 {all -> 0x01c1, blocks: (B:64:0x018b, B:66:0x0192, B:68:0x0196, B:70:0x019a, B:71:0x019d, B:73:0x01a1, B:75:0x01a5, B:77:0x01a9, B:78:0x01aa, B:79:0x01af, B:80:0x01b0, B:81:0x01b7, B:82:0x01b8, B:83:0x01bf, B:84:0x01c0), top: B:141:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:98:0x01eb A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #3 {all -> 0x0051, blocks: (B:19:0x004c, B:96:0x01e5, B:98:0x01eb), top: B:144:0x004c }] */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0249, code lost:
    
        if (r0.join(r2) == r3) goto L134;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v4, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener r22, p005kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.cm1.a(com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:105:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:108:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:114:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:122:0x02f4 A[LOOP:0: B:120:0x02ee->B:122:0x02f4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:129:0x02e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:? A[LOOP:1: B:112:0x02d2->B:131:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x02e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:? A[LOOP:2: B:97:0x029b->B:134:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x032e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:? A[LOOP:6: B:18:0x0070->B:146:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0076  */
    /* JADX WARN: Code duplicated, block: B:25:0x0092  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:96:0x0297  */
    /* JADX WARN: Code duplicated, block: B:99:0x02a1  */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x032c, code lost:
    
        if (r4.a(r6, r2) == r3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
    
        if (r1.join(r2) == r3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ad, code lost:
    
        if (r10.b(r2) == r3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b1, code lost:
    
        r4 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p005kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.cm1.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, Continuation continuation) throws Throwable {
        vl1 vl1Var;
        Mutex mutex;
        cm1 cm1Var;
        Throwable th;
        Mutex mutex2;
        ke keVarA;
        cm1 cm1Var2;
        if (continuation instanceof vl1) {
            vl1Var = (vl1) continuation;
            int i = vl1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                vl1Var.f = i - Integer.MIN_VALUE;
            } else {
                vl1Var = new vl1(this, continuation);
            }
        } else {
            vl1Var = new vl1(this, continuation);
        }
        Object obj = vl1Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vl1Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.x;
                vl1Var.a = this;
                vl1Var.b = mutex;
                vl1Var.c = z;
                vl1Var.f = 1;
                if (mutex.lock(null, vl1Var) != coroutine_suspended) {
                    cm1Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = vl1Var.b;
                cm1Var2 = vl1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    CoroutineScope coroutineScope = cm1Var2.b;
                    wl1 block = new wl1(cm1Var2, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                    cm1Var2.m.getClass();
                    xl.b = System.currentTimeMillis();
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            z = vl1Var.c;
            Mutex mutex3 = vl1Var.b;
            cm1Var = vl1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            cm1Var.y = kl1.INITIALIZATION_COMPLETE;
            Duration.Companion companion = Duration.INSTANCE;
            cm1Var.m.getClass();
            long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), cm1Var.C);
            cm1Var.z.complete();
            int iM4378getInWholeMillisecondsimpl = (int) Duration.m4378getInWholeMillisecondsimpl(jM4395minusLRDsOJo);
            hf hfVar = cm1Var.i;
            if (z) {
                List list = hf.A;
                keVarA = le.a(AdapterStatus.InitializationState.COMPLETE, "The Google Mobile Ads SDK has successfully initialized.", iM4378getInWholeMillisecondsimpl);
            } else {
                List list2 = hf.A;
                keVarA = le.a(AdapterStatus.InitializationState.FAILED, "The Google Mobile Ads SDK has failed to initialize. Ad loading may be impacted.", iM4378getInWholeMillisecondsimpl);
            }
            vl1Var.a = cm1Var;
            vl1Var.b = mutex;
            vl1Var.f = 2;
            hfVar.getClass();
            if (hf.a(hfVar, keVarA, vl1Var) != coroutine_suspended) {
                mutex2 = mutex;
                cm1Var2 = cm1Var;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                CoroutineScope coroutineScope2 = cm1Var2.b;
                wl1 block2 = new wl1(cm1Var2, null);
                EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                cm1Var2.m.getClass();
                xl.b = System.currentTimeMillis();
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.unlock(null);
            throw th;
        }
    }

    public final void a() {
        if (this.p.a().isTestDevice(this.a)) {
            f01.a("This RequestConfiguration is configured as a test device.", null, null, 6);
            return;
        }
        Splitter splitter = f01.a;
        m21 m21Var = o21.f;
        f01.a("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + m21.a(this.a) + "\")) to get test ads on this device.", null, null, 6);
    }

    public final void a(Function1 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CoroutineScope coroutineScope = this.b;
        am1 block2 = new am1(this, block, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block2, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block2, null), 2, null);
    }

    public final void a(boolean z) {
        if (this.B.compareAndSet(false, true)) {
            CoroutineScope coroutineScope = this.b;
            ll1 block = new ll1(this, z, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00ce A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #7 {all -> 0x0079, blocks: (B:33:0x0075, B:52:0x00c6, B:54:0x00ce), top: B:121:0x0075 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0129  */
    /* JADX WARN: Code duplicated, block: B:66:0x014b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0154 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #1 {all -> 0x0042, blocks: (B:16:0x003d, B:67:0x014e, B:69:0x0154), top: B:110:0x003d }] */
    /* JADX WARN: Code duplicated, block: B:77:0x016e A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0172 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:84:0x017d A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0181 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0185 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0186 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x018c A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0194 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x019c A[Catch: all -> 0x019d, TRY_LEAVE, TryCatch #9 {all -> 0x019d, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:82:0x0179, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:89:0x0186, B:90:0x018b, B:91:0x018c, B:92:0x0193, B:93:0x0194, B:94:0x019b, B:95:0x019c), top: B:125:0x0167, outer: #3 }] */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00df, code lost:
    
        if (kotlin.pn.a(r0, false, (p005kotlin.coroutines.Continuation) r2) == r3) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [ads_mobile_sdk.e01] */
    /* JADX WARN: Type inference failed for: r0v26, types: [ads_mobile_sdk.nc1, ads_mobile_sdk.sj] */
    /* JADX WARN: Type inference failed for: r10v12, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r12v5, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r2v17, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.sl1, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r8v8, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r9v9, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p005kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.cm1.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
    
        if (kotlin.pn.a(r6, false, (p005kotlin.coroutines.Continuation) r0) == r1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(p005kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlin.zl1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.zl1 r0 = (kotlin.zl1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zl1 r0 = new ads_mobile_sdk.zl1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L86
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.cm1 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L4e
        L3a:
            p005kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.pn r6 = r5.u
            r0.a = r5
            r0.d = r4
            r6.getClass()
            java.lang.Object r6 = kotlin.pn.c(r6, r0)
            if (r6 != r1) goto L4d
            goto L85
        L4d:
            r2 = r5
        L4e:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            r4 = 0
            if (r6 == 0) goto L6d
            ads_mobile_sdk.cw2 r6 = r2.v
            java.lang.Object r6 = r6.get()
            ads_mobile_sdk.mk3 r6 = (kotlin.mk3) r6
            r6.b = r4
            ads_mobile_sdk.ks1 r6 = r2.t
            java.lang.Object r6 = r6.get()
            ads_mobile_sdk.jb3 r6 = (kotlin.jb3) r6
            ads_mobile_sdk.rp0 r6 = (kotlin.rp0) r6
            r6.b = r4
        L6d:
            ads_mobile_sdk.ex0 r6 = r2.l
            boolean r6 = r6.O()
            if (r6 == 0) goto L89
            ads_mobile_sdk.pn r6 = r2.u
            r2 = 0
            r0.a = r2
            r0.d = r3
            r6.getClass()
            java.lang.Object r6 = kotlin.pn.a(r6, r4, r0)
            if (r6 != r1) goto L86
        L85:
            return r1
        L86:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L89:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.cm1.c(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
