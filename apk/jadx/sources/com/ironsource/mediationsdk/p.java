package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.AbstractC3800r3;
import com.ironsource.B7;
import com.ironsource.Bb;
import com.ironsource.C3450a5;
import com.ironsource.C3509b3;
import com.ironsource.C3516ba;
import com.ironsource.C3591fc;
import com.ironsource.C3607ga;
import com.ironsource.C3622h7;
import com.ironsource.C3627hc;
import com.ironsource.C3643ia;
import com.ironsource.C3647ie;
import com.ironsource.C3650j0;
import com.ironsource.C3663jd;
import com.ironsource.C3681kd;
import com.ironsource.C3682ke;
import com.ironsource.C3686l0;
import com.ironsource.C3689l3;
import com.ironsource.C3713m9;
import com.ironsource.C3717md;
import com.ironsource.C3738ng;
import com.ironsource.C3756og;
import com.ironsource.C3763p5;
import com.ironsource.C3789q9;
import com.ironsource.C3793qd;
import com.ironsource.C3801r4;
import com.ironsource.C3845ta;
import com.ironsource.C5;
import com.ironsource.D3;
import com.ironsource.D5;
import com.ironsource.Df;
import com.ironsource.He;
import com.ironsource.Ie;
import com.ironsource.InterfaceC3455aa;
import com.ironsource.InterfaceC3514b8;
import com.ironsource.InterfaceC3747o7;
import com.ironsource.Kc;
import com.ironsource.L9;
import com.ironsource.N8;
import com.ironsource.N9;
import com.ironsource.Nf;
import com.ironsource.Od;
import com.ironsource.Of;
import com.ironsource.P6;
import com.ironsource.Pb;
import com.ironsource.Q7;
import com.ironsource.Q9;
import com.ironsource.Qb;
import com.ironsource.R1;
import com.ironsource.R3;
import com.ironsource.S3;
import com.ironsource.S4;
import com.ironsource.Sc;
import com.ironsource.T4;
import com.ironsource.T5;
import com.ironsource.T7;
import com.ironsource.Td;
import com.ironsource.U1;
import com.ironsource.Ue;
import com.ironsource.W6;
import com.ironsource.Wb;
import com.ironsource.We;
import com.ironsource.Z3;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adquality.AdQualityBridge;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyBannerLayout;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class p implements InterfaceC3455aa, Sc, S4, S4.b, S4.c, S4.a {
    private static boolean Z = false;
    private int A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private Boolean H;
    private Kc I;
    private boolean J;
    private boolean K;
    private boolean L;
    private final ConcurrentHashMap<String, com.ironsource.mediationsdk.demandOnly.h.d> M;
    private final ConcurrentHashMap<String, com.ironsource.mediationsdk.demandOnly.h.b> N;
    private final ConcurrentHashMap<String, com.ironsource.mediationsdk.demandOnly.h.d> O;
    private com.ironsource.mediationsdk.demandOnly.f P;
    private com.ironsource.mediationsdk.demandOnly.k Q;
    private com.ironsource.mediationsdk.demandOnly.c R;
    private T5 S;
    private C3516ba T;
    private W6 U;
    private boolean V;
    private AdQualityBridge W;
    InterfaceC3514b8<ISDemandOnlyInterstitialListener> X;
    InterfaceC3514b8<ISDemandOnlyRewardedVideoListener> Y;
    private final String a;
    private final String b;
    private final B7 c;
    private final B7.a d;
    private final Q7 e;
    private final InterfaceC3747o7 f;
    private final N8.a g;
    private IronSourceLoggerManager h;
    private Bb i;
    private AtomicBoolean j;
    private final Object k;
    private Ue l;
    private String m;
    private String n;
    private String o;
    private Map<String, String> p;
    private String q;
    private AtomicBoolean r;
    private boolean s;
    private List<IronSource.a> t;
    private String u;
    private Set<IronSource.a> v;
    private Set<IronSource.a> w;
    private boolean x;
    private C3643ia y;
    private final String z;

    class a extends com.ironsource.environment.thread.a {
        final /* synthetic */ Context b;

        /* JADX INFO: renamed from: com.ironsource.mediationsdk.p$a$a, reason: collision with other inner class name */
        class C1119a extends com.ironsource.environment.thread.a {
            final /* synthetic */ Boolean b;

            C1119a(Boolean bool) {
                this.b = bool;
            }

            @Override // com.ironsource.environment.thread.a
            public void a() {
                Of of = new Of();
                a aVar = a.this;
                of.a(aVar.b, p.this.h(), p.this.l.j(), LevelPlay.getSdkVersion(), p.this.l.c().g().b(), this.b, p.this.J);
                p.this.V = true;
                Nf.a.c();
            }
        }

        a(Context context) {
            this.b = context;
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new C1119a(com.ironsource.mediationsdk.c.c().b()));
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[q.d.values().length];
            b = iArr;
            try {
                iArr[q.d.NOT_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[q.d.INIT_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[q.d.INIT_IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[q.d.INITIATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IronSource.a.values().length];
            a = iArr2;
            try {
                iArr2[IronSource.a.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[IronSource.a.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[IronSource.a.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[IronSource.a.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public interface c {
        void a(String str);
    }

    private static class d {
        static volatile p a = new p();

        private d() {
        }
    }

    private p() {
        this(Pb.k0().a(), Pb.b0().c(), Pb.k0().x(), Pb.k0().k(), Pb.b0().F());
    }

    p(B7 b7, B7.a aVar, Q7 q7, InterfaceC3747o7 interfaceC3747o7, N8.a aVar2) {
        this.a = getClass().getName();
        this.b = "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b9.6.1";
        this.k = new Object();
        this.l = null;
        this.m = null;
        this.n = "";
        this.o = null;
        this.p = null;
        this.q = null;
        this.s = false;
        this.x = true;
        this.z = "sessionDepth";
        this.V = false;
        this.c = b7;
        this.d = aVar;
        this.e = q7;
        this.f = interfaceC3747o7;
        this.g = aVar2;
        o();
        this.j = new AtomicBoolean();
        this.v = new HashSet();
        this.w = new HashSet();
        this.C = false;
        this.B = false;
        this.D = false;
        this.r = new AtomicBoolean(true);
        this.A = 0;
        this.E = false;
        this.F = false;
        this.G = false;
        this.u = IronSourceUtils.d();
        this.H = Boolean.FALSE;
        this.L = false;
        this.I = null;
        this.J = true;
        this.M = new ConcurrentHashMap<>();
        this.O = new ConcurrentHashMap<>();
        this.N = new ConcurrentHashMap<>();
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = new T5();
        C3516ba c3516ba = new C3516ba();
        this.T = c3516ba;
        this.U = new W6(c3516ba);
        this.W = null;
        this.X = new InterfaceC3514b8.a();
        this.Y = new InterfaceC3514b8.b();
    }

    private boolean A() {
        return z() && B();
    }

    private boolean B() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().c() == null || this.l.k().c().isEmpty()) ? false : true;
    }

    private boolean C() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().f() == null) ? false : true;
    }

    private boolean D() {
        return C() && E();
    }

    private boolean E() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().d() == null || this.l.k().d().size() <= 0) ? false : true;
    }

    private void I() {
        ConcurrentHashMap<String, List<String>> concurrentHashMapC = C3845ta.b().c();
        if (concurrentHashMapC.containsKey(com.ironsource.mediationsdk.metadata.a.c)) {
            String str = concurrentHashMapC.get(com.ironsource.mediationsdk.metadata.a.c).get(0);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            C3450a5.a.b(!MetaDataUtils.getMetaDataBooleanValue(str));
        }
    }

    private void J() {
        if (this.D) {
            K();
        }
    }

    private void K() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.l.k().a().size(); i++) {
            String str = this.l.k().a().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.l.l().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            JSONObject jSONObjectA = IronSourceUtils.a(false, false, 1);
            a(jSONObjectA, new Object[][]{new Object[]{"errorCode", 1010}});
            a(D5.TROUBLESHOOTING_BN_INIT_FAILED, jSONObjectA);
            a(IronSource.a.BANNER, false);
            return;
        }
        synchronized (this.N) {
            C3509b3 c3509b3C = this.l.c().c();
            T4.a aVar = new T4.a("Mediation");
            if (c3509b3C.k()) {
                aVar.a("isOneFlow", 1);
            }
            this.R = new com.ironsource.mediationsdk.demandOnly.c(arrayList, c3509b3C, h(), i(), new T4.b(N9.i(), aVar));
        }
        for (com.ironsource.mediationsdk.demandOnly.h.b bVar : this.N.values()) {
            this.R.a(bVar.g(), bVar.e());
        }
        this.N.clear();
    }

    private void L() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Interstitial started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.l.k().b().size(); i++) {
            String str = this.l.k().b().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.l.l().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            JSONObject jSONObjectA = IronSourceUtils.a(false, false, 1);
            a(jSONObjectA, new Object[][]{new Object[]{"errorCode", 1010}});
            a(D5.TROUBLESHOOTING_IS_INIT_FAILED, jSONObjectA);
            a(IronSource.a.INTERSTITIAL, false);
            return;
        }
        synchronized (this.M) {
            this.P = a((List<NetworkSettings>) arrayList);
        }
        Iterator<com.ironsource.mediationsdk.demandOnly.h.d> it = this.M.values().iterator();
        while (it.hasNext()) {
            this.P.a(it.next());
        }
        this.M.clear();
    }

    private void M() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.l.k().d().size(); i++) {
            String str = this.l.k().d().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.l.l().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            a(IronSource.a.REWARDED_VIDEO, false);
            return;
        }
        synchronized (this.O) {
            this.Q = b(arrayList);
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            a(IronSource.a.REWARDED_VIDEO, false);
            return;
        }
        Iterator<com.ironsource.mediationsdk.demandOnly.h.d> it = this.O.values().iterator();
        while (it.hasNext()) {
            this.Q.a(it.next());
        }
        this.O.clear();
    }

    private void N() {
        if (this.C) {
            L();
        }
    }

    private void O() {
        if (this.B) {
            M();
        }
    }

    private Ue a(Context context, String str, c cVar) {
        Exception exc;
        Ue ue = null;
        if (!IronSourceUtils.f(context)) {
            return null;
        }
        try {
            String strB = b(context);
            if (TextUtils.isEmpty(strB)) {
                strB = this.c.a(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            String str2 = strB;
            C3643ia c3643ia = this.y;
            String strA = C3622h7.a(We.a(context, h(), str, str2, j(), this.J, c3643ia != null ? c3643ia.f() : null, u()), C3713m9.a().toString(), cVar);
            if (strA == null) {
                IronLog.INTERNAL.warning("serverResponseString is null");
                return null;
            }
            if (IronSourceUtils.g()) {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("encrypt");
                JSONObject jSONObject = new JSONObject(strA);
                String strOptString = jSONObject.optString(Ue.n, null);
                if (TextUtils.isEmpty(strOptString)) {
                    ironLog.warning("encryptedResponse is empty - return null");
                    return null;
                }
                strA = a(strOptString, Boolean.valueOf(jSONObject.optBoolean("compression", false)));
                if (TextUtils.isEmpty(strA)) {
                    ironLog.warning("encoded response invalid - return null");
                    H();
                    return null;
                }
            }
            Ue ue2 = new Ue(context, h(), str, strA);
            try {
                ue2.a(Ue.a.SERVER);
                if (ue2.q()) {
                    return ue2;
                }
                IronLog.INTERNAL.warning("response invalid - return null");
                return null;
            } catch (Exception e) {
                exc = e;
                ue = ue2;
                C3801r4.d().a(exc);
                IronLog.INTERNAL.warning("exception = " + exc);
                return ue;
            }
        } catch (Exception e2) {
            exc = e2;
        }
    }

    private com.ironsource.mediationsdk.demandOnly.f a(List<NetworkSettings> list) {
        L9 l9D = this.l.c().d();
        T4.a aVar = new T4.a("Mediation");
        if (l9D.j()) {
            aVar.a("isOneFlow", 1);
        }
        return new com.ironsource.mediationsdk.demandOnly.f(list, l9D, com.ironsource.mediationsdk.c.c(), this.X, h(), i(), new T4.b(N9.i(), aVar));
    }

    private IronSourceError a(q.d dVar) {
        if (!this.G) {
            return new IronSourceError(510, "ironSource SDK was not initialized");
        }
        if (!this.D) {
            return new IronSourceError(510, "ironSource SDK was not initialized using Demand Only mode");
        }
        if (dVar == q.d.INIT_FAILED) {
            return new IronSourceError(510, "ironSource initialization failed");
        }
        if (dVar == q.d.INIT_IN_PROGRESS && q.c().d()) {
            return new IronSourceError(510, "ironSource initialization in progress");
        }
        return null;
    }

    private String a(String str, Boolean bool) {
        return bool.booleanValue() ? Q9.d(C3763p5.b().c(), str) : Q9.b(C3763p5.b().c(), str);
    }

    private List<NetworkSettings> a(ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = arrayList.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList2.add(this.l.l().b(str));
            }
        }
        return arrayList2;
    }

    private void a(Activity activity) {
        ContextProvider.getInstance().updateActivity(activity);
        IronLog.INTERNAL.verbose("activity is updated to: " + activity.hashCode());
    }

    private void a(D5 d5, JSONObject jSONObject) {
        N9.i().a(new C5(d5, jSONObject));
    }

    private synchronized void a(Kc kc) {
        this.I = kc;
    }

    private void a(U1 u1) {
        C3450a5 c3450a5 = C3450a5.a;
        c3450a5.c(u1.h());
        c3450a5.a(u1.g());
        c3450a5.a(u1.k());
        this.f.a(u1);
    }

    private void a(Ue ue) {
        if (p() && d(ue)) {
            AdQualityBridge adQualityBridge = new AdQualityBridge(ContextProvider.getInstance().getApplicationContext(), h(), i(), new C3650j0(), ue.c().b().h().a());
            this.W = adQualityBridge;
            C3643ia c3643ia = this.y;
            if (c3643ia != null) {
                adQualityBridge.setSegment(c3643ia);
            }
        }
    }

    private void a(Ue ue, Context context) {
        boolean zL = q() ? ue.c().b().b().l() : false;
        boolean zL2 = C() ? ue.c().f().m().l() : false;
        boolean zL3 = w() ? ue.c().d().i().l() : false;
        boolean zL4 = r() ? ue.c().c().g().l() : false;
        boolean zL5 = z() ? ue.c().e().g().l() : false;
        C3681kd c3681kdI = ue.c().b().i();
        boolean zI = c3681kdI.i();
        if (zL) {
            a((AbstractC3800r3) Pb.k0().q(), ue.c().b().b(), context, ue, true);
        }
        if (zL2) {
            a((AbstractC3800r3) C3682ke.i(), ue.c().f().m(), context, ue, true);
        } else {
            C3682ke.i().a(false);
        }
        if (zL3) {
            a((AbstractC3800r3) N9.i(), ue.c().d().i(), context, ue, true);
        } else if (zL4) {
            a((AbstractC3800r3) N9.i(), ue.c().c().g(), context, ue, true);
        } else if (zL5) {
            a((AbstractC3800r3) N9.i(), ue.c().e().g(), context, ue, true);
        } else {
            N9.i().a(false);
        }
        C3663jd c3663jd = C3663jd.P;
        c3663jd.a(zI);
        if (zI) {
            c3663jd.b(c3681kdI.j(), context);
            c3663jd.b(c3681kdI.l(), context);
            c3663jd.c(c3681kdI.k(), context);
            c3663jd.b(c3681kdI.g());
            c3663jd.c(c3681kdI.h());
        }
    }

    private void a(IronSource.a aVar) {
        String str = aVar + " ad unit has already been initialized";
        this.h.log(IronSourceLogger.IronSourceTag.API, str, 3);
        IronSourceUtils.i(str);
    }

    private void a(IronSource.a aVar, boolean z) {
        int i = b.a[aVar.ordinal()];
        if (i == 1) {
            if (this.B) {
                Iterator<com.ironsource.mediationsdk.demandOnly.h.d> it = this.O.values().iterator();
                while (it.hasNext()) {
                    String strE = it.next().e();
                    this.Y.a(strE).onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                this.O.clear();
                return;
            }
            return;
        }
        if (i == 2) {
            if (this.C) {
                Iterator<com.ironsource.mediationsdk.demandOnly.h.d> it2 = this.M.values().iterator();
                while (it2.hasNext()) {
                    String strE2 = it2.next().e();
                    this.X.a(strE2).onInterstitialAdLoadFailed(strE2, ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Interstitial"));
                }
                this.M.clear();
                return;
            }
            return;
        }
        if (i == 3 && this.D) {
            for (com.ironsource.mediationsdk.demandOnly.h.b bVar : this.N.values()) {
                ISDemandOnlyBannerLayout iSDemandOnlyBannerLayoutG = bVar.g();
                if (iSDemandOnlyBannerLayoutG != null) {
                    iSDemandOnlyBannerLayoutG.getListener().a(bVar.e(), ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Banner"));
                }
            }
            this.N.clear();
        }
    }

    private synchronized void a(com.ironsource.mediationsdk.demandOnly.h.d dVar, ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        String strE = dVar.e();
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + strE);
        try {
            if (!this.F) {
                ironLog.error("initISDemandOnly() must be called before loadISDemandOnlyInterstitial()");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, new IronSourceError(510, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"));
                return;
            }
            if (!this.C) {
                ironLog.error("Interstitial was initialized in mediation mode. Use loadInterstitial instead");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, new IronSourceError(510, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"));
                return;
            }
            q.d dVarA = q.c().a();
            if (dVarA == q.d.INIT_FAILED) {
                ironLog.error("init() had failed");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                return;
            }
            IronSourceError ironSourceErrorA = dVar.a();
            if (ironSourceErrorA != null) {
                if (ironSourceErrorA.getErrorCode() == 1060) {
                    b(D5.TROUBLESHOOTING_DO_CALLED_IS_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                }
                ironLog.error(ironSourceErrorA.toString());
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ironSourceErrorA);
                return;
            }
            a(dVar.d());
            if (dVarA == q.d.INIT_IN_PROGRESS) {
                if (q.c().d()) {
                    ironLog.error("init() had failed");
                    iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                } else {
                    synchronized (this.M) {
                        this.M.put(dVar.e(), dVar);
                    }
                    if (!TextUtils.isEmpty(dVar.e())) {
                        a(D5.TROUBLESHOOTING_DO_IAB_IS_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                    }
                }
                return;
            }
            if (!x()) {
                ironLog.error("No interstitial configurations found");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                return;
            }
            synchronized (this.M) {
                com.ironsource.mediationsdk.demandOnly.f fVar = this.P;
                if (fVar == null) {
                    this.M.put(dVar.e(), dVar);
                    if (!TextUtils.isEmpty(dVar.b())) {
                        a(D5.TROUBLESHOOTING_DO_IAB_IS_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                    }
                    return;
                }
                fVar.a(dVar);
            }
            throw th;
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.API.error(th.getMessage());
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, new IronSourceError(510, th.getMessage()));
        }
    }

    private void a(AbstractC3800r3 abstractC3800r3, R1 r1, Context context, Ue ue, boolean z) {
        abstractC3800r3.a(z);
        abstractC3800r3.a(r1.c(), context);
        abstractC3800r3.b(r1.d(), context);
        abstractC3800r3.a(r1.f());
        abstractC3800r3.d(r1.e());
        abstractC3800r3.b(r1.a());
        abstractC3800r3.b(r1.i(), context);
        abstractC3800r3.c(r1.h(), context);
        abstractC3800r3.a(r1.j(), context);
        abstractC3800r3.d(r1.g(), context);
        abstractC3800r3.a(ue.c().b().j());
        abstractC3800r3.b(r1.k());
        abstractC3800r3.c(r1.b());
    }

    private void a(String str, R3 r3) {
        if (a(str, 1, 128)) {
            return;
        }
        r3.a(ErrorBuilder.buildInvalidKeyValueError(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, "dynamicUserId is invalid, should be between 1-128 chars in length."));
    }

    private void a(JSONObject jSONObject, Object[][] objArr) {
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    jSONObject.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IronSourceObject addToDictionary: " + Log.getStackTraceString(e), 3);
            }
        }
    }

    private void a(boolean z, boolean z2, int i, JSONObject jSONObject, boolean z3) {
        try {
            StringBuilder sb = new StringBuilder();
            if (z2) {
                sb.append(String.format(",Activity=%s", Boolean.valueOf(ContextProvider.getInstance().getCurrentActiveActivity() != null)));
            } else if (!z) {
                sb.append(",init_context_flow");
            }
            sb.append(String.format(",cachedUserAgent=%s", Boolean.valueOf(this.c.n())));
            jSONObject.put(IronSourceConstants.EVENTS_EXT1, sb.toString());
            jSONObject.put("sessionDepth", i);
            if (z3) {
                if (z2) {
                    jSONObject.put("isMultipleAdObjects", 1);
                } else {
                    jSONObject.put("isMultipleAdUnits", 1);
                }
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.k0().q().a(new C5(D5.FIRST_INSTANCE, jSONObject));
    }

    private synchronized void a(boolean z, boolean z2, boolean z3, IronSource.a... aVarArr) throws Throwable {
        Throwable th;
        try {
            try {
                int i = 0;
                for (IronSource.a aVar : aVarArr) {
                    try {
                        if (aVar.equals(IronSource.a.INTERSTITIAL)) {
                            this.F = true;
                        } else if (aVar.equals(IronSource.a.BANNER)) {
                            this.G = true;
                        } else if (aVar.equals(IronSource.a.REWARDED_VIDEO)) {
                            this.E = true;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                if (q.c().a() == q.d.INIT_FAILED) {
                    try {
                        if (this.i != null) {
                            int length = aVarArr.length;
                            while (i < length) {
                                IronSource.a aVar2 = aVarArr[i];
                                if (!this.v.contains(aVar2)) {
                                    a(aVar2, true);
                                }
                                i++;
                            }
                        }
                    } catch (Exception e) {
                        C3801r4.d().a(e);
                        IronLog.INTERNAL.error(e.toString());
                    }
                } else {
                    if (v()) {
                        if (this.t == null) {
                            return;
                        }
                        try {
                            new Qb().a(this.l.c().b().e().b(), u());
                        } catch (Exception e2) {
                            C3801r4.d().a(e2);
                            IronLog.INTERNAL.error(e2.toString());
                        }
                        JSONObject jSONObjectB = IronSourceUtils.b(z2);
                        for (IronSource.a aVar3 : aVarArr) {
                            if (this.v.contains(aVar3)) {
                                a(aVar3);
                            } else {
                                this.v.add(aVar3);
                                this.w.add(aVar3);
                                try {
                                    jSONObjectB.put(aVar3.toString(), true);
                                } catch (Exception e3) {
                                    C3801r4.d().a(e3);
                                    IronLog.INTERNAL.error(e3.toString());
                                }
                                List<IronSource.a> list = this.t;
                                if (list == null || !list.contains(aVar3)) {
                                    a(aVar3, false);
                                } else {
                                    b(aVar3);
                                }
                            }
                        }
                        int i2 = this.A + 1;
                        this.A = i2;
                        try {
                            a(z, z2, i2, jSONObjectB, z3);
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        th = th;
                        throw th;
                    }
                    JSONObject jSONObjectB2 = IronSourceUtils.b(z2);
                    int length2 = aVarArr.length;
                    while (i < length2) {
                        IronSource.a aVar4 = aVarArr[i];
                        if (this.v.contains(aVar4)) {
                            this.h.log(IronSourceLogger.IronSourceTag.API, aVar4 + " ad unit has started initializing.", 3);
                        } else {
                            this.v.add(aVar4);
                            this.w.add(aVar4);
                            try {
                                jSONObjectB2.put(aVar4.toString(), true);
                            } catch (Exception e4) {
                                C3801r4.d().a(e4);
                                IronLog.INTERNAL.error(e4.toString());
                            }
                        }
                        i++;
                    }
                    int i3 = this.A + 1;
                    this.A = i3;
                    a(z, z2, i3, jSONObjectB2, z3);
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private boolean a(com.ironsource.mediationsdk.demandOnly.h.b bVar) {
        if (q.c().a() != q.d.INIT_IN_PROGRESS) {
            return false;
        }
        synchronized (this.N) {
            this.N.put(bVar.e(), bVar);
        }
        return true;
    }

    private boolean a(String str, int i, int i2) {
        return str != null && str.length() >= i && str.length() <= i2;
    }

    private boolean a(List<IronSource.a> list, Td td, S3 s3) {
        IronLog.INTERNAL.verbose();
        try {
            this.t = list;
            c(true);
            this.h.log(IronSourceLogger.IronSourceTag.API, "onInitSuccess()", 1);
            IronSourceUtils.i("init success");
            if (td != null) {
                JSONObject jSONObjectB = IronSourceUtils.b(false);
                try {
                    jSONObjectB.put("revived", true);
                    if (!TextUtils.isEmpty(td.a())) {
                        jSONObjectB.put("reason", td.a());
                    }
                    if (td.b() != null) {
                        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, "retryCount=" + td.b());
                    }
                } catch (JSONException e) {
                    C3801r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
                Pb.k0().q().a(new C5(D5.FIRST_INSTANCE_RESULT, jSONObjectB));
            }
            int iB = s3.b().f().b();
            if (iB >= 0) {
                Z3 z3 = new Z3();
                z3.a(iB);
                z3.a(iB, this.l.l().d());
            }
            N9.i().h();
            C3682ke.i().h();
            Pb.k0().q().h();
            com.ironsource.mediationsdk.c.c().b(h(), i());
            for (IronSource.a aVar : IronSource.a.values()) {
                if (this.v.contains(aVar)) {
                    if (list.contains(aVar)) {
                        b(aVar);
                    } else {
                        a(aVar, false);
                    }
                }
            }
            Kc kcK = k();
            if (kcK != null) {
                kcK.a(this.l);
            }
            return true;
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            Kc kcK2 = k();
            if (kcK2 != null) {
                kcK2.onInitFailed(new IronSourceError(IronSourceError.ERROR_LEGACY_INIT_POST_FAILED, "onInitSuccess() had failed"));
            }
            return false;
        }
    }

    private com.ironsource.mediationsdk.demandOnly.k b(List<NetworkSettings> list) {
        C3647ie c3647ieF = this.l.c().f();
        T4.a aVar = new T4.a("Mediation");
        if (c3647ieF.d()) {
            aVar.a("isOneFlow", 1);
        }
        return new com.ironsource.mediationsdk.demandOnly.k(list, c3647ieF, com.ironsource.mediationsdk.c.c(), this.Y, h(), i(), new T4.b(C3682ke.i(), aVar));
    }

    private void b(D5 d5, JSONObject jSONObject) {
        C3682ke.i().a(new C5(d5, jSONObject));
    }

    private void b(Ue ue) {
        this.h.setLoggerDebugLevel("console", ue.c().b().h().a());
    }

    private void b(IronSource.a aVar) {
        int i = b.a[aVar.ordinal()];
        if (i == 1) {
            O();
        } else if (i == 2) {
            N();
        } else {
            if (i != 3) {
                return;
            }
            J();
        }
    }

    private boolean b(com.ironsource.mediationsdk.demandOnly.h.b bVar) {
        synchronized (this.N) {
            if (this.R != null) {
                return false;
            }
            this.N.put(bVar.e(), bVar);
            return true;
        }
    }

    private synchronized void c(boolean z) {
        this.s = z;
    }

    private boolean c(Ue ue) {
        return ue != null && ue.p();
    }

    private void d(Context context) {
        AtomicBoolean atomicBoolean = this.j;
        if (atomicBoolean == null || !atomicBoolean.compareAndSet(false, true)) {
            return;
        }
        Df.a().a(new P6(context));
        Pb.k0().q().a(context, this.y);
        N9.i().a(context, this.y);
        C3682ke.i().a(context, this.y);
        C3663jd.P.a(context, this.y);
    }

    private boolean d(Ue ue) {
        com.ironsource.mediationsdk.adquality.a aVarA = ue.c().a();
        return this.W == null && aVarA != null && aVarA.c() && AdQualityBridge.adQualityAvailable();
    }

    private T4 e() {
        return new T4.b(Pb.k0().q(), new T4.a("IronSource"));
    }

    public static p g() {
        return d.a;
    }

    private synchronized Kc k() {
        return this.I;
    }

    private boolean k(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("^[a-zA-Z0-9]*$");
    }

    private R3 l(String str) {
        R3 r3 = new R3();
        if (str == null) {
            r3.a(new IronSourceError(506, "Init Fail - appKey is missing"));
            return r3;
        }
        if (!a(str, 5, 10)) {
            r3.a(ErrorBuilder.buildInvalidCredentialsError("appKey", str, "length should be between 5-10 characters"));
            return r3;
        }
        if (!k(str)) {
            r3.a(ErrorBuilder.buildInvalidCredentialsError("appKey", str, "should contain only english characters and numbers"));
        }
        return r3;
    }

    private void o() {
        this.h = IronSourceLoggerManager.getLogger(0);
        this.i = new Bb();
    }

    private boolean p() {
        try {
            IronLog.INTERNAL.verbose("AdQuality SDK exist: " + Class.forName("com.ironsource.adqualitysdk.sdk.IronSourceAdQuality").getName());
            return true;
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.INTERNAL.verbose("No AdQuality SDK found");
            return false;
        }
    }

    private boolean q() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().b() == null || this.l.c().b().b() == null) ? false : true;
    }

    private boolean r() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().c() == null) ? false : true;
    }

    private boolean s() {
        return r() && t();
    }

    private boolean t() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().a() == null || this.l.k().a().size() <= 0) ? false : true;
    }

    private synchronized boolean v() {
        return this.s;
    }

    private boolean w() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().d() == null) ? false : true;
    }

    private boolean x() {
        return w() && y();
    }

    private boolean y() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().b() == null || this.l.k().b().size() <= 0) ? false : true;
    }

    private boolean z() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().e() == null) ? false : true;
    }

    public boolean F() {
        return v();
    }

    public void G() {
        this.V = false;
    }

    public void H() {
        if (Z) {
            return;
        }
        Z = true;
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        try {
            jSONObjectB.put("status", "false");
            jSONObjectB.put("errorCode", 1);
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.k0().q().a(new C5(D5.FIRST_INSTANCE_RESULT, jSONObjectB));
    }

    public Ue a(Context context, String str) {
        if (!C3789q9.a(context)) {
            return null;
        }
        D3 d3C = C3789q9.c(context);
        String strD = d3C.d();
        String strF = d3C.f();
        String strE = d3C.e();
        if (!strD.equals(str)) {
            return null;
        }
        Ue ue = new Ue(context, strD, strF, strE);
        ue.a(Ue.a.CACHE);
        return ue;
    }

    @Override // com.ironsource.S4.a
    public ISDemandOnlyBannerLayout a(Activity activity, ISBannerSize iSBannerSize) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "createBannerForDemandOnly()", 1);
        if (activity == null) {
            this.h.log(ironSourceTag, "createBannerForDemandOnly() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new ISDemandOnlyBannerLayout(activity, iSBannerSize);
    }

    public synchronized IronSourceError a(Context context, String str, boolean z, Kc kc, IronSource.a... aVarArr) throws Throwable {
        Throwable th;
        try {
            try {
                IronLog.INTERNAL.verbose("GitHash: 2a5b4f8");
                try {
                    if (!C3607ga.a((Object) context, "Init Failed - provided context is null")) {
                        g("Provided context is null");
                        return new IronSourceError(2000, "Provided context is null");
                    }
                    this.g.a(context);
                    boolean z2 = context instanceof Activity;
                    if (z2) {
                        a((Activity) context);
                    }
                    AtomicBoolean atomicBoolean = this.r;
                    if (atomicBoolean == null || !atomicBoolean.compareAndSet(true, false)) {
                        if (aVarArr != null) {
                            a(z2, z, kc != null, aVarArr);
                        } else {
                            this.h.log(IronSourceLogger.IronSourceTag.API, "Multiple calls to init without ad units are not allowed", 3);
                        }
                        He heB = Ie.a.b();
                        if (v()) {
                            a(this.l);
                            return new IronSourceError(IronSourceError.ERROR_INIT_ALREADY_FINISHED, "Already finished init");
                        }
                        if (heB == He.INIT_FAILED) {
                            return new IronSourceError(IronSourceError.ERROR_LEGACY_INIT_FAILED, "Legacy init failed");
                        }
                        if (heB == He.NOT_INIT) {
                            return new IronSourceError(IronSourceError.ERROR_NEW_INIT_API_ALREADY_CALLED, "Already called new init");
                        }
                        if (kc != null) {
                            a(kc);
                        }
                        return new IronSourceError(IronSourceError.ERROR_OLD_API_INIT_IN_PROGRESS, "Old Api init in progress");
                    }
                    Ie.a.a(kc == null);
                    if ((aVarArr == null || aVarArr.length == 0) && kc == null) {
                        for (IronSource.a aVar : IronSource.a.values()) {
                            this.v.add(aVar);
                        }
                        this.E = true;
                        this.F = true;
                        this.G = true;
                    } else {
                        for (IronSource.a aVar2 : aVarArr) {
                            this.v.add(aVar2);
                            this.w.add(aVar2);
                            if (aVar2.equals(IronSource.a.INTERSTITIAL)) {
                                this.F = true;
                            }
                            if (aVar2.equals(IronSource.a.BANNER)) {
                                this.G = true;
                            }
                            if (aVar2.equals(IronSource.a.REWARDED_VIDEO)) {
                                this.E = true;
                            }
                        }
                    }
                    IronLog.API.info("init(appKey:" + str + ")");
                    R3 r3L = l(str);
                    if (r3L.b()) {
                        this.m = str;
                    }
                    Ue ueA = a(context, this.m);
                    if (ueA != null) {
                        IronLog.INTERNAL.verbose("init cache exists");
                        a(ueA.c().b().f());
                    } else {
                        IronLog.INTERNAL.verbose("init cache does not exist");
                    }
                    ContextProvider.getInstance().updateAppContext(context.getApplicationContext());
                    this.d.a(context.getApplicationContext(), TimeUnit.HOURS.toMillis(C3450a5.a.d()));
                    this.T.g(LevelPlay.getSdkVersion());
                    this.T.a(T7.a());
                    this.T.a(C3686l0.a());
                    I();
                    d(context);
                    if (this.m == null) {
                        q.c().e();
                        if (this.v.contains(IronSource.a.REWARDED_VIDEO)) {
                            Od.a().a(false, (AdInfo) null);
                        }
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, r3L.a().toString(), 1);
                        return new IronSourceError(IronSourceError.ERROR_OLD_INIT_API_APP_KEY_IS_NULL, "App key is null");
                    }
                    this.T.a(context);
                    this.T.c(this.m);
                    this.T.h(this.u);
                    if (this.x) {
                        JSONObject jSONObjectB = IronSourceUtils.b(z);
                        if (aVarArr != null) {
                            for (IronSource.a aVar3 : aVarArr) {
                                try {
                                    jSONObjectB.put(aVar3.toString(), true);
                                } catch (Exception e) {
                                    C3801r4.d().a(e);
                                }
                            }
                        }
                        int i = this.A + 1;
                        this.A = i;
                        try {
                            a(z2, z, i, jSONObjectB, kc != null);
                            this.x = false;
                        } catch (Throwable th2) {
                            th = th2;
                            th = th;
                            throw th;
                        }
                    }
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    C3793qd.b a(C3717md c3717md) {
        return this.e.a(ContextProvider.getInstance().getApplicationContext(), c3717md, IronSource.a.REWARDED_VIDEO);
    }

    @Override // com.ironsource.S4
    public String a(Context context) {
        String strA;
        C3756og c3756ogK;
        T4 t4E = e();
        He he = null;
        try {
            He heA = Ie.a.a();
            try {
                t4E.a(D5.TROUBLESHOOTING_DO_GET_BIDDING_DATA_CALLED_IN_INIT_STATUS, heA);
                if (context == null) {
                    IronLog.API.error("bidding data cannot be retrieved, context required");
                    t4E.a(D5.TROUBLESHOOTING_DO_GET_BIDDING_DATA_CALLED_WITHOUT_CONTEXT, (He) null);
                    return null;
                }
                if (heA == He.NOT_INIT) {
                    IronLog.API.error("bidding data cannot be retrieved, SDK not initialized");
                    t4E.a(D5.TROUBLESHOOTING_DO_GET_BIDDING_DATA_NO_INIT_RETURNED_NULL, (He) null);
                    return null;
                }
                q.c().f();
                Ue ue = this.l;
                boolean zE = (ue == null || (c3756ogK = ue.c().b().k()) == null) ? true : c3756ogK.e();
                this.T.b(context);
                JSONObject jSONObjectA = new C3738ng().a(context);
                com.ironsource.mediationsdk.d.b().a(jSONObjectA, true);
                strA = zE ? Q9.a(jSONObjectA.toString()) : Q9.c(jSONObjectA.toString());
                if (heA == He.INITIATED) {
                    IronLog.INTERNAL.verbose("external token parameters: " + jSONObjectA);
                }
                if (TextUtils.isEmpty(strA)) {
                    t4E.a(D5.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, heA);
                }
                t4E.a(D5.TROUBLESHOOTING_DO_GET_BIDDING_DATA_CALLED_TOKEN_RETURNED, heA);
                return strA;
            } catch (Exception unused) {
                he = heA;
                t4E.a(D5.TROUBLESHOOTING_DO_GET_BIDDING_DATA_ENRICH_TOKEN_ERROR, he);
                heA = he;
                strA = null;
            }
        } catch (Exception unused2) {
        }
    }

    public synchronized List<IronSource.a> a(Context context, String str, boolean z, IronSource.a... aVarArr) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if ((aVarArr == null || aVarArr.length == 0) && z) {
            if (this.E) {
                a(IronSource.a.REWARDED_VIDEO);
            } else {
                this.B = true;
                arrayList.add(IronSource.a.REWARDED_VIDEO);
            }
            if (this.F) {
                a(IronSource.a.INTERSTITIAL);
            } else {
                this.C = true;
                arrayList.add(IronSource.a.INTERSTITIAL);
            }
            if (this.G) {
                a(IronSource.a.BANNER);
            } else {
                this.D = true;
                arrayList.add(IronSource.a.BANNER);
            }
        } else {
            for (IronSource.a aVar : aVarArr) {
                if (aVar.equals(IronSource.a.INTERSTITIAL)) {
                    if (this.F) {
                        a(aVar);
                    } else {
                        this.C = true;
                        if (!arrayList.contains(aVar)) {
                            arrayList.add(aVar);
                        }
                    }
                }
                if (aVar.equals(IronSource.a.REWARDED_VIDEO)) {
                    if (this.E) {
                        a(aVar);
                    } else {
                        this.B = true;
                        if (!arrayList.contains(aVar)) {
                            arrayList.add(aVar);
                        }
                    }
                }
                if (aVar.equals(IronSource.a.BANNER)) {
                    if (this.G) {
                        a(aVar);
                    } else {
                        this.D = true;
                        if (!arrayList.contains(aVar)) {
                            arrayList.add(aVar);
                        }
                    }
                }
            }
        }
        if (context != null) {
            if (context instanceof Activity) {
                a((Activity) context);
            }
            ContextProvider.getInstance().updateAppContext(context.getApplicationContext());
        }
        return arrayList;
    }

    @Override // com.ironsource.Sc
    public void a() {
        if (this.H.booleanValue()) {
            this.H = Boolean.FALSE;
            l.a().b(IronSource.a.BANNER, new IronSourceError(603, "init() had failed"));
        }
        if (this.L) {
            this.L = false;
            l.a().b(IronSource.a.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
        }
        if (this.K) {
            this.K = false;
            l.a().b(IronSource.a.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        synchronized (this.M) {
            Iterator<com.ironsource.mediationsdk.demandOnly.h.d> it = this.M.values().iterator();
            while (it.hasNext()) {
                String strE = it.next().e();
                this.X.a(strE).onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            }
            this.M.clear();
        }
        synchronized (this.O) {
            Iterator<com.ironsource.mediationsdk.demandOnly.h.d> it2 = this.O.values().iterator();
            while (it2.hasNext()) {
                String strE2 = it2.next().e();
                this.Y.a(strE2).onRewardedVideoAdLoadFailed(strE2, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            }
            this.O.clear();
        }
        synchronized (this.N) {
            for (com.ironsource.mediationsdk.demandOnly.h.b bVar : this.N.values()) {
                ISDemandOnlyBannerLayout iSDemandOnlyBannerLayoutG = bVar.g();
                if (iSDemandOnlyBannerLayoutG != null) {
                    iSDemandOnlyBannerLayoutG.getListener().a(bVar.e(), ErrorBuilder.buildInitFailedError("init() had failed", "Banner"));
                }
            }
            this.N.clear();
        }
    }

    public void a(long j, Ue.a aVar) {
        JSONObject jSONObjectB = IronSourceUtils.b(u());
        try {
            jSONObjectB.put("duration", j);
            jSONObjectB.put("sessionDepth", this.A);
            jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, aVar.b());
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.k0().q().a(new C5(D5.INIT_COMPLETE, jSONObjectB));
    }

    @Override // com.ironsource.S4.a
    public synchronized void a(Activity activity, ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, String str) {
        com.ironsource.mediationsdk.demandOnly.h.b bVarA = new com.ironsource.mediationsdk.demandOnly.h.c().b(str).a(activity).a(iSDemandOnlyBannerLayout).a(IronSource.a.BANNER).a();
        IronSourceError ironSourceErrorA = bVarA.a();
        if (ironSourceErrorA != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorA.getErrorMessage(), 3);
            if (iSDemandOnlyBannerLayout != null) {
                iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorA);
            }
            return;
        }
        IronSourceError ironSourceErrorA2 = a(q.c().a());
        if (ironSourceErrorA2 != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorA2.getErrorMessage(), 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorA2);
            return;
        }
        ContextProvider.getInstance().updateActivity(activity);
        if (a(bVarA)) {
            return;
        }
        if (!s()) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "No banner configurations found", 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ErrorBuilder.buildInitFailedError("the server response does not contain banner data", "Banner"));
        } else {
            if (b(bVarA)) {
                return;
            }
            this.R.a(iSDemandOnlyBannerLayout, str);
        }
    }

    @Override // com.ironsource.S4.b
    public synchronized void a(Activity activity, String str) {
        a(new com.ironsource.mediationsdk.demandOnly.h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.a.INTERSTITIAL).b(), this.X.a(str));
    }

    @Override // com.ironsource.S4.c
    public synchronized void a(Activity activity, String str, String str2) {
        a(new com.ironsource.mediationsdk.demandOnly.h.c().b(str).a(str2).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(true).a(IronSource.a.REWARDED_VIDEO).b(), this.Y.a(str));
    }

    public void a(C3643ia c3643ia) {
        this.y = c3643ia;
        AdQualityBridge adQualityBridge = this.W;
        if (adQualityBridge != null) {
            adQualityBridge.setSegment(c3643ia);
        }
        N9.i().a(this.y);
        C3682ke.i().a(this.y);
        C3663jd.P.a(this.y);
        Pb.k0().q().a(this.y);
    }

    @Override // com.ironsource.S4.b
    public void a(ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        this.X.a(iSDemandOnlyInterstitialListener);
    }

    @Override // com.ironsource.S4.c
    public void a(ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        this.Y.a(iSDemandOnlyRewardedVideoListener);
    }

    void a(com.ironsource.mediationsdk.demandOnly.h.d dVar, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        String strE = dVar.e();
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + strE);
        try {
            if (!this.E) {
                ironLog.error("initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()");
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, "initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()"));
                return;
            }
            if (!this.B) {
                ironLog.error("Rewarded video was initialized in mediation mode");
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, "Rewarded video was initialized in mediation mode"));
                return;
            }
            q.d dVarA = q.c().a();
            if (dVarA == q.d.INIT_FAILED) {
                ironLog.error("init() had failed");
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            IronSourceError ironSourceErrorA = dVar.a();
            if (ironSourceErrorA != null) {
                if (ironSourceErrorA.getErrorCode() == 1060) {
                    b(D5.TROUBLESHOOTING_DO_CALLED_RV_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                }
                ironLog.error(ironSourceErrorA.toString());
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ironSourceErrorA);
                return;
            }
            a(dVar.d());
            if (dVarA == q.d.INIT_IN_PROGRESS) {
                if (q.c().d()) {
                    ironLog.error("init() had failed");
                    iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                    return;
                }
                synchronized (this.O) {
                    this.O.put(strE, dVar);
                }
                if (TextUtils.isEmpty(dVar.b())) {
                    return;
                }
                b(D5.TROUBLESHOOTING_DO_IAB_RV_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                return;
            }
            if (!D()) {
                ironLog.error("No rewarded video configurations found");
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("the server response does not contain rewarded video data", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            synchronized (this.O) {
                com.ironsource.mediationsdk.demandOnly.k kVar = this.Q;
                if (kVar != null) {
                    kVar.a(dVar);
                    return;
                }
                this.O.put(strE, dVar);
                if (!TextUtils.isEmpty(dVar.b())) {
                    b(D5.TROUBLESHOOTING_DO_IAB_RV_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                }
                return;
            }
            C3801r4.d().a(th);
            IronLog.API.error(th.getMessage());
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, th.getMessage()));
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.API.error(th.getMessage());
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, th.getMessage()));
        }
    }

    @Override // com.ironsource.InterfaceC3515b9
    public void a(ImpressionDataListener impressionDataListener) {
        if (C3607ga.a((Object) impressionDataListener, "removeImpressionDataListener - listener is null")) {
            C3845ta.b().b(impressionDataListener);
        }
    }

    @Override // com.ironsource.S4.c
    public synchronized void a(String str) {
        try {
            IronLog ironLog = IronLog.API;
            ironLog.info("instanceId=" + str);
            ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = this.Y.a(str);
            try {
                if (!this.B) {
                    ironLog.error("Rewarded video was initialized in mediation mode. Use showRewardedVideo instead");
                    iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(508, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"));
                    return;
                }
                com.ironsource.mediationsdk.demandOnly.k kVar = this.Q;
                if (kVar != null) {
                    kVar.b(str);
                } else {
                    ironLog.error("Rewarded video was not initiated");
                    iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(508, "Rewarded video was not initiated"));
                }
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.API.error(e.getMessage());
                if (iSDemandOnlyRewardedVideoListenerA != null) {
                    iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(510, e.getMessage()));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(String str, List<String> list) {
        String strCheckMetaDataKeyValidity = MetaDataUtils.checkMetaDataKeyValidity(str);
        String strCheckMetaDataValueValidity = MetaDataUtils.checkMetaDataValueValidity(list);
        if (strCheckMetaDataKeyValidity.length() > 0) {
            IronLog.API.verbose(strCheckMetaDataKeyValidity);
            return;
        }
        if (strCheckMetaDataValueValidity.length() > 0) {
            IronLog.API.verbose(strCheckMetaDataValueValidity);
            return;
        }
        MetaData metaData = MetaDataUtils.formatMetaData(str, list);
        String metaDataKey = metaData.getMetaDataKey();
        List<String> metaDataValue = metaData.getMetaDataValue();
        if (!MetaDataUtils.isMediationOnlyKey(metaDataKey)) {
            com.ironsource.mediationsdk.c.c().c(metaDataKey, metaDataValue);
        } else if (v() && MetaDataUtils.isMediationKeysBeforeInit(metaDataKey)) {
            IronLog.API.error("setMetaData with key = " + metaDataKey + " must to be called before init");
        } else {
            C3845ta.b().a(metaDataKey, metaDataValue);
        }
        try {
            ConcurrentHashMap<String, List<String>> concurrentHashMapE = com.ironsource.mediationsdk.c.c().e();
            concurrentHashMapE.putAll(C3845ta.b().c());
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, List<String>> entry : concurrentHashMapE.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            this.U.a(jSONObject);
            this.T.a(jSONObject);
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error("got the following error " + e.getMessage());
        }
        Pb.k0().q().a(new C5(v() ? D5.SET_META_DATA_AFTER_INIT : D5.SET_META_DATA, IronSourceUtils.a(str, list, metaDataValue)));
    }

    public void a(String str, JSONObject jSONObject) {
        if (C3607ga.a((Object) jSONObject, "setAdRevenueData - impressionData is null") && C3607ga.a((Object) str, "setAdRevenueData - dataSource is null")) {
            this.S.a(str, jSONObject);
        }
    }

    @Override // com.ironsource.Sc
    public void a(List<IronSource.a> list, boolean z, S3 s3) {
        a(this.l);
        a(list, z ? new Td() : null, s3);
    }

    @Override // com.ironsource.InterfaceC3455aa
    public void a(boolean z) {
        com.ironsource.mediationsdk.c.c().a(z);
    }

    public boolean a(Td td, Ue ue) {
        a(ue);
        if (v()) {
            return true;
        }
        synchronized (this.k) {
            this.l = ue;
        }
        return a(ue.h(), td, ue.c());
    }

    boolean a(C3689l3 c3689l3) {
        return this.e.c(ContextProvider.getInstance().getApplicationContext(), c3689l3, IronSource.a.BANNER);
    }

    Ue b(Context context, String str, c cVar) {
        synchronized (this.k) {
            Ue ue = this.l;
            if (ue != null) {
                return new Ue(ue);
            }
            Ue ueA = a(context, str, cVar);
            if (ueA == null || !ueA.q()) {
                IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
                IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
                logger.log(ironSourceTag, "Null or invalid response. Trying to get cached response", 0);
                ueA = a(context, h());
                if (ueA != null) {
                    this.h.log(ironSourceTag, ErrorBuilder.buildUsingCachedConfigurationError(h(), str).toString() + ": " + ueA.toString(), 1);
                    Pb.k0().q().a(new C5(D5.USING_CACHE_FOR_INIT_EVENT, IronSourceUtils.b(false)));
                }
            }
            if (ueA != null) {
                this.l = ueA;
                IronSourceUtils.e(context, ueA.toString());
                b(this.l, context);
                N9.i().c(true);
                C3682ke.i().c(true);
                C3663jd.P.c(true);
                Pb.k0().q().c(true);
            }
            return ueA;
        }
    }

    public o b(Activity activity, ISBannerSize iSBannerSize) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "createBanner()", 1);
        if (activity == null) {
            this.h.log(ironSourceTag, "createBanner() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new o(activity, iSBannerSize);
    }

    public String b() {
        q qVarC = q.c();
        int i = b.b[qVarC.a().ordinal()];
        if (i == 1) {
            return "init() must be called first";
        }
        if (i == 2) {
            return "init() had failed";
        }
        if (i != 3) {
            return (i == 4 && !A()) ? "No Native Ad configurations found" : "";
        }
        return qVarC.d() ? "init() had failed" : "init() not finished yet";
    }

    @Override // com.ironsource.InterfaceC3455aa
    public String b(Context context) {
        String strI = this.c.I(context);
        Pb.k0().q().a(new C5(D5.GET_ADVERTISING_ID, IronSourceUtils.b(false)));
        return !TextUtils.isEmpty(strI) ? strI : "";
    }

    @Override // com.ironsource.S4.c
    public synchronized void b(Activity activity, String str) {
        a(new com.ironsource.mediationsdk.demandOnly.h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.a.REWARDED_VIDEO).b(), this.Y.a(str));
    }

    @Override // com.ironsource.S4.b
    public synchronized void b(Activity activity, String str, String str2) {
        a(new com.ironsource.mediationsdk.demandOnly.h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.a.INTERSTITIAL).a(true).a(str2).b(), this.X.a(str));
    }

    public void b(Ue ue, Context context) {
        b(ue);
        a(ue, context);
    }

    @Override // com.ironsource.InterfaceC3515b9
    public void b(ImpressionDataListener impressionDataListener) {
        if (C3607ga.a((Object) impressionDataListener, "addImpressionDataListener - listener is null")) {
            C3845ta.b().a(impressionDataListener);
            IronLog.API.info("add impression data listener to " + impressionDataListener.getClass().getSimpleName());
        }
    }

    public void b(String str, JSONObject jSONObject) {
        com.ironsource.mediationsdk.c.c().b(new t(str, jSONObject));
    }

    public void b(boolean z) {
        com.ironsource.mediationsdk.c.c().b(z);
        this.T.a(z);
        Pb.k0().q().a(new C5(z ? D5.CONSENT_TRUE_CODE : D5.CONSENT_FALSE_CODE, IronSourceUtils.b(false)));
    }

    @Override // com.ironsource.InterfaceC3455aa
    public boolean b(String str) {
        try {
            R3 r3 = new R3();
            a(str, r3);
            if (!r3.b()) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, r3.a().toString(), 2);
                return false;
            }
            this.o = str;
            Pb.k0().q().a(new C5(D5.SET_USER_ID, IronSourceUtils.a(true)));
            return true;
        } catch (Exception e) {
            C3801r4.d().a(e);
            this.h.logException(IronSourceLogger.IronSourceTag.API, this.a + ":setDynamicUserId(dynamicUserId:" + str + ")", e);
            return false;
        }
    }

    public C3591fc c() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listA = a(this.l.k().c());
        if (listA.size() > 0) {
            return new C3591fc(listA, this.l.c().e(), IronSourceUtils.f(), C3845ta.b(), this.y);
        }
        JSONObject jSONObjectA = IronSourceUtils.a(false, true, 1);
        a(jSONObjectA, new Object[][]{new Object[]{"errorCode", 1010}});
        a(D5.TROUBLESHOOTING_NT_INIT_FAILED, jSONObjectA);
        return null;
    }

    public void c(Context context) {
        Nf nf = Nf.a;
        nf.b();
        if (!v()) {
            nf.a(IronSourceConstants.errorCode_TEST_SUITE_SDK_NOT_INITIALIZED);
            IronLog.API.error("TestSuite cannot be launched, SDK not initialized");
        } else if (!c(this.l)) {
            nf.a(IronSourceConstants.errorCode_TEST_SUITE_DISABLED);
            IronLog.API.error(IronSourceConstants.errorMessage_TEST_SUITE_DISABLED);
        } else if (IronSourceUtils.f(context)) {
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(context));
        } else {
            nf.a(IronSourceConstants.errorCode_TEST_SUITE_NO_NETWORK_CONNECTIVITY);
            IronLog.API.error("TestSuite cannot be launched, No network connectivity");
        }
    }

    @Override // com.ironsource.S4.b
    public void c(String str) {
        this.h.log(IronSourceLogger.IronSourceTag.API, "showDemandOnlyInterstitial() instanceId=" + str, 1);
        ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListenerA = this.X.a(str);
        try {
            if (!this.C) {
                IronLog.API.error("Interstitial was initialized in mediation mode. Use showInterstitial instead");
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, new IronSourceError(508, "Interstitial was initialized in mediation mode. Use showInterstitial instead"));
                return;
            }
            com.ironsource.mediationsdk.demandOnly.f fVar = this.P;
            if (fVar != null) {
                fVar.a(str);
            } else {
                IronLog.API.error("Interstitial was not initiated");
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, new IronSourceError(508, "Interstitial was not initiated"));
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.API.error(e.getMessage());
            if (iSDemandOnlyInterstitialListenerA != null) {
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
            }
        }
    }

    public Ue d() {
        return this.l;
    }

    @Override // com.ironsource.S4.b
    public synchronized boolean d(String str) {
        com.ironsource.mediationsdk.demandOnly.f fVar;
        fVar = this.P;
        return fVar != null && fVar.b(str);
    }

    @Override // com.ironsource.S4.a
    public void e(String str) {
        this.h.log(IronSourceLogger.IronSourceTag.API, "destroyBanner()", 1);
        try {
            com.ironsource.mediationsdk.demandOnly.c cVar = this.R;
            if (cVar != null) {
                cVar.a(str);
            }
        } catch (Throwable th) {
            C3801r4.d().a(th);
            this.h.logException(IronSourceLogger.IronSourceTag.API, "destroyISDemandOnlyBanner()", th);
        }
    }

    public String f() {
        return this.o;
    }

    @Override // com.ironsource.InterfaceC3455aa
    public void f(String str) {
        try {
            String str2 = this.a + ":setMediationType(mediationType:" + str + ")";
            IronSourceLoggerManager ironSourceLoggerManager = this.h;
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
            ironSourceLoggerManager.log(ironSourceTag, str2, 1);
            if (!a(str, 1, 64) || !k(str)) {
                this.h.log(ironSourceTag, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length", 1);
            } else {
                this.q = str;
                this.T.f(str);
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            this.h.logException(IronSourceLogger.IronSourceTag.API, this.a + ":setMediationType(mediationType:" + str + ")", e);
        }
    }

    @Override // com.ironsource.Sc
    public void g(String str) {
        try {
            this.h.log(IronSourceLogger.IronSourceTag.API, "onInitFailed(reason:" + str + ")", 1);
            IronSourceUtils.i("Mediation init failed");
            if (this.i != null) {
                Iterator<IronSource.a> it = this.v.iterator();
                while (it.hasNext()) {
                    a(it.next(), true);
                }
            }
            Kc kcK = k();
            if (kcK != null) {
                kcK.onInitFailed(new IronSourceError(IronSourceError.ERROR_LEGACY_INIT_FAILED, "Legacy init failed"));
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public String h() {
        return this.m;
    }

    @Override // com.ironsource.S4.c
    public synchronized boolean h(String str) {
        com.ironsource.mediationsdk.demandOnly.k kVar;
        kVar = this.Q;
        return kVar != null && kVar.a(str);
    }

    public C3627hc i(String str) {
        C3627hc c3627hcA;
        Wb wbE = this.l.c().e();
        if (wbE == null) {
            return null;
        }
        return (TextUtils.isEmpty(str) || (c3627hcA = wbE.a(str)) == null) ? wbE.e() : c3627hcA;
    }

    public String i() {
        return this.n;
    }

    public String j() {
        return this.q;
    }

    public void j(String str) {
        IronLog.API.verbose("userId = " + str);
        this.n = str;
        Pb.k0().q().a(new C5(D5.SET_USER_ID, IronSourceUtils.a(false)));
        AdQualityBridge adQualityBridge = this.W;
        if (adQualityBridge != null) {
            adQualityBridge.changeUserId(str);
        }
    }

    public Map<String, String> l() {
        return this.p;
    }

    public C3643ia m() {
        return this.y;
    }

    public String n() {
        return this.u;
    }

    boolean u() {
        return this.B || this.C || this.D;
    }
}
