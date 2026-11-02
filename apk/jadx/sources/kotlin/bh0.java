package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class bh0 {
    public dw2 A;
    public final vf0 a;
    public dw2 b;
    public dw2 c;
    public dw2 d;
    public vh1 e;
    public vh1 f;
    public vh1 g;
    public vh1 h;
    public pj1 i;
    public on1 j;
    public hn1 k;
    public kn1 l;
    public nn1 m;
    public sn1 n;
    public fn1 o;
    public dw2 p;
    public dw2 q;
    public oj1 r;
    public gn1 s;
    public ln1 t;
    public jn1 u;
    public dw2 v;
    public dw2 w;
    public sh0 x;
    public dw2 y;
    public vh1 z;

    public bh0(vf0 vf0Var, tf3 tf3Var, String str, BaseRequest baseRequest, j53 j53Var, Boolean bool, n03 n03Var, tn1 tn1Var, md1 md1Var, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        this.a = vf0Var;
        a(tf3Var, str, baseRequest, j53Var, md1Var);
        a(bool, n03Var, tn1Var, swipeableInterstitialRequest);
    }

    public final void a(tf3 tf3Var, String str, BaseRequest baseRequest, j53 j53Var, md1 md1Var) {
        dw2 mn1Var = new mn1(this.a.w0);
        Object obj = do0.c;
        if (!(mn1Var instanceof do0)) {
            mn1Var = new do0(mn1Var);
        }
        this.b = mn1Var;
        dw2 in1Var = new in1(this.a.D2, vh1.a(j53Var));
        if (!(in1Var instanceof do0)) {
            in1Var = new do0(in1Var);
        }
        dw2 qn1Var = new qn1(in1Var);
        if (!(qn1Var instanceof do0)) {
            qn1Var = new do0(qn1Var);
        }
        this.c = qn1Var;
        dw2 qbVar = new qb(this.a.t);
        if (!(qbVar instanceof do0)) {
            qbVar = new do0(qbVar);
        }
        this.d = qbVar;
        this.e = vh1.a(str);
        this.f = vh1.a(tf3Var);
        this.g = vh1.a(baseRequest);
        vh1 vh1VarA = vh1.a(md1Var);
        this.h = vh1VarA;
        this.i = new pj1(vh1VarA);
        vf0 vf0Var = this.a;
        on1 on1Var = new on1(vf0Var.h);
        this.j = on1Var;
        dw2 rl3Var = new rl3(vf0Var.w3, vf0Var.D2, this.b, on1Var);
        if (!(rl3Var instanceof do0)) {
            rl3Var = new do0(rl3Var);
        }
        this.k = new hn1(rl3Var);
        vf0 vf0Var2 = this.a;
        this.l = new kn1(vf0Var2.s2);
        this.m = new nn1(vf0Var2.x3);
        this.n = new sn1(vf0Var2.y3);
        this.o = new fn1(vf0Var2.z3);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(7);
        hu1Var.a("configLoaderRefreshSignalRequestedListener", this.a.v3);
        hu1Var.a("InspectorAdLifecycleMonitorRequestListener", this.i);
        hu1Var.a("adUnitStatsTrackerSignalsRequestedListener", this.k);
        hu1Var.a("customTabsConnectionInitializationTask", this.l);
        hu1Var.a("nativeSingletonPreloaderAsInternalAdRequestEventListener", this.m);
        hu1Var.a("webViewProfileOptimizerAdRequestListener", this.n);
        hu1Var.a("webViewPrefetchAdRequestListener", this.o);
        iu1 iu1Var = new iu1(hu1Var.a);
        vf0 vf0Var3 = this.a;
        fj1 fj1Var = new fj1(vf0Var3.u, iu1Var, vf0Var3.A3);
        dw2 do0Var = fj1Var instanceof do0 ? fj1Var : new do0(fj1Var);
        this.p = do0Var;
        vf0 vf0Var4 = this.a;
        dw2 ybVar = new yb(vf0Var4.d0, this.e, this.f, this.g, vf0Var4.t, do0Var);
        if (!(ybVar instanceof do0)) {
            ybVar = new do0(ybVar);
        }
        this.q = ybVar;
        this.r = new oj1(this.h);
        dw2 dw2Var = this.b;
        vh1 vh1Var2 = this.g;
        vf0 vf0Var5 = this.a;
        dw2 rcVar = new rc(dw2Var, vh1Var2, vf0Var5.w3, vf0Var5.h);
        if (!(rcVar instanceof do0)) {
            rcVar = new do0(rcVar);
        }
        this.s = new gn1(rcVar);
        vf0 vf0Var6 = this.a;
        this.t = new ln1(vf0Var6.V3);
        this.u = new jn1(vf0Var6.s2);
    }

    public final void a(Boolean bool, n03 n03Var, tn1 tn1Var, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        oj1 oj1Var = this.r;
        if (oj1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("InspectorAdLifecycleMonitorLoadListener", oj1Var);
        gn1 gn1Var = this.s;
        if (gn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("adUnitStatsTrackerAdLoadListener", gn1Var);
        ln1 ln1Var = this.t;
        if (ln1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("debugSignalsAdLoadListener", ln1Var);
        jn1 jn1Var = this.u;
        if (jn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("customTabsConnectionInitializationTaskInternalAdLoadListener", jn1Var);
        iu1 iu1Var = new iu1(linkedHashMapA);
        vf0 vf0Var = this.a;
        ki1 ki1Var = new ki1(vf0Var.u, iu1Var, vf0Var.A3);
        Object obj = do0.c;
        dw2 do0Var = ki1Var instanceof do0 ? ki1Var : new do0(ki1Var);
        this.v = do0Var;
        vf0 vf0Var2 = this.a;
        dw2 w33Var = new w33(vf0Var2.u, vf0Var2.h, vf0Var2.u1, vf0Var2.o1, do0Var, this.d, this.c);
        if (!(w33Var instanceof do0)) {
            w33Var = new do0(w33Var);
        }
        this.w = w33Var;
        this.x = new sh0(vh1.a(n03Var));
        dw2 rn1Var = new rn1(this.x, new sh0(vh1.a(tn1Var)));
        if (!(rn1Var instanceof do0)) {
            rn1Var = new do0(rn1Var);
        }
        this.y = rn1Var;
        this.z = vh1.a(swipeableInterstitialRequest);
        kn3 kn3Var = new kn3(this.a.u4, this.y, this.g, this.z, vh1.a(bool), this.j, this.c, this.b, this.h, this.d);
        dw2 do0Var2 = kn3Var instanceof do0 ? kn3Var : new do0(kn3Var);
        vf0 vf0Var3 = this.a;
        dw2 ti1Var = new ti1(this.b, this.c, this.d, this.q, new wi2(vf0Var3.u, vf0Var3.C, vf0Var3.T3, vf0Var3.h, this.w, do0Var2), this.y, this.p, vf0Var3.t, this.v);
        if (!(ti1Var instanceof do0)) {
            ti1Var = new do0(ti1Var);
        }
        this.A = ti1Var;
    }
}
