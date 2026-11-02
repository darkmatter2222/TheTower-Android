package kotlin;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import com.google.common.collect.Comparators;
import com.tapjoy.TJAdUnitConstants;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.ranges.RangesKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class hf {
    public static final List A = CollectionsKt.listOf((Object[]) new String[]{"com.google.ads.mediation.admob.AdMobAdapter", "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"});
    public final CoroutineScope a;
    public final CoroutineContext b;
    public final Context c;
    public final rv1 d;
    public final kf e;
    public final f0 f;
    public final pn g;
    public final tx h;
    public final ex0 i;
    public final g83 j;
    public final ja1 k;
    public final Mutex l;
    public final LinkedHashMap m;
    public final LinkedHashMap n;
    public long o;
    public AdapterStatus p;
    public long q;
    public long r;
    public int s;
    public long t;
    public final Mutex u;
    public final LinkedHashSet v;
    public final LinkedHashSet w;
    public Set x;
    public final AtomicBoolean y;
    public final CompletableJob z;

    public hf(CoroutineScope backgroundScope, CoroutineContext uiContext, Context applicationContext, rv1 mediationAdapterProxyFactory, kf adapterStatusMapUpdater, f0 activityTracker, pn appState, tx clock, ex0 flags, g83 rootTraceCreator, ja1 initializationConfigWrapper) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(mediationAdapterProxyFactory, "mediationAdapterProxyFactory");
        Intrinsics.checkNotNullParameter(adapterStatusMapUpdater, "adapterStatusMapUpdater");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.a = backgroundScope;
        this.b = uiContext;
        this.c = applicationContext;
        this.d = mediationAdapterProxyFactory;
        this.e = adapterStatusMapUpdater;
        this.f = activityTracker;
        this.g = appState;
        this.h = clock;
        this.i = flags;
        this.j = rootTraceCreator;
        this.k = initializationConfigWrapper;
        this.l = MutexKt.Mutex$default(false, 1, null);
        this.m = new LinkedHashMap();
        this.n = new LinkedHashMap();
        Duration.Companion companion = Duration.INSTANCE;
        this.o = companion.m4458getZEROUwyO8pc();
        this.p = le.b(null, null, 7);
        this.q = companion.m4458getZEROUwyO8pc();
        this.r = companion.m4458getZEROUwyO8pc();
        this.t = companion.m4458getZEROUwyO8pc();
        this.u = MutexKt.Mutex$default(false, 1, null);
        this.v = new LinkedHashSet();
        this.w = new LinkedHashSet();
        this.y = new AtomicBoolean(false);
        this.z = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(hf hfVar, ke keVar, Continuation continuation) {
        ef efVar;
        Mutex mutex;
        AdapterStatus adapterStatus;
        if (continuation instanceof ef) {
            efVar = (ef) continuation;
            int i = efVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                efVar.f = i - Integer.MIN_VALUE;
            } else {
                efVar = new ef(hfVar, continuation);
            }
        } else {
            efVar = new ef(hfVar, continuation);
        }
        Object obj = efVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = efVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = hfVar.l;
            efVar.a = hfVar;
            efVar.b = keVar;
            efVar.c = mutex;
            efVar.f = 1;
            if (mutex.lock(null, efVar) == coroutine_suspended) {
                adapterStatus = keVar;
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = efVar.c;
            AdapterStatus adapterStatus2 = efVar.b;
            hf hfVar2 = efVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            hfVar = hfVar2;
            adapterStatus = adapterStatus2;
        }
        try {
            adapterStatus = keVar;
            hfVar.p = adapterStatus;
            Duration.Companion companion = Duration.INSTANCE;
            hfVar.h.getClass();
            hfVar.q = Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), hfVar.o);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(hf hfVar, BaseRequest baseRequest, String str, Continuation continuation) {
        bf bfVar;
        Mutex mutex;
        if (continuation instanceof bf) {
            bfVar = (bf) continuation;
            int i = bfVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                bfVar.g = i - Integer.MIN_VALUE;
            } else {
                bfVar = new bf(hfVar, continuation);
            }
        } else {
            bfVar = new bf(hfVar, continuation);
        }
        Object obj = bfVar.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bfVar.g;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = hfVar.u;
            bfVar.a = hfVar;
            bfVar.b = baseRequest;
            bfVar.c = str;
            bfVar.d = mutex;
            bfVar.g = 1;
            if (mutex.lock(null, bfVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = bfVar.d;
            str = bfVar.c;
            baseRequest = bfVar.b;
            hf hfVar2 = bfVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            hfVar = hfVar2;
        }
        try {
            if (!baseRequest.getSkipUninitializedAdapters()) {
                Boolean boolBoxBoolean = Boxing.boxBoolean(true);
                mutex.unlock(null);
                return boolBoxBoolean;
            }
            Set set = hfVar.x;
            if (set == null) {
                Boolean boolBoxBoolean2 = Boxing.boxBoolean(false);
                mutex.unlock(null);
                return boolBoxBoolean2;
            }
            pn pnVar = hfVar.g;
            List listListOf = CollectionsKt.listOf(str);
            ex0 ex0Var = hfVar.i;
            pnVar.getClass();
            List listA = pn.a(listListOf, ex0Var);
            if (!(listA instanceof Collection) || !listA.isEmpty()) {
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    if (set.contains((String) it.next())) {
                        if (!listA.isEmpty()) {
                            Iterator it2 = listA.iterator();
                            do {
                                if (it2.hasNext()) {
                                }
                            } while (!hfVar.w.contains((String) it2.next()));
                            Boolean boolBoxBoolean3 = Boxing.boxBoolean(z);
                            mutex.unlock(null);
                            return boolBoxBoolean3;
                        }
                        z = false;
                        Boolean boolBoxBoolean4 = Boxing.boxBoolean(z);
                        mutex.unlock(null);
                        return boolBoxBoolean4;
                    }
                }
            }
            Boolean boolBoxBoolean5 = Boxing.boxBoolean(true);
            mutex.unlock(null);
            return boolBoxBoolean5;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x03cf A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:101:0x03d2 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x03d5 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x03d8 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0424  */
    /* JADX WARN: Code duplicated, block: B:111:0x0446 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0464 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x046c A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0485 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x048f A[Catch: all -> 0x01c1, TRY_LEAVE, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:137:0x04d9 A[Catch: all -> 0x01c1, PHI: r0 r1 r2 r6 r7 r8 r9 r14 r18 r23 r27 r28
  0x04d9: PHI (r0v38 ads_mobile_sdk.hf) = (r0v28 ads_mobile_sdk.hf), (r0v43 ads_mobile_sdk.hf) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r1v45 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig) = 
  (r1v34 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
  (r1v50 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
 binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r2v23 kotlin.jvm.internal.Ref$LongRef) = (r2v14 kotlin.jvm.internal.Ref$LongRef), (r2v25 kotlin.jvm.internal.Ref$LongRef) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r6v23 ads_mobile_sdk.ie) = (r6v18 ads_mobile_sdk.ie), (r6v25 ads_mobile_sdk.ie) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r7v22 java.io.Closeable) = (r7v17 java.io.Closeable), (r7v24 java.io.Closeable) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r8v21 ads_mobile_sdk.rr3) = (r8v16 ads_mobile_sdk.rr3), (r8v23 ads_mobile_sdk.rr3) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r9v29 java.util.Set) = (r9v19 java.util.Set), (r9v32 java.util.Set) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r14v15 java.lang.Object) = (r14v11 java.lang.Object), (r14v16 java.lang.Object) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r18v7 java.lang.String) = (r18v4 java.lang.String), (r18v8 java.lang.String) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r23v8 java.lang.String) = (r23v4 java.lang.String), (r23v9 java.lang.String) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r27v8 java.lang.String) = (r27v4 java.lang.String), (r27v9 java.lang.String) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE]
  0x04d9: PHI (r28v9 java.lang.String) = (r28v5 java.lang.String), (r28v10 java.lang.String) binds: [B:124:0x048d, B:130:0x04bf] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0501  */
    /* JADX WARN: Code duplicated, block: B:140:0x0502  */
    /* JADX WARN: Code duplicated, block: B:144:0x0524  */
    /* JADX WARN: Code duplicated, block: B:148:0x0532 A[Catch: all -> 0x0625, TryCatch #1 {all -> 0x0625, blocks: (B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:371:0x0528, outer: #19 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x05df A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x0615  */
    /* JADX WARN: Code duplicated, block: B:163:0x061a A[Catch: all -> 0x01c1, TRY_LEAVE, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x063c A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0640 A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:186:0x064b A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x064f A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x0653 A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0654 A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x065a A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:195:0x0662 A[Catch: all -> 0x066b, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:197:0x066a A[Catch: all -> 0x066b, TRY_LEAVE, TryCatch #8 {all -> 0x066b, blocks: (B:177:0x0635, B:179:0x063c, B:181:0x0640, B:183:0x0644, B:184:0x0647, B:186:0x064b, B:188:0x064f, B:190:0x0653, B:191:0x0654, B:192:0x0659, B:193:0x065a, B:194:0x0661, B:195:0x0662, B:196:0x0669, B:197:0x066a), top: B:381:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:211:0x06c7 A[Catch: all -> 0x0a22, TryCatch #0 {all -> 0x0a22, blocks: (B:209:0x06b5, B:211:0x06c7, B:212:0x06db), top: B:369:0x06b5, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:231:0x071f A[Catch: all -> 0x072d, TryCatch #10 {all -> 0x072d, blocks: (B:229:0x071a, B:231:0x071f, B:235:0x0728, B:236:0x072c, B:228:0x0714), top: B:374:0x0714, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:244:0x0745 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:247:0x0794 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:250:0x07ab A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x07ae A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:252:0x07b1 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:253:0x07b4 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:254:0x07b7 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:255:0x07ba A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:256:0x07bd A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:257:0x07c0 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:262:0x080a  */
    /* JADX WARN: Code duplicated, block: B:265:0x082f A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:272:0x084e A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:274:0x0857 A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:277:0x086e A[Catch: all -> 0x0a1f, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:279:0x0878 A[Catch: all -> 0x0a1f, TRY_LEAVE, TryCatch #27 {all -> 0x0a1f, blocks: (B:242:0x0737, B:244:0x0745, B:245:0x078e, B:247:0x0794, B:248:0x07a5, B:249:0x07a8, B:259:0x07c6, B:260:0x07c9, B:250:0x07ab, B:258:0x07c2, B:251:0x07ae, B:252:0x07b1, B:253:0x07b4, B:254:0x07b7, B:255:0x07ba, B:256:0x07bd, B:257:0x07c0, B:261:0x07ca, B:263:0x0810, B:265:0x082f, B:267:0x0837, B:270:0x0847, B:272:0x084e, B:275:0x085e, B:277:0x086e, B:279:0x0878, B:274:0x0857), top: B:405:0x0737 }] */
    /* JADX WARN: Code duplicated, block: B:283:0x089d  */
    /* JADX WARN: Code duplicated, block: B:290:0x08be  */
    /* JADX WARN: Code duplicated, block: B:294:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:298:0x090f  */
    /* JADX WARN: Code duplicated, block: B:302:0x091e A[Catch: all -> 0x0a14, TryCatch #25 {all -> 0x0a14, blocks: (B:299:0x0914, B:300:0x0918, B:302:0x091e, B:305:0x092f, B:307:0x094c, B:309:0x097f), top: B:401:0x0914, outer: #14 }] */
    /* JADX WARN: Code duplicated, block: B:315:0x09d1 A[Catch: all -> 0x0a11, TryCatch #23 {all -> 0x0a11, blocks: (B:313:0x098f, B:315:0x09d1, B:317:0x0a02, B:319:0x0a06), top: B:399:0x098f }] */
    /* JADX WARN: Code duplicated, block: B:316:0x0a01  */
    /* JADX WARN: Code duplicated, block: B:319:0x0a06 A[Catch: all -> 0x0a11, TRY_LEAVE, TryCatch #23 {all -> 0x0a11, blocks: (B:313:0x098f, B:315:0x09d1, B:317:0x0a02, B:319:0x0a06), top: B:399:0x098f }] */
    /* JADX WARN: Code duplicated, block: B:344:0x0a36 A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:346:0x0a3a A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:351:0x0a45 A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:353:0x0a49 A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:355:0x0a4d A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:356:0x0a4e A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:358:0x0a54 A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:360:0x0a5c A[Catch: all -> 0x0a65, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:362:0x0a64 A[Catch: all -> 0x0a65, TRY_LEAVE, TryCatch #2 {all -> 0x0a65, blocks: (B:342:0x0a2f, B:344:0x0a36, B:346:0x0a3a, B:348:0x0a3e, B:349:0x0a41, B:351:0x0a45, B:353:0x0a49, B:355:0x0a4d, B:356:0x0a4e, B:357:0x0a53, B:358:0x0a54, B:359:0x0a5b, B:360:0x0a5c, B:361:0x0a63, B:362:0x0a64), top: B:373:0x0a2f }] */
    /* JADX WARN: Code duplicated, block: B:407:0x092f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:409:0x092e A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:416:0x07a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:426:0x0543 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:427:0x0542 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:434:0x03c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:443:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:444:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:445:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x02e7 A[Catch: all -> 0x062b, TryCatch #7 {all -> 0x062b, blocks: (B:62:0x02d8, B:64:0x02e7, B:65:0x02fb), top: B:379:0x02d8, outer: #22 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:80:0x0340 A[Catch: all -> 0x0351, TryCatch #22 {all -> 0x0351, blocks: (B:78:0x033b, B:80:0x0340, B:84:0x034c, B:85:0x0350, B:67:0x02fe, B:69:0x0305, B:71:0x030d, B:73:0x0314, B:172:0x062d, B:173:0x0630, B:62:0x02d8, B:64:0x02e7, B:65:0x02fb, B:77:0x0335), top: B:379:0x02d8, inners: #7, #20 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0346 A[PHI: r0 r1 r2 r6 r7 r13 r14 r18 r23 r24 r25 r26 r27 r28
  0x0346: PHI (r0v28 ads_mobile_sdk.hf) = (r0v21 ads_mobile_sdk.hf), (r0v21 ads_mobile_sdk.hf), (r0v21 ads_mobile_sdk.hf), (r0v33 ads_mobile_sdk.hf) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r1v34 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig) = 
  (r1v24 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
  (r1v24 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
  (r1v24 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
  (r1v37 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
 binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r2v11 java.lang.Object) = (r2v79 java.lang.Object), (r2v80 java.lang.Object), (r2v81 java.lang.Object), (r2v82 java.lang.Object) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r6v15 java.io.Closeable) = (r6v58 java.io.Closeable), (r6v59 java.io.Closeable), (r6v60 java.io.Closeable), (r6v61 java.io.Closeable) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r7v16 kotlin.jvm.internal.Ref$BooleanRef) = 
  (r7v13 kotlin.jvm.internal.Ref$BooleanRef)
  (r7v13 kotlin.jvm.internal.Ref$BooleanRef)
  (r7v13 kotlin.jvm.internal.Ref$BooleanRef)
  (r7v19 kotlin.jvm.internal.Ref$BooleanRef)
 binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r13v4 java.lang.String) = (r13v3 java.lang.String), (r13v3 java.lang.String), (r13v3 java.lang.String), (r13v11 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r14v10 ads_mobile_sdk.rr3) = (r14v60 ads_mobile_sdk.rr3), (r14v61 ads_mobile_sdk.rr3), (r14v62 ads_mobile_sdk.rr3), (r14v63 ads_mobile_sdk.rr3) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r18v4 java.lang.String) = (r18v2 java.lang.String), (r18v2 java.lang.String), (r18v2 java.lang.String), (r18v5 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r23v3 java.lang.String) = (r23v1 java.lang.String), (r23v1 java.lang.String), (r23v1 java.lang.String), (r23v6 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r24v4 java.lang.String) = (r24v2 java.lang.String), (r24v2 java.lang.String), (r24v2 java.lang.String), (r24v5 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r25v4 java.lang.String) = (r25v2 java.lang.String), (r25v2 java.lang.String), (r25v2 java.lang.String), (r25v5 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r26v3 java.lang.String) = (r26v1 java.lang.String), (r26v1 java.lang.String), (r26v1 java.lang.String), (r26v4 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r27v3 java.lang.String) = (r27v1 java.lang.String), (r27v1 java.lang.String), (r27v1 java.lang.String), (r27v6 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]
  0x0346: PHI (r28v4 java.lang.String) = (r28v2 java.lang.String), (r28v2 java.lang.String), (r28v2 java.lang.String), (r28v7 java.lang.String) binds: [B:68:0x0303, B:70:0x030b, B:72:0x0312, B:81:0x0343] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:90:0x0361 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x03ac A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x03c3 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x03c6 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x03c9 A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x03cc A[Catch: all -> 0x01c1, TryCatch #19 {all -> 0x01c1, blocks: (B:34:0x0187, B:156:0x0595, B:157:0x059d, B:159:0x05df, B:161:0x0616, B:163:0x061a, B:168:0x0627, B:169:0x062a, B:37:0x01b1, B:141:0x0505, B:137:0x04d9, B:88:0x0355, B:90:0x0361, B:91:0x03a6, B:93:0x03ac, B:94:0x03bd, B:95:0x03c0, B:105:0x03de, B:106:0x03e1, B:96:0x03c3, B:104:0x03da, B:97:0x03c6, B:98:0x03c9, B:99:0x03cc, B:100:0x03cf, B:101:0x03d2, B:102:0x03d5, B:103:0x03d8, B:107:0x03e2, B:109:0x0428, B:111:0x0446, B:113:0x044e, B:116:0x045d, B:118:0x0464, B:121:0x0473, B:123:0x0485, B:125:0x048f, B:120:0x046c, B:145:0x0528, B:146:0x052c, B:148:0x0532, B:151:0x0543, B:153:0x0560, B:154:0x0590), top: B:376:0x004c, inners: #1 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v35, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v19, types: [com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v35 */
    /* JADX WARN: Type inference failed for: r14v36, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v38 */
    /* JADX WARN: Type inference failed for: r14v46 */
    /* JADX WARN: Type inference failed for: r14v47 */
    /* JADX WARN: Type inference failed for: r14v52 */
    /* JADX WARN: Type inference failed for: r14v53 */
    /* JADX WARN: Type inference failed for: r14v54 */
    /* JADX WARN: Type inference failed for: r14v55 */
    /* JADX WARN: Type inference failed for: r14v64 */
    /* JADX WARN: Type inference failed for: r14v65 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v50 */
    /* JADX WARN: Type inference failed for: r6v56 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v29, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v42 */
    /* JADX WARN: Type inference failed for: r7v49, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v50 */
    /* JADX WARN: Type inference failed for: r7v53 */
    /* JADX WARN: Type inference failed for: r7v54 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r7v57 */
    /* JADX WARN: Type inference failed for: r7v58 */
    /* JADX WARN: Type inference failed for: r7v59 */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v60 */
    /* JADX WARN: Type inference failed for: r7v63 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v40 */
    /* JADX WARN: Type inference failed for: r8v43, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v49 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v53 */
    /* JADX WARN: Type inference failed for: r8v54 */
    /* JADX WARN: Type inference failed for: r8v55 */
    /* JADX WARN: Type inference failed for: r8v56 */
    /* JADX WARN: Type inference failed for: r8v57 */
    /* JADX WARN: Type inference failed for: r8v58 */
    /* JADX WARN: Type inference failed for: r8v59 */
    /* JADX WARN: Type inference failed for: r8v60 */
    /* JADX WARN: Type inference failed for: r8v61 */
    /* JADX WARN: Type inference failed for: r8v62 */
    /* JADX WARN: Type inference failed for: r8v63 */
    /* JADX WARN: Type inference failed for: r8v7 */
    public static Object a(hf hfVar, AdapterInitializationConfig adapterInitializationConfig, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener, Continuation continuation) {
        te teVar;
        ?? r6;
        ?? r14;
        ?? r7;
        ?? r8;
        ?? r2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        ?? r9;
        String str8;
        String str9;
        Ref.BooleanRef booleanRef;
        Mutex mutex;
        AdapterInitializationConfig adapterInitializationConfig2;
        OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener2;
        String str10;
        String str11;
        String str12;
        rr3 rr3Var;
        Ref.BooleanRef booleanRef2;
        Mutex mutex2;
        rr3 rr3Var2;
        Closeable closeable;
        Object obj;
        String str13;
        InitializationConfig initializationConfigA;
        Mutex mutex3;
        Object obj2;
        hf hfVar2;
        AdapterInitializationConfig adapterInitializationConfig3;
        rr3 rr3Var3;
        Closeable closeable2;
        Object obj3;
        rr3 rr3Var4;
        Object obj4;
        Ref.BooleanRef booleanRef3;
        Closeable closeable3;
        he builder;
        String str14;
        String str15;
        String str16;
        ie ieVar;
        Set linkedHashSet;
        Ref.LongRef longRef;
        long jP;
        String str17;
        long j;
        String str18;
        String str19;
        Mutex mutex4;
        Object obj5;
        AdapterInitializationConfig adapterInitializationConfig4;
        rr3 rr3Var5;
        hf hfVar3;
        AdapterInitializationConfig adapterInitializationConfig5;
        ie ieVar2;
        Closeable closeable4;
        Ref.LongRef longRef2;
        Set set;
        InitializationConfig initializationConfigA2;
        ArrayList arrayList;
        t11 t11Var;
        Object obj6;
        boolean zIsEmpty;
        Closeable closeable5;
        m21 m21Var;
        long j2;
        ve veVar;
        hf hfVar4;
        Set set2;
        Object obj7;
        rr3 rr3Var6;
        Closeable closeable6;
        Mutex mutex5;
        Mutex mutex6;
        Set set3;
        ie ieVar3;
        ?? r15;
        ?? r10;
        p005kotlin.Unit unit;
        Object obj8;
        Iterator it;
        String str20;
        yd ydVar;
        Closeable closeable7;
        String str21;
        String str22;
        InitializationConfig initializationConfigA3;
        Mutex mutex7;
        Object obj9;
        hf hfVar5;
        AdapterInitializationConfig adapterInitializationConfig6;
        Closeable closeable8;
        ?? r11;
        OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener3;
        he builder2;
        String str23;
        String str24;
        ie ieVar4;
        Set linkedHashSet2;
        Ref.LongRef longRef3;
        long jP2;
        String str25;
        long j3;
        String str26;
        Object obj10;
        ie ieVar5;
        Mutex mutex8;
        Object obj11;
        Closeable closeable9;
        ?? r12;
        AdapterInitializationConfig adapterInitializationConfig7;
        hf hfVar6;
        AdapterInitializationConfig adapterInitializationConfig8;
        InitializationConfig initializationConfigA4;
        te teVar2;
        ArrayList arrayList2;
        t11 t11Var2;
        ?? r13;
        boolean zIsEmpty2;
        Closeable closeable10;
        m21 m21Var2;
        long j4;
        ve veVar2;
        hf hfVar7;
        Set set4;
        Ref.LongRef longRef4;
        OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener4;
        Closeable closeable11;
        ?? r16;
        Mutex mutex9;
        Mutex mutex10;
        Set<String> set5;
        ?? r17;
        p005kotlin.Unit unit2;
        yd ydVar2;
        hf hfVar8 = hfVar;
        AdapterInitializationConfig adapterInitializationConfig9 = adapterInitializationConfig;
        Object obj12 = onAdapterInitializationCompleteListener;
        if (continuation instanceof te) {
            teVar = (te) continuation;
            int i = teVar.m;
            if ((i & Integer.MIN_VALUE) != 0) {
                teVar.m = i - Integer.MIN_VALUE;
            } else {
                teVar = new te(hfVar8, continuation);
            }
        } else {
            teVar = new te(hfVar8, continuation);
        }
        Object obj13 = teVar.k;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r18 = "getExcludedAdapterClassesList(...)";
        ?? r19 = "getAllowedAdapterClassesList(...)";
        ?? r110 = "toBuilder(...)";
        String str27 = "builder";
        try {
            try {
                try {
                    try {
                        switch (teVar.m) {
                            case 0:
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                g83 g83Var = hfVar8.j;
                                str = "Timeout.";
                                s11 s11Var = s11.CUI_NAME_SDKINIT_OVERALL_ADAPTER_INIT;
                                str2 = "build(...)";
                                List listEmptyList = CollectionsKt.emptyList();
                                str3 = "getExcludedAdapterClassesList(...)";
                                str4 = "getAllowedAdapterClassesList(...)";
                                n03 n03Var = new n03();
                                str5 = "getAllowedFormatsList(...)";
                                tn1 tn1Var = new tn1();
                                str6 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str7 = "<this>";
                                ks3 ks3Var = new ks3(n03Var, tn1Var, new m33(), new zb());
                                if (hs3.c() == null) {
                                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                                    try {
                                        booleanRef2 = new Ref.BooleanRef();
                                        mutex2 = hfVar8.l;
                                        teVar.a = hfVar8;
                                        teVar.b = adapterInitializationConfig9;
                                        teVar.c = obj12;
                                        teVar.d = tu2VarA;
                                        teVar.e = tu2VarA;
                                        teVar.f = booleanRef2;
                                        teVar.g = mutex2;
                                        teVar.m = 1;
                                        if (mutex2.lock(null, teVar) != coroutine_suspended) {
                                            rr3Var2 = tu2VarA;
                                            obj = obj12;
                                            closeable = tu2VarA;
                                            try {
                                                try {
                                                    str13 = "getAllowedAdUnitsList(...)";
                                                    if (Duration.m4372equalsimpl0(hfVar8.o, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                                        booleanRef2.element = true;
                                                        hfVar8.h.getClass();
                                                        hfVar8.o = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
                                                    }
                                                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                                    mutex2.unlock(null);
                                                    obj3 = obj;
                                                    closeable2 = closeable;
                                                    rr3Var3 = rr3Var2;
                                                    if (!booleanRef2.element || (initializationConfigA = hfVar8.k.a()) == null || !initializationConfigA.getMediationAdapterInitializationDisabled()) {
                                                        obj3 = obj;
                                                        closeable2 = closeable;
                                                        rr3Var3 = rr3Var2;
                                                        obj3 = obj;
                                                        closeable2 = closeable;
                                                        rr3Var3 = rr3Var2;
                                                        obj3 = obj;
                                                        closeable2 = closeable;
                                                        rr3Var3 = rr3Var2;
                                                        rr3Var4 = rr3Var3;
                                                        obj4 = obj3;
                                                        booleanRef3 = booleanRef2;
                                                        closeable3 = closeable2;
                                                        builder = ie.v();
                                                        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                                                        Intrinsics.checkNotNullParameter(builder, "builder");
                                                        if (adapterInitializationConfig9 != null) {
                                                            builder.a(adapterInitializationConfig9.getInitializationTimeoutMs());
                                                            List listH = builder.h();
                                                            Intrinsics.checkNotNullExpressionValue(listH, str13);
                                                            lo0 lo0Var = new lo0(listH);
                                                            Set<String> allowedAdUnitIds = adapterInitializationConfig9.getAllowedAdUnitIds();
                                                            str15 = str7;
                                                            Intrinsics.checkNotNullParameter(lo0Var, str15);
                                                            str14 = str6;
                                                            Intrinsics.checkNotNullParameter(allowedAdUnitIds, str14);
                                                            builder.a(allowedAdUnitIds);
                                                            List listJ = builder.j();
                                                            Intrinsics.checkNotNullExpressionValue(listJ, str5);
                                                            lo0 lo0Var2 = new lo0(listJ);
                                                            Set<AdFormat> allowedAdFormats = adapterInitializationConfig9.getAllowedAdFormats();
                                                            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats, 10));
                                                            for (AdFormat adFormat : allowedAdFormats) {
                                                                Intrinsics.checkNotNullParameter(adFormat, str15);
                                                                switch (je.a[adFormat.ordinal()]) {
                                                                    case 1:
                                                                        t11Var = t11.FORMAT_APP_OPEN;
                                                                        break;
                                                                    case 2:
                                                                        t11Var = t11.FORMAT_BANNER;
                                                                        break;
                                                                    case 3:
                                                                        t11Var = t11.FORMAT_ICON;
                                                                        break;
                                                                    case 4:
                                                                        t11Var = t11.FORMAT_INTERSTITIAL;
                                                                        break;
                                                                    case 5:
                                                                        t11Var = t11.FORMAT_NATIVE;
                                                                        break;
                                                                    case 6:
                                                                        t11Var = t11.FORMAT_REWARDED;
                                                                        break;
                                                                    case 7:
                                                                        t11Var = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                                        break;
                                                                    case 8:
                                                                        t11Var = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                                        break;
                                                                    default:
                                                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                                                }
                                                                arrayList.add(t11Var);
                                                            }
                                                            Intrinsics.checkNotNullParameter(lo0Var2, str15);
                                                            Intrinsics.checkNotNullParameter(arrayList, str14);
                                                            builder.a(arrayList);
                                                            List listI = builder.i();
                                                            Intrinsics.checkNotNullExpressionValue(listI, str4);
                                                            lo0 lo0Var3 = new lo0(listI);
                                                            Set<String> allowedAdapterClasses = adapterInitializationConfig9.getAllowedAdapterClasses();
                                                            Intrinsics.checkNotNullParameter(lo0Var3, str15);
                                                            Intrinsics.checkNotNullParameter(allowedAdapterClasses, str14);
                                                            builder.b(allowedAdapterClasses);
                                                            List listK = builder.k();
                                                            Intrinsics.checkNotNullExpressionValue(listK, str3);
                                                            lo0 lo0Var4 = new lo0(listK);
                                                            Set<String> excludedAdapterClasses = adapterInitializationConfig9.getExcludedAdapterClasses();
                                                            Intrinsics.checkNotNullParameter(lo0Var4, str15);
                                                            Intrinsics.checkNotNullParameter(excludedAdapterClasses, str14);
                                                            builder.c(excludedAdapterClasses);
                                                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                                        } else {
                                                            str14 = str6;
                                                            str15 = str7;
                                                        }
                                                        vz0 vz0VarB = builder.b();
                                                        str16 = str2;
                                                        Intrinsics.checkNotNullExpressionValue(vz0VarB, str16);
                                                        ieVar = (ie) vz0VarB;
                                                        hs3.a().e().K = ieVar;
                                                        linkedHashSet = new LinkedHashSet();
                                                        if (booleanRef3.element || (initializationConfigA2 = hfVar8.k.a()) == null || !initializationConfigA2.getMediationAdapterInitializationDisabled()) {
                                                            longRef = new Ref.LongRef();
                                                            if (adapterInitializationConfig9 != null) {
                                                                jP = adapterInitializationConfig9.getA();
                                                            } else {
                                                                jP = hfVar8.i.p();
                                                            }
                                                            str17 = str14;
                                                            j = jP;
                                                            longRef.element = j;
                                                            str18 = str16;
                                                            str19 = str15;
                                                            if (Duration.m4366compareToLRDsOJo(j, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                                                longRef.element = hfVar8.i.p();
                                                            }
                                                            if (adapterInitializationConfig9 != null) {
                                                                mutex4 = hfVar8.u;
                                                                teVar.a = hfVar8;
                                                                teVar.b = adapterInitializationConfig9;
                                                                teVar.c = obj4;
                                                                teVar.d = rr3Var4;
                                                                teVar.e = closeable3;
                                                                teVar.f = ieVar;
                                                                teVar.g = longRef;
                                                                teVar.h = linkedHashSet;
                                                                teVar.i = adapterInitializationConfig9;
                                                                teVar.j = mutex4;
                                                                teVar.m = 3;
                                                                obj5 = null;
                                                                if (mutex4.lock(null, teVar) != coroutine_suspended) {
                                                                    adapterInitializationConfig4 = adapterInitializationConfig9;
                                                                    rr3Var5 = rr3Var4;
                                                                    hfVar3 = hfVar8;
                                                                    adapterInitializationConfig5 = adapterInitializationConfig4;
                                                                    ieVar2 = ieVar;
                                                                    closeable4 = closeable3;
                                                                    longRef2 = longRef;
                                                                    set = linkedHashSet;
                                                                    obj4 = obj4;
                                                                    try {
                                                                        try {
                                                                            boolean zAdd = hfVar3.v.add(adapterInitializationConfig5);
                                                                            mutex4.unlock(obj5);
                                                                            Boxing.boxBoolean(zAdd);
                                                                            hfVar8 = hfVar3;
                                                                            linkedHashSet = set;
                                                                            longRef = longRef2;
                                                                            adapterInitializationConfig9 = adapterInitializationConfig4;
                                                                            closeable3 = closeable4;
                                                                            ieVar = ieVar2;
                                                                            rr3Var4 = rr3Var5;
                                                                            m21Var = o21.f;
                                                                            j2 = longRef.element;
                                                                            veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                                                            teVar.a = hfVar8;
                                                                            teVar.b = obj4;
                                                                            teVar.c = rr3Var4;
                                                                            teVar.d = closeable3;
                                                                            teVar.e = ieVar;
                                                                            teVar.f = longRef;
                                                                            teVar.g = linkedHashSet;
                                                                            teVar.h = null;
                                                                            teVar.i = null;
                                                                            teVar.j = null;
                                                                            teVar.m = 4;
                                                                            if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                                                                hfVar4 = hfVar8;
                                                                                set2 = linkedHashSet;
                                                                                obj7 = obj4;
                                                                                closeable6 = closeable3;
                                                                                rr3Var6 = rr3Var4;
                                                                                mutex5 = hfVar4.l;
                                                                                teVar.a = hfVar4;
                                                                                teVar.b = obj7;
                                                                                teVar.c = rr3Var6;
                                                                                teVar.d = closeable6;
                                                                                teVar.e = ieVar;
                                                                                teVar.f = longRef;
                                                                                teVar.g = set2;
                                                                                teVar.h = mutex5;
                                                                                teVar.m = 5;
                                                                                if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                                                    Set set6 = set2;
                                                                                    mutex6 = mutex5;
                                                                                    set3 = set6;
                                                                                    ieVar3 = ieVar;
                                                                                    r18 = closeable6;
                                                                                    r19 = rr3Var6;
                                                                                    obj8 = obj7;
                                                                                    try {
                                                                                        it = set3.iterator();
                                                                                        while (it.hasNext()) {
                                                                                            str20 = (String) it.next();
                                                                                            ydVar = (yd) hfVar4.m.get(str20);
                                                                                            if (ydVar == null && CollectionsKt.listOf((Object[]) new AdapterStatus.InitializationState[]{AdapterStatus.InitializationState.NOT_STARTED, AdapterStatus.InitializationState.INITIALIZING}).contains(ydVar.a.getInitializationState())) {
                                                                                                kf kfVar = hfVar4.e;
                                                                                                LinkedHashMap linkedHashMap = hfVar4.m;
                                                                                                AdapterVersionData adapterVersionData = ydVar.b;
                                                                                                Iterator it2 = it;
                                                                                                String str28 = str;
                                                                                                ke keVarA = le.a(AdapterStatus.InitializationState.TIMED_OUT, str28, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                                                                long jA = hfVar4.a();
                                                                                                kfVar.getClass();
                                                                                                kf.a(linkedHashMap, str20, adapterVersionData, keVarA, jA);
                                                                                                ieVar3 = ieVar3;
                                                                                                str = str28;
                                                                                                it = it2;
                                                                                            }
                                                                                        }
                                                                                        ie ieVar6 = ieVar3;
                                                                                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                                                                        mutex6.unlock(null);
                                                                                        ieVar = ieVar6;
                                                                                        linkedHashSet = set3;
                                                                                        r15 = obj8;
                                                                                        hfVar8 = hfVar4;
                                                                                        r10 = r18;
                                                                                    } catch (Throwable th) {
                                                                                        mutex6.unlock(null);
                                                                                        throw th;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } catch (Throwable th2) {
                                                                            mutex4.unlock(null);
                                                                            throw th2;
                                                                        }
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        closeable5 = closeable4;
                                                                        r7 = closeable5;
                                                                        r6 = rr3Var5;
                                                                        try {
                                                                            r6.b(th);
                                                                            if (th instanceof v24) {
                                                                                throw th;
                                                                            }
                                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                                r6.a(th);
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
                                                                        } catch (Throwable th4) {
                                                                            try {
                                                                                throw th4;
                                                                            } catch (Throwable th5) {
                                                                                CloseableKt.closeFinally(r7, th4);
                                                                                throw th5;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                m21Var = o21.f;
                                                                j2 = longRef.element;
                                                                veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                                                teVar.a = hfVar8;
                                                                teVar.b = obj4;
                                                                teVar.c = rr3Var4;
                                                                teVar.d = closeable3;
                                                                teVar.e = ieVar;
                                                                teVar.f = longRef;
                                                                teVar.g = linkedHashSet;
                                                                teVar.h = null;
                                                                teVar.i = null;
                                                                teVar.j = null;
                                                                teVar.m = 4;
                                                                if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                                                    hfVar4 = hfVar8;
                                                                    set2 = linkedHashSet;
                                                                    obj7 = obj4;
                                                                    closeable6 = closeable3;
                                                                    rr3Var6 = rr3Var4;
                                                                    mutex5 = hfVar4.l;
                                                                    teVar.a = hfVar4;
                                                                    teVar.b = obj7;
                                                                    teVar.c = rr3Var6;
                                                                    teVar.d = closeable6;
                                                                    teVar.e = ieVar;
                                                                    teVar.f = longRef;
                                                                    teVar.g = set2;
                                                                    teVar.h = mutex5;
                                                                    teVar.m = 5;
                                                                    if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                                        Set set7 = set2;
                                                                        mutex6 = mutex5;
                                                                        set3 = set7;
                                                                        ieVar3 = ieVar;
                                                                        r18 = closeable6;
                                                                        r19 = rr3Var6;
                                                                        obj8 = obj7;
                                                                        it = set3.iterator();
                                                                        while (it.hasNext()) {
                                                                            str20 = (String) it.next();
                                                                            ydVar = (yd) hfVar4.m.get(str20);
                                                                            if (ydVar == null) {
                                                                                kf kfVar2 = hfVar4.e;
                                                                                LinkedHashMap linkedHashMap2 = hfVar4.m;
                                                                                AdapterVersionData adapterVersionData2 = ydVar.b;
                                                                                Iterator it3 = it;
                                                                                String str29 = str;
                                                                                ke keVarA2 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str29, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                                                long jA2 = hfVar4.a();
                                                                                kfVar2.getClass();
                                                                                kf.a(linkedHashMap2, str20, adapterVersionData2, keVarA2, jA2);
                                                                                ieVar3 = ieVar3;
                                                                                str = str29;
                                                                                it = it3;
                                                                            }
                                                                        }
                                                                        ie ieVar7 = ieVar3;
                                                                        p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                                                        mutex6.unlock(null);
                                                                        ieVar = ieVar7;
                                                                        linkedHashSet = set3;
                                                                        r15 = obj8;
                                                                        hfVar8 = hfVar4;
                                                                        r10 = r18;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            str18 = str16;
                                                            str19 = str15;
                                                            str17 = str14;
                                                            r10 = closeable3;
                                                            r15 = obj4;
                                                        }
                                                        uj2 uj2VarE = hs3.a().e();
                                                        vz0.a aVarU = ieVar.u();
                                                        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
                                                        he builder3 = (he) aVarU;
                                                        Intrinsics.checkNotNullParameter(builder3, "builder");
                                                        List listL = builder3.l();
                                                        Intrinsics.checkNotNullExpressionValue(listL, "getInitializedAdapterClassesList(...)");
                                                        Intrinsics.checkNotNullParameter(new lo0(listL), str19);
                                                        Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                                        builder3.d(linkedHashSet);
                                                        unit = p005kotlin.Unit.INSTANCE;
                                                        vz0 vz0VarB2 = builder3.b();
                                                        Intrinsics.checkNotNullExpressionValue(vz0VarB2, str18);
                                                        uj2VarE.K = (ie) vz0VarB2;
                                                        if (r15 != 0) {
                                                            m21 m21Var3 = o21.f;
                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                                        } else {
                                                            unit = null;
                                                        }
                                                        if (unit instanceof i01) {
                                                            xs3.a((i01) unit, false);
                                                        }
                                                        CloseableKt.closeFinally(r10, null);
                                                        return unit;
                                                    }
                                                    mutex3 = hfVar8.u;
                                                    teVar.a = hfVar8;
                                                    teVar.b = adapterInitializationConfig9;
                                                    teVar.c = obj;
                                                    teVar.d = rr3Var2;
                                                    teVar.e = closeable;
                                                    teVar.f = booleanRef2;
                                                    teVar.g = mutex3;
                                                    teVar.m = 2;
                                                    obj2 = null;
                                                    if (mutex3.lock(null, teVar) != coroutine_suspended) {
                                                        obj3 = obj;
                                                        closeable2 = closeable;
                                                        rr3Var3 = rr3Var2;
                                                        obj3 = obj;
                                                        closeable2 = closeable;
                                                        rr3Var3 = rr3Var2;
                                                        AdapterInitializationConfig adapterInitializationConfig10 = adapterInitializationConfig9;
                                                        hfVar2 = hfVar8;
                                                        adapterInitializationConfig3 = adapterInitializationConfig10;
                                                        obj6 = obj;
                                                        closeable = closeable;
                                                        rr3Var2 = rr3Var2;
                                                        try {
                                                            zIsEmpty = hfVar2.v.isEmpty();
                                                            mutex3.unlock(obj2);
                                                            if (zIsEmpty) {
                                                                f01.c("No AdapterInitializationConfig was provided when calling MobileAds.initialize, so all adapters were already initialized. Future calls to MobileAds.initializeAdapters will have no effect.", null);
                                                            }
                                                            hf hfVar9 = hfVar2;
                                                            adapterInitializationConfig9 = adapterInitializationConfig3;
                                                            hfVar8 = hfVar9;
                                                            obj3 = obj6;
                                                            closeable2 = closeable;
                                                            rr3Var3 = rr3Var2;
                                                            obj3 = obj;
                                                            closeable2 = closeable;
                                                            rr3Var3 = rr3Var2;
                                                            obj3 = obj;
                                                            closeable2 = closeable;
                                                            rr3Var3 = rr3Var2;
                                                            obj3 = obj;
                                                            closeable2 = closeable;
                                                            rr3Var3 = rr3Var2;
                                                            rr3Var4 = rr3Var3;
                                                            obj4 = obj3;
                                                            booleanRef3 = booleanRef2;
                                                            closeable3 = closeable2;
                                                            builder = ie.v();
                                                            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                                                            Intrinsics.checkNotNullParameter(builder, "builder");
                                                            if (adapterInitializationConfig9 != null) {
                                                                builder.a(adapterInitializationConfig9.getInitializationTimeoutMs());
                                                                List listH2 = builder.h();
                                                                Intrinsics.checkNotNullExpressionValue(listH2, str13);
                                                                lo0 lo0Var5 = new lo0(listH2);
                                                                Set<String> allowedAdUnitIds2 = adapterInitializationConfig9.getAllowedAdUnitIds();
                                                                str15 = str7;
                                                                Intrinsics.checkNotNullParameter(lo0Var5, str15);
                                                                str14 = str6;
                                                                Intrinsics.checkNotNullParameter(allowedAdUnitIds2, str14);
                                                                builder.a(allowedAdUnitIds2);
                                                                List listJ2 = builder.j();
                                                                Intrinsics.checkNotNullExpressionValue(listJ2, str5);
                                                                lo0 lo0Var6 = new lo0(listJ2);
                                                                Set<AdFormat> allowedAdFormats2 = adapterInitializationConfig9.getAllowedAdFormats();
                                                                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats2, 10));
                                                                while (r10.hasNext()) {
                                                                    Intrinsics.checkNotNullParameter(adFormat, str15);
                                                                    switch (je.a[adFormat.ordinal()]) {
                                                                        case 1:
                                                                            t11Var = t11.FORMAT_APP_OPEN;
                                                                            break;
                                                                        case 2:
                                                                            t11Var = t11.FORMAT_BANNER;
                                                                            break;
                                                                        case 3:
                                                                            t11Var = t11.FORMAT_ICON;
                                                                            break;
                                                                        case 4:
                                                                            t11Var = t11.FORMAT_INTERSTITIAL;
                                                                            break;
                                                                        case 5:
                                                                            t11Var = t11.FORMAT_NATIVE;
                                                                            break;
                                                                        case 6:
                                                                            t11Var = t11.FORMAT_REWARDED;
                                                                            break;
                                                                        case 7:
                                                                            t11Var = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                                            break;
                                                                        case 8:
                                                                            t11Var = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                                            break;
                                                                        default:
                                                                            throw new p005kotlin.NoWhenBranchMatchedException();
                                                                    }
                                                                    arrayList.add(t11Var);
                                                                }
                                                                Intrinsics.checkNotNullParameter(lo0Var6, str15);
                                                                Intrinsics.checkNotNullParameter(arrayList, str14);
                                                                builder.a(arrayList);
                                                                List listI2 = builder.i();
                                                                Intrinsics.checkNotNullExpressionValue(listI2, str4);
                                                                lo0 lo0Var7 = new lo0(listI2);
                                                                Set<String> allowedAdapterClasses2 = adapterInitializationConfig9.getAllowedAdapterClasses();
                                                                Intrinsics.checkNotNullParameter(lo0Var7, str15);
                                                                Intrinsics.checkNotNullParameter(allowedAdapterClasses2, str14);
                                                                builder.b(allowedAdapterClasses2);
                                                                List listK2 = builder.k();
                                                                Intrinsics.checkNotNullExpressionValue(listK2, str3);
                                                                lo0 lo0Var8 = new lo0(listK2);
                                                                Set<String> excludedAdapterClasses2 = adapterInitializationConfig9.getExcludedAdapterClasses();
                                                                Intrinsics.checkNotNullParameter(lo0Var8, str15);
                                                                Intrinsics.checkNotNullParameter(excludedAdapterClasses2, str14);
                                                                builder.c(excludedAdapterClasses2);
                                                                p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                                            } else {
                                                                str14 = str6;
                                                                str15 = str7;
                                                            }
                                                            vz0 vz0VarB3 = builder.b();
                                                            str16 = str2;
                                                            Intrinsics.checkNotNullExpressionValue(vz0VarB3, str16);
                                                            ieVar = (ie) vz0VarB3;
                                                            hs3.a().e().K = ieVar;
                                                            linkedHashSet = new LinkedHashSet();
                                                            if (booleanRef3.element) {
                                                            }
                                                            longRef = new Ref.LongRef();
                                                            if (adapterInitializationConfig9 != null) {
                                                                jP = adapterInitializationConfig9.getA();
                                                            } else {
                                                                jP = hfVar8.i.p();
                                                            }
                                                            str17 = str14;
                                                            j = jP;
                                                            longRef.element = j;
                                                            str18 = str16;
                                                            str19 = str15;
                                                            if (Duration.m4366compareToLRDsOJo(j, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                                                longRef.element = hfVar8.i.p();
                                                            }
                                                            if (adapterInitializationConfig9 != null) {
                                                                mutex4 = hfVar8.u;
                                                                teVar.a = hfVar8;
                                                                teVar.b = adapterInitializationConfig9;
                                                                teVar.c = obj4;
                                                                teVar.d = rr3Var4;
                                                                teVar.e = closeable3;
                                                                teVar.f = ieVar;
                                                                teVar.g = longRef;
                                                                teVar.h = linkedHashSet;
                                                                teVar.i = adapterInitializationConfig9;
                                                                teVar.j = mutex4;
                                                                teVar.m = 3;
                                                                obj5 = null;
                                                                if (mutex4.lock(null, teVar) != coroutine_suspended) {
                                                                    adapterInitializationConfig4 = adapterInitializationConfig9;
                                                                    rr3Var5 = rr3Var4;
                                                                    hfVar3 = hfVar8;
                                                                    adapterInitializationConfig5 = adapterInitializationConfig4;
                                                                    ieVar2 = ieVar;
                                                                    closeable4 = closeable3;
                                                                    longRef2 = longRef;
                                                                    set = linkedHashSet;
                                                                    obj4 = obj4;
                                                                    boolean zAdd2 = hfVar3.v.add(adapterInitializationConfig5);
                                                                    mutex4.unlock(obj5);
                                                                    Boxing.boxBoolean(zAdd2);
                                                                    hfVar8 = hfVar3;
                                                                    linkedHashSet = set;
                                                                    longRef = longRef2;
                                                                    adapterInitializationConfig9 = adapterInitializationConfig4;
                                                                    closeable3 = closeable4;
                                                                    ieVar = ieVar2;
                                                                    rr3Var4 = rr3Var5;
                                                                    m21Var = o21.f;
                                                                    j2 = longRef.element;
                                                                    veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                                                    teVar.a = hfVar8;
                                                                    teVar.b = obj4;
                                                                    teVar.c = rr3Var4;
                                                                    teVar.d = closeable3;
                                                                    teVar.e = ieVar;
                                                                    teVar.f = longRef;
                                                                    teVar.g = linkedHashSet;
                                                                    teVar.h = null;
                                                                    teVar.i = null;
                                                                    teVar.j = null;
                                                                    teVar.m = 4;
                                                                    if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                                                        hfVar4 = hfVar8;
                                                                        set2 = linkedHashSet;
                                                                        obj7 = obj4;
                                                                        closeable6 = closeable3;
                                                                        rr3Var6 = rr3Var4;
                                                                        mutex5 = hfVar4.l;
                                                                        teVar.a = hfVar4;
                                                                        teVar.b = obj7;
                                                                        teVar.c = rr3Var6;
                                                                        teVar.d = closeable6;
                                                                        teVar.e = ieVar;
                                                                        teVar.f = longRef;
                                                                        teVar.g = set2;
                                                                        teVar.h = mutex5;
                                                                        teVar.m = 5;
                                                                        if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                                            Set set8 = set2;
                                                                            mutex6 = mutex5;
                                                                            set3 = set8;
                                                                            ieVar3 = ieVar;
                                                                            r18 = closeable6;
                                                                            r19 = rr3Var6;
                                                                            obj8 = obj7;
                                                                            it = set3.iterator();
                                                                            while (it.hasNext()) {
                                                                                str20 = (String) it.next();
                                                                                ydVar = (yd) hfVar4.m.get(str20);
                                                                                if (ydVar == null) {
                                                                                    kf kfVar3 = hfVar4.e;
                                                                                    LinkedHashMap linkedHashMap3 = hfVar4.m;
                                                                                    AdapterVersionData adapterVersionData3 = ydVar.b;
                                                                                    Iterator it4 = it;
                                                                                    String str210 = str;
                                                                                    ke keVarA3 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str210, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                                                    long jA3 = hfVar4.a();
                                                                                    kfVar3.getClass();
                                                                                    kf.a(linkedHashMap3, str20, adapterVersionData3, keVarA3, jA3);
                                                                                    ieVar3 = ieVar3;
                                                                                    str = str210;
                                                                                    it = it4;
                                                                                }
                                                                            }
                                                                            ie ieVar8 = ieVar3;
                                                                            p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                                                            mutex6.unlock(null);
                                                                            ieVar = ieVar8;
                                                                            linkedHashSet = set3;
                                                                            r15 = obj8;
                                                                            hfVar8 = hfVar4;
                                                                            r10 = r18;
                                                                            uj2 uj2VarE2 = hs3.a().e();
                                                                            vz0.a aVarU2 = ieVar.u();
                                                                            Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
                                                                            he builder4 = (he) aVarU2;
                                                                            Intrinsics.checkNotNullParameter(builder4, "builder");
                                                                            List listL2 = builder4.l();
                                                                            Intrinsics.checkNotNullExpressionValue(listL2, "getInitializedAdapterClassesList(...)");
                                                                            Intrinsics.checkNotNullParameter(new lo0(listL2), str19);
                                                                            Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                                                            builder4.d(linkedHashSet);
                                                                            unit = p005kotlin.Unit.INSTANCE;
                                                                            vz0 vz0VarB4 = builder4.b();
                                                                            Intrinsics.checkNotNullExpressionValue(vz0VarB4, str18);
                                                                            uj2VarE2.K = (ie) vz0VarB4;
                                                                            if (r15 != 0) {
                                                                                m21 m21Var4 = o21.f;
                                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                                                            } else {
                                                                                unit = null;
                                                                            }
                                                                            if (unit instanceof i01) {
                                                                                xs3.a((i01) unit, false);
                                                                            }
                                                                            CloseableKt.closeFinally(r10, null);
                                                                            return unit;
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                m21Var = o21.f;
                                                                j2 = longRef.element;
                                                                veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                                                teVar.a = hfVar8;
                                                                teVar.b = obj4;
                                                                teVar.c = rr3Var4;
                                                                teVar.d = closeable3;
                                                                teVar.e = ieVar;
                                                                teVar.f = longRef;
                                                                teVar.g = linkedHashSet;
                                                                teVar.h = null;
                                                                teVar.i = null;
                                                                teVar.j = null;
                                                                teVar.m = 4;
                                                                if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                                                    hfVar4 = hfVar8;
                                                                    set2 = linkedHashSet;
                                                                    obj7 = obj4;
                                                                    closeable6 = closeable3;
                                                                    rr3Var6 = rr3Var4;
                                                                    mutex5 = hfVar4.l;
                                                                    teVar.a = hfVar4;
                                                                    teVar.b = obj7;
                                                                    teVar.c = rr3Var6;
                                                                    teVar.d = closeable6;
                                                                    teVar.e = ieVar;
                                                                    teVar.f = longRef;
                                                                    teVar.g = set2;
                                                                    teVar.h = mutex5;
                                                                    teVar.m = 5;
                                                                    if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                                        Set set9 = set2;
                                                                        mutex6 = mutex5;
                                                                        set3 = set9;
                                                                        ieVar3 = ieVar;
                                                                        r18 = closeable6;
                                                                        r19 = rr3Var6;
                                                                        obj8 = obj7;
                                                                        it = set3.iterator();
                                                                        while (it.hasNext()) {
                                                                            str20 = (String) it.next();
                                                                            ydVar = (yd) hfVar4.m.get(str20);
                                                                            if (ydVar == null) {
                                                                                kf kfVar4 = hfVar4.e;
                                                                                LinkedHashMap linkedHashMap4 = hfVar4.m;
                                                                                AdapterVersionData adapterVersionData4 = ydVar.b;
                                                                                Iterator it5 = it;
                                                                                String str211 = str;
                                                                                ke keVarA4 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str211, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                                                long jA4 = hfVar4.a();
                                                                                kfVar4.getClass();
                                                                                kf.a(linkedHashMap4, str20, adapterVersionData4, keVarA4, jA4);
                                                                                ieVar3 = ieVar3;
                                                                                str = str211;
                                                                                it = it5;
                                                                            }
                                                                        }
                                                                        ie ieVar9 = ieVar3;
                                                                        p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                                                        mutex6.unlock(null);
                                                                        ieVar = ieVar9;
                                                                        linkedHashSet = set3;
                                                                        r15 = obj8;
                                                                        hfVar8 = hfVar4;
                                                                        r10 = r18;
                                                                        uj2 uj2VarE3 = hs3.a().e();
                                                                        vz0.a aVarU3 = ieVar.u();
                                                                        Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
                                                                        he builder5 = (he) aVarU3;
                                                                        Intrinsics.checkNotNullParameter(builder5, "builder");
                                                                        List listL3 = builder5.l();
                                                                        Intrinsics.checkNotNullExpressionValue(listL3, "getInitializedAdapterClassesList(...)");
                                                                        Intrinsics.checkNotNullParameter(new lo0(listL3), str19);
                                                                        Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                                                        builder5.d(linkedHashSet);
                                                                        unit = p005kotlin.Unit.INSTANCE;
                                                                        vz0 vz0VarB5 = builder5.b();
                                                                        Intrinsics.checkNotNullExpressionValue(vz0VarB5, str18);
                                                                        uj2VarE3.K = (ie) vz0VarB5;
                                                                        if (r15 != 0) {
                                                                            m21 m21Var5 = o21.f;
                                                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                                                        } else {
                                                                            unit = null;
                                                                        }
                                                                        if (unit instanceof i01) {
                                                                            xs3.a((i01) unit, false);
                                                                        }
                                                                        CloseableKt.closeFinally(r10, null);
                                                                        return unit;
                                                                    }
                                                                }
                                                            }
                                                        } catch (Throwable th6) {
                                                            mutex3.unlock(null);
                                                            throw th6;
                                                        }
                                                    }
                                                } catch (Throwable th7) {
                                                    mutex2.unlock(null);
                                                    throw th7;
                                                }
                                            } catch (Throwable th8) {
                                                th = th8;
                                                r18 = closeable;
                                                r14 = rr3Var2;
                                                r19 = r14;
                                                r6 = r19;
                                                r7 = r18;
                                                r6.b(th);
                                                if (th instanceof v24) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    r6.a(th);
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
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        r7 = tu2VarA;
                                        r6 = tu2VarA;
                                        r6.b(th);
                                        if (th instanceof v24) {
                                            throw th;
                                        }
                                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                            r6.a(th);
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
                                } else {
                                    r9 = str4;
                                    str8 = str5;
                                    str9 = str6;
                                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                                    try {
                                        booleanRef = new Ref.BooleanRef();
                                        mutex = hfVar8.l;
                                        teVar.a = hfVar8;
                                        teVar.b = adapterInitializationConfig9;
                                        teVar.c = obj12;
                                        teVar.d = rr3VarA;
                                        teVar.e = rr3VarA;
                                        teVar.f = booleanRef;
                                        teVar.g = mutex;
                                        teVar.m = 6;
                                        if (mutex.lock(null, teVar) != coroutine_suspended) {
                                            adapterInitializationConfig2 = adapterInitializationConfig;
                                            onAdapterInitializationCompleteListener2 = onAdapterInitializationCompleteListener;
                                            str10 = str3;
                                            str11 = str7;
                                            str12 = "getAllowedAdUnitsList(...)";
                                            rr3Var = rr3VarA;
                                            closeable7 = rr3VarA;
                                            try {
                                                try {
                                                    str21 = str8;
                                                    str22 = "newBuilder(...)";
                                                    if (Duration.m4372equalsimpl0(hfVar8.o, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                                        booleanRef.element = true;
                                                        hfVar8.h.getClass();
                                                        hfVar8.o = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
                                                    }
                                                    p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                                                    mutex.unlock(null);
                                                    if (booleanRef.element && (initializationConfigA3 = hfVar8.k.a()) != null && initializationConfigA3.getMediationAdapterInitializationDisabled()) {
                                                        mutex7 = hfVar8.u;
                                                        try {
                                                            teVar.a = hfVar8;
                                                            teVar.b = adapterInitializationConfig2;
                                                            teVar.c = onAdapterInitializationCompleteListener2;
                                                            teVar.d = rr3Var;
                                                            teVar.e = closeable7;
                                                            teVar.f = booleanRef;
                                                            teVar.g = mutex7;
                                                            teVar.m = 7;
                                                            obj9 = null;
                                                            if (mutex7.lock(null, teVar) != coroutine_suspended) {
                                                                AdapterInitializationConfig adapterInitializationConfig11 = adapterInitializationConfig2;
                                                                hfVar5 = hfVar8;
                                                                adapterInitializationConfig6 = adapterInitializationConfig11;
                                                                r110 = rr3Var;
                                                                closeable8 = closeable7;
                                                                r13 = r9;
                                                                try {
                                                                    try {
                                                                        zIsEmpty2 = hfVar5.v.isEmpty();
                                                                        mutex7.unlock(obj9);
                                                                        if (zIsEmpty2) {
                                                                            f01.c("No AdapterInitializationConfig was provided when calling MobileAds.initialize, so all adapters were already initialized. Future calls to MobileAds.initializeAdapters will have no effect.", null);
                                                                        }
                                                                        hf hfVar10 = hfVar5;
                                                                        adapterInitializationConfig2 = adapterInitializationConfig6;
                                                                        hfVar8 = hfVar10;
                                                                        closeable8 = closeable8;
                                                                        r11 = r13;
                                                                        r110 = r110;
                                                                    } catch (Throwable th10) {
                                                                        mutex7.unlock(null);
                                                                        throw th10;
                                                                    }
                                                                } catch (Throwable th11) {
                                                                    th = th11;
                                                                    obj12 = closeable8;
                                                                    r8 = r110;
                                                                    r2 = obj12;
                                                                    try {
                                                                        r8.b(th);
                                                                        if (!(th instanceof v24)) {
                                                                            throw th;
                                                                        }
                                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                                            r8.a(th);
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
                                                                    } catch (Throwable th12) {
                                                                        try {
                                                                            throw th12;
                                                                        } catch (Throwable th13) {
                                                                            CloseableKt.closeFinally(r2, th12);
                                                                            throw th13;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } catch (Throwable th14) {
                                                            th = th14;
                                                            r2 = closeable7;
                                                            r8 = rr3Var;
                                                            r8.b(th);
                                                            if (!(th instanceof v24)) {
                                                                throw th;
                                                            }
                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                r8.a(th);
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
                                                        r110 = rr3Var;
                                                        closeable8 = closeable7;
                                                        r11 = r9;
                                                    }
                                                    onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener2;
                                                    try {
                                                        builder2 = ie.v();
                                                        Intrinsics.checkNotNullExpressionValue(builder2, str22);
                                                        Intrinsics.checkNotNullParameter(builder2, "builder");
                                                        if (adapterInitializationConfig2 != null) {
                                                            builder2.a(adapterInitializationConfig2.getInitializationTimeoutMs());
                                                            List listH3 = builder2.h();
                                                            Intrinsics.checkNotNullExpressionValue(listH3, str12);
                                                            lo0 lo0Var9 = new lo0(listH3);
                                                            Set<String> allowedAdUnitIds3 = adapterInitializationConfig2.getAllowedAdUnitIds();
                                                            str23 = str11;
                                                            Intrinsics.checkNotNullParameter(lo0Var9, str23);
                                                            Intrinsics.checkNotNullParameter(allowedAdUnitIds3, str9);
                                                            builder2.a(allowedAdUnitIds3);
                                                            List listJ3 = builder2.j();
                                                            Intrinsics.checkNotNullExpressionValue(listJ3, str21);
                                                            lo0 lo0Var10 = new lo0(listJ3);
                                                            Set<AdFormat> allowedAdFormats3 = adapterInitializationConfig2.getAllowedAdFormats();
                                                            arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats3, 10));
                                                            for (AdFormat adFormat2 : allowedAdFormats3) {
                                                                Intrinsics.checkNotNullParameter(adFormat2, str23);
                                                                switch (je.a[adFormat2.ordinal()]) {
                                                                    case 1:
                                                                        t11Var2 = t11.FORMAT_APP_OPEN;
                                                                        break;
                                                                    case 2:
                                                                        t11Var2 = t11.FORMAT_BANNER;
                                                                        break;
                                                                    case 3:
                                                                        t11Var2 = t11.FORMAT_ICON;
                                                                        break;
                                                                    case 4:
                                                                        t11Var2 = t11.FORMAT_INTERSTITIAL;
                                                                        break;
                                                                    case 5:
                                                                        t11Var2 = t11.FORMAT_NATIVE;
                                                                        break;
                                                                    case 6:
                                                                        t11Var2 = t11.FORMAT_REWARDED;
                                                                        break;
                                                                    case 7:
                                                                        t11Var2 = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                                        break;
                                                                    case 8:
                                                                        t11Var2 = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                                        break;
                                                                    default:
                                                                        throw new p005kotlin.NoWhenBranchMatchedException();
                                                                }
                                                                arrayList2.add(t11Var2);
                                                            }
                                                            Intrinsics.checkNotNullParameter(lo0Var10, str23);
                                                            Intrinsics.checkNotNullParameter(arrayList2, str9);
                                                            builder2.a(arrayList2);
                                                            List listI3 = builder2.i();
                                                            Intrinsics.checkNotNullExpressionValue(listI3, r11);
                                                            lo0 lo0Var11 = new lo0(listI3);
                                                            Set<String> allowedAdapterClasses3 = adapterInitializationConfig2.getAllowedAdapterClasses();
                                                            Intrinsics.checkNotNullParameter(lo0Var11, str23);
                                                            Intrinsics.checkNotNullParameter(allowedAdapterClasses3, str9);
                                                            builder2.b(allowedAdapterClasses3);
                                                            List listK3 = builder2.k();
                                                            Intrinsics.checkNotNullExpressionValue(listK3, str10);
                                                            lo0 lo0Var12 = new lo0(listK3);
                                                            Set<String> excludedAdapterClasses3 = adapterInitializationConfig2.getExcludedAdapterClasses();
                                                            Intrinsics.checkNotNullParameter(lo0Var12, str23);
                                                            Intrinsics.checkNotNullParameter(excludedAdapterClasses3, str9);
                                                            builder2.c(excludedAdapterClasses3);
                                                            p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                                                        } else {
                                                            str23 = str11;
                                                        }
                                                        vz0 vz0VarB6 = builder2.b();
                                                        str24 = str2;
                                                        Intrinsics.checkNotNullExpressionValue(vz0VarB6, str24);
                                                        ieVar4 = (ie) vz0VarB6;
                                                        hs3.a().e().K = ieVar4;
                                                        linkedHashSet2 = new LinkedHashSet();
                                                        if (booleanRef.element || (initializationConfigA4 = hfVar8.k.a()) == null || !initializationConfigA4.getMediationAdapterInitializationDisabled()) {
                                                            longRef3 = new Ref.LongRef();
                                                            if (adapterInitializationConfig2 != null) {
                                                                jP2 = adapterInitializationConfig2.getA();
                                                            } else {
                                                                jP2 = hfVar8.i.p();
                                                            }
                                                            str25 = str9;
                                                            j3 = jP2;
                                                            longRef3.element = j3;
                                                            str26 = str23;
                                                            if (Duration.m4366compareToLRDsOJo(j3, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                                                longRef3.element = hfVar8.i.p();
                                                            }
                                                            if (adapterInitializationConfig2 != null) {
                                                                mutex8 = hfVar8.u;
                                                                teVar.a = hfVar8;
                                                                teVar.b = adapterInitializationConfig2;
                                                                teVar.c = onAdapterInitializationCompleteListener3;
                                                                teVar.d = r110;
                                                                teVar.e = closeable8;
                                                                teVar.f = ieVar4;
                                                                teVar.g = longRef3;
                                                                teVar.h = linkedHashSet2;
                                                                teVar.i = adapterInitializationConfig2;
                                                                teVar.j = mutex8;
                                                                teVar.m = 8;
                                                                obj11 = null;
                                                                obj10 = coroutine_suspended;
                                                                if (mutex8.lock(null, teVar) == obj10) {
                                                                    return obj10;
                                                                }
                                                                closeable9 = closeable8;
                                                                r12 = r110;
                                                                adapterInitializationConfig7 = adapterInitializationConfig2;
                                                                hfVar6 = hfVar8;
                                                                adapterInitializationConfig8 = adapterInitializationConfig7;
                                                                try {
                                                                    boolean zAdd3 = hfVar6.v.add(adapterInitializationConfig8);
                                                                    mutex8.unlock(obj11);
                                                                    Boxing.boxBoolean(zAdd3);
                                                                    hfVar8 = hfVar6;
                                                                    ieVar5 = ieVar4;
                                                                    closeable10 = closeable9;
                                                                    r19 = r12;
                                                                    adapterInitializationConfig2 = adapterInitializationConfig7;
                                                                } catch (Throwable th15) {
                                                                    mutex8.unlock(null);
                                                                    throw th15;
                                                                }
                                                            } else {
                                                                obj10 = coroutine_suspended;
                                                                ieVar5 = ieVar4;
                                                                r19 = r110;
                                                                closeable10 = closeable8;
                                                            }
                                                            try {
                                                                m21Var2 = o21.f;
                                                                j4 = longRef3.element;
                                                                veVar2 = new ve(hfVar8, adapterInitializationConfig2, linkedHashSet2, null);
                                                                teVar.a = hfVar8;
                                                                teVar.b = onAdapterInitializationCompleteListener3;
                                                                teVar.c = r19;
                                                                teVar.d = closeable10;
                                                                teVar.e = ieVar5;
                                                                teVar.f = longRef3;
                                                                teVar.g = linkedHashSet2;
                                                                teVar.h = null;
                                                                teVar.i = null;
                                                                teVar.j = null;
                                                                teVar.m = 9;
                                                                if (m21Var2.a(j4, veVar2, teVar) == obj10) {
                                                                    return obj10;
                                                                }
                                                                hfVar7 = hfVar8;
                                                                set4 = linkedHashSet2;
                                                                longRef4 = longRef3;
                                                                onAdapterInitializationCompleteListener4 = onAdapterInitializationCompleteListener3;
                                                                closeable11 = closeable10;
                                                                r16 = r19;
                                                                mutex9 = hfVar7.l;
                                                                teVar.a = hfVar7;
                                                                teVar.b = onAdapterInitializationCompleteListener4;
                                                                teVar.c = r16;
                                                                teVar.d = closeable11;
                                                                teVar.e = ieVar5;
                                                                teVar.f = longRef4;
                                                                teVar.g = set4;
                                                                teVar.h = mutex9;
                                                                teVar.m = 10;
                                                                if (mutex9.lock(null, teVar) == obj10) {
                                                                    return obj10;
                                                                }
                                                                Set set10 = set4;
                                                                mutex10 = mutex9;
                                                                set5 = set10;
                                                                r18 = closeable11;
                                                                r19 = r16;
                                                                try {
                                                                    for (String str30 : set5) {
                                                                        ydVar2 = (yd) hfVar7.m.get(str30);
                                                                        if (ydVar2 != null && CollectionsKt.listOf((Object[]) new AdapterStatus.InitializationState[]{AdapterStatus.InitializationState.NOT_STARTED, AdapterStatus.InitializationState.INITIALIZING}).contains(ydVar2.a.getInitializationState())) {
                                                                            kf kfVar5 = hfVar7.e;
                                                                            LinkedHashMap linkedHashMap5 = hfVar7.m;
                                                                            AdapterVersionData adapterVersionData5 = ydVar2.b;
                                                                            te teVar3 = teVar;
                                                                            String str31 = str;
                                                                            ke keVarA5 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str31, (int) Duration.m4378getInWholeMillisecondsimpl(longRef4.element));
                                                                            long jA5 = hfVar7.a();
                                                                            kfVar5.getClass();
                                                                            kf.a(linkedHashMap5, str30, adapterVersionData5, keVarA5, jA5);
                                                                            ieVar5 = ieVar5;
                                                                            str = str31;
                                                                            teVar = teVar3;
                                                                        }
                                                                    }
                                                                    ie ieVar10 = ieVar5;
                                                                    teVar2 = teVar;
                                                                    p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                                                    mutex10.unlock(null);
                                                                    linkedHashSet2 = set5;
                                                                    r17 = r19;
                                                                    onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener4;
                                                                    hfVar8 = hfVar7;
                                                                    ieVar4 = ieVar10;
                                                                    r18 = r18;
                                                                } catch (Throwable th16) {
                                                                    mutex10.unlock(null);
                                                                    throw th16;
                                                                }
                                                            } catch (Throwable th17) {
                                                                th = th17;
                                                                r18 = closeable10;
                                                                r2 = r18;
                                                                r8 = r19;
                                                                r8.b(th);
                                                                if (!(th instanceof v24)) {
                                                                    throw th;
                                                                }
                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                    r8.a(th);
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
                                                            teVar2 = teVar;
                                                            r18 = closeable8;
                                                            str25 = str9;
                                                            str26 = str23;
                                                            r17 = r110;
                                                        }
                                                        try {
                                                            uj2 uj2VarE4 = hs3.a().e();
                                                            vz0.a aVarU4 = ieVar4.u();
                                                            Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
                                                            he heVar = (he) aVarU4;
                                                            Intrinsics.checkNotNullParameter(heVar, str27);
                                                            List listL4 = heVar.l();
                                                            Intrinsics.checkNotNullExpressionValue(listL4, "getInitializedAdapterClassesList(...)");
                                                            Intrinsics.checkNotNullParameter(new lo0(listL4), str26);
                                                            Intrinsics.checkNotNullParameter(linkedHashSet2, str25);
                                                            heVar.d(linkedHashSet2);
                                                            unit2 = p005kotlin.Unit.INSTANCE;
                                                            vz0 vz0VarB7 = heVar.b();
                                                            Intrinsics.checkNotNullExpressionValue(vz0VarB7, str24);
                                                            uj2VarE4.K = (ie) vz0VarB7;
                                                            if (onAdapterInitializationCompleteListener3 != null) {
                                                                m21 m21Var6 = o21.f;
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar2.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, onAdapterInitializationCompleteListener3, hfVar8, linkedHashSet2), 3, null);
                                                            } else {
                                                                unit2 = null;
                                                            }
                                                            if (unit2 instanceof i01) {
                                                                xs3.a((i01) unit2, false);
                                                                break;
                                                            }
                                                            CloseableKt.closeFinally(r18, null);
                                                            return unit2;
                                                        } catch (Throwable th18) {
                                                            th = th18;
                                                            r19 = r17;
                                                            r2 = r18;
                                                            r8 = r19;
                                                            r8.b(th);
                                                            if (!(th instanceof v24)) {
                                                                throw th;
                                                            }
                                                            if (!(th instanceof TimeoutCancellationException)) {
                                                                r8.a(th);
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
                                                    } catch (Throwable th19) {
                                                        th = th19;
                                                        obj12 = closeable8;
                                                        r8 = r110;
                                                        r2 = obj12;
                                                        r8.b(th);
                                                        if (!(th instanceof v24)) {
                                                            throw th;
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                            r8.a(th);
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
                                                } catch (Throwable th20) {
                                                    mutex.unlock(null);
                                                    throw th20;
                                                }
                                            } catch (Throwable th21) {
                                                th = th21;
                                                obj12 = closeable7;
                                                r110 = rr3Var;
                                                r8 = r110;
                                                r2 = obj12;
                                                r8.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                    r8.a(th);
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
                                    } catch (Throwable th22) {
                                        th = th22;
                                        r2 = rr3VarA;
                                        r8 = rr3VarA;
                                        r8.b(th);
                                        if (!(th instanceof v24)) {
                                            throw th;
                                        }
                                        if (!(th instanceof TimeoutCancellationException)) {
                                            r8.a(th);
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
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                return coroutine_suspended;
                            case 1:
                                Mutex mutex11 = (Mutex) teVar.g;
                                Ref.BooleanRef booleanRef4 = (Ref.BooleanRef) teVar.f;
                                Closeable closeable12 = (Closeable) teVar.e;
                                rr3 rr3Var7 = (rr3) teVar.d;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener5 = (OnAdapterInitializationCompleteListener) teVar.c;
                                AdapterInitializationConfig adapterInitializationConfig12 = (AdapterInitializationConfig) teVar.b;
                                hf hfVar11 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                str6 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str3 = "getExcludedAdapterClassesList(...)";
                                str4 = "getAllowedAdapterClassesList(...)";
                                str = "Timeout.";
                                str5 = "getAllowedFormatsList(...)";
                                str7 = "<this>";
                                str2 = "build(...)";
                                booleanRef2 = booleanRef4;
                                mutex2 = mutex11;
                                hfVar8 = hfVar11;
                                closeable = closeable12;
                                obj = onAdapterInitializationCompleteListener5;
                                adapterInitializationConfig9 = adapterInitializationConfig12;
                                rr3Var2 = rr3Var7;
                                str13 = "getAllowedAdUnitsList(...)";
                                if (Duration.m4372equalsimpl0(hfVar8.o, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                    booleanRef2.element = true;
                                    hfVar8.h.getClass();
                                    hfVar8.o = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
                                }
                                p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                if (!booleanRef2.element) {
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    rr3Var4 = rr3Var3;
                                    obj4 = obj3;
                                    booleanRef3 = booleanRef2;
                                    closeable3 = closeable2;
                                    builder = ie.v();
                                    Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                                    Intrinsics.checkNotNullParameter(builder, "builder");
                                    if (adapterInitializationConfig9 != null) {
                                        builder.a(adapterInitializationConfig9.getInitializationTimeoutMs());
                                        List listH4 = builder.h();
                                        Intrinsics.checkNotNullExpressionValue(listH4, str13);
                                        lo0 lo0Var13 = new lo0(listH4);
                                        Set<String> allowedAdUnitIds4 = adapterInitializationConfig9.getAllowedAdUnitIds();
                                        str15 = str7;
                                        Intrinsics.checkNotNullParameter(lo0Var13, str15);
                                        str14 = str6;
                                        Intrinsics.checkNotNullParameter(allowedAdUnitIds4, str14);
                                        builder.a(allowedAdUnitIds4);
                                        List listJ4 = builder.j();
                                        Intrinsics.checkNotNullExpressionValue(listJ4, str5);
                                        lo0 lo0Var14 = new lo0(listJ4);
                                        Set<AdFormat> allowedAdFormats4 = adapterInitializationConfig9.getAllowedAdFormats();
                                        arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats4, 10));
                                        while (r10.hasNext()) {
                                            Intrinsics.checkNotNullParameter(adFormat, str15);
                                            switch (je.a[adFormat.ordinal()]) {
                                                case 1:
                                                    t11Var = t11.FORMAT_APP_OPEN;
                                                    break;
                                                case 2:
                                                    t11Var = t11.FORMAT_BANNER;
                                                    break;
                                                case 3:
                                                    t11Var = t11.FORMAT_ICON;
                                                    break;
                                                case 4:
                                                    t11Var = t11.FORMAT_INTERSTITIAL;
                                                    break;
                                                case 5:
                                                    t11Var = t11.FORMAT_NATIVE;
                                                    break;
                                                case 6:
                                                    t11Var = t11.FORMAT_REWARDED;
                                                    break;
                                                case 7:
                                                    t11Var = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                    break;
                                                case 8:
                                                    t11Var = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                    break;
                                                default:
                                                    throw new p005kotlin.NoWhenBranchMatchedException();
                                            }
                                            arrayList.add(t11Var);
                                        }
                                        Intrinsics.checkNotNullParameter(lo0Var14, str15);
                                        Intrinsics.checkNotNullParameter(arrayList, str14);
                                        builder.a(arrayList);
                                        List listI4 = builder.i();
                                        Intrinsics.checkNotNullExpressionValue(listI4, str4);
                                        lo0 lo0Var15 = new lo0(listI4);
                                        Set<String> allowedAdapterClasses4 = adapterInitializationConfig9.getAllowedAdapterClasses();
                                        Intrinsics.checkNotNullParameter(lo0Var15, str15);
                                        Intrinsics.checkNotNullParameter(allowedAdapterClasses4, str14);
                                        builder.b(allowedAdapterClasses4);
                                        List listK4 = builder.k();
                                        Intrinsics.checkNotNullExpressionValue(listK4, str3);
                                        lo0 lo0Var16 = new lo0(listK4);
                                        Set<String> excludedAdapterClasses4 = adapterInitializationConfig9.getExcludedAdapterClasses();
                                        Intrinsics.checkNotNullParameter(lo0Var16, str15);
                                        Intrinsics.checkNotNullParameter(excludedAdapterClasses4, str14);
                                        builder.c(excludedAdapterClasses4);
                                        p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                                    } else {
                                        str14 = str6;
                                        str15 = str7;
                                    }
                                    vz0 vz0VarB8 = builder.b();
                                    str16 = str2;
                                    Intrinsics.checkNotNullExpressionValue(vz0VarB8, str16);
                                    ieVar = (ie) vz0VarB8;
                                    hs3.a().e().K = ieVar;
                                    linkedHashSet = new LinkedHashSet();
                                    if (booleanRef3.element) {
                                        break;
                                    }
                                    longRef = new Ref.LongRef();
                                    if (adapterInitializationConfig9 != null) {
                                        jP = adapterInitializationConfig9.getA();
                                    } else {
                                        jP = hfVar8.i.p();
                                    }
                                    str17 = str14;
                                    j = jP;
                                    longRef.element = j;
                                    str18 = str16;
                                    str19 = str15;
                                    if (Duration.m4366compareToLRDsOJo(j, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                        longRef.element = hfVar8.i.p();
                                    }
                                    if (adapterInitializationConfig9 != null) {
                                        mutex4 = hfVar8.u;
                                        teVar.a = hfVar8;
                                        teVar.b = adapterInitializationConfig9;
                                        teVar.c = obj4;
                                        teVar.d = rr3Var4;
                                        teVar.e = closeable3;
                                        teVar.f = ieVar;
                                        teVar.g = longRef;
                                        teVar.h = linkedHashSet;
                                        teVar.i = adapterInitializationConfig9;
                                        teVar.j = mutex4;
                                        teVar.m = 3;
                                        obj5 = null;
                                        if (mutex4.lock(null, teVar) != coroutine_suspended) {
                                            adapterInitializationConfig4 = adapterInitializationConfig9;
                                            rr3Var5 = rr3Var4;
                                            hfVar3 = hfVar8;
                                            adapterInitializationConfig5 = adapterInitializationConfig4;
                                            ieVar2 = ieVar;
                                            closeable4 = closeable3;
                                            longRef2 = longRef;
                                            set = linkedHashSet;
                                            obj4 = obj4;
                                            boolean zAdd4 = hfVar3.v.add(adapterInitializationConfig5);
                                            mutex4.unlock(obj5);
                                            Boxing.boxBoolean(zAdd4);
                                            hfVar8 = hfVar3;
                                            linkedHashSet = set;
                                            longRef = longRef2;
                                            adapterInitializationConfig9 = adapterInitializationConfig4;
                                            closeable3 = closeable4;
                                            ieVar = ieVar2;
                                            rr3Var4 = rr3Var5;
                                            m21Var = o21.f;
                                            j2 = longRef.element;
                                            veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                            teVar.a = hfVar8;
                                            teVar.b = obj4;
                                            teVar.c = rr3Var4;
                                            teVar.d = closeable3;
                                            teVar.e = ieVar;
                                            teVar.f = longRef;
                                            teVar.g = linkedHashSet;
                                            teVar.h = null;
                                            teVar.i = null;
                                            teVar.j = null;
                                            teVar.m = 4;
                                            if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                                hfVar4 = hfVar8;
                                                set2 = linkedHashSet;
                                                obj7 = obj4;
                                                closeable6 = closeable3;
                                                rr3Var6 = rr3Var4;
                                                mutex5 = hfVar4.l;
                                                teVar.a = hfVar4;
                                                teVar.b = obj7;
                                                teVar.c = rr3Var6;
                                                teVar.d = closeable6;
                                                teVar.e = ieVar;
                                                teVar.f = longRef;
                                                teVar.g = set2;
                                                teVar.h = mutex5;
                                                teVar.m = 5;
                                                if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                    Set set11 = set2;
                                                    mutex6 = mutex5;
                                                    set3 = set11;
                                                    ieVar3 = ieVar;
                                                    r18 = closeable6;
                                                    r19 = rr3Var6;
                                                    obj8 = obj7;
                                                    it = set3.iterator();
                                                    while (it.hasNext()) {
                                                        str20 = (String) it.next();
                                                        ydVar = (yd) hfVar4.m.get(str20);
                                                        if (ydVar == null) {
                                                            kf kfVar6 = hfVar4.e;
                                                            LinkedHashMap linkedHashMap6 = hfVar4.m;
                                                            AdapterVersionData adapterVersionData6 = ydVar.b;
                                                            Iterator it6 = it;
                                                            String str212 = str;
                                                            ke keVarA6 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str212, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                            long jA6 = hfVar4.a();
                                                            kfVar6.getClass();
                                                            kf.a(linkedHashMap6, str20, adapterVersionData6, keVarA6, jA6);
                                                            ieVar3 = ieVar3;
                                                            str = str212;
                                                            it = it6;
                                                        }
                                                    }
                                                    ie ieVar11 = ieVar3;
                                                    p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                                                    mutex6.unlock(null);
                                                    ieVar = ieVar11;
                                                    linkedHashSet = set3;
                                                    r15 = obj8;
                                                    hfVar8 = hfVar4;
                                                    r10 = r18;
                                                }
                                            }
                                        }
                                    } else {
                                        m21Var = o21.f;
                                        j2 = longRef.element;
                                        veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                        teVar.a = hfVar8;
                                        teVar.b = obj4;
                                        teVar.c = rr3Var4;
                                        teVar.d = closeable3;
                                        teVar.e = ieVar;
                                        teVar.f = longRef;
                                        teVar.g = linkedHashSet;
                                        teVar.h = null;
                                        teVar.i = null;
                                        teVar.j = null;
                                        teVar.m = 4;
                                        if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                            hfVar4 = hfVar8;
                                            set2 = linkedHashSet;
                                            obj7 = obj4;
                                            closeable6 = closeable3;
                                            rr3Var6 = rr3Var4;
                                            mutex5 = hfVar4.l;
                                            teVar.a = hfVar4;
                                            teVar.b = obj7;
                                            teVar.c = rr3Var6;
                                            teVar.d = closeable6;
                                            teVar.e = ieVar;
                                            teVar.f = longRef;
                                            teVar.g = set2;
                                            teVar.h = mutex5;
                                            teVar.m = 5;
                                            if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                Set set12 = set2;
                                                mutex6 = mutex5;
                                                set3 = set12;
                                                ieVar3 = ieVar;
                                                r18 = closeable6;
                                                r19 = rr3Var6;
                                                obj8 = obj7;
                                                it = set3.iterator();
                                                while (it.hasNext()) {
                                                    str20 = (String) it.next();
                                                    ydVar = (yd) hfVar4.m.get(str20);
                                                    if (ydVar == null) {
                                                        kf kfVar7 = hfVar4.e;
                                                        LinkedHashMap linkedHashMap7 = hfVar4.m;
                                                        AdapterVersionData adapterVersionData7 = ydVar.b;
                                                        Iterator it7 = it;
                                                        String str213 = str;
                                                        ke keVarA7 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str213, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                        long jA7 = hfVar4.a();
                                                        kfVar7.getClass();
                                                        kf.a(linkedHashMap7, str20, adapterVersionData7, keVarA7, jA7);
                                                        ieVar3 = ieVar3;
                                                        str = str213;
                                                        it = it7;
                                                    }
                                                }
                                                ie ieVar12 = ieVar3;
                                                p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                                                mutex6.unlock(null);
                                                ieVar = ieVar12;
                                                linkedHashSet = set3;
                                                r15 = obj8;
                                                hfVar8 = hfVar4;
                                                r10 = r18;
                                            }
                                        }
                                    }
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    return coroutine_suspended;
                                }
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                rr3Var4 = rr3Var3;
                                obj4 = obj3;
                                booleanRef3 = booleanRef2;
                                closeable3 = closeable2;
                                builder = ie.v();
                                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                if (adapterInitializationConfig9 != null) {
                                    builder.a(adapterInitializationConfig9.getInitializationTimeoutMs());
                                    List listH5 = builder.h();
                                    Intrinsics.checkNotNullExpressionValue(listH5, str13);
                                    lo0 lo0Var17 = new lo0(listH5);
                                    Set<String> allowedAdUnitIds5 = adapterInitializationConfig9.getAllowedAdUnitIds();
                                    str15 = str7;
                                    Intrinsics.checkNotNullParameter(lo0Var17, str15);
                                    str14 = str6;
                                    Intrinsics.checkNotNullParameter(allowedAdUnitIds5, str14);
                                    builder.a(allowedAdUnitIds5);
                                    List listJ5 = builder.j();
                                    Intrinsics.checkNotNullExpressionValue(listJ5, str5);
                                    lo0 lo0Var18 = new lo0(listJ5);
                                    Set<AdFormat> allowedAdFormats5 = adapterInitializationConfig9.getAllowedAdFormats();
                                    arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats5, 10));
                                    while (r10.hasNext()) {
                                        Intrinsics.checkNotNullParameter(adFormat, str15);
                                        switch (je.a[adFormat.ordinal()]) {
                                            case 1:
                                                t11Var = t11.FORMAT_APP_OPEN;
                                                break;
                                            case 2:
                                                t11Var = t11.FORMAT_BANNER;
                                                break;
                                            case 3:
                                                t11Var = t11.FORMAT_ICON;
                                                break;
                                            case 4:
                                                t11Var = t11.FORMAT_INTERSTITIAL;
                                                break;
                                            case 5:
                                                t11Var = t11.FORMAT_NATIVE;
                                                break;
                                            case 6:
                                                t11Var = t11.FORMAT_REWARDED;
                                                break;
                                            case 7:
                                                t11Var = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                break;
                                            case 8:
                                                t11Var = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                break;
                                            default:
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                        }
                                        arrayList.add(t11Var);
                                    }
                                    Intrinsics.checkNotNullParameter(lo0Var18, str15);
                                    Intrinsics.checkNotNullParameter(arrayList, str14);
                                    builder.a(arrayList);
                                    List listI5 = builder.i();
                                    Intrinsics.checkNotNullExpressionValue(listI5, str4);
                                    lo0 lo0Var19 = new lo0(listI5);
                                    Set<String> allowedAdapterClasses5 = adapterInitializationConfig9.getAllowedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var19, str15);
                                    Intrinsics.checkNotNullParameter(allowedAdapterClasses5, str14);
                                    builder.b(allowedAdapterClasses5);
                                    List listK5 = builder.k();
                                    Intrinsics.checkNotNullExpressionValue(listK5, str3);
                                    lo0 lo0Var110 = new lo0(listK5);
                                    Set<String> excludedAdapterClasses5 = adapterInitializationConfig9.getExcludedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var110, str15);
                                    Intrinsics.checkNotNullParameter(excludedAdapterClasses5, str14);
                                    builder.c(excludedAdapterClasses5);
                                    p005kotlin.Unit unit17 = p005kotlin.Unit.INSTANCE;
                                } else {
                                    str14 = str6;
                                    str15 = str7;
                                }
                                vz0 vz0VarB9 = builder.b();
                                str16 = str2;
                                Intrinsics.checkNotNullExpressionValue(vz0VarB9, str16);
                                ieVar = (ie) vz0VarB9;
                                hs3.a().e().K = ieVar;
                                linkedHashSet = new LinkedHashSet();
                                if (booleanRef3.element) {
                                    break;
                                }
                                longRef = new Ref.LongRef();
                                if (adapterInitializationConfig9 != null) {
                                    jP = adapterInitializationConfig9.getA();
                                } else {
                                    jP = hfVar8.i.p();
                                }
                                str17 = str14;
                                j = jP;
                                longRef.element = j;
                                str18 = str16;
                                str19 = str15;
                                if (Duration.m4366compareToLRDsOJo(j, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                    longRef.element = hfVar8.i.p();
                                }
                                if (adapterInitializationConfig9 != null) {
                                    mutex4 = hfVar8.u;
                                    teVar.a = hfVar8;
                                    teVar.b = adapterInitializationConfig9;
                                    teVar.c = obj4;
                                    teVar.d = rr3Var4;
                                    teVar.e = closeable3;
                                    teVar.f = ieVar;
                                    teVar.g = longRef;
                                    teVar.h = linkedHashSet;
                                    teVar.i = adapterInitializationConfig9;
                                    teVar.j = mutex4;
                                    teVar.m = 3;
                                    obj5 = null;
                                    if (mutex4.lock(null, teVar) != coroutine_suspended) {
                                        adapterInitializationConfig4 = adapterInitializationConfig9;
                                        rr3Var5 = rr3Var4;
                                        hfVar3 = hfVar8;
                                        adapterInitializationConfig5 = adapterInitializationConfig4;
                                        ieVar2 = ieVar;
                                        closeable4 = closeable3;
                                        longRef2 = longRef;
                                        set = linkedHashSet;
                                        obj4 = obj4;
                                        boolean zAdd5 = hfVar3.v.add(adapterInitializationConfig5);
                                        mutex4.unlock(obj5);
                                        Boxing.boxBoolean(zAdd5);
                                        hfVar8 = hfVar3;
                                        linkedHashSet = set;
                                        longRef = longRef2;
                                        adapterInitializationConfig9 = adapterInitializationConfig4;
                                        closeable3 = closeable4;
                                        ieVar = ieVar2;
                                        rr3Var4 = rr3Var5;
                                        m21Var = o21.f;
                                        j2 = longRef.element;
                                        veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                        teVar.a = hfVar8;
                                        teVar.b = obj4;
                                        teVar.c = rr3Var4;
                                        teVar.d = closeable3;
                                        teVar.e = ieVar;
                                        teVar.f = longRef;
                                        teVar.g = linkedHashSet;
                                        teVar.h = null;
                                        teVar.i = null;
                                        teVar.j = null;
                                        teVar.m = 4;
                                        if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                            hfVar4 = hfVar8;
                                            set2 = linkedHashSet;
                                            obj7 = obj4;
                                            closeable6 = closeable3;
                                            rr3Var6 = rr3Var4;
                                            mutex5 = hfVar4.l;
                                            teVar.a = hfVar4;
                                            teVar.b = obj7;
                                            teVar.c = rr3Var6;
                                            teVar.d = closeable6;
                                            teVar.e = ieVar;
                                            teVar.f = longRef;
                                            teVar.g = set2;
                                            teVar.h = mutex5;
                                            teVar.m = 5;
                                            if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                Set set13 = set2;
                                                mutex6 = mutex5;
                                                set3 = set13;
                                                ieVar3 = ieVar;
                                                r18 = closeable6;
                                                r19 = rr3Var6;
                                                obj8 = obj7;
                                                it = set3.iterator();
                                                while (it.hasNext()) {
                                                    str20 = (String) it.next();
                                                    ydVar = (yd) hfVar4.m.get(str20);
                                                    if (ydVar == null) {
                                                        kf kfVar8 = hfVar4.e;
                                                        LinkedHashMap linkedHashMap8 = hfVar4.m;
                                                        AdapterVersionData adapterVersionData8 = ydVar.b;
                                                        Iterator it8 = it;
                                                        String str214 = str;
                                                        ke keVarA8 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str214, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                        long jA8 = hfVar4.a();
                                                        kfVar8.getClass();
                                                        kf.a(linkedHashMap8, str20, adapterVersionData8, keVarA8, jA8);
                                                        ieVar3 = ieVar3;
                                                        str = str214;
                                                        it = it8;
                                                    }
                                                }
                                                ie ieVar13 = ieVar3;
                                                p005kotlin.Unit unit18 = p005kotlin.Unit.INSTANCE;
                                                mutex6.unlock(null);
                                                ieVar = ieVar13;
                                                linkedHashSet = set3;
                                                r15 = obj8;
                                                hfVar8 = hfVar4;
                                                r10 = r18;
                                            }
                                        }
                                    }
                                } else {
                                    m21Var = o21.f;
                                    j2 = longRef.element;
                                    veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                    teVar.a = hfVar8;
                                    teVar.b = obj4;
                                    teVar.c = rr3Var4;
                                    teVar.d = closeable3;
                                    teVar.e = ieVar;
                                    teVar.f = longRef;
                                    teVar.g = linkedHashSet;
                                    teVar.h = null;
                                    teVar.i = null;
                                    teVar.j = null;
                                    teVar.m = 4;
                                    if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                        hfVar4 = hfVar8;
                                        set2 = linkedHashSet;
                                        obj7 = obj4;
                                        closeable6 = closeable3;
                                        rr3Var6 = rr3Var4;
                                        mutex5 = hfVar4.l;
                                        teVar.a = hfVar4;
                                        teVar.b = obj7;
                                        teVar.c = rr3Var6;
                                        teVar.d = closeable6;
                                        teVar.e = ieVar;
                                        teVar.f = longRef;
                                        teVar.g = set2;
                                        teVar.h = mutex5;
                                        teVar.m = 5;
                                        if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                            Set set14 = set2;
                                            mutex6 = mutex5;
                                            set3 = set14;
                                            ieVar3 = ieVar;
                                            r18 = closeable6;
                                            r19 = rr3Var6;
                                            obj8 = obj7;
                                            it = set3.iterator();
                                            while (it.hasNext()) {
                                                str20 = (String) it.next();
                                                ydVar = (yd) hfVar4.m.get(str20);
                                                if (ydVar == null) {
                                                    kf kfVar9 = hfVar4.e;
                                                    LinkedHashMap linkedHashMap9 = hfVar4.m;
                                                    AdapterVersionData adapterVersionData9 = ydVar.b;
                                                    Iterator it9 = it;
                                                    String str215 = str;
                                                    ke keVarA9 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str215, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                    long jA9 = hfVar4.a();
                                                    kfVar9.getClass();
                                                    kf.a(linkedHashMap9, str20, adapterVersionData9, keVarA9, jA9);
                                                    ieVar3 = ieVar3;
                                                    str = str215;
                                                    it = it9;
                                                }
                                            }
                                            ie ieVar14 = ieVar3;
                                            p005kotlin.Unit unit19 = p005kotlin.Unit.INSTANCE;
                                            mutex6.unlock(null);
                                            ieVar = ieVar14;
                                            linkedHashSet = set3;
                                            r15 = obj8;
                                            hfVar8 = hfVar4;
                                            r10 = r18;
                                        }
                                    }
                                }
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                return coroutine_suspended;
                                uj2 uj2VarE5 = hs3.a().e();
                                vz0.a aVarU5 = ieVar.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU5, "toBuilder(...)");
                                he builder6 = (he) aVarU5;
                                Intrinsics.checkNotNullParameter(builder6, "builder");
                                List listL5 = builder6.l();
                                Intrinsics.checkNotNullExpressionValue(listL5, "getInitializedAdapterClassesList(...)");
                                Intrinsics.checkNotNullParameter(new lo0(listL5), str19);
                                Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                builder6.d(linkedHashSet);
                                unit = p005kotlin.Unit.INSTANCE;
                                vz0 vz0VarB10 = builder6.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB10, str18);
                                uj2VarE5.K = (ie) vz0VarB10;
                                if (r15 != 0) {
                                    m21 m21Var7 = o21.f;
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                } else {
                                    unit = null;
                                }
                                if (unit instanceof i01) {
                                    xs3.a((i01) unit, false);
                                }
                                CloseableKt.closeFinally(r10, null);
                                return unit;
                            case 2:
                                Mutex mutex12 = (Mutex) teVar.g;
                                Ref.BooleanRef booleanRef5 = (Ref.BooleanRef) teVar.f;
                                Closeable closeable13 = (Closeable) teVar.e;
                                rr3 rr3Var8 = (rr3) teVar.d;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener6 = (OnAdapterInitializationCompleteListener) teVar.c;
                                AdapterInitializationConfig adapterInitializationConfig13 = (AdapterInitializationConfig) teVar.b;
                                hfVar2 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                str6 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str3 = "getExcludedAdapterClassesList(...)";
                                str4 = "getAllowedAdapterClassesList(...)";
                                str = "Timeout.";
                                str5 = "getAllowedFormatsList(...)";
                                str7 = "<this>";
                                str2 = "build(...)";
                                obj2 = null;
                                booleanRef2 = booleanRef5;
                                mutex3 = mutex12;
                                closeable = closeable13;
                                str13 = "getAllowedAdUnitsList(...)";
                                obj6 = onAdapterInitializationCompleteListener6;
                                adapterInitializationConfig3 = adapterInitializationConfig13;
                                rr3Var2 = rr3Var8;
                                zIsEmpty = hfVar2.v.isEmpty();
                                mutex3.unlock(obj2);
                                if (zIsEmpty) {
                                    f01.c("No AdapterInitializationConfig was provided when calling MobileAds.initialize, so all adapters were already initialized. Future calls to MobileAds.initializeAdapters will have no effect.", null);
                                }
                                hf hfVar12 = hfVar2;
                                adapterInitializationConfig9 = adapterInitializationConfig3;
                                hfVar8 = hfVar12;
                                obj3 = obj6;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                rr3Var4 = rr3Var3;
                                obj4 = obj3;
                                booleanRef3 = booleanRef2;
                                closeable3 = closeable2;
                                builder = ie.v();
                                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                if (adapterInitializationConfig9 != null) {
                                    builder.a(adapterInitializationConfig9.getInitializationTimeoutMs());
                                    List listH6 = builder.h();
                                    Intrinsics.checkNotNullExpressionValue(listH6, str13);
                                    lo0 lo0Var111 = new lo0(listH6);
                                    Set<String> allowedAdUnitIds6 = adapterInitializationConfig9.getAllowedAdUnitIds();
                                    str15 = str7;
                                    Intrinsics.checkNotNullParameter(lo0Var111, str15);
                                    str14 = str6;
                                    Intrinsics.checkNotNullParameter(allowedAdUnitIds6, str14);
                                    builder.a(allowedAdUnitIds6);
                                    List listJ6 = builder.j();
                                    Intrinsics.checkNotNullExpressionValue(listJ6, str5);
                                    lo0 lo0Var112 = new lo0(listJ6);
                                    Set<AdFormat> allowedAdFormats6 = adapterInitializationConfig9.getAllowedAdFormats();
                                    arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats6, 10));
                                    while (r10.hasNext()) {
                                        Intrinsics.checkNotNullParameter(adFormat, str15);
                                        switch (je.a[adFormat.ordinal()]) {
                                            case 1:
                                                t11Var = t11.FORMAT_APP_OPEN;
                                                break;
                                            case 2:
                                                t11Var = t11.FORMAT_BANNER;
                                                break;
                                            case 3:
                                                t11Var = t11.FORMAT_ICON;
                                                break;
                                            case 4:
                                                t11Var = t11.FORMAT_INTERSTITIAL;
                                                break;
                                            case 5:
                                                t11Var = t11.FORMAT_NATIVE;
                                                break;
                                            case 6:
                                                t11Var = t11.FORMAT_REWARDED;
                                                break;
                                            case 7:
                                                t11Var = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                break;
                                            case 8:
                                                t11Var = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                break;
                                            default:
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                        }
                                        arrayList.add(t11Var);
                                    }
                                    Intrinsics.checkNotNullParameter(lo0Var112, str15);
                                    Intrinsics.checkNotNullParameter(arrayList, str14);
                                    builder.a(arrayList);
                                    List listI6 = builder.i();
                                    Intrinsics.checkNotNullExpressionValue(listI6, str4);
                                    lo0 lo0Var113 = new lo0(listI6);
                                    Set<String> allowedAdapterClasses6 = adapterInitializationConfig9.getAllowedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var113, str15);
                                    Intrinsics.checkNotNullParameter(allowedAdapterClasses6, str14);
                                    builder.b(allowedAdapterClasses6);
                                    List listK6 = builder.k();
                                    Intrinsics.checkNotNullExpressionValue(listK6, str3);
                                    lo0 lo0Var114 = new lo0(listK6);
                                    Set<String> excludedAdapterClasses6 = adapterInitializationConfig9.getExcludedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var114, str15);
                                    Intrinsics.checkNotNullParameter(excludedAdapterClasses6, str14);
                                    builder.c(excludedAdapterClasses6);
                                    p005kotlin.Unit unit110 = p005kotlin.Unit.INSTANCE;
                                } else {
                                    str14 = str6;
                                    str15 = str7;
                                }
                                vz0 vz0VarB11 = builder.b();
                                str16 = str2;
                                Intrinsics.checkNotNullExpressionValue(vz0VarB11, str16);
                                ieVar = (ie) vz0VarB11;
                                hs3.a().e().K = ieVar;
                                linkedHashSet = new LinkedHashSet();
                                if (booleanRef3.element) {
                                    break;
                                }
                                longRef = new Ref.LongRef();
                                if (adapterInitializationConfig9 != null) {
                                    jP = adapterInitializationConfig9.getA();
                                } else {
                                    jP = hfVar8.i.p();
                                }
                                str17 = str14;
                                j = jP;
                                longRef.element = j;
                                str18 = str16;
                                str19 = str15;
                                if (Duration.m4366compareToLRDsOJo(j, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                    longRef.element = hfVar8.i.p();
                                }
                                if (adapterInitializationConfig9 != null) {
                                    mutex4 = hfVar8.u;
                                    teVar.a = hfVar8;
                                    teVar.b = adapterInitializationConfig9;
                                    teVar.c = obj4;
                                    teVar.d = rr3Var4;
                                    teVar.e = closeable3;
                                    teVar.f = ieVar;
                                    teVar.g = longRef;
                                    teVar.h = linkedHashSet;
                                    teVar.i = adapterInitializationConfig9;
                                    teVar.j = mutex4;
                                    teVar.m = 3;
                                    obj5 = null;
                                    if (mutex4.lock(null, teVar) != coroutine_suspended) {
                                        adapterInitializationConfig4 = adapterInitializationConfig9;
                                        rr3Var5 = rr3Var4;
                                        hfVar3 = hfVar8;
                                        adapterInitializationConfig5 = adapterInitializationConfig4;
                                        ieVar2 = ieVar;
                                        closeable4 = closeable3;
                                        longRef2 = longRef;
                                        set = linkedHashSet;
                                        obj4 = obj4;
                                        boolean zAdd6 = hfVar3.v.add(adapterInitializationConfig5);
                                        mutex4.unlock(obj5);
                                        Boxing.boxBoolean(zAdd6);
                                        hfVar8 = hfVar3;
                                        linkedHashSet = set;
                                        longRef = longRef2;
                                        adapterInitializationConfig9 = adapterInitializationConfig4;
                                        closeable3 = closeable4;
                                        ieVar = ieVar2;
                                        rr3Var4 = rr3Var5;
                                        m21Var = o21.f;
                                        j2 = longRef.element;
                                        veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                        teVar.a = hfVar8;
                                        teVar.b = obj4;
                                        teVar.c = rr3Var4;
                                        teVar.d = closeable3;
                                        teVar.e = ieVar;
                                        teVar.f = longRef;
                                        teVar.g = linkedHashSet;
                                        teVar.h = null;
                                        teVar.i = null;
                                        teVar.j = null;
                                        teVar.m = 4;
                                        if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                            hfVar4 = hfVar8;
                                            set2 = linkedHashSet;
                                            obj7 = obj4;
                                            closeable6 = closeable3;
                                            rr3Var6 = rr3Var4;
                                            mutex5 = hfVar4.l;
                                            teVar.a = hfVar4;
                                            teVar.b = obj7;
                                            teVar.c = rr3Var6;
                                            teVar.d = closeable6;
                                            teVar.e = ieVar;
                                            teVar.f = longRef;
                                            teVar.g = set2;
                                            teVar.h = mutex5;
                                            teVar.m = 5;
                                            if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                                Set set15 = set2;
                                                mutex6 = mutex5;
                                                set3 = set15;
                                                ieVar3 = ieVar;
                                                r18 = closeable6;
                                                r19 = rr3Var6;
                                                obj8 = obj7;
                                                it = set3.iterator();
                                                while (it.hasNext()) {
                                                    str20 = (String) it.next();
                                                    ydVar = (yd) hfVar4.m.get(str20);
                                                    if (ydVar == null) {
                                                        kf kfVar10 = hfVar4.e;
                                                        LinkedHashMap linkedHashMap10 = hfVar4.m;
                                                        AdapterVersionData adapterVersionData10 = ydVar.b;
                                                        Iterator it10 = it;
                                                        String str216 = str;
                                                        ke keVarA10 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str216, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                        long jA10 = hfVar4.a();
                                                        kfVar10.getClass();
                                                        kf.a(linkedHashMap10, str20, adapterVersionData10, keVarA10, jA10);
                                                        ieVar3 = ieVar3;
                                                        str = str216;
                                                        it = it10;
                                                    }
                                                }
                                                ie ieVar15 = ieVar3;
                                                p005kotlin.Unit unit111 = p005kotlin.Unit.INSTANCE;
                                                mutex6.unlock(null);
                                                ieVar = ieVar15;
                                                linkedHashSet = set3;
                                                r15 = obj8;
                                                hfVar8 = hfVar4;
                                                r10 = r18;
                                                uj2 uj2VarE6 = hs3.a().e();
                                                vz0.a aVarU6 = ieVar.u();
                                                Intrinsics.checkNotNullExpressionValue(aVarU6, "toBuilder(...)");
                                                he builder7 = (he) aVarU6;
                                                Intrinsics.checkNotNullParameter(builder7, "builder");
                                                List listL6 = builder7.l();
                                                Intrinsics.checkNotNullExpressionValue(listL6, "getInitializedAdapterClassesList(...)");
                                                Intrinsics.checkNotNullParameter(new lo0(listL6), str19);
                                                Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                                builder7.d(linkedHashSet);
                                                unit = p005kotlin.Unit.INSTANCE;
                                                vz0 vz0VarB12 = builder7.b();
                                                Intrinsics.checkNotNullExpressionValue(vz0VarB12, str18);
                                                uj2VarE6.K = (ie) vz0VarB12;
                                                if (r15 != 0) {
                                                    m21 m21Var8 = o21.f;
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                                } else {
                                                    unit = null;
                                                }
                                                if (unit instanceof i01) {
                                                    xs3.a((i01) unit, false);
                                                }
                                                CloseableKt.closeFinally(r10, null);
                                                return unit;
                                            }
                                        }
                                    }
                                } else {
                                    m21Var = o21.f;
                                    j2 = longRef.element;
                                    veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                    teVar.a = hfVar8;
                                    teVar.b = obj4;
                                    teVar.c = rr3Var4;
                                    teVar.d = closeable3;
                                    teVar.e = ieVar;
                                    teVar.f = longRef;
                                    teVar.g = linkedHashSet;
                                    teVar.h = null;
                                    teVar.i = null;
                                    teVar.j = null;
                                    teVar.m = 4;
                                    if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                        hfVar4 = hfVar8;
                                        set2 = linkedHashSet;
                                        obj7 = obj4;
                                        closeable6 = closeable3;
                                        rr3Var6 = rr3Var4;
                                        mutex5 = hfVar4.l;
                                        teVar.a = hfVar4;
                                        teVar.b = obj7;
                                        teVar.c = rr3Var6;
                                        teVar.d = closeable6;
                                        teVar.e = ieVar;
                                        teVar.f = longRef;
                                        teVar.g = set2;
                                        teVar.h = mutex5;
                                        teVar.m = 5;
                                        if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                            Set set16 = set2;
                                            mutex6 = mutex5;
                                            set3 = set16;
                                            ieVar3 = ieVar;
                                            r18 = closeable6;
                                            r19 = rr3Var6;
                                            obj8 = obj7;
                                            it = set3.iterator();
                                            while (it.hasNext()) {
                                                str20 = (String) it.next();
                                                ydVar = (yd) hfVar4.m.get(str20);
                                                if (ydVar == null) {
                                                    kf kfVar11 = hfVar4.e;
                                                    LinkedHashMap linkedHashMap11 = hfVar4.m;
                                                    AdapterVersionData adapterVersionData11 = ydVar.b;
                                                    Iterator it11 = it;
                                                    String str217 = str;
                                                    ke keVarA11 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str217, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                    long jA11 = hfVar4.a();
                                                    kfVar11.getClass();
                                                    kf.a(linkedHashMap11, str20, adapterVersionData11, keVarA11, jA11);
                                                    ieVar3 = ieVar3;
                                                    str = str217;
                                                    it = it11;
                                                }
                                            }
                                            ie ieVar16 = ieVar3;
                                            p005kotlin.Unit unit112 = p005kotlin.Unit.INSTANCE;
                                            mutex6.unlock(null);
                                            ieVar = ieVar16;
                                            linkedHashSet = set3;
                                            r15 = obj8;
                                            hfVar8 = hfVar4;
                                            r10 = r18;
                                            uj2 uj2VarE7 = hs3.a().e();
                                            vz0.a aVarU7 = ieVar.u();
                                            Intrinsics.checkNotNullExpressionValue(aVarU7, "toBuilder(...)");
                                            he builder8 = (he) aVarU7;
                                            Intrinsics.checkNotNullParameter(builder8, "builder");
                                            List listL7 = builder8.l();
                                            Intrinsics.checkNotNullExpressionValue(listL7, "getInitializedAdapterClassesList(...)");
                                            Intrinsics.checkNotNullParameter(new lo0(listL7), str19);
                                            Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                            builder8.d(linkedHashSet);
                                            unit = p005kotlin.Unit.INSTANCE;
                                            vz0 vz0VarB13 = builder8.b();
                                            Intrinsics.checkNotNullExpressionValue(vz0VarB13, str18);
                                            uj2VarE7.K = (ie) vz0VarB13;
                                            if (r15 != 0) {
                                                m21 m21Var9 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                            } else {
                                                unit = null;
                                            }
                                            if (unit instanceof i01) {
                                                xs3.a((i01) unit, false);
                                            }
                                            CloseableKt.closeFinally(r10, null);
                                            return unit;
                                        }
                                    }
                                }
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                return coroutine_suspended;
                            case 3:
                                Mutex mutex13 = teVar.j;
                                AdapterInitializationConfig adapterInitializationConfig14 = teVar.i;
                                set = (Set) teVar.h;
                                longRef2 = (Ref.LongRef) teVar.g;
                                ieVar2 = (ie) teVar.f;
                                closeable5 = (Closeable) teVar.e;
                                rr3Var5 = (rr3) teVar.d;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener7 = (OnAdapterInitializationCompleteListener) teVar.c;
                                adapterInitializationConfig4 = (AdapterInitializationConfig) teVar.b;
                                hfVar3 = teVar.a;
                                try {
                                    p005kotlin.ResultKt.throwOnFailure(obj13);
                                    str17 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                    str = "Timeout.";
                                    closeable4 = closeable5;
                                    str19 = "<this>";
                                    str18 = "build(...)";
                                    obj5 = null;
                                    mutex4 = mutex13;
                                    adapterInitializationConfig5 = adapterInitializationConfig14;
                                    rr3Var5 = rr3Var5;
                                    obj4 = onAdapterInitializationCompleteListener7;
                                    boolean zAdd7 = hfVar3.v.add(adapterInitializationConfig5);
                                    mutex4.unlock(obj5);
                                    Boxing.boxBoolean(zAdd7);
                                    hfVar8 = hfVar3;
                                    linkedHashSet = set;
                                    longRef = longRef2;
                                    adapterInitializationConfig9 = adapterInitializationConfig4;
                                    closeable3 = closeable4;
                                    ieVar = ieVar2;
                                    rr3Var4 = rr3Var5;
                                    m21Var = o21.f;
                                    j2 = longRef.element;
                                    veVar = new ve(hfVar8, adapterInitializationConfig9, linkedHashSet, null);
                                    teVar.a = hfVar8;
                                    teVar.b = obj4;
                                    teVar.c = rr3Var4;
                                    teVar.d = closeable3;
                                    teVar.e = ieVar;
                                    teVar.f = longRef;
                                    teVar.g = linkedHashSet;
                                    teVar.h = null;
                                    teVar.i = null;
                                    teVar.j = null;
                                    teVar.m = 4;
                                    if (m21Var.a(j2, veVar, teVar) != coroutine_suspended) {
                                        hfVar4 = hfVar8;
                                        set2 = linkedHashSet;
                                        obj7 = obj4;
                                        closeable6 = closeable3;
                                        rr3Var6 = rr3Var4;
                                        mutex5 = hfVar4.l;
                                        teVar.a = hfVar4;
                                        teVar.b = obj7;
                                        teVar.c = rr3Var6;
                                        teVar.d = closeable6;
                                        teVar.e = ieVar;
                                        teVar.f = longRef;
                                        teVar.g = set2;
                                        teVar.h = mutex5;
                                        teVar.m = 5;
                                        if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                            Set set17 = set2;
                                            mutex6 = mutex5;
                                            set3 = set17;
                                            ieVar3 = ieVar;
                                            r18 = closeable6;
                                            r19 = rr3Var6;
                                            obj8 = obj7;
                                            it = set3.iterator();
                                            while (it.hasNext()) {
                                                str20 = (String) it.next();
                                                ydVar = (yd) hfVar4.m.get(str20);
                                                if (ydVar == null) {
                                                    kf kfVar12 = hfVar4.e;
                                                    LinkedHashMap linkedHashMap12 = hfVar4.m;
                                                    AdapterVersionData adapterVersionData12 = ydVar.b;
                                                    Iterator it12 = it;
                                                    String str218 = str;
                                                    ke keVarA12 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str218, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                                    long jA12 = hfVar4.a();
                                                    kfVar12.getClass();
                                                    kf.a(linkedHashMap12, str20, adapterVersionData12, keVarA12, jA12);
                                                    ieVar3 = ieVar3;
                                                    str = str218;
                                                    it = it12;
                                                }
                                            }
                                            ie ieVar17 = ieVar3;
                                            p005kotlin.Unit unit113 = p005kotlin.Unit.INSTANCE;
                                            mutex6.unlock(null);
                                            ieVar = ieVar17;
                                            linkedHashSet = set3;
                                            r15 = obj8;
                                            hfVar8 = hfVar4;
                                            r10 = r18;
                                            uj2 uj2VarE8 = hs3.a().e();
                                            vz0.a aVarU8 = ieVar.u();
                                            Intrinsics.checkNotNullExpressionValue(aVarU8, "toBuilder(...)");
                                            he builder9 = (he) aVarU8;
                                            Intrinsics.checkNotNullParameter(builder9, "builder");
                                            List listL8 = builder9.l();
                                            Intrinsics.checkNotNullExpressionValue(listL8, "getInitializedAdapterClassesList(...)");
                                            Intrinsics.checkNotNullParameter(new lo0(listL8), str19);
                                            Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                            builder9.d(linkedHashSet);
                                            unit = p005kotlin.Unit.INSTANCE;
                                            vz0 vz0VarB14 = builder9.b();
                                            Intrinsics.checkNotNullExpressionValue(vz0VarB14, str18);
                                            uj2VarE8.K = (ie) vz0VarB14;
                                            if (r15 != 0) {
                                                m21 m21Var10 = o21.f;
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                            } else {
                                                unit = null;
                                            }
                                            if (unit instanceof i01) {
                                                xs3.a((i01) unit, false);
                                            }
                                            CloseableKt.closeFinally(r10, null);
                                            return unit;
                                        }
                                    }
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    obj3 = obj;
                                    closeable2 = closeable;
                                    rr3Var3 = rr3Var2;
                                    return coroutine_suspended;
                                } catch (Throwable th23) {
                                    th = th23;
                                    r7 = closeable5;
                                    r6 = rr3Var5;
                                    r6.b(th);
                                    if (th instanceof v24) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        r6.a(th);
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
                                Set set18 = (Set) teVar.g;
                                Ref.LongRef longRef5 = (Ref.LongRef) teVar.f;
                                ie ieVar18 = (ie) teVar.e;
                                Closeable closeable14 = teVar.d;
                                rr3 rr3Var9 = (rr3) teVar.c;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener8 = (OnAdapterInitializationCompleteListener) teVar.b;
                                hfVar4 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                str17 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str = "Timeout.";
                                str19 = "<this>";
                                str18 = "build(...)";
                                ieVar = ieVar18;
                                longRef = longRef5;
                                set2 = set18;
                                closeable6 = closeable14;
                                rr3Var6 = rr3Var9;
                                obj7 = onAdapterInitializationCompleteListener8;
                                mutex5 = hfVar4.l;
                                teVar.a = hfVar4;
                                teVar.b = obj7;
                                teVar.c = rr3Var6;
                                teVar.d = closeable6;
                                teVar.e = ieVar;
                                teVar.f = longRef;
                                teVar.g = set2;
                                teVar.h = mutex5;
                                teVar.m = 5;
                                if (mutex5.lock(null, teVar) != coroutine_suspended) {
                                    Set set19 = set2;
                                    mutex6 = mutex5;
                                    set3 = set19;
                                    ieVar3 = ieVar;
                                    r18 = closeable6;
                                    r19 = rr3Var6;
                                    obj8 = obj7;
                                    it = set3.iterator();
                                    while (it.hasNext()) {
                                        str20 = (String) it.next();
                                        ydVar = (yd) hfVar4.m.get(str20);
                                        if (ydVar == null) {
                                            kf kfVar13 = hfVar4.e;
                                            LinkedHashMap linkedHashMap13 = hfVar4.m;
                                            AdapterVersionData adapterVersionData13 = ydVar.b;
                                            Iterator it13 = it;
                                            String str219 = str;
                                            ke keVarA13 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str219, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                            long jA13 = hfVar4.a();
                                            kfVar13.getClass();
                                            kf.a(linkedHashMap13, str20, adapterVersionData13, keVarA13, jA13);
                                            ieVar3 = ieVar3;
                                            str = str219;
                                            it = it13;
                                        }
                                    }
                                    ie ieVar19 = ieVar3;
                                    p005kotlin.Unit unit114 = p005kotlin.Unit.INSTANCE;
                                    mutex6.unlock(null);
                                    ieVar = ieVar19;
                                    linkedHashSet = set3;
                                    r15 = obj8;
                                    hfVar8 = hfVar4;
                                    r10 = r18;
                                    uj2 uj2VarE9 = hs3.a().e();
                                    vz0.a aVarU9 = ieVar.u();
                                    Intrinsics.checkNotNullExpressionValue(aVarU9, "toBuilder(...)");
                                    he builder10 = (he) aVarU9;
                                    Intrinsics.checkNotNullParameter(builder10, "builder");
                                    List listL9 = builder10.l();
                                    Intrinsics.checkNotNullExpressionValue(listL9, "getInitializedAdapterClassesList(...)");
                                    Intrinsics.checkNotNullParameter(new lo0(listL9), str19);
                                    Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                    builder10.d(linkedHashSet);
                                    unit = p005kotlin.Unit.INSTANCE;
                                    vz0 vz0VarB15 = builder10.b();
                                    Intrinsics.checkNotNullExpressionValue(vz0VarB15, str18);
                                    uj2VarE9.K = (ie) vz0VarB15;
                                    if (r15 != 0) {
                                        m21 m21Var11 = o21.f;
                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                    } else {
                                        unit = null;
                                    }
                                    if (unit instanceof i01) {
                                        xs3.a((i01) unit, false);
                                    }
                                    CloseableKt.closeFinally(r10, null);
                                    return unit;
                                }
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                obj3 = obj;
                                closeable2 = closeable;
                                rr3Var3 = rr3Var2;
                                return coroutine_suspended;
                            case 5:
                                Mutex mutex14 = (Mutex) teVar.h;
                                Set set20 = (Set) teVar.g;
                                longRef = (Ref.LongRef) teVar.f;
                                ieVar3 = (ie) teVar.e;
                                Closeable closeable15 = teVar.d;
                                rr3 rr3Var10 = (rr3) teVar.c;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener9 = (OnAdapterInitializationCompleteListener) teVar.b;
                                hfVar4 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                mutex6 = mutex14;
                                set3 = set20;
                                str17 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str = "Timeout.";
                                str19 = "<this>";
                                str18 = "build(...)";
                                r18 = closeable15;
                                r19 = rr3Var10;
                                obj8 = onAdapterInitializationCompleteListener9;
                                it = set3.iterator();
                                while (it.hasNext()) {
                                    str20 = (String) it.next();
                                    ydVar = (yd) hfVar4.m.get(str20);
                                    if (ydVar == null) {
                                        kf kfVar14 = hfVar4.e;
                                        LinkedHashMap linkedHashMap14 = hfVar4.m;
                                        AdapterVersionData adapterVersionData14 = ydVar.b;
                                        Iterator it14 = it;
                                        String str2110 = str;
                                        ke keVarA14 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str2110, (int) Duration.m4378getInWholeMillisecondsimpl(longRef.element));
                                        long jA14 = hfVar4.a();
                                        kfVar14.getClass();
                                        kf.a(linkedHashMap14, str20, adapterVersionData14, keVarA14, jA14);
                                        ieVar3 = ieVar3;
                                        str = str2110;
                                        it = it14;
                                    }
                                }
                                ie ieVar110 = ieVar3;
                                p005kotlin.Unit unit115 = p005kotlin.Unit.INSTANCE;
                                mutex6.unlock(null);
                                ieVar = ieVar110;
                                linkedHashSet = set3;
                                r15 = obj8;
                                hfVar8 = hfVar4;
                                r10 = r18;
                                uj2 uj2VarE10 = hs3.a().e();
                                vz0.a aVarU10 = ieVar.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU10, "toBuilder(...)");
                                he builder11 = (he) aVarU10;
                                Intrinsics.checkNotNullParameter(builder11, "builder");
                                List listL10 = builder11.l();
                                Intrinsics.checkNotNullExpressionValue(listL10, "getInitializedAdapterClassesList(...)");
                                Intrinsics.checkNotNullParameter(new lo0(listL10), str19);
                                Intrinsics.checkNotNullParameter(linkedHashSet, str17);
                                builder11.d(linkedHashSet);
                                unit = p005kotlin.Unit.INSTANCE;
                                vz0 vz0VarB16 = builder11.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB16, str18);
                                uj2VarE10.K = (ie) vz0VarB16;
                                if (r15 != 0) {
                                    m21 m21Var12 = o21.f;
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, r15, hfVar8, linkedHashSet), 3, null);
                                } else {
                                    unit = null;
                                }
                                if (unit instanceof i01) {
                                    xs3.a((i01) unit, false);
                                }
                                CloseableKt.closeFinally(r10, null);
                                return unit;
                            case 6:
                                Mutex mutex15 = (Mutex) teVar.g;
                                Ref.BooleanRef booleanRef6 = (Ref.BooleanRef) teVar.f;
                                Closeable closeable16 = (Closeable) teVar.e;
                                rr3 rr3Var11 = (rr3) teVar.d;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener10 = (OnAdapterInitializationCompleteListener) teVar.c;
                                AdapterInitializationConfig adapterInitializationConfig15 = (AdapterInitializationConfig) teVar.b;
                                hf hfVar13 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                str10 = "getExcludedAdapterClassesList(...)";
                                str = "Timeout.";
                                str11 = "<this>";
                                str12 = "getAllowedAdUnitsList(...)";
                                str2 = "build(...)";
                                rr3Var = rr3Var11;
                                booleanRef = booleanRef6;
                                mutex = mutex15;
                                hfVar8 = hfVar13;
                                str8 = "getAllowedFormatsList(...)";
                                adapterInitializationConfig2 = adapterInitializationConfig15;
                                str9 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                closeable7 = closeable16;
                                onAdapterInitializationCompleteListener2 = onAdapterInitializationCompleteListener10;
                                r9 = r19;
                                str21 = str8;
                                str22 = "newBuilder(...)";
                                if (Duration.m4372equalsimpl0(hfVar8.o, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                                    booleanRef.element = true;
                                    hfVar8.h.getClass();
                                    hfVar8.o = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
                                }
                                p005kotlin.Unit unit116 = p005kotlin.Unit.INSTANCE;
                                mutex.unlock(null);
                                if (booleanRef.element) {
                                    break;
                                }
                                r110 = rr3Var;
                                closeable8 = closeable7;
                                r11 = r9;
                                onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener2;
                                builder2 = ie.v();
                                Intrinsics.checkNotNullExpressionValue(builder2, str22);
                                Intrinsics.checkNotNullParameter(builder2, "builder");
                                if (adapterInitializationConfig2 != null) {
                                    builder2.a(adapterInitializationConfig2.getInitializationTimeoutMs());
                                    List listH7 = builder2.h();
                                    Intrinsics.checkNotNullExpressionValue(listH7, str12);
                                    lo0 lo0Var20 = new lo0(listH7);
                                    Set<String> allowedAdUnitIds7 = adapterInitializationConfig2.getAllowedAdUnitIds();
                                    str23 = str11;
                                    Intrinsics.checkNotNullParameter(lo0Var20, str23);
                                    Intrinsics.checkNotNullParameter(allowedAdUnitIds7, str9);
                                    builder2.a(allowedAdUnitIds7);
                                    List listJ7 = builder2.j();
                                    Intrinsics.checkNotNullExpressionValue(listJ7, str21);
                                    lo0 lo0Var115 = new lo0(listJ7);
                                    Set<AdFormat> allowedAdFormats7 = adapterInitializationConfig2.getAllowedAdFormats();
                                    arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats7, 10));
                                    while (r3.hasNext()) {
                                        Intrinsics.checkNotNullParameter(adFormat2, str23);
                                        switch (je.a[adFormat2.ordinal()]) {
                                            case 1:
                                                t11Var2 = t11.FORMAT_APP_OPEN;
                                                break;
                                            case 2:
                                                t11Var2 = t11.FORMAT_BANNER;
                                                break;
                                            case 3:
                                                t11Var2 = t11.FORMAT_ICON;
                                                break;
                                            case 4:
                                                t11Var2 = t11.FORMAT_INTERSTITIAL;
                                                break;
                                            case 5:
                                                t11Var2 = t11.FORMAT_NATIVE;
                                                break;
                                            case 6:
                                                t11Var2 = t11.FORMAT_REWARDED;
                                                break;
                                            case 7:
                                                t11Var2 = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                break;
                                            case 8:
                                                t11Var2 = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                break;
                                            default:
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                        }
                                        arrayList2.add(t11Var2);
                                    }
                                    Intrinsics.checkNotNullParameter(lo0Var115, str23);
                                    Intrinsics.checkNotNullParameter(arrayList2, str9);
                                    builder2.a(arrayList2);
                                    List listI7 = builder2.i();
                                    Intrinsics.checkNotNullExpressionValue(listI7, r11);
                                    lo0 lo0Var116 = new lo0(listI7);
                                    Set<String> allowedAdapterClasses7 = adapterInitializationConfig2.getAllowedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var116, str23);
                                    Intrinsics.checkNotNullParameter(allowedAdapterClasses7, str9);
                                    builder2.b(allowedAdapterClasses7);
                                    List listK7 = builder2.k();
                                    Intrinsics.checkNotNullExpressionValue(listK7, str10);
                                    lo0 lo0Var117 = new lo0(listK7);
                                    Set<String> excludedAdapterClasses7 = adapterInitializationConfig2.getExcludedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var117, str23);
                                    Intrinsics.checkNotNullParameter(excludedAdapterClasses7, str9);
                                    builder2.c(excludedAdapterClasses7);
                                    p005kotlin.Unit unit117 = p005kotlin.Unit.INSTANCE;
                                } else {
                                    str23 = str11;
                                }
                                vz0 vz0VarB17 = builder2.b();
                                str24 = str2;
                                Intrinsics.checkNotNullExpressionValue(vz0VarB17, str24);
                                ieVar4 = (ie) vz0VarB17;
                                hs3.a().e().K = ieVar4;
                                linkedHashSet2 = new LinkedHashSet();
                                if (booleanRef.element) {
                                    break;
                                }
                                longRef3 = new Ref.LongRef();
                                if (adapterInitializationConfig2 != null) {
                                    jP2 = adapterInitializationConfig2.getA();
                                } else {
                                    jP2 = hfVar8.i.p();
                                }
                                str25 = str9;
                                j3 = jP2;
                                longRef3.element = j3;
                                str26 = str23;
                                if (Duration.m4366compareToLRDsOJo(j3, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                    longRef3.element = hfVar8.i.p();
                                }
                                if (adapterInitializationConfig2 != null) {
                                    mutex8 = hfVar8.u;
                                    teVar.a = hfVar8;
                                    teVar.b = adapterInitializationConfig2;
                                    teVar.c = onAdapterInitializationCompleteListener3;
                                    teVar.d = r110;
                                    teVar.e = closeable8;
                                    teVar.f = ieVar4;
                                    teVar.g = longRef3;
                                    teVar.h = linkedHashSet2;
                                    teVar.i = adapterInitializationConfig2;
                                    teVar.j = mutex8;
                                    teVar.m = 8;
                                    obj11 = null;
                                    obj10 = coroutine_suspended;
                                    if (mutex8.lock(null, teVar) == obj10) {
                                        return obj10;
                                    }
                                    closeable9 = closeable8;
                                    r12 = r110;
                                    adapterInitializationConfig7 = adapterInitializationConfig2;
                                    hfVar6 = hfVar8;
                                    adapterInitializationConfig8 = adapterInitializationConfig7;
                                    boolean zAdd8 = hfVar6.v.add(adapterInitializationConfig8);
                                    mutex8.unlock(obj11);
                                    Boxing.boxBoolean(zAdd8);
                                    hfVar8 = hfVar6;
                                    ieVar5 = ieVar4;
                                    closeable10 = closeable9;
                                    r19 = r12;
                                    adapterInitializationConfig2 = adapterInitializationConfig7;
                                } else {
                                    obj10 = coroutine_suspended;
                                    ieVar5 = ieVar4;
                                    r19 = r110;
                                    closeable10 = closeable8;
                                }
                                m21Var2 = o21.f;
                                j4 = longRef3.element;
                                veVar2 = new ve(hfVar8, adapterInitializationConfig2, linkedHashSet2, null);
                                teVar.a = hfVar8;
                                teVar.b = onAdapterInitializationCompleteListener3;
                                teVar.c = r19;
                                teVar.d = closeable10;
                                teVar.e = ieVar5;
                                teVar.f = longRef3;
                                teVar.g = linkedHashSet2;
                                teVar.h = null;
                                teVar.i = null;
                                teVar.j = null;
                                teVar.m = 9;
                                if (m21Var2.a(j4, veVar2, teVar) == obj10) {
                                    return obj10;
                                }
                                hfVar7 = hfVar8;
                                set4 = linkedHashSet2;
                                longRef4 = longRef3;
                                onAdapterInitializationCompleteListener4 = onAdapterInitializationCompleteListener3;
                                closeable11 = closeable10;
                                r16 = r19;
                                mutex9 = hfVar7.l;
                                teVar.a = hfVar7;
                                teVar.b = onAdapterInitializationCompleteListener4;
                                teVar.c = r16;
                                teVar.d = closeable11;
                                teVar.e = ieVar5;
                                teVar.f = longRef4;
                                teVar.g = set4;
                                teVar.h = mutex9;
                                teVar.m = 10;
                                if (mutex9.lock(null, teVar) == obj10) {
                                    return obj10;
                                }
                                Set set110 = set4;
                                mutex10 = mutex9;
                                set5 = set110;
                                r18 = closeable11;
                                r19 = r16;
                                while (r6.hasNext()) {
                                    ydVar2 = (yd) hfVar7.m.get(str30);
                                    if (ydVar2 != null) {
                                        kf kfVar15 = hfVar7.e;
                                        LinkedHashMap linkedHashMap15 = hfVar7.m;
                                        AdapterVersionData adapterVersionData15 = ydVar2.b;
                                        te teVar4 = teVar;
                                        String str32 = str;
                                        ke keVarA15 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str32, (int) Duration.m4378getInWholeMillisecondsimpl(longRef4.element));
                                        long jA15 = hfVar7.a();
                                        kfVar15.getClass();
                                        kf.a(linkedHashMap15, str30, adapterVersionData15, keVarA15, jA15);
                                        ieVar5 = ieVar5;
                                        str = str32;
                                        teVar = teVar4;
                                    }
                                }
                                ie ieVar111 = ieVar5;
                                teVar2 = teVar;
                                p005kotlin.Unit unit118 = p005kotlin.Unit.INSTANCE;
                                mutex10.unlock(null);
                                linkedHashSet2 = set5;
                                r17 = r19;
                                onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener4;
                                hfVar8 = hfVar7;
                                ieVar4 = ieVar111;
                                r18 = r18;
                                uj2 uj2VarE11 = hs3.a().e();
                                vz0.a aVarU11 = ieVar4.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU11, "toBuilder(...)");
                                he heVar2 = (he) aVarU11;
                                Intrinsics.checkNotNullParameter(heVar2, str27);
                                List listL11 = heVar2.l();
                                Intrinsics.checkNotNullExpressionValue(listL11, "getInitializedAdapterClassesList(...)");
                                Intrinsics.checkNotNullParameter(new lo0(listL11), str26);
                                Intrinsics.checkNotNullParameter(linkedHashSet2, str25);
                                heVar2.d(linkedHashSet2);
                                unit2 = p005kotlin.Unit.INSTANCE;
                                vz0 vz0VarB18 = heVar2.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB18, str24);
                                uj2VarE11.K = (ie) vz0VarB18;
                                if (onAdapterInitializationCompleteListener3 != null) {
                                    m21 m21Var13 = o21.f;
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar2.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, onAdapterInitializationCompleteListener3, hfVar8, linkedHashSet2), 3, null);
                                } else {
                                    unit2 = null;
                                }
                                if (unit2 instanceof i01) {
                                    xs3.a((i01) unit2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(r18, null);
                                return unit2;
                            case 7:
                                Mutex mutex16 = (Mutex) teVar.g;
                                Ref.BooleanRef booleanRef7 = (Ref.BooleanRef) teVar.f;
                                Closeable closeable17 = (Closeable) teVar.e;
                                rr3 rr3Var12 = (rr3) teVar.d;
                                OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener11 = (OnAdapterInitializationCompleteListener) teVar.c;
                                AdapterInitializationConfig adapterInitializationConfig16 = (AdapterInitializationConfig) teVar.b;
                                hfVar5 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                str10 = "getExcludedAdapterClassesList(...)";
                                str = "Timeout.";
                                str21 = "getAllowedFormatsList(...)";
                                str11 = "<this>";
                                str12 = "getAllowedAdUnitsList(...)";
                                str2 = "build(...)";
                                str22 = "newBuilder(...)";
                                obj9 = null;
                                booleanRef = booleanRef7;
                                mutex7 = mutex16;
                                str9 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                adapterInitializationConfig6 = adapterInitializationConfig16;
                                closeable8 = closeable17;
                                onAdapterInitializationCompleteListener2 = onAdapterInitializationCompleteListener11;
                                r13 = r19;
                                r110 = rr3Var12;
                                zIsEmpty2 = hfVar5.v.isEmpty();
                                mutex7.unlock(obj9);
                                if (zIsEmpty2) {
                                    f01.c("No AdapterInitializationConfig was provided when calling MobileAds.initialize, so all adapters were already initialized. Future calls to MobileAds.initializeAdapters will have no effect.", null);
                                }
                                hf hfVar14 = hfVar5;
                                adapterInitializationConfig2 = adapterInitializationConfig6;
                                hfVar8 = hfVar14;
                                closeable8 = closeable8;
                                r11 = r13;
                                r110 = r110;
                                onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener2;
                                builder2 = ie.v();
                                Intrinsics.checkNotNullExpressionValue(builder2, str22);
                                Intrinsics.checkNotNullParameter(builder2, "builder");
                                if (adapterInitializationConfig2 != null) {
                                    builder2.a(adapterInitializationConfig2.getInitializationTimeoutMs());
                                    List listH8 = builder2.h();
                                    Intrinsics.checkNotNullExpressionValue(listH8, str12);
                                    lo0 lo0Var21 = new lo0(listH8);
                                    Set<String> allowedAdUnitIds8 = adapterInitializationConfig2.getAllowedAdUnitIds();
                                    str23 = str11;
                                    Intrinsics.checkNotNullParameter(lo0Var21, str23);
                                    Intrinsics.checkNotNullParameter(allowedAdUnitIds8, str9);
                                    builder2.a(allowedAdUnitIds8);
                                    List listJ8 = builder2.j();
                                    Intrinsics.checkNotNullExpressionValue(listJ8, str21);
                                    lo0 lo0Var118 = new lo0(listJ8);
                                    Set<AdFormat> allowedAdFormats8 = adapterInitializationConfig2.getAllowedAdFormats();
                                    arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(allowedAdFormats8, 10));
                                    while (r3.hasNext()) {
                                        Intrinsics.checkNotNullParameter(adFormat2, str23);
                                        switch (je.a[adFormat2.ordinal()]) {
                                            case 1:
                                                t11Var2 = t11.FORMAT_APP_OPEN;
                                                break;
                                            case 2:
                                                t11Var2 = t11.FORMAT_BANNER;
                                                break;
                                            case 3:
                                                t11Var2 = t11.FORMAT_ICON;
                                                break;
                                            case 4:
                                                t11Var2 = t11.FORMAT_INTERSTITIAL;
                                                break;
                                            case 5:
                                                t11Var2 = t11.FORMAT_NATIVE;
                                                break;
                                            case 6:
                                                t11Var2 = t11.FORMAT_REWARDED;
                                                break;
                                            case 7:
                                                t11Var2 = t11.FORMAT_REWARDED_INTERSTITIAL;
                                                break;
                                            case 8:
                                                t11Var2 = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                                                break;
                                            default:
                                                throw new p005kotlin.NoWhenBranchMatchedException();
                                        }
                                        arrayList2.add(t11Var2);
                                    }
                                    Intrinsics.checkNotNullParameter(lo0Var118, str23);
                                    Intrinsics.checkNotNullParameter(arrayList2, str9);
                                    builder2.a(arrayList2);
                                    List listI8 = builder2.i();
                                    Intrinsics.checkNotNullExpressionValue(listI8, r11);
                                    lo0 lo0Var119 = new lo0(listI8);
                                    Set<String> allowedAdapterClasses8 = adapterInitializationConfig2.getAllowedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var119, str23);
                                    Intrinsics.checkNotNullParameter(allowedAdapterClasses8, str9);
                                    builder2.b(allowedAdapterClasses8);
                                    List listK8 = builder2.k();
                                    Intrinsics.checkNotNullExpressionValue(listK8, str10);
                                    lo0 lo0Var1110 = new lo0(listK8);
                                    Set<String> excludedAdapterClasses8 = adapterInitializationConfig2.getExcludedAdapterClasses();
                                    Intrinsics.checkNotNullParameter(lo0Var1110, str23);
                                    Intrinsics.checkNotNullParameter(excludedAdapterClasses8, str9);
                                    builder2.c(excludedAdapterClasses8);
                                    p005kotlin.Unit unit119 = p005kotlin.Unit.INSTANCE;
                                } else {
                                    str23 = str11;
                                }
                                vz0 vz0VarB19 = builder2.b();
                                str24 = str2;
                                Intrinsics.checkNotNullExpressionValue(vz0VarB19, str24);
                                ieVar4 = (ie) vz0VarB19;
                                hs3.a().e().K = ieVar4;
                                linkedHashSet2 = new LinkedHashSet();
                                if (booleanRef.element) {
                                    break;
                                }
                                longRef3 = new Ref.LongRef();
                                if (adapterInitializationConfig2 != null) {
                                    jP2 = adapterInitializationConfig2.getA();
                                } else {
                                    jP2 = hfVar8.i.p();
                                }
                                str25 = str9;
                                j3 = jP2;
                                longRef3.element = j3;
                                str26 = str23;
                                if (Duration.m4366compareToLRDsOJo(j3, Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) {
                                    longRef3.element = hfVar8.i.p();
                                }
                                if (adapterInitializationConfig2 != null) {
                                    mutex8 = hfVar8.u;
                                    teVar.a = hfVar8;
                                    teVar.b = adapterInitializationConfig2;
                                    teVar.c = onAdapterInitializationCompleteListener3;
                                    teVar.d = r110;
                                    teVar.e = closeable8;
                                    teVar.f = ieVar4;
                                    teVar.g = longRef3;
                                    teVar.h = linkedHashSet2;
                                    teVar.i = adapterInitializationConfig2;
                                    teVar.j = mutex8;
                                    teVar.m = 8;
                                    obj11 = null;
                                    obj10 = coroutine_suspended;
                                    if (mutex8.lock(null, teVar) == obj10) {
                                        return obj10;
                                    }
                                    closeable9 = closeable8;
                                    r12 = r110;
                                    adapterInitializationConfig7 = adapterInitializationConfig2;
                                    hfVar6 = hfVar8;
                                    adapterInitializationConfig8 = adapterInitializationConfig7;
                                    boolean zAdd9 = hfVar6.v.add(adapterInitializationConfig8);
                                    mutex8.unlock(obj11);
                                    Boxing.boxBoolean(zAdd9);
                                    hfVar8 = hfVar6;
                                    ieVar5 = ieVar4;
                                    closeable10 = closeable9;
                                    r19 = r12;
                                    adapterInitializationConfig2 = adapterInitializationConfig7;
                                } else {
                                    obj10 = coroutine_suspended;
                                    ieVar5 = ieVar4;
                                    r19 = r110;
                                    closeable10 = closeable8;
                                }
                                m21Var2 = o21.f;
                                j4 = longRef3.element;
                                veVar2 = new ve(hfVar8, adapterInitializationConfig2, linkedHashSet2, null);
                                teVar.a = hfVar8;
                                teVar.b = onAdapterInitializationCompleteListener3;
                                teVar.c = r19;
                                teVar.d = closeable10;
                                teVar.e = ieVar5;
                                teVar.f = longRef3;
                                teVar.g = linkedHashSet2;
                                teVar.h = null;
                                teVar.i = null;
                                teVar.j = null;
                                teVar.m = 9;
                                if (m21Var2.a(j4, veVar2, teVar) == obj10) {
                                    return obj10;
                                }
                                hfVar7 = hfVar8;
                                set4 = linkedHashSet2;
                                longRef4 = longRef3;
                                onAdapterInitializationCompleteListener4 = onAdapterInitializationCompleteListener3;
                                closeable11 = closeable10;
                                r16 = r19;
                                mutex9 = hfVar7.l;
                                teVar.a = hfVar7;
                                teVar.b = onAdapterInitializationCompleteListener4;
                                teVar.c = r16;
                                teVar.d = closeable11;
                                teVar.e = ieVar5;
                                teVar.f = longRef4;
                                teVar.g = set4;
                                teVar.h = mutex9;
                                teVar.m = 10;
                                if (mutex9.lock(null, teVar) == obj10) {
                                    return obj10;
                                }
                                Set set111 = set4;
                                mutex10 = mutex9;
                                set5 = set111;
                                r18 = closeable11;
                                r19 = r16;
                                while (r6.hasNext()) {
                                    ydVar2 = (yd) hfVar7.m.get(str30);
                                    if (ydVar2 != null) {
                                        kf kfVar16 = hfVar7.e;
                                        LinkedHashMap linkedHashMap16 = hfVar7.m;
                                        AdapterVersionData adapterVersionData16 = ydVar2.b;
                                        te teVar5 = teVar;
                                        String str33 = str;
                                        ke keVarA16 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str33, (int) Duration.m4378getInWholeMillisecondsimpl(longRef4.element));
                                        long jA16 = hfVar7.a();
                                        kfVar16.getClass();
                                        kf.a(linkedHashMap16, str30, adapterVersionData16, keVarA16, jA16);
                                        ieVar5 = ieVar5;
                                        str = str33;
                                        teVar = teVar5;
                                    }
                                }
                                ie ieVar112 = ieVar5;
                                teVar2 = teVar;
                                p005kotlin.Unit unit1110 = p005kotlin.Unit.INSTANCE;
                                mutex10.unlock(null);
                                linkedHashSet2 = set5;
                                r17 = r19;
                                onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener4;
                                hfVar8 = hfVar7;
                                ieVar4 = ieVar112;
                                r18 = r18;
                                uj2 uj2VarE12 = hs3.a().e();
                                vz0.a aVarU12 = ieVar4.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU12, "toBuilder(...)");
                                he heVar3 = (he) aVarU12;
                                Intrinsics.checkNotNullParameter(heVar3, str27);
                                List listL12 = heVar3.l();
                                Intrinsics.checkNotNullExpressionValue(listL12, "getInitializedAdapterClassesList(...)");
                                Intrinsics.checkNotNullParameter(new lo0(listL12), str26);
                                Intrinsics.checkNotNullParameter(linkedHashSet2, str25);
                                heVar3.d(linkedHashSet2);
                                unit2 = p005kotlin.Unit.INSTANCE;
                                vz0 vz0VarB110 = heVar3.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB110, str24);
                                uj2VarE12.K = (ie) vz0VarB110;
                                if (onAdapterInitializationCompleteListener3 != null) {
                                    m21 m21Var14 = o21.f;
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar2.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, onAdapterInitializationCompleteListener3, hfVar8, linkedHashSet2), 3, null);
                                } else {
                                    unit2 = null;
                                }
                                if (unit2 instanceof i01) {
                                    xs3.a((i01) unit2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(r18, null);
                                return unit2;
                            case 8:
                                Mutex mutex17 = teVar.j;
                                AdapterInitializationConfig adapterInitializationConfig17 = teVar.i;
                                linkedHashSet2 = (Set) teVar.h;
                                longRef3 = (Ref.LongRef) teVar.g;
                                ieVar4 = (ie) teVar.f;
                                closeable9 = (Closeable) teVar.e;
                                r12 = (rr3) teVar.d;
                                onAdapterInitializationCompleteListener3 = (OnAdapterInitializationCompleteListener) teVar.c;
                                adapterInitializationConfig7 = (AdapterInitializationConfig) teVar.b;
                                hfVar6 = teVar.a;
                                try {
                                    p005kotlin.ResultKt.throwOnFailure(obj13);
                                    mutex8 = mutex17;
                                    adapterInitializationConfig8 = adapterInitializationConfig17;
                                    str27 = "builder";
                                    str25 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                    str = "Timeout.";
                                    str26 = "<this>";
                                    obj11 = null;
                                    obj10 = coroutine_suspended;
                                    str24 = "build(...)";
                                    closeable9 = closeable9;
                                    r12 = r12;
                                    boolean zAdd10 = hfVar6.v.add(adapterInitializationConfig8);
                                    mutex8.unlock(obj11);
                                    Boxing.boxBoolean(zAdd10);
                                    hfVar8 = hfVar6;
                                    ieVar5 = ieVar4;
                                    closeable10 = closeable9;
                                    r19 = r12;
                                    adapterInitializationConfig2 = adapterInitializationConfig7;
                                    m21Var2 = o21.f;
                                    j4 = longRef3.element;
                                    veVar2 = new ve(hfVar8, adapterInitializationConfig2, linkedHashSet2, null);
                                    teVar.a = hfVar8;
                                    teVar.b = onAdapterInitializationCompleteListener3;
                                    teVar.c = r19;
                                    teVar.d = closeable10;
                                    teVar.e = ieVar5;
                                    teVar.f = longRef3;
                                    teVar.g = linkedHashSet2;
                                    teVar.h = null;
                                    teVar.i = null;
                                    teVar.j = null;
                                    teVar.m = 9;
                                    if (m21Var2.a(j4, veVar2, teVar) == obj10) {
                                        return obj10;
                                    }
                                    hfVar7 = hfVar8;
                                    set4 = linkedHashSet2;
                                    longRef4 = longRef3;
                                    onAdapterInitializationCompleteListener4 = onAdapterInitializationCompleteListener3;
                                    closeable11 = closeable10;
                                    r16 = r19;
                                    mutex9 = hfVar7.l;
                                    teVar.a = hfVar7;
                                    teVar.b = onAdapterInitializationCompleteListener4;
                                    teVar.c = r16;
                                    teVar.d = closeable11;
                                    teVar.e = ieVar5;
                                    teVar.f = longRef4;
                                    teVar.g = set4;
                                    teVar.h = mutex9;
                                    teVar.m = 10;
                                    if (mutex9.lock(null, teVar) == obj10) {
                                        return obj10;
                                    }
                                    Set set112 = set4;
                                    mutex10 = mutex9;
                                    set5 = set112;
                                    r18 = closeable11;
                                    r19 = r16;
                                    while (r6.hasNext()) {
                                        ydVar2 = (yd) hfVar7.m.get(str30);
                                        if (ydVar2 != null) {
                                            kf kfVar17 = hfVar7.e;
                                            LinkedHashMap linkedHashMap17 = hfVar7.m;
                                            AdapterVersionData adapterVersionData17 = ydVar2.b;
                                            te teVar6 = teVar;
                                            String str34 = str;
                                            ke keVarA17 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str34, (int) Duration.m4378getInWholeMillisecondsimpl(longRef4.element));
                                            long jA17 = hfVar7.a();
                                            kfVar17.getClass();
                                            kf.a(linkedHashMap17, str30, adapterVersionData17, keVarA17, jA17);
                                            ieVar5 = ieVar5;
                                            str = str34;
                                            teVar = teVar6;
                                        }
                                    }
                                    ie ieVar113 = ieVar5;
                                    teVar2 = teVar;
                                    p005kotlin.Unit unit1111 = p005kotlin.Unit.INSTANCE;
                                    mutex10.unlock(null);
                                    linkedHashSet2 = set5;
                                    r17 = r19;
                                    onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener4;
                                    hfVar8 = hfVar7;
                                    ieVar4 = ieVar113;
                                    r18 = r18;
                                    uj2 uj2VarE13 = hs3.a().e();
                                    vz0.a aVarU13 = ieVar4.u();
                                    Intrinsics.checkNotNullExpressionValue(aVarU13, "toBuilder(...)");
                                    he heVar4 = (he) aVarU13;
                                    Intrinsics.checkNotNullParameter(heVar4, str27);
                                    List listL13 = heVar4.l();
                                    Intrinsics.checkNotNullExpressionValue(listL13, "getInitializedAdapterClassesList(...)");
                                    Intrinsics.checkNotNullParameter(new lo0(listL13), str26);
                                    Intrinsics.checkNotNullParameter(linkedHashSet2, str25);
                                    heVar4.d(linkedHashSet2);
                                    unit2 = p005kotlin.Unit.INSTANCE;
                                    vz0 vz0VarB111 = heVar4.b();
                                    Intrinsics.checkNotNullExpressionValue(vz0VarB111, str24);
                                    uj2VarE13.K = (ie) vz0VarB111;
                                    if (onAdapterInitializationCompleteListener3 != null) {
                                        m21 m21Var15 = o21.f;
                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar2.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, onAdapterInitializationCompleteListener3, hfVar8, linkedHashSet2), 3, null);
                                    } else {
                                        unit2 = null;
                                    }
                                    if (unit2 instanceof i01) {
                                        xs3.a((i01) unit2, false);
                                        break;
                                    }
                                    CloseableKt.closeFinally(r18, null);
                                    return unit2;
                                } catch (Throwable th24) {
                                    th = th24;
                                    r2 = closeable9;
                                    r8 = r12;
                                    r8.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        r8.a(th);
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
                            case 9:
                                Set set21 = (Set) teVar.g;
                                Ref.LongRef longRef6 = (Ref.LongRef) teVar.f;
                                ie ieVar20 = (ie) teVar.e;
                                Closeable closeable18 = teVar.d;
                                rr3 rr3Var13 = (rr3) teVar.c;
                                onAdapterInitializationCompleteListener4 = (OnAdapterInitializationCompleteListener) teVar.b;
                                hfVar7 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                str27 = "builder";
                                str25 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str = "Timeout.";
                                str26 = "<this>";
                                ieVar5 = ieVar20;
                                obj10 = coroutine_suspended;
                                str24 = "build(...)";
                                longRef4 = longRef6;
                                set4 = set21;
                                closeable11 = closeable18;
                                r16 = rr3Var13;
                                mutex9 = hfVar7.l;
                                teVar.a = hfVar7;
                                teVar.b = onAdapterInitializationCompleteListener4;
                                teVar.c = r16;
                                teVar.d = closeable11;
                                teVar.e = ieVar5;
                                teVar.f = longRef4;
                                teVar.g = set4;
                                teVar.h = mutex9;
                                teVar.m = 10;
                                if (mutex9.lock(null, teVar) == obj10) {
                                    return obj10;
                                }
                                Set set113 = set4;
                                mutex10 = mutex9;
                                set5 = set113;
                                r18 = closeable11;
                                r19 = r16;
                                while (r6.hasNext()) {
                                    ydVar2 = (yd) hfVar7.m.get(str30);
                                    if (ydVar2 != null) {
                                        kf kfVar18 = hfVar7.e;
                                        LinkedHashMap linkedHashMap18 = hfVar7.m;
                                        AdapterVersionData adapterVersionData18 = ydVar2.b;
                                        te teVar7 = teVar;
                                        String str35 = str;
                                        ke keVarA18 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str35, (int) Duration.m4378getInWholeMillisecondsimpl(longRef4.element));
                                        long jA18 = hfVar7.a();
                                        kfVar18.getClass();
                                        kf.a(linkedHashMap18, str30, adapterVersionData18, keVarA18, jA18);
                                        ieVar5 = ieVar5;
                                        str = str35;
                                        teVar = teVar7;
                                    }
                                }
                                ie ieVar114 = ieVar5;
                                teVar2 = teVar;
                                p005kotlin.Unit unit1112 = p005kotlin.Unit.INSTANCE;
                                mutex10.unlock(null);
                                linkedHashSet2 = set5;
                                r17 = r19;
                                onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener4;
                                hfVar8 = hfVar7;
                                ieVar4 = ieVar114;
                                r18 = r18;
                                uj2 uj2VarE14 = hs3.a().e();
                                vz0.a aVarU14 = ieVar4.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU14, "toBuilder(...)");
                                he heVar5 = (he) aVarU14;
                                Intrinsics.checkNotNullParameter(heVar5, str27);
                                List listL14 = heVar5.l();
                                Intrinsics.checkNotNullExpressionValue(listL14, "getInitializedAdapterClassesList(...)");
                                Intrinsics.checkNotNullParameter(new lo0(listL14), str26);
                                Intrinsics.checkNotNullParameter(linkedHashSet2, str25);
                                heVar5.d(linkedHashSet2);
                                unit2 = p005kotlin.Unit.INSTANCE;
                                vz0 vz0VarB112 = heVar5.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB112, str24);
                                uj2VarE14.K = (ie) vz0VarB112;
                                if (onAdapterInitializationCompleteListener3 != null) {
                                    m21 m21Var16 = o21.f;
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar2.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, onAdapterInitializationCompleteListener3, hfVar8, linkedHashSet2), 3, null);
                                } else {
                                    unit2 = null;
                                }
                                if (unit2 instanceof i01) {
                                    xs3.a((i01) unit2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(r18, null);
                                return unit2;
                            case 10:
                                Mutex mutex18 = (Mutex) teVar.h;
                                Set set22 = (Set) teVar.g;
                                longRef4 = (Ref.LongRef) teVar.f;
                                ie ieVar21 = (ie) teVar.e;
                                Closeable closeable19 = teVar.d;
                                rr3 rr3Var14 = (rr3) teVar.c;
                                onAdapterInitializationCompleteListener4 = (OnAdapterInitializationCompleteListener) teVar.b;
                                hfVar7 = teVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj13);
                                mutex10 = mutex18;
                                set5 = set22;
                                str27 = "builder";
                                ieVar5 = ieVar21;
                                str25 = TJAdUnitConstants.String.USAGE_TRACKER_VALUES;
                                str = "Timeout.";
                                str26 = "<this>";
                                str24 = "build(...)";
                                r18 = closeable19;
                                r19 = rr3Var14;
                                while (r6.hasNext()) {
                                    ydVar2 = (yd) hfVar7.m.get(str30);
                                    if (ydVar2 != null) {
                                        kf kfVar19 = hfVar7.e;
                                        LinkedHashMap linkedHashMap19 = hfVar7.m;
                                        AdapterVersionData adapterVersionData19 = ydVar2.b;
                                        te teVar8 = teVar;
                                        String str36 = str;
                                        ke keVarA19 = le.a(AdapterStatus.InitializationState.TIMED_OUT, str36, (int) Duration.m4378getInWholeMillisecondsimpl(longRef4.element));
                                        long jA19 = hfVar7.a();
                                        kfVar19.getClass();
                                        kf.a(linkedHashMap19, str30, adapterVersionData19, keVarA19, jA19);
                                        ieVar5 = ieVar5;
                                        str = str36;
                                        teVar = teVar8;
                                    }
                                }
                                ie ieVar115 = ieVar5;
                                teVar2 = teVar;
                                p005kotlin.Unit unit1113 = p005kotlin.Unit.INSTANCE;
                                mutex10.unlock(null);
                                linkedHashSet2 = set5;
                                r17 = r19;
                                onAdapterInitializationCompleteListener3 = onAdapterInitializationCompleteListener4;
                                hfVar8 = hfVar7;
                                ieVar4 = ieVar115;
                                r18 = r18;
                                uj2 uj2VarE15 = hs3.a().e();
                                vz0.a aVarU15 = ieVar4.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU15, "toBuilder(...)");
                                he heVar6 = (he) aVarU15;
                                Intrinsics.checkNotNullParameter(heVar6, str27);
                                List listL15 = heVar6.l();
                                Intrinsics.checkNotNullExpressionValue(listL15, "getInitializedAdapterClassesList(...)");
                                Intrinsics.checkNotNullParameter(new lo0(listL15), str26);
                                Intrinsics.checkNotNullParameter(linkedHashSet2, str25);
                                heVar6.d(linkedHashSet2);
                                unit2 = p005kotlin.Unit.INSTANCE;
                                vz0 vz0VarB113 = heVar6.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB113, str24);
                                uj2VarE15.K = (ie) vz0VarB113;
                                if (onAdapterInitializationCompleteListener3 != null) {
                                    m21 m21Var17 = o21.f;
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(teVar2.get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new we(null, onAdapterInitializationCompleteListener3, hfVar8, linkedHashSet2), 3, null);
                                } else {
                                    unit2 = null;
                                }
                                if (unit2 instanceof i01) {
                                    xs3.a((i01) unit2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(r18, null);
                                return unit2;
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } catch (Throwable th25) {
                        th = th25;
                    }
                } catch (Throwable th26) {
                    th = th26;
                }
            } catch (Throwable th27) {
                th = th27;
                r18 = obj12;
                r14 = r110;
            }
        } catch (Throwable th28) {
            th = th28;
            r6 = r19;
            r7 = r18;
            r6.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                r6.a(th);
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
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0150  */
    /* JADX WARN: Code duplicated, block: B:52:0x0170  */
    /* JADX WARN: Code duplicated, block: B:55:0x017f A[Catch: all -> 0x01bd, TRY_LEAVE, TryCatch #0 {all -> 0x01bd, blocks: (B:53:0x0171, B:55:0x017f), top: B:65:0x0171 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0170 -> B:65:0x0171). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlin.hf r19, com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig r20, java.util.Set r21, p005kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.hf.a(ads_mobile_sdk.hf, com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig, java.util.Set, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0243 A[Catch: all -> 0x0069, TryCatch #3 {all -> 0x0069, blocks: (B:15:0x0049, B:113:0x02a5, B:117:0x02b0, B:119:0x02b4, B:115:0x02ab, B:116:0x02af, B:20:0x005f, B:98:0x023c, B:100:0x0243, B:101:0x024a, B:103:0x024e, B:107:0x026b, B:109:0x0275, B:111:0x0279), top: B:152:0x0033, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x024e A[Catch: all -> 0x0069, TRY_LEAVE, TryCatch #3 {all -> 0x0069, blocks: (B:15:0x0049, B:113:0x02a5, B:117:0x02b0, B:119:0x02b4, B:115:0x02ab, B:116:0x02af, B:20:0x005f, B:98:0x023c, B:100:0x0243, B:101:0x024a, B:103:0x024e, B:107:0x026b, B:109:0x0275, B:111:0x0279), top: B:152:0x0033, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0267  */
    /* JADX WARN: Code duplicated, block: B:109:0x0275 A[Catch: all -> 0x02aa, TryCatch #7 {all -> 0x02aa, blocks: (B:107:0x026b, B:109:0x0275, B:111:0x0279), top: B:161:0x026b, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0278  */
    /* JADX WARN: Code duplicated, block: B:119:0x02b4 A[Catch: all -> 0x0069, TRY_LEAVE, TryCatch #3 {all -> 0x0069, blocks: (B:15:0x0049, B:113:0x02a5, B:117:0x02b0, B:119:0x02b4, B:115:0x02ab, B:116:0x02af, B:20:0x005f, B:98:0x023c, B:100:0x0243, B:101:0x024a, B:103:0x024e, B:107:0x026b, B:109:0x0275, B:111:0x0279), top: B:152:0x0033, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0122 A[Catch: all -> 0x0090, TryCatch #0 {all -> 0x0090, blocks: (B:25:0x0078, B:54:0x0185, B:58:0x0190, B:60:0x0194, B:56:0x018b, B:57:0x018f, B:28:0x0086, B:39:0x011b, B:41:0x0122, B:42:0x0129, B:44:0x012d, B:48:0x014b, B:50:0x0155, B:52:0x0159), top: B:152:0x0033, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x012d A[Catch: all -> 0x0090, TRY_LEAVE, TryCatch #0 {all -> 0x0090, blocks: (B:25:0x0078, B:54:0x0185, B:58:0x0190, B:60:0x0194, B:56:0x018b, B:57:0x018f, B:28:0x0086, B:39:0x011b, B:41:0x0122, B:42:0x0129, B:44:0x012d, B:48:0x014b, B:50:0x0155, B:52:0x0159), top: B:152:0x0033, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0147  */
    /* JADX WARN: Code duplicated, block: B:50:0x0155 A[Catch: all -> 0x018a, TryCatch #5 {all -> 0x018a, blocks: (B:48:0x014b, B:50:0x0155, B:52:0x0159), top: B:158:0x014b, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0158  */
    /* JADX WARN: Code duplicated, block: B:60:0x0194 A[Catch: all -> 0x0090, TRY_LEAVE, TryCatch #0 {all -> 0x0090, blocks: (B:25:0x0078, B:54:0x0185, B:58:0x0190, B:60:0x0194, B:56:0x018b, B:57:0x018f, B:28:0x0086, B:39:0x011b, B:41:0x0122, B:42:0x0129, B:44:0x012d, B:48:0x014b, B:50:0x0155, B:52:0x0159), top: B:152:0x0033, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [ads_mobile_sdk.be] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r3v0, types: [long] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v11, types: [ads_mobile_sdk.m21] */
    /* JADX WARN: Type inference failed for: r8v6, types: [ads_mobile_sdk.m21] */
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
    public static final Object a(hf hfVar, String str, be beVar, long j, Continuation continuation) {
        qe qeVar;
        ?? r5;
        ?? r6;
        ?? r2;
        ?? r3;
        Closeable closeable;
        Closeable closeable2;
        rr3 rr3Var;
        v01 v01Var;
        Mutex mutex;
        String str2;
        v01 v01Var2;
        hf hfVar2;
        ?? r4;
        yd ydVar;
        AdapterVersionData adapterVersionData;
        rr3 rr3Var2;
        v01 v01Var3;
        Mutex mutex2;
        String str3;
        v01 v01Var4;
        hf hfVar3;
        ?? r7;
        yd ydVar2;
        AdapterVersionData adapterVersionData2;
        hf hfVar4 = hfVar;
        String str4 = str;
        ?? r8 = beVar;
        ?? r9 = j;
        hfVar4.getClass();
        if (continuation instanceof qe) {
            qeVar = (qe) continuation;
            int i = qeVar.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                qeVar.i = i - Integer.MIN_VALUE;
            } else {
                qeVar = new qe(hfVar4, continuation);
            }
        } else {
            qeVar = new qe(hfVar4, continuation);
        }
        Object obj = qeVar.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qeVar.i;
        try {
            try {
                if (i2 != 0) {
                    try {
                        if (i2 == 1) {
                            Closeable closeable3 = qeVar.d;
                            rr3 rr3Var3 = qeVar.c;
                            String str5 = qeVar.b;
                            hf hfVar5 = qeVar.a;
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            str4 = str5;
                            hfVar4 = hfVar5;
                            closeable2 = closeable3;
                            rr3Var = rr3Var3;
                            v01Var = (v01) obj;
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            r4 = closeable2;
                            if (v01Var instanceof r01) {
                                mutex = hfVar4.l;
                                qeVar.a = hfVar4;
                                qeVar.b = str4;
                                qeVar.c = rr3Var;
                                qeVar.d = closeable2;
                                qeVar.e = v01Var;
                                qeVar.f = mutex;
                                qeVar.i = 2;
                                if (mutex.lock(null, qeVar) != coroutine_suspended) {
                                    str2 = str4;
                                    v01Var2 = v01Var;
                                    hfVar2 = hfVar4;
                                    r8 = closeable2;
                                    r9 = rr3Var;
                                }
                                return coroutine_suspended;
                            }
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            CloseableKt.closeFinally(r4, null);
                            return v01Var;
                        }
                        if (i2 != 2) {
                            try {
                                if (i2 == 3) {
                                    Closeable closeable4 = qeVar.d;
                                    rr3 rr3Var4 = qeVar.c;
                                    String str6 = qeVar.b;
                                    hf hfVar6 = qeVar.a;
                                    p005kotlin.ResultKt.throwOnFailure(obj);
                                    str4 = str6;
                                    hfVar4 = hfVar6;
                                    closeable = closeable4;
                                    rr3Var2 = rr3Var4;
                                    v01Var3 = (v01) obj;
                                    if (v01Var3 instanceof i01) {
                                        xs3.a((i01) v01Var3, false);
                                    }
                                    r7 = closeable;
                                    if (v01Var3 instanceof r01) {
                                        mutex2 = hfVar4.l;
                                        qeVar.a = hfVar4;
                                        qeVar.b = str4;
                                        qeVar.c = rr3Var2;
                                        qeVar.d = closeable;
                                        qeVar.e = v01Var3;
                                        qeVar.f = mutex2;
                                        qeVar.i = 4;
                                        if (mutex2.lock(null, qeVar) != coroutine_suspended) {
                                            str3 = str4;
                                            v01Var4 = v01Var3;
                                            hfVar3 = hfVar4;
                                            r8 = closeable;
                                            r9 = rr3Var2;
                                        }
                                        return coroutine_suspended;
                                    }
                                    if (v01Var3 instanceof i01) {
                                        xs3.a((i01) v01Var3, false);
                                    }
                                    CloseableKt.closeFinally(r7, null);
                                    return v01Var3;
                                }
                                if (i2 != 4) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                Mutex mutex3 = qeVar.f;
                                v01Var4 = qeVar.e;
                                Closeable closeable5 = qeVar.d;
                                rr3 rr3Var5 = qeVar.c;
                                str3 = qeVar.b;
                                hfVar3 = qeVar.a;
                                p005kotlin.ResultKt.throwOnFailure(obj);
                                mutex2 = mutex3;
                                r8 = closeable5;
                                r9 = rr3Var5;
                                ydVar2 = (yd) hfVar3.m.get(str3);
                                if (ydVar2 != null) {
                                    adapterVersionData2 = ydVar2.b;
                                } else {
                                    adapterVersionData2 = null;
                                }
                                kf kfVar = hfVar3.e;
                                LinkedHashMap linkedHashMap = hfVar3.m;
                                ke keVarA = le.a(AdapterStatus.InitializationState.TIMED_OUT, "Timeout.", (int) Duration.m4378getInWholeMillisecondsimpl(hfVar3.i.p()));
                                long jA = hfVar3.a();
                                kfVar.getClass();
                                kf.a(linkedHashMap, str3, adapterVersionData2, keVarA, jA);
                                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                v01Var3 = v01Var4;
                                r7 = r8;
                                if (v01Var3 instanceof i01) {
                                    xs3.a((i01) v01Var3, false);
                                }
                                CloseableKt.closeFinally(r7, null);
                                return v01Var3;
                            } catch (Throwable th) {
                                mutex2.unlock(null);
                                throw th;
                            }
                        }
                        Mutex mutex4 = qeVar.f;
                        v01Var2 = qeVar.e;
                        Closeable closeable6 = qeVar.d;
                        rr3 rr3Var6 = qeVar.c;
                        str2 = qeVar.b;
                        hfVar2 = qeVar.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        mutex = mutex4;
                        r8 = closeable6;
                        r9 = rr3Var6;
                        ydVar = (yd) hfVar2.m.get(str2);
                        if (ydVar != null) {
                            adapterVersionData = ydVar.b;
                        } else {
                            adapterVersionData = null;
                        }
                        kf kfVar2 = hfVar2.e;
                        LinkedHashMap linkedHashMap2 = hfVar2.m;
                        ke keVarA2 = le.a(AdapterStatus.InitializationState.TIMED_OUT, "Timeout.", (int) Duration.m4378getInWholeMillisecondsimpl(hfVar2.i.p()));
                        long jA2 = hfVar2.a();
                        kfVar2.getClass();
                        kf.a(linkedHashMap2, str2, adapterVersionData, keVarA2, jA2);
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        v01Var = v01Var2;
                        r4 = r8;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(r4, null);
                        return v01Var;
                    } catch (Throwable th2) {
                        mutex.unlock(null);
                        throw th2;
                    }
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                g83 g83Var = hfVar4.j;
                s11 s11Var = s11.CUI_NAME_SDKINIT_ADAPTERINIT;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        hs3.a().a.c.d = str4;
                        CoroutineScope coroutineScope = hfVar4.a;
                        CompletableJob context = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null);
                        se block = new se(hfVar4, str4, r8, null);
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null);
                        ?? r10 = o21.f;
                        re reVar = new re(deferredAsync$default, null);
                        qeVar.a = hfVar4;
                        qeVar.b = str4;
                        qeVar.c = tu2VarA;
                        qeVar.d = tu2VarA;
                        qeVar.i = 1;
                        Object objA = r10.a(r9, reVar, qeVar);
                        if (objA != coroutine_suspended) {
                            tu2 tu2Var = tu2VarA;
                            obj = objA;
                            closeable2 = tu2Var;
                            rr3Var = tu2Var;
                            v01Var = (v01) obj;
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            r4 = closeable2;
                            if (v01Var instanceof r01) {
                                mutex = hfVar4.l;
                                qeVar.a = hfVar4;
                                qeVar.b = str4;
                                qeVar.c = rr3Var;
                                qeVar.d = closeable2;
                                qeVar.e = v01Var;
                                qeVar.f = mutex;
                                qeVar.i = 2;
                                if (mutex.lock(null, qeVar) != coroutine_suspended) {
                                    str2 = str4;
                                    v01Var2 = v01Var;
                                    hfVar2 = hfVar4;
                                    r8 = closeable2;
                                    r9 = rr3Var;
                                    ydVar = (yd) hfVar2.m.get(str2);
                                    if (ydVar != null) {
                                        adapterVersionData = ydVar.b;
                                    } else {
                                        adapterVersionData = null;
                                    }
                                    kf kfVar3 = hfVar2.e;
                                    LinkedHashMap linkedHashMap3 = hfVar2.m;
                                    ke keVarA3 = le.a(AdapterStatus.InitializationState.TIMED_OUT, "Timeout.", (int) Duration.m4378getInWholeMillisecondsimpl(hfVar2.i.p()));
                                    long jA3 = hfVar2.a();
                                    kfVar3.getClass();
                                    kf.a(linkedHashMap3, str2, adapterVersionData, keVarA3, jA3);
                                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                    mutex.unlock(null);
                                    v01Var = v01Var2;
                                    r4 = r8;
                                }
                            }
                            if (v01Var instanceof i01) {
                                xs3.a((i01) v01Var, false);
                            }
                            CloseableKt.closeFinally(r4, null);
                            return v01Var;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        r3 = tu2VarA;
                        r6 = tu2VarA;
                        try {
                            r6.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r6.a(th);
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
                        } catch (Throwable th4) {
                            try {
                                throw th4;
                            } catch (Throwable th5) {
                                CloseableKt.closeFinally(r3, th4);
                                throw th5;
                            }
                        }
                    }
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        hs3.a().a.c.d = str4;
                        CoroutineScope coroutineScope2 = hfVar4.a;
                        CompletableJob context2 = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null);
                        se block2 = new se(hfVar4, str4, r8, null);
                        Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                        Intrinsics.checkNotNullParameter(context2, "context");
                        Intrinsics.checkNotNullParameter(block2, "block");
                        Deferred deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope2, context2, null, new vs3(block2, null), 2, null);
                        ?? r11 = o21.f;
                        re reVar2 = new re(deferredAsync$default2, null);
                        qeVar.a = hfVar4;
                        qeVar.b = str4;
                        qeVar.c = rr3VarA;
                        qeVar.d = rr3VarA;
                        qeVar.i = 3;
                        Object objA2 = r11.a(r9, reVar2, qeVar);
                        if (objA2 != coroutine_suspended) {
                            rr3 rr3Var7 = rr3VarA;
                            obj = objA2;
                            closeable = rr3Var7;
                            rr3Var2 = rr3Var7;
                            v01Var3 = (v01) obj;
                            if (v01Var3 instanceof i01) {
                                xs3.a((i01) v01Var3, false);
                            }
                            r7 = closeable;
                            if (v01Var3 instanceof r01) {
                                mutex2 = hfVar4.l;
                                qeVar.a = hfVar4;
                                qeVar.b = str4;
                                qeVar.c = rr3Var2;
                                qeVar.d = closeable;
                                qeVar.e = v01Var3;
                                qeVar.f = mutex2;
                                qeVar.i = 4;
                                if (mutex2.lock(null, qeVar) != coroutine_suspended) {
                                    str3 = str4;
                                    v01Var4 = v01Var3;
                                    hfVar3 = hfVar4;
                                    r8 = closeable;
                                    r9 = rr3Var2;
                                    ydVar2 = (yd) hfVar3.m.get(str3);
                                    if (ydVar2 != null) {
                                        adapterVersionData2 = ydVar2.b;
                                    } else {
                                        adapterVersionData2 = null;
                                    }
                                    kf kfVar4 = hfVar3.e;
                                    LinkedHashMap linkedHashMap4 = hfVar3.m;
                                    ke keVarA4 = le.a(AdapterStatus.InitializationState.TIMED_OUT, "Timeout.", (int) Duration.m4378getInWholeMillisecondsimpl(hfVar3.i.p()));
                                    long jA4 = hfVar3.a();
                                    kfVar4.getClass();
                                    kf.a(linkedHashMap4, str3, adapterVersionData2, keVarA4, jA4);
                                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                    mutex2.unlock(null);
                                    v01Var3 = v01Var4;
                                    r7 = r8;
                                }
                            }
                            if (v01Var3 instanceof i01) {
                                xs3.a((i01) v01Var3, false);
                            }
                            CloseableKt.closeFinally(r7, null);
                            return v01Var3;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        r2 = rr3VarA;
                        r5 = rr3VarA;
                        try {
                            r5.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r5.a(th);
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
                        } catch (Throwable th7) {
                            try {
                                throw th7;
                            } catch (Throwable th8) {
                                CloseableKt.closeFinally(r2, th7);
                                throw th8;
                            }
                        }
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th9) {
                th = th9;
                r6 = r9;
                r3 = r8;
            }
        } catch (Throwable th10) {
            th = th10;
            r5 = r9;
            r2 = r8;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d2, code lost:
    
        if (r5.b(r3) == r4) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.hf r18, java.lang.String r19, kotlin.be r20, p005kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.hf.a(ads_mobile_sdk.hf, java.lang.String, ads_mobile_sdk.be, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object a(hf hfVar, Set set, Continuation continuation) {
        oe oeVar;
        Mutex mutex;
        AdapterStatus adapterStatus;
        if (continuation instanceof oe) {
            oeVar = (oe) continuation;
            int i = oeVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                oeVar.f = i - Integer.MIN_VALUE;
            } else {
                oeVar = new oe(hfVar, continuation);
            }
        } else {
            oeVar = new oe(hfVar, continuation);
        }
        Object obj = oeVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = oeVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = hfVar.l;
            oeVar.a = hfVar;
            oeVar.b = set;
            oeVar.c = mutex;
            oeVar.f = 1;
            if (mutex.lock(null, oeVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = oeVar.c;
            set = oeVar.b;
            hf hfVar2 = oeVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            hfVar = hfVar2;
        }
        try {
            Ref.LongRef longRef = new Ref.LongRef();
            longRef.element = hfVar.q;
            if (set.isEmpty()) {
                set = hfVar.m.keySet();
            }
            for (String str : SetsKt.plus(set, (Iterable) SetsKt.setOf("com.google.android.libraries.ads.mobile.sdk.MobileAds"))) {
                Duration durationM4365boximpl = Duration.m4365boximpl(longRef.element);
                yd ydVar = (yd) hfVar.m.get(str);
                Comparable comparableMax = Comparators.max(durationM4365boximpl, Duration.m4365boximpl(ydVar != null ? ydVar.c : Duration.INSTANCE.m4458getZEROUwyO8pc()));
                Intrinsics.checkNotNullExpressionValue(comparableMax, "max(...)");
                longRef.element = ((Duration) comparableMax).getRawValue();
                yd ydVar2 = (yd) hfVar.m.get(str);
                if (((ydVar2 == null || (adapterStatus = ydVar2.a) == null) ? null : adapterStatus.getInitializationState()) == AdapterStatus.InitializationState.TIMED_OUT) {
                    Duration durationM4365boximpl2 = Duration.m4365boximpl(longRef.element);
                    Duration.Companion companion = Duration.INSTANCE;
                    Comparable comparableMax2 = Comparators.max(durationM4365boximpl2, Duration.m4365boximpl(DurationKt.toDuration(hfVar.a(), DurationUnit.MILLISECONDS)));
                    Intrinsics.checkNotNullExpressionValue(comparableMax2, "max(...)");
                    longRef.element = ((Duration) comparableMax2).getRawValue();
                }
            }
            Set setEntrySet = hfVar.m.entrySet();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
            for (Object obj2 : setEntrySet) {
                linkedHashMap.put((String) ((Map.Entry) obj2).getKey(), ((yd) ((Map.Entry) obj2).getValue()).a);
            }
            Map mutableMap = MapsKt.toMutableMap(linkedHashMap);
            mutableMap.put("com.google.android.libraries.ads.mobile.sdk.MobileAds", hfVar.p);
            return new pe(longRef, mutableMap);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(hf hfVar, Continuation continuation) {
        ne neVar;
        Mutex mutex;
        if (continuation instanceof ne) {
            neVar = (ne) continuation;
            int i = neVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                neVar.e = i - Integer.MIN_VALUE;
            } else {
                neVar = new ne(hfVar, continuation);
            }
        } else {
            neVar = new ne(hfVar, continuation);
        }
        Object obj = neVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = neVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = hfVar.l;
            neVar.a = hfVar;
            neVar.b = mutex;
            neVar.e = 1;
            if (mutex.lock(null, neVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = neVar.b;
            hf hfVar2 = neVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            hfVar = hfVar2;
        }
        try {
            return MapsKt.toMap(hfVar.m);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b A[Catch: all -> 0x00eb, TryCatch #1 {all -> 0x00eb, blocks: (B:25:0x0077, B:27:0x007b, B:28:0x0080), top: B:51:0x0077 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5 A[Catch: all -> 0x00e5, LOOP:0: B:37:0x00af->B:39:0x00b5, LOOP_END, TryCatch #0 {all -> 0x00e5, blocks: (B:36:0x00a9, B:37:0x00af, B:39:0x00b5, B:40:0x00df), top: B:49:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(hf hfVar, Continuation continuation) {
        cf cfVar;
        Set set;
        hf hfVar2;
        Mutex mutex;
        Set linkedHashSet;
        Mutex mutex2;
        hf hfVar3;
        if (continuation instanceof cf) {
            cfVar = (cf) continuation;
            int i = cfVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                cfVar.f = i - Integer.MIN_VALUE;
            } else {
                cfVar = new cf(hfVar, continuation);
            }
        } else {
            cfVar = new cf(hfVar, continuation);
        }
        Object objA = cfVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cfVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            pn pnVar = hfVar.g;
            cfVar.a = hfVar;
            cfVar.f = 1;
            objA = pnVar.a((AdapterInitializationConfig) null, cfVar);
            if (objA != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            hfVar = cfVar.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        } else {
            if (i2 == 2) {
                mutex = cfVar.c;
                set = (Set) cfVar.b;
                hfVar2 = cfVar.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
                try {
                    linkedHashSet = hfVar2.x;
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                    }
                    linkedHashSet.addAll(set);
                    hfVar2.x = linkedHashSet;
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    if (!hfVar2.y.getAndSet(true)) {
                        hfVar2.z.complete();
                    }
                    mutex2 = hfVar2.u;
                    cfVar.a = hfVar2;
                    cfVar.b = mutex2;
                    cfVar.c = null;
                    cfVar.f = 3;
                    if (mutex2.lock(null, cfVar) != coroutine_suspended) {
                        hfVar3 = hfVar2;
                    }
                    return coroutine_suspended;
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex2 = (Mutex) cfVar.b;
            hfVar3 = cfVar.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        try {
            for (AdapterInitializationConfig adapterInitializationConfig : hfVar3.v) {
                CoroutineScope coroutineScope = hfVar3.a;
                df block = new df(hfVar3, adapterInitializationConfig, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex2.unlock(null);
        }
        set = (Set) objA;
        Mutex mutex3 = hfVar.u;
        cfVar.a = hfVar;
        cfVar.b = set;
        cfVar.c = mutex3;
        cfVar.f = 2;
        if (mutex3.lock(null, cfVar) != coroutine_suspended) {
            hfVar2 = hfVar;
            mutex = mutex3;
            linkedHashSet = hfVar2.x;
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet();
            }
            linkedHashSet.addAll(set);
            hfVar2.x = linkedHashSet;
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            if (!hfVar2.y.getAndSet(true)) {
                hfVar2.z.complete();
            }
            mutex2 = hfVar2.u;
            cfVar.a = hfVar2;
            cfVar.b = mutex2;
            cfVar.c = null;
            cfVar.f = 3;
            if (mutex2.lock(null, cfVar) != coroutine_suspended) {
                hfVar3 = hfVar2;
                while (r14.hasNext()) {
                    CoroutineScope coroutineScope2 = hfVar3.a;
                    df block2 = new df(hfVar3, adapterInitializationConfig, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                }
                return p005kotlin.Unit.INSTANCE;
            }
        }
        return coroutine_suspended;
    }

    public final long a() {
        long jM4396plusLRDsOJo;
        if (this.s == 0) {
            jM4396plusLRDsOJo = this.r;
        } else {
            long j = this.r;
            Duration.Companion companion = Duration.INSTANCE;
            this.h.getClass();
            jM4396plusLRDsOJo = Duration.m4396plusLRDsOJo(j, Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.t));
        }
        return Duration.m4378getInWholeMillisecondsimpl(jM4396plusLRDsOJo);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0194  */
    /* JADX WARN: Code duplicated, block: B:46:0x019e  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:52:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:57:0x0211  */
    /* JADX WARN: Code duplicated, block: B:60:0x0216  */
    /* JADX WARN: Code duplicated, block: B:63:0x022a  */
    /* JADX WARN: Code duplicated, block: B:70:0x023c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:74:0x0242  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(jf jfVar, String str, be beVar, Continuation continuation) {
        ze zeVar;
        AdapterVersionData adapterVersionData;
        Mutex mutex;
        String str2;
        be beVar2;
        jf jfVar2;
        hf hfVar;
        AdapterVersionData adapterVersionData2;
        String str3;
        AdapterVersionData adapterVersionData3;
        long j;
        String str4;
        hf hfVar2;
        tx txVar;
        AdapterVersionData adapterVersionData4;
        v01 v01Var;
        long rawValue;
        p005kotlin.Pair pair;
        AdapterStatus.InitializationState initializationState;
        String str5;
        Mutex mutex2;
        Mutex mutex3;
        AdapterStatus.InitializationState initializationState2;
        hf hfVar3;
        String str6;
        Mutex mutex4;
        hf hfVar4;
        v01 v01Var2;
        if (continuation instanceof ze) {
            zeVar = (ze) continuation;
            int i = zeVar.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                zeVar.k = i - Integer.MIN_VALUE;
            } else {
                zeVar = new ze(this, continuation);
            }
        } else {
            zeVar = new ze(this, continuation);
        }
        Object objWithContext = zeVar.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zeVar.k;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objWithContext);
                if (jfVar instanceof tc1) {
                    tc1 tc1Var = (tc1) jfVar;
                    adapterVersionData = new AdapterVersionData(tc1Var.a.getVersionInfo().toString(), tc1Var.a.getSDKVersionInfo().toString());
                } else {
                    adapterVersionData = null;
                }
                mutex = this.l;
                zeVar.a = this;
                zeVar.b = jfVar;
                str2 = str;
                zeVar.c = str2;
                zeVar.d = beVar;
                zeVar.e = adapterVersionData;
                zeVar.f = mutex;
                zeVar.k = 1;
                if (mutex.lock(null, zeVar) != coroutine_suspended) {
                    beVar2 = beVar;
                    jfVar2 = jfVar;
                    hfVar = this;
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex5 = (Mutex) zeVar.f;
                adapterVersionData = (AdapterVersionData) zeVar.e;
                beVar2 = (be) zeVar.d;
                str2 = (String) zeVar.c;
                jf jfVar3 = (jf) zeVar.b;
                hf hfVar5 = zeVar.a;
                p005kotlin.ResultKt.throwOnFailure(objWithContext);
                mutex = mutex5;
                hfVar = hfVar5;
                jfVar2 = jfVar3;
            } else {
                if (i2 == 2) {
                    j = zeVar.h;
                    txVar = (tx) zeVar.d;
                    adapterVersionData3 = (AdapterVersionData) zeVar.c;
                    String str7 = (String) zeVar.b;
                    hf hfVar6 = zeVar.a;
                    p005kotlin.ResultKt.throwOnFailure(objWithContext);
                    str4 = str7;
                    hfVar2 = hfVar6;
                    adapterVersionData4 = adapterVersionData3;
                    Duration.Companion companion = Duration.INSTANCE;
                    txVar.getClass();
                    p005kotlin.Pair pair2 = new p005kotlin.Pair((v01) objWithContext, Duration.m4365boximpl(DurationKt.toDuration(SystemClock.elapsedRealtime() - j, DurationUnit.MILLISECONDS)));
                    v01Var = (v01) pair2.component1();
                    rawValue = ((Duration) pair2.component2()).getRawValue();
                    hfVar2.getClass();
                    if (v01Var instanceof q01) {
                        pair = new p005kotlin.Pair(AdapterStatus.InitializationState.COMPLETE, "");
                    } else {
                        if (v01Var instanceof i01) {
                            throw new p005kotlin.NoWhenBranchMatchedException();
                        }
                        pair = new p005kotlin.Pair(AdapterStatus.InitializationState.FAILED, h01.a((i01) v01Var));
                    }
                    initializationState = (AdapterStatus.InitializationState) pair.component1();
                    str5 = (String) pair.component2();
                    mutex2 = hfVar2.l;
                    zeVar.a = hfVar2;
                    zeVar.b = str4;
                    zeVar.c = adapterVersionData4;
                    zeVar.d = v01Var;
                    zeVar.e = initializationState;
                    zeVar.f = str5;
                    zeVar.g = mutex2;
                    zeVar.h = rawValue;
                    zeVar.k = 3;
                    if (mutex2.lock(null, zeVar) != coroutine_suspended) {
                        mutex3 = mutex2;
                        initializationState2 = initializationState;
                        hfVar3 = hfVar2;
                        AdapterVersionData adapterVersionData5 = adapterVersionData4;
                        kf kfVar = hfVar3.e;
                        LinkedHashMap linkedHashMap = hfVar3.m;
                        ke keVarA = le.a(initializationState2, str5, (int) Duration.m4378getInWholeMillisecondsimpl(rawValue));
                        long jA = hfVar3.a();
                        kfVar.getClass();
                        kf.a(linkedHashMap, str4, adapterVersionData5, keVarA, jA);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(null);
                        zeVar.a = hfVar3;
                        zeVar.b = str4;
                        zeVar.c = v01Var;
                        zeVar.d = initializationState2;
                        zeVar.e = null;
                        zeVar.f = null;
                        zeVar.g = null;
                        zeVar.k = 4;
                        if (hfVar3.b(zeVar) != coroutine_suspended) {
                            str6 = str4;
                            if (initializationState2 == AdapterStatus.InitializationState.COMPLETE) {
                                return v01Var;
                            }
                            mutex4 = hfVar3.u;
                            zeVar.a = hfVar3;
                            zeVar.b = str6;
                            zeVar.c = v01Var;
                            zeVar.d = mutex4;
                            zeVar.k = 5;
                            if (mutex4.lock(null, zeVar) != coroutine_suspended) {
                                hfVar4 = hfVar3;
                                v01Var2 = v01Var;
                            }
                        }
                    }
                    return coroutine_suspended;
                }
                if (i2 == 3) {
                    rawValue = zeVar.h;
                    Mutex mutex6 = zeVar.g;
                    str5 = (String) zeVar.f;
                    AdapterStatus.InitializationState initializationState3 = (AdapterStatus.InitializationState) zeVar.e;
                    v01Var = (v01) zeVar.d;
                    adapterVersionData4 = (AdapterVersionData) zeVar.c;
                    str4 = (String) zeVar.b;
                    hfVar2 = zeVar.a;
                    p005kotlin.ResultKt.throwOnFailure(objWithContext);
                    mutex3 = mutex6;
                    initializationState2 = initializationState3;
                    hfVar3 = hfVar2;
                    AdapterVersionData adapterVersionData6 = adapterVersionData4;
                    try {
                        kf kfVar2 = hfVar3.e;
                        LinkedHashMap linkedHashMap2 = hfVar3.m;
                        ke keVarA2 = le.a(initializationState2, str5, (int) Duration.m4378getInWholeMillisecondsimpl(rawValue));
                        long jA2 = hfVar3.a();
                        kfVar2.getClass();
                        kf.a(linkedHashMap2, str4, adapterVersionData6, keVarA2, jA2);
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(null);
                        zeVar.a = hfVar3;
                        zeVar.b = str4;
                        zeVar.c = v01Var;
                        zeVar.d = initializationState2;
                        zeVar.e = null;
                        zeVar.f = null;
                        zeVar.g = null;
                        zeVar.k = 4;
                        if (hfVar3.b(zeVar) != coroutine_suspended) {
                            str6 = str4;
                            if (initializationState2 == AdapterStatus.InitializationState.COMPLETE) {
                                return v01Var;
                            }
                            mutex4 = hfVar3.u;
                            zeVar.a = hfVar3;
                            zeVar.b = str6;
                            zeVar.c = v01Var;
                            zeVar.d = mutex4;
                            zeVar.k = 5;
                            if (mutex4.lock(null, zeVar) != coroutine_suspended) {
                                hfVar4 = hfVar3;
                                v01Var2 = v01Var;
                            }
                        }
                        return coroutine_suspended;
                    } catch (Throwable th) {
                        mutex3.unlock(null);
                        throw th;
                    }
                }
                if (i2 == 4) {
                    initializationState2 = (AdapterStatus.InitializationState) zeVar.d;
                    v01 v01Var3 = (v01) zeVar.c;
                    String str8 = (String) zeVar.b;
                    hf hfVar7 = zeVar.a;
                    p005kotlin.ResultKt.throwOnFailure(objWithContext);
                    v01Var = v01Var3;
                    str6 = str8;
                    hfVar3 = hfVar7;
                    if (initializationState2 == AdapterStatus.InitializationState.COMPLETE) {
                        return v01Var;
                    }
                    mutex4 = hfVar3.u;
                    zeVar.a = hfVar3;
                    zeVar.b = str6;
                    zeVar.c = v01Var;
                    zeVar.d = mutex4;
                    zeVar.k = 5;
                    if (mutex4.lock(null, zeVar) != coroutine_suspended) {
                        hfVar4 = hfVar3;
                        v01Var2 = v01Var;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex4 = (Mutex) zeVar.d;
                v01Var2 = (v01) zeVar.c;
                str6 = (String) zeVar.b;
                hfVar4 = zeVar.a;
                p005kotlin.ResultKt.throwOnFailure(objWithContext);
            }
            Mutex mutex7 = mutex4;
            try {
                hfVar4.w.add(str6);
                return v01Var2;
            } finally {
                mutex7.unlock(null);
            }
            kf kfVar3 = hfVar.e;
            LinkedHashMap linkedHashMap3 = hfVar.m;
            ke keVarB = le.b(AdapterStatus.InitializationState.INITIALIZING, "The adapter is still initializing.", 4);
            kfVar3.getClass();
            kf.a(linkedHashMap3, str3, adapterVersionData2, keVarB, 0L);
            adapterVersionData3 = adapterVersionData2;
            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            Context contextG = hfVar.f.g();
            if (contextG == null) {
                contextG = hfVar.c;
            }
            m21 m21Var = o21.f;
            tx txVar2 = hfVar.h;
            txVar2.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            CoroutineContext coroutineContext = hfVar.b;
            af afVar = new af(jfVar2, contextG, beVar2, null);
            zeVar.a = hfVar;
            zeVar.b = str3;
            zeVar.c = adapterVersionData3;
            zeVar.d = txVar2;
            zeVar.e = null;
            zeVar.f = null;
            zeVar.h = jElapsedRealtime;
            zeVar.k = 2;
            objWithContext = BuildersKt.withContext(coroutineContext, afVar, zeVar);
            if (objWithContext != coroutine_suspended) {
                j = jElapsedRealtime;
                str4 = str3;
                hfVar2 = hfVar;
                txVar = txVar2;
                adapterVersionData4 = adapterVersionData3;
                Duration.Companion companion2 = Duration.INSTANCE;
                txVar.getClass();
                p005kotlin.Pair pair3 = new p005kotlin.Pair((v01) objWithContext, Duration.m4365boximpl(DurationKt.toDuration(SystemClock.elapsedRealtime() - j, DurationUnit.MILLISECONDS)));
                v01Var = (v01) pair3.component1();
                rawValue = ((Duration) pair3.component2()).getRawValue();
                hfVar2.getClass();
                if (v01Var instanceof q01) {
                    pair = new p005kotlin.Pair(AdapterStatus.InitializationState.COMPLETE, "");
                } else {
                    if (v01Var instanceof i01) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    pair = new p005kotlin.Pair(AdapterStatus.InitializationState.FAILED, h01.a((i01) v01Var));
                }
                initializationState = (AdapterStatus.InitializationState) pair.component1();
                str5 = (String) pair.component2();
                mutex2 = hfVar2.l;
                zeVar.a = hfVar2;
                zeVar.b = str4;
                zeVar.c = adapterVersionData4;
                zeVar.d = v01Var;
                zeVar.e = initializationState;
                zeVar.f = str5;
                zeVar.g = mutex2;
                zeVar.h = rawValue;
                zeVar.k = 3;
                if (mutex2.lock(null, zeVar) != coroutine_suspended) {
                    mutex3 = mutex2;
                    initializationState2 = initializationState;
                    hfVar3 = hfVar2;
                    AdapterVersionData adapterVersionData7 = adapterVersionData4;
                    kf kfVar4 = hfVar3.e;
                    LinkedHashMap linkedHashMap4 = hfVar3.m;
                    ke keVarA3 = le.a(initializationState2, str5, (int) Duration.m4378getInWholeMillisecondsimpl(rawValue));
                    long jA3 = hfVar3.a();
                    kfVar4.getClass();
                    kf.a(linkedHashMap4, str4, adapterVersionData7, keVarA3, jA3);
                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                    mutex3.unlock(null);
                    zeVar.a = hfVar3;
                    zeVar.b = str4;
                    zeVar.c = v01Var;
                    zeVar.d = initializationState2;
                    zeVar.e = null;
                    zeVar.f = null;
                    zeVar.g = null;
                    zeVar.k = 4;
                    if (hfVar3.b(zeVar) != coroutine_suspended) {
                        str6 = str4;
                        if (initializationState2 == AdapterStatus.InitializationState.COMPLETE) {
                            return v01Var;
                        }
                        mutex4 = hfVar3.u;
                        zeVar.a = hfVar3;
                        zeVar.b = str6;
                        zeVar.c = v01Var;
                        zeVar.d = mutex4;
                        zeVar.k = 5;
                        if (mutex4.lock(null, zeVar) != coroutine_suspended) {
                            hfVar4 = hfVar3;
                            v01Var2 = v01Var;
                            Mutex mutex8 = mutex4;
                            hfVar4.w.add(str6);
                            return v01Var2;
                        }
                    }
                }
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
        adapterVersionData2 = adapterVersionData;
        str3 = str2;
    }

    public final Object a(BaseRequest baseRequest, String str, ContinuationImpl continuationImpl) {
        return a(this, baseRequest, str, continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        ff ffVar;
        hf hfVar;
        Mutex mutex;
        if (continuation instanceof ff) {
            ffVar = (ff) continuation;
            int i = ffVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ffVar.e = i - Integer.MIN_VALUE;
            } else {
                ffVar = new ff(this, continuation);
            }
        } else {
            ffVar = new ff(this, continuation);
        }
        Object obj = ffVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ffVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.l;
            ffVar.a = this;
            ffVar.b = mutex2;
            ffVar.e = 1;
            if (mutex2.lock(null, ffVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            hfVar = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = ffVar.b;
            hfVar = ffVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (hfVar.s == 0) {
                if (Duration.m4372equalsimpl0(hfVar.t, Duration.INSTANCE.m4458getZEROUwyO8pc())) {
                    hfVar.t = hfVar.o;
                } else {
                    hfVar.h.getClass();
                    hfVar.t = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                }
            }
            hfVar.s++;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        gf gfVar;
        hf hfVar;
        Mutex mutex;
        if (continuation instanceof gf) {
            gfVar = (gf) continuation;
            int i = gfVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                gfVar.e = i - Integer.MIN_VALUE;
            } else {
                gfVar = new gf(this, continuation);
            }
        } else {
            gfVar = new gf(this, continuation);
        }
        Object obj = gfVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gfVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.l;
            gfVar.a = this;
            gfVar.b = mutex2;
            gfVar.e = 1;
            if (mutex2.lock(null, gfVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            hfVar = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = gfVar.b;
            hfVar = gfVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (hfVar.s == 1) {
                long j = hfVar.r;
                Duration.Companion companion = Duration.INSTANCE;
                hfVar.h.getClass();
                hfVar.r = Duration.m4396plusLRDsOJo(j, Duration.m4395minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), hfVar.t));
            }
            hfVar.s--;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}
