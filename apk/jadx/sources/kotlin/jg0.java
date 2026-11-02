package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class jg0 implements cn1 {
    public ri3 A;
    public ym1 A0;
    public ui3 B;
    public gn1 B0;
    public vh1 C;
    public ln1 C0;
    public sh0 D;
    public jn1 D0;
    public vh1 E;
    public dw2 E0;
    public zh3 F;
    public dw2 F0;
    public bi3 G;
    public sh0 G0;
    public ai3 H;
    public dw2 H0;
    public pn1 I;
    public dw2 I0;
    public wh3 J;
    public dw2 J0;
    public ci3 K;
    public dw2 K0;
    public fi3 L;
    public uh3 M;
    public gi3 N;
    public hi3 O;
    public ii3 P;
    public ji3 Q;
    public li3 R;
    public pi3 S;
    public si3 T;
    public vi3 U;
    public mi3 V;
    public wi3 W;
    public xi3 X;
    public zi3 Y;
    public aj3 Z;
    public final vf0 a;
    public ij3 a0;
    public dw2 b;
    public vh3 b0;
    public vh1 c;
    public hj3 c0;
    public dw2 d;
    public yh3 d0;
    public dw2 e;
    public dw2 e0;
    public vh1 f;
    public cj3 f0;
    public vh1 g;
    public dj3 g0;
    public vh1 h;
    public fj3 h0;
    public zm1 i;
    public di3 i0;
    public on1 j;
    public vh1 j0;
    public hn1 k;
    public ej3 k0;
    public kn1 l;
    public gj3 l0;
    public nn1 m;
    public qi3 m0;
    public sn1 n;
    public ti3 n0;
    public fn1 o;
    public ei3 o0;
    public vh1 p;
    public ni3 p0;
    public dw2 q;
    public ki3 q0;
    public sh0 r;
    public yi3 r0;
    public dw2 s;
    public bj3 s0;
    public vh1 t;
    public ek3 t0;
    public jk1 u;
    public ad3 u0;
    public pn2 v;
    public yc3 v0;
    public ik1 w;
    public wc3 w0;
    public ox x;
    public dw2 x0;
    public xh3 y;
    public dw2 y0;
    public oi3 z;
    public dw2 z0;

    public jg0(vf0 vf0Var, j53 j53Var, BaseRequest baseRequest, n03 n03Var, tn1 tn1Var, md1 md1Var, Boolean bool, m13 m13Var, Boolean bool2, Boolean bool3, pb pbVar, gj1 gj1Var, g33 g33Var, Boolean bool4, BannerRequest bannerRequest) {
        this.a = vf0Var;
        a(j53Var, baseRequest, md1Var, bool3, pbVar, gj1Var, bool4);
        a(bool, bool2, bannerRequest);
        b();
        a(m13Var);
        a(n03Var, tn1Var, g33Var);
        c();
    }

    @Override // kotlin.cn1
    public final hj1 a() {
        return (hj1) this.K0.get();
    }

    public final void a(j53 j53Var, BaseRequest baseRequest, md1 md1Var, Boolean bool, pb pbVar, gj1 gj1Var, Boolean bool2) {
        dw2 mn1Var = new mn1(this.a.w0);
        Object obj = do0.c;
        if (!(mn1Var instanceof do0)) {
            mn1Var = new do0(mn1Var);
        }
        this.b = mn1Var;
        vh1 vh1VarA = vh1.a(j53Var);
        this.c = vh1VarA;
        dw2 in1Var = new in1(this.a.D2, vh1VarA);
        if (!(in1Var instanceof do0)) {
            in1Var = new do0(in1Var);
        }
        this.d = in1Var;
        dw2 qn1Var = new qn1(in1Var);
        if (!(qn1Var instanceof do0)) {
            qn1Var = new do0(qn1Var);
        }
        this.e = qn1Var;
        this.f = vh1.a(pbVar);
        this.g = vh1.a(baseRequest);
        vh1 vh1VarA2 = vh1.a(md1Var);
        this.h = vh1VarA2;
        this.i = new zm1(vh1VarA2);
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
        this.p = vh1.a(gj1Var);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(8);
        hu1Var.a("configLoaderRefreshSignalRequestedListener", this.a.v3);
        hu1Var.a("InspectorAdLifecycleMonitorRequestListener", this.i);
        hu1Var.a("adUnitStatsTrackerSignalsRequestedListener", this.k);
        hu1Var.a("customTabsConnectionInitializationTask", this.l);
        hu1Var.a("nativeSingletonPreloaderAsInternalAdRequestEventListener", this.m);
        hu1Var.a("webViewProfileOptimizerAdRequestListener", this.n);
        hu1Var.a("webViewPrefetchAdRequestListener", this.o);
        hu1Var.a("BannerRefreshHelper", this.p);
        iu1 iu1Var = new iu1(hu1Var.a);
        vf0 vf0Var3 = this.a;
        dw2 fj1Var = new fj1(vf0Var3.u, iu1Var, vf0Var3.A3);
        if (!(fj1Var instanceof do0)) {
            fj1Var = new do0(fj1Var);
        }
        this.q = fj1Var;
        sh0 sh0Var = new sh0(vh1.a(bool));
        this.r = sh0Var;
        vf0 vf0Var4 = this.a;
        dw2 la2Var = new la2(vf0Var4.d0, vf0Var4.Q, vf0Var4.I, vf0Var4.A, vf0Var4.t, vf0Var4.h, this.q, sh0Var, vf0Var4.F);
        if (!(la2Var instanceof do0)) {
            la2Var = new do0(la2Var);
        }
        this.s = la2Var;
        vh1 vh1VarA3 = vh1.a(bool2);
        this.t = vh1VarA3;
        dw2 qpVar = new qp(vh1VarA3);
        if (!(qpVar instanceof do0)) {
            qpVar = new do0(qpVar);
        }
        this.u = new jk1(qpVar);
        this.v = new pn2(this.g);
    }

    public final void a(m13 m13Var) {
        this.f0 = new cj3(this.e0, this.a.t);
        dw2 q43Var = new q43(this.b);
        Object obj = do0.c;
        if (!(q43Var instanceof do0)) {
            q43Var = new do0(q43Var);
        }
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        this.g0 = new dj3(q43Var, dw2Var);
        this.h0 = new fj3(vf0Var.n2, dw2Var);
        this.i0 = new di3(vf0Var.K3, dw2Var);
        this.j0 = mj0.a;
        vh1 vh1VarA = vh1.a(m13Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var2 = vf0Var2.t;
        vh1 vh1Var = vf0Var2.f;
        dw2 dw2Var3 = vf0Var2.h;
        dw2 dw2Var4 = vf0Var2.H0;
        dw2 dw2Var5 = vf0Var2.E;
        dw2 dw2Var6 = vf0Var2.E1;
        ol0 ol0Var = vf0Var2.u;
        dw2 dw2Var7 = vf0Var2.G;
        ol0 ol0Var2 = vf0Var2.f1;
        vh1 vh1Var2 = this.g;
        this.k0 = new ej3(new k93(dw2Var2, this.D, this.j0, new c93(dw2Var2, vh1Var, dw2Var3, dw2Var4, dw2Var5, dw2Var6, ol0Var, dw2Var7, ol0Var2, vh1Var2, vh1VarA), this.c, vh1Var2), dw2Var2);
        this.l0 = new gj3(vf0Var2.L3, dw2Var2);
        this.m0 = new qi3(vf0Var2.M3, dw2Var2);
        this.n0 = new ti3(new yg1(vf0Var2.P0), dw2Var2);
        this.o0 = new ei3(vf0Var2.N3, dw2Var2);
        this.p0 = new ni3(new yn0(vh1Var), dw2Var2);
        this.q0 = new ki3(vf0Var2.O3, dw2Var2);
        dw2 zi2Var = new zi2(vh1VarA);
        if (!(zi2Var instanceof do0)) {
            zi2Var = new do0(zi2Var);
        }
        vf0 vf0Var3 = this.a;
        dw2 dw2Var8 = vf0Var3.t;
        this.r0 = new yi3(zi2Var, dw2Var8);
        this.s0 = new bj3(new hn2(vf0Var3.f, vf0Var3.u2, dw2Var8, vf0Var3.w1), dw2Var8);
        int i = sc3.c;
        rc3 rc3Var = new rc3(42, 1);
        rc3Var.a(this.u);
        ik1 ik1Var = this.w;
        if (!rc3.c && ik1Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        rc3Var.b.add(ik1Var);
        rc3Var.a(this.x);
        rc3Var.a(this.y);
        rc3Var.a(this.z);
        rc3Var.a(this.A);
        rc3Var.a(this.B);
        rc3Var.a(this.F);
        rc3Var.a(this.G);
        rc3Var.a(this.H);
        rc3Var.a(this.K);
        rc3Var.a(this.L);
        rc3Var.a(this.M);
        rc3Var.a(this.N);
        rc3Var.a(this.O);
        rc3Var.a(this.P);
        rc3Var.a(this.Q);
        rc3Var.a(this.R);
        rc3Var.a(this.S);
        rc3Var.a(this.T);
        rc3Var.a(this.U);
        rc3Var.a(this.V);
        rc3Var.a(this.W);
        rc3Var.a(this.X);
        rc3Var.a(this.Y);
        rc3Var.a(this.Z);
        rc3Var.a(this.a0);
        rc3Var.a(this.b0);
        rc3Var.a(this.c0);
        rc3Var.a(this.d0);
        rc3Var.a(this.f0);
        rc3Var.a(this.g0);
        rc3Var.a(this.h0);
        rc3Var.a(this.i0);
        rc3Var.a(this.k0);
        rc3Var.a(this.l0);
        rc3Var.a(this.m0);
        rc3Var.a(this.n0);
        rc3Var.a(this.o0);
        rc3Var.a(this.p0);
        rc3Var.a(this.q0);
        rc3Var.a(this.r0);
        rc3Var.a(this.s0);
        sc3 sc3VarA = rc3Var.a();
        vf0 vf0Var4 = this.a;
        this.t0 = new ek3(sc3VarA, vf0Var4.x, vf0Var4.u, vf0Var4.t, this.g, this.q);
        this.u0 = new ad3(vf0Var4.Q);
    }

    public final void a(n03 n03Var, tn1 tn1Var, g33 g33Var) {
        dw2 dw2Var = this.a.w1;
        this.v0 = new yc3(dw2Var);
        this.w0 = new wc3(dw2Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        ad3 ad3Var = this.u0;
        if (ad3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setCookie", ad3Var);
        dw2 dw2Var2 = this.a.P3;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setInspectorGesture", dw2Var2);
        dw2 dw2Var3 = this.a.Q3;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setInspectorServerData", dw2Var3);
        dw2 dw2Var4 = this.a.R3;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setTestMode", dw2Var4);
        yc3 yc3Var = this.v0;
        if (yc3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setZenithTotalInflightAdLimit", yc3Var);
        wc3 wc3Var = this.w0;
        if (wc3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setServingGdprApplies", wc3Var);
        dw2 lVar = new l(new iu1(linkedHashMapA));
        Object obj = do0.c;
        if (!(lVar instanceof do0)) {
            lVar = new do0(lVar);
        }
        this.x0 = lVar;
        vh1 vh1Var2 = mj0.a;
        vf0 vf0Var = this.a;
        k43 k43Var = new k43(vf0Var.t, vf0Var.Q, vf0Var.F, vf0Var.S3, vh1Var2, vf0Var.u3, vf0Var.d0, vf0Var.K, vf0Var.f);
        dw2 do0Var = k43Var instanceof do0 ? k43Var : new do0(k43Var);
        vf0 vf0Var2 = this.a;
        cb2 cb2Var = new cb2(vf0Var2.d0, this.s, this.t0, this.g, this.c, this.q, this.x0, do0Var, vf0Var2.T3, vf0Var2.U3, vf0Var2.t, vf0Var2.w0, vf0Var2.F, vf0Var2.M2, vf0Var2.u);
        dw2 do0Var2 = cb2Var instanceof do0 ? cb2Var : new do0(cb2Var);
        this.y0 = do0Var2;
        vh1 vh1Var3 = this.g;
        dw2 dw2Var5 = this.q;
        dw2 dw2Var6 = this.x0;
        vf0 vf0Var3 = this.a;
        sm2 sm2Var = new sm2(vh1Var3, dw2Var5, dw2Var6, vf0Var3.A0, vf0Var3.n1, this.c, do0Var2, vf0Var3.t, vf0Var3.F, vh1Var2);
        dw2 an1Var = new an1(this.g, this.c, this.y0, sm2Var instanceof do0 ? sm2Var : new do0(sm2Var), this.a.A0);
        if (!(an1Var instanceof do0)) {
            an1Var = new do0(an1Var);
        }
        this.z0 = an1Var;
        this.A0 = new ym1(this.h);
        dw2 dw2Var7 = this.b;
        vh1 vh1Var4 = this.g;
        vf0 vf0Var4 = this.a;
        dw2 rcVar = new rc(dw2Var7, vh1Var4, vf0Var4.w3, vf0Var4.h);
        if (!(rcVar instanceof do0)) {
            rcVar = new do0(rcVar);
        }
        this.B0 = new gn1(rcVar);
        vf0 vf0Var5 = this.a;
        this.C0 = new ln1(vf0Var5.V3);
        this.D0 = new jn1(vf0Var5.s2);
        LinkedHashMap linkedHashMapA2 = ud0.a(5);
        ym1 ym1Var = this.A0;
        if (ym1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("InspectorAdLifecycleMonitorLoadListener", ym1Var);
        gn1 gn1Var = this.B0;
        if (gn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("adUnitStatsTrackerAdLoadListener", gn1Var);
        ln1 ln1Var = this.C0;
        if (ln1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("debugSignalsAdLoadListener", ln1Var);
        jn1 jn1Var = this.D0;
        if (jn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("customTabsConnectionInitializationTaskInternalAdLoadListener", jn1Var);
        dw2 dw2Var8 = this.y0;
        if (dw2Var8 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA2, "NetworkTransactionRequesterLoadListener", dw2Var8, linkedHashMapA2);
        vf0 vf0Var6 = this.a;
        ki1 ki1Var = new ki1(vf0Var6.u, iu1VarA, vf0Var6.A3);
        dw2 do0Var3 = ki1Var instanceof do0 ? ki1Var : new do0(ki1Var);
        this.E0 = do0Var3;
        vf0 vf0Var7 = this.a;
        dw2 w33Var = new w33(vf0Var7.u, vf0Var7.h, vf0Var7.u1, vf0Var7.o1, do0Var3, this.f, this.e);
        if (!(w33Var instanceof do0)) {
            w33Var = new do0(w33Var);
        }
        this.F0 = w33Var;
        this.G0 = new sh0(vh1.a(n03Var));
        dw2 rn1Var = new rn1(this.G0, new sh0(vh1.a(tn1Var)));
        if (!(rn1Var instanceof do0)) {
            rn1Var = new do0(rn1Var);
        }
        this.H0 = rn1Var;
        vh1 vh1VarA = vh1.a(g33Var);
        vf0 vf0Var8 = this.a;
        dw2 bqVar = new bq(vf0Var8.W3, this.H0, this.g, this.C, vh1VarA, this.E, this.j, this.e, this.b, this.t, this.p, vf0Var8.Y3, this.h, this.f);
        if (!(bqVar instanceof do0)) {
            bqVar = new do0(bqVar);
        }
        this.I0 = bqVar;
    }

    public final void a(Boolean bool, Boolean bool2, BannerRequest bannerRequest) {
        pn2 pn2Var = this.v;
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        this.w = new ik1(pn2Var, dw2Var, this.g);
        this.x = new ox(vf0Var.S2, dw2Var);
        this.y = new xh3(vf0Var.P2, dw2Var);
        this.z = new oi3(new iq0(vf0Var.Q), dw2Var);
        vh1 vh1Var = vf0Var.f;
        dw2 dw2Var2 = vf0Var.w1;
        this.A = new ri3(new c61(vh1Var, dw2Var, dw2Var2), dw2Var);
        this.B = new ui3(new tp1(vh1Var, dw2Var, dw2Var2), dw2Var);
        vh1 vh1VarA = vh1.a(bannerRequest);
        this.C = vh1VarA;
        this.D = new sh0(vh1VarA);
        this.E = vh1.a(bool);
        vh1 vh1VarA2 = vh1.a(bool2);
        vf0 vf0Var2 = this.a;
        dw2 z8Var = new z8(vf0Var2.h, this.g, this.D, vf0Var2.J0, vf0Var2.f, this.c, this.E, vf0Var2.t, vf0Var2.B3, vh1VarA2, this.r);
        Object obj = do0.c;
        if (!(z8Var instanceof do0)) {
            z8Var = new do0(z8Var);
        }
        vf0 vf0Var3 = this.a;
        dw2 dw2Var3 = vf0Var3.t;
        this.F = new zh3(z8Var, dw2Var3);
        this.G = new bi3(new vb(vf0Var3.V), dw2Var3);
        vh1 vh1Var2 = mj0.a;
        sh0 sh0Var = this.D;
        vh1 vh1Var3 = this.c;
        this.H = new ai3(new nb(sh0Var, vh1Var2, vh1Var3, vf0Var3.f, dw2Var3, vf0Var3.u2), dw2Var3);
        this.I = new pn1(vh1Var3);
        this.J = new wh3(this.g);
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        pn1 pn1Var = this.I;
        boolean z = rc3.c;
        if (!z && pn1Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(pn1Var);
        wh3 wh3Var = this.J;
        if (!z && wh3Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB2.add(wh3Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        this.K = new ci3(new ec(new sc3(listB, listB2)), this.a.t);
    }

    public final void b() {
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.C3;
        dw2 dw2Var2 = vf0Var.t;
        this.L = new fi3(dw2Var, dw2Var2);
        this.M = new uh3(vf0Var.j2, dw2Var2);
        this.N = new gi3(vf0Var.D3, dw2Var2);
        this.O = new hi3(vf0Var.V2, dw2Var2);
        this.P = new ii3(vf0Var.X2, dw2Var2);
        this.Q = new ji3(new zv(this.c, vf0Var.H0, this.g, vf0Var.S1), dw2Var2);
        this.R = new li3(vf0Var.E3, dw2Var2);
        dw2 dw2VarA = jk3.a(new ar0(dw2Var2));
        vf0 vf0Var2 = this.a;
        dw2 dw2Var3 = vf0Var2.t;
        this.S = new pi3(dw2VarA, dw2Var3);
        this.T = new si3(vf0Var2.F3, dw2Var3);
        this.U = new vi3(dw2Var3, new qw1(vf0Var2.e0));
        this.V = new mi3(new gn0(vf0Var2.f, vf0Var2.H), dw2Var3);
        this.W = new wi3(vf0Var2.G3, dw2Var3);
        this.X = new xi3(vf0Var2.l2, dw2Var3);
        this.Y = new zi3(vf0Var2.H3, dw2Var3);
        this.Z = new aj3(vf0Var2.I3, dw2Var3);
        this.a0 = new ij3(vf0Var2.p2, dw2Var3);
        dw2 dw2VarA2 = jk3.a(new xn3(vf0Var2.y1));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var4 = vf0Var3.t;
        this.b0 = new vh3(dw2VarA2, dw2Var4);
        this.c0 = new hj3(vf0Var3.J3, dw2Var4);
        this.d0 = new yh3(vf0Var3.h2, dw2Var4);
        dw2 e13Var = new e13(vf0Var3.w3, this.g, vf0Var3.e0, this.d);
        Object obj = do0.c;
        if (!(e13Var instanceof do0)) {
            e13Var = new do0(e13Var);
        }
        this.e0 = e13Var;
    }

    public final void c() {
        vf0 vf0Var = this.a;
        dw2 ti1Var = new ti1(this.b, this.e, this.f, this.z0, new wi2(vf0Var.u, vf0Var.C, vf0Var.T3, vf0Var.h, this.F0, this.I0), this.H0, this.q, vf0Var.t, this.E0);
        Object obj = do0.c;
        if (!(ti1Var instanceof do0)) {
            ti1Var = new do0(ti1Var);
        }
        this.J0 = ti1Var;
        dw2 lj1Var = new lj1(this.b, this.e, this.H0, this.q, this.y0, this.a.t);
        if (!(lj1Var instanceof do0)) {
            lj1Var = new do0(lj1Var);
        }
        this.K0 = lj1Var;
    }
}
