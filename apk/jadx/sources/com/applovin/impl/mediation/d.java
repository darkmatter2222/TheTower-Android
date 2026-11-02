package com.applovin.impl.mediation;

import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.a6;
import com.applovin.impl.c3;
import com.applovin.impl.c5;
import com.applovin.impl.e3;
import com.applovin.impl.h2;
import com.applovin.impl.i;
import com.applovin.impl.i6;
import com.applovin.impl.j2;
import com.applovin.impl.n5;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u5;
import com.applovin.impl.u7;
import com.applovin.impl.v3;
import com.applovin.impl.w3;
import com.applovin.impl.x2;
import com.applovin.impl.x3;
import com.applovin.impl.y3;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private final l a;
    private final Map b = new HashMap(4);
    private final Object c = new Object();
    private final Map d = new HashMap(4);
    private final Object e = new Object();
    private final Map f = new HashMap();
    private final Object g = new Object();

    class a implements u5.b {
        final /* synthetic */ long a;
        final /* synthetic */ Map b;
        final /* synthetic */ String c;
        final /* synthetic */ e3 d;
        final /* synthetic */ Context e;
        final /* synthetic */ com.applovin.impl.mediation.ads.a.InterfaceC0019a f;

        a(long j, Map map, String str, e3 e3Var, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
            this.a = j;
            this.b = map;
            this.c = str;
            this.d = e3Var;
            this.e = context;
            this.f = interfaceC0019a;
        }

        @Override // com.applovin.impl.u5.b
        public void a(JSONArray jSONArray) {
            this.b.put("sct_ms", Long.valueOf(SystemClock.elapsedRealtime() - this.a));
            this.b.put("calfc", Integer.valueOf(d.this.b(this.c)));
            a6 a6Var = new a6(this.d, jSONArray, this.e, d.this.a, this.f);
            if (((Boolean) d.this.a.a(v3.F8)).booleanValue()) {
                d.this.a.s0().a((n5) a6Var, i6.b.MEDIATION);
            } else {
                d.this.a.s0().a(a6Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b implements com.applovin.impl.mediation.ads.a.InterfaceC0019a {
        private final l a;
        private final WeakReference b;
        private final d c;
        private final c d;
        private final MaxAdFormat e;
        private final Map f;
        private final Map g;
        private final Map h;
        private final int i;
        private long j;
        private long k;

        private b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j, long j2, d dVar, l lVar, Context context) {
            this.a = lVar;
            this.b = new WeakReference(context);
            this.c = dVar;
            this.d = cVar;
            this.e = maxAdFormat;
            this.g = map2;
            this.f = map;
            this.h = map3;
            this.j = j;
            this.k = j2;
            if (CollectionUtils.getBoolean(map2, "disable_auto_retries")) {
                this.i = -1;
            } else if (maxAdFormat.isAdViewAd() && CollectionUtils.getBoolean(map2, "auto_refresh_stopped")) {
                this.i = Math.min(2, ((Integer) lVar.a(v3.y8)).intValue());
            } else {
                this.i = ((Integer) lVar.a(v3.y8)).intValue();
            }
        }

        /* synthetic */ b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j, long j2, d dVar, l lVar, Context context, a aVar) {
            this(map, map2, map3, cVar, maxAdFormat, j, j2, dVar, lVar, context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, String str) {
            this.g.put("retry_delay_sec", Integer.valueOf(i));
            this.g.put("retry_attempt", Integer.valueOf(this.d.c));
            Context contextP = (Context) this.b.get();
            if (contextP == null) {
                contextP = l.p();
            }
            this.h.put("art", i.EXPONENTIAL_RETRY.b());
            this.h.put("era", Integer.valueOf(this.d.c));
            this.k = System.currentTimeMillis();
            this.c.a(str, this.e, this.f, this.g, this.h, contextP, this);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, MaxError maxError) {
            MaxError maxError2;
            this.c.c(str);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.j;
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) maxError.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                maxError2 = maxError;
                this.a.Z().processWaterfallInfoPostback(maxAdWaterfallInfoImpl, maxError2, this.k, jElapsedRealtime);
            } else {
                maxError2 = maxError;
            }
            if (((Boolean) this.a.a(c5.N)).booleanValue()) {
                Map mapA = j2.a(maxError2);
                CollectionUtils.putStringIfValid("ad_unit_id", str, mapA);
                CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, this.e.getLabel(), mapA);
                CollectionUtils.putObjectToStringIfValid("attempt_number", Integer.valueOf(this.d.c), mapA);
                CollectionUtils.putObjectToStringIfValid("latency_ms", Long.valueOf(jElapsedRealtime), mapA);
                CollectionUtils.putStringIfValid("details", "consecutiveAdLoadFailuresCount = " + this.c.b(str), mapA);
                this.a.R().d(h2.t0, mapA);
            }
            boolean z = maxError2.getCode() == -5603 && u7.c(this.a) && ((Boolean) this.a.a(c5.L6)).booleanValue();
            if (this.a.a(v3.z8, this.e) && this.d.c < this.i && !z) {
                c.e(this.d);
                final int iPow = (int) Math.pow(2.0d, this.d.c);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.d$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(iPow, str);
                    }
                }, TimeUnit.SECONDS.toMillis(iPow));
                return;
            }
            this.d.c = 0;
            this.d.b.set(false);
            if (this.d.d != null) {
                MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxError2;
                maxErrorImpl.setLoadTag(this.d.a);
                maxErrorImpl.setRequestLatencyMillis(jElapsedRealtime);
                x2.a(this.d.d, str, maxError2);
                this.d.d = null;
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            c3 c3Var = (c3) maxAd;
            c3Var.i(this.d.a);
            c3Var.a(SystemClock.elapsedRealtime() - this.j);
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) c3Var.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.a.Z().processWaterfallInfoPostback(maxAdWaterfallInfoImpl, null, this.k, c3Var.getRequestLatencyMillis());
            }
            if (((Boolean) this.a.a(c5.N)).booleanValue()) {
                Map mapA = j2.a(c3Var);
                CollectionUtils.putObjectToStringIfValid("attempt_number", Integer.valueOf(this.d.c), mapA);
                CollectionUtils.putObjectToStringIfValid("latency_ms", Long.valueOf(c3Var.getRequestLatencyMillis()), mapA);
                CollectionUtils.putStringIfValid("details", "consecutiveAdLoadFailuresCount = " + this.c.b(maxAd.getAdUnitId()), mapA);
                this.a.R().d(h2.s0, mapA);
            }
            this.c.a(maxAd.getAdUnitId());
            this.d.c = 0;
            if (this.d.d == null) {
                this.c.a(c3Var);
                this.d.b.set(false);
                return;
            }
            c3Var.B().c().a(this.d.d);
            this.d.d.onAdLoaded(c3Var);
            if (c3Var.R().endsWith("load")) {
                this.d.d.onAdRevenuePaid(c3Var);
            }
            this.d.d = null;
            if (((Boolean) this.a.a(v3.v8)).booleanValue() || !this.c.a(maxAd)) {
                this.d.b.set(false);
                return;
            }
            Context contextP = (Context) this.b.get();
            if (contextP == null) {
                contextP = l.p();
            }
            this.j = SystemClock.elapsedRealtime();
            this.k = System.currentTimeMillis();
            this.h.put("art", i.SEQUENTIAL_OR_PRECACHE.b());
            this.c.a(maxAd.getAdUnitId(), maxAd.getFormat(), this.f, this.g, this.h, contextP, this);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }
    }

    private static class c {
        private final String a;
        private final AtomicBoolean b;
        private int c;
        private volatile com.applovin.impl.mediation.ads.a.InterfaceC0019a d;

        private c(String str) {
            this.b = new AtomicBoolean();
            this.a = str;
        }

        /* synthetic */ c(String str, a aVar) {
            this(str);
        }

        static /* synthetic */ int e(c cVar) {
            int i = cVar.c;
            cVar.c = i + 1;
            return i;
        }
    }

    public d(l lVar) {
        this.a = lVar;
    }

    private int a(Map map, w3.a aVar) {
        Long l;
        if (map == null || (l = (Long) map.get(aVar.b())) == null) {
            return -1;
        }
        return l.intValue();
    }

    private com.applovin.impl.h a(String str, MaxAdFormat maxAdFormat) {
        if (!((Boolean) this.a.a(c5.Z4)).booleanValue()) {
            return new com.applovin.impl.h(-1, -1, -1, -1);
        }
        y3 y3VarA0 = this.a.a0();
        w3 w3Var = w3.e;
        Map mapA = y3VarA0.a(w3Var, x3.a(str));
        w3.a aVar = w3.a.SESSION;
        int iA = a(mapA, aVar);
        w3.a aVar2 = w3.a.INSTALL;
        int iA2 = a(mapA, aVar2);
        Map mapA2 = this.a.a0().a(w3Var, x3.a(maxAdFormat));
        return new com.applovin.impl.h(iA, iA2, a(mapA2, aVar), a(mapA2, aVar2));
    }

    private c a(String str, String str2) {
        c cVar;
        synchronized (this.c) {
            String strB = b(str, str2);
            cVar = (c) this.b.get(strB);
            if (cVar == null) {
                cVar = new c(str2, null);
                this.b.put(strB, cVar);
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c3 c3Var) {
        synchronized (this.e) {
            if (this.d.containsKey(c3Var.getAdUnitId())) {
                p.h("AppLovinSdk", "Ad in cache already: " + c3Var.getAdUnitId());
            }
            this.d.put(c3Var.getAdUnitId(), c3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.g) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("MediationAdLoadManager", "Clearing ad load failures count for ad unit ID: " + str);
            }
            this.f.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        e3 e3Var = new e3(str, maxAdFormat, map, map2, map3, a(str, maxAdFormat));
        this.a.s0().a((n5) new u5(e3Var, context, this.a, new a(jElapsedRealtime, map3, str, e3Var, context, interfaceC0019a)), i6.b.MEDIATION);
    }

    private String b(String str, String str2) {
        return str + (str2 != null ? "-" + str2 : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        synchronized (this.g) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("MediationAdLoadManager", "Incrementing ad load failures count for ad unit ID: " + str);
            }
            Integer num = (Integer) this.f.get(str);
            if (num == null) {
                num = 0;
            }
            this.f.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    private c3 e(String str) {
        c3 c3Var;
        synchronized (this.e) {
            c3Var = (c3) this.d.get(str);
            this.d.remove(str);
        }
        return c3Var;
    }

    public void a(String str, String str2, MaxAdFormat maxAdFormat, i iVar, Map map, Map map2, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        c3 c3VarE;
        if (this.a.u0().d() || u7.h(l.p())) {
            c3VarE = null;
        } else if (interfaceC0019a == null && d(str)) {
            return;
        } else {
            c3VarE = e(str);
        }
        if (c3VarE != null) {
            c3VarE.i(str2);
            c3VarE.B().c().a(interfaceC0019a);
            interfaceC0019a.onAdLoaded(c3VarE);
            if (c3VarE.R().endsWith("load")) {
                interfaceC0019a.onAdRevenuePaid(c3VarE);
            }
            if (((Boolean) this.a.a(v3.v8)).booleanValue() && a((MaxAd) c3VarE)) {
                return;
            }
        }
        c cVarA = a(str, str2);
        if (!cVarA.b.compareAndSet(false, true)) {
            if (cVarA.d != null && cVarA.d != interfaceC0019a) {
                p.j("MediationAdLoadManager", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
            }
            cVarA.d = interfaceC0019a;
            return;
        }
        if (c3VarE == null) {
            cVarA.d = interfaceC0019a;
        }
        Map mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        mapSynchronizedMap.put("art", iVar.b());
        if (StringUtils.isValidString(str2)) {
            mapSynchronizedMap.put("alt", str2);
        }
        a(str, maxAdFormat, map, map2, mapSynchronizedMap, context, new b(map, map2, mapSynchronizedMap, cVarA, maxAdFormat, SystemClock.elapsedRealtime(), System.currentTimeMillis(), this, this.a, context, null));
    }

    public boolean a(MaxAd maxAd) {
        return ((!this.a.c(v3.t8).contains(maxAd.getAdUnitId()) && !this.a.a(v3.s8, maxAd.getFormat())) || this.a.u0().c() || this.a.u0().d()) ? false : true;
    }

    public int b(String str) {
        int iIntValue;
        synchronized (this.g) {
            Integer num = (Integer) this.f.get(str);
            iIntValue = num != null ? num.intValue() : 0;
        }
        return iIntValue;
    }

    public void c(String str, String str2) {
        synchronized (this.c) {
            this.b.remove(b(str, str2));
        }
    }

    public boolean d(String str) {
        boolean z;
        synchronized (this.e) {
            z = this.d.get(str) != null;
        }
        return z;
    }
}
