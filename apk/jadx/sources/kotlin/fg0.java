package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class fg0 implements cn1 {
    public zh3 A;
    public dw2 A0;
    public bi3 B;
    public dw2 B0;
    public ai3 C;
    public sh0 C0;
    public pn1 D;
    public dw2 D0;
    public wh3 E;
    public dw2 E0;
    public ci3 F;
    public dw2 F0;
    public fi3 G;
    public uh3 H;
    public gi3 I;
    public hi3 J;
    public ii3 K;
    public zv L;
    public ji3 M;
    public li3 N;
    public pi3 O;
    public si3 P;
    public vi3 Q;
    public mi3 R;
    public wi3 S;
    public xi3 T;
    public zi3 U;
    public aj3 V;
    public ij3 W;
    public vh3 X;
    public hj3 Y;
    public yh3 Z;
    public final vf0 a;
    public cj3 a0;
    public dw2 b;
    public dj3 b0;
    public vh1 c;
    public fj3 c0;
    public dw2 d;
    public di3 d0;
    public dw2 e;
    public vh1 e0;
    public vh1 f;
    public ej3 f0;
    public vh1 g;
    public gj3 g0;
    public vh1 h;
    public qi3 h0;
    public zm1 i;
    public ti3 i0;
    public on1 j;
    public ei3 j0;
    public hn1 k;
    public ni3 k0;
    public kn1 l;
    public ki3 l0;
    public nn1 m;
    public yi3 m0;
    public sn1 n;
    public bj3 n0;
    public fn1 o;
    public ek3 o0;
    public dw2 p;
    public ad3 p0;
    public dw2 q;
    public yc3 q0;
    public sh0 r;
    public wc3 r0;
    public dw2 s;
    public dw2 s0;
    public ox t;
    public dw2 t0;
    public xh3 u;
    public dw2 u0;
    public oi3 v;
    public dw2 v0;
    public ri3 w;
    public ym1 w0;
    public ui3 x;
    public gn1 x0;
    public vh1 y;
    public ln1 y0;
    public vh1 z;
    public jn1 z0;

    public fg0(vf0 vf0Var, j53 j53Var, BaseRequest baseRequest, n03 n03Var, tn1 tn1Var, md1 md1Var, Boolean bool, m13 m13Var, Boolean bool2, Boolean bool3, pb pbVar) {
        this.a = vf0Var;
        a(j53Var, baseRequest, md1Var, bool3, pbVar);
        a(bool, bool2);
        b();
        a(m13Var);
        a(n03Var, tn1Var);
    }

    @Override // kotlin.cn1
    public final hj1 a() {
        return (hj1) this.F0.get();
    }

    public final void a(j53 j53Var, BaseRequest baseRequest, md1 md1Var, Boolean bool, pb pbVar) {
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
        dw2 pk2Var = new pk2(vf0Var2.A1, vf0Var2.A0, this.g, this.c, yj1.a, vf0Var2.F, vf0Var2.s);
        if (!(pk2Var instanceof do0)) {
            pk2Var = new do0(pk2Var);
        }
        this.p = pk2Var;
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(8);
        hu1Var.a("configLoaderRefreshSignalRequestedListener", this.a.v3);
        hu1Var.a("InspectorAdLifecycleMonitorRequestListener", this.i);
        hu1Var.a("adUnitStatsTrackerSignalsRequestedListener", this.k);
        hu1Var.a("customTabsConnectionInitializationTask", this.l);
        hu1Var.a("nativeSingletonPreloaderAsInternalAdRequestEventListener", this.m);
        hu1Var.a("webViewProfileOptimizerAdRequestListener", this.n);
        hu1Var.a("webViewPrefetchAdRequestListener", this.o);
        hu1Var.a("persistentCacheRefillRequestListener", this.p);
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
        vf0 vf0Var5 = this.a;
        dw2 dw2Var = vf0Var5.S2;
        dw2 dw2Var2 = vf0Var5.t;
        this.t = new ox(dw2Var, dw2Var2);
        this.u = new xh3(vf0Var5.P2, dw2Var2);
        this.v = new oi3(new iq0(vf0Var5.Q), dw2Var2);
    }

    public final void a(m13 m13Var) {
        vh1 vh1VarA = vh1.a(m13Var);
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        vh1 vh1Var = vf0Var.f;
        dw2 dw2Var2 = vf0Var.h;
        dw2 dw2Var3 = vf0Var.H0;
        dw2 dw2Var4 = vf0Var.E;
        dw2 dw2Var5 = vf0Var.E1;
        ol0 ol0Var = vf0Var.u;
        dw2 dw2Var6 = vf0Var.G;
        ol0 ol0Var2 = vf0Var.f1;
        vh1 vh1Var2 = this.g;
        this.f0 = new ej3(new k93(dw2Var, this.y, this.e0, new c93(dw2Var, vh1Var, dw2Var2, dw2Var3, dw2Var4, dw2Var5, ol0Var, dw2Var6, ol0Var2, vh1Var2, vh1VarA), this.c, vh1Var2), dw2Var);
        this.g0 = new gj3(vf0Var.L3, dw2Var);
        this.h0 = new qi3(vf0Var.M3, dw2Var);
        this.i0 = new ti3(new yg1(vf0Var.P0), dw2Var);
        this.j0 = new ei3(vf0Var.N3, dw2Var);
        this.k0 = new ni3(new yn0(vh1Var), dw2Var);
        this.l0 = new ki3(vf0Var.O3, dw2Var);
        dw2 zi2Var = new zi2(vh1VarA);
        Object obj = do0.c;
        if (!(zi2Var instanceof do0)) {
            zi2Var = new do0(zi2Var);
        }
        vf0 vf0Var2 = this.a;
        dw2 dw2Var7 = vf0Var2.t;
        this.m0 = new yi3(zi2Var, dw2Var7);
        this.n0 = new bj3(new hn2(vf0Var2.f, vf0Var2.u2, dw2Var7, vf0Var2.w1), dw2Var7);
        int i = sc3.c;
        rc3 rc3Var = new rc3(41, 0);
        rc3Var.a(this.t);
        rc3Var.a(this.u);
        rc3Var.a(this.v);
        rc3Var.a(this.w);
        rc3Var.a(this.x);
        rc3Var.a(this.A);
        rc3Var.a(this.B);
        rc3Var.a(this.C);
        rc3Var.a(this.F);
        rc3Var.a(this.G);
        rc3Var.a(this.H);
        rc3Var.a(this.I);
        rc3Var.a(this.J);
        rc3Var.a(this.K);
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
        rc3Var.a(this.j0);
        rc3Var.a(this.k0);
        rc3Var.a(this.l0);
        rc3Var.a(this.m0);
        rc3Var.a(this.n0);
        sc3 sc3VarA = rc3Var.a();
        vf0 vf0Var3 = this.a;
        this.o0 = new ek3(sc3VarA, vf0Var3.x, vf0Var3.u, vf0Var3.t, this.g, this.q);
        this.p0 = new ad3(vf0Var3.Q);
        dw2 dw2Var8 = vf0Var3.w1;
        this.q0 = new yc3(dw2Var8);
        this.r0 = new wc3(dw2Var8);
        vh1 vh1Var3 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        ad3 ad3Var = this.p0;
        if (ad3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setCookie", ad3Var);
        dw2 dw2Var9 = this.a.P3;
        if (dw2Var9 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setInspectorGesture", dw2Var9);
        dw2 dw2Var10 = this.a.Q3;
        if (dw2Var10 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setInspectorServerData", dw2Var10);
        dw2 dw2Var11 = this.a.R3;
        if (dw2Var11 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setTestMode", dw2Var11);
        yc3 yc3Var = this.q0;
        if (yc3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setZenithTotalInflightAdLimit", yc3Var);
        wc3 wc3Var = this.r0;
        if (wc3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("setServingGdprApplies", wc3Var);
        dw2 lVar = new l(new iu1(linkedHashMapA));
        if (!(lVar instanceof do0)) {
            lVar = new do0(lVar);
        }
        this.s0 = lVar;
        vh1 vh1Var4 = mj0.a;
        vf0 vf0Var4 = this.a;
        dw2 k43Var = new k43(vf0Var4.t, vf0Var4.Q, vf0Var4.F, vf0Var4.S3, vh1Var4, vf0Var4.u3, vf0Var4.d0, vf0Var4.K, vf0Var4.f);
        if (!(k43Var instanceof do0)) {
            k43Var = new do0(k43Var);
        }
        this.t0 = k43Var;
    }

    public final void a(n03 n03Var, tn1 tn1Var) {
        vf0 vf0Var = this.a;
        dw2 cb2Var = new cb2(vf0Var.d0, this.s, this.o0, this.g, this.c, this.q, this.s0, this.t0, vf0Var.T3, vf0Var.U3, vf0Var.t, vf0Var.w0, vf0Var.F, vf0Var.M2, vf0Var.u);
        Object obj = do0.c;
        if (!(cb2Var instanceof do0)) {
            cb2Var = new do0(cb2Var);
        }
        this.u0 = cb2Var;
        sh0 sh0Var = new sh0(yj1.a);
        vh1 vh1Var = this.g;
        dw2 dw2Var = this.q;
        dw2 dw2Var2 = this.s0;
        vf0 vf0Var2 = this.a;
        sm2 sm2Var = new sm2(vh1Var, dw2Var, dw2Var2, vf0Var2.A0, vf0Var2.n1, this.c, this.u0, vf0Var2.t, vf0Var2.F, sh0Var);
        dw2 an1Var = new an1(this.g, this.c, this.u0, sm2Var instanceof do0 ? sm2Var : new do0(sm2Var), this.a.A0);
        if (!(an1Var instanceof do0)) {
            an1Var = new do0(an1Var);
        }
        this.v0 = an1Var;
        this.w0 = new ym1(this.h);
        dw2 dw2Var3 = this.b;
        vh1 vh1Var2 = this.g;
        vf0 vf0Var3 = this.a;
        dw2 rcVar = new rc(dw2Var3, vh1Var2, vf0Var3.w3, vf0Var3.h);
        if (!(rcVar instanceof do0)) {
            rcVar = new do0(rcVar);
        }
        this.x0 = new gn1(rcVar);
        vf0 vf0Var4 = this.a;
        this.y0 = new ln1(vf0Var4.V3);
        this.z0 = new jn1(vf0Var4.s2);
        vh1 vh1Var3 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        ym1 ym1Var = this.w0;
        if (ym1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("InspectorAdLifecycleMonitorLoadListener", ym1Var);
        gn1 gn1Var = this.x0;
        if (gn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("adUnitStatsTrackerAdLoadListener", gn1Var);
        ln1 ln1Var = this.y0;
        if (ln1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("debugSignalsAdLoadListener", ln1Var);
        jn1 jn1Var = this.z0;
        if (jn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("customTabsConnectionInitializationTaskInternalAdLoadListener", jn1Var);
        dw2 dw2Var4 = this.u0;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("NetworkTransactionRequesterLoadListener", dw2Var4);
        dw2 dw2Var5 = this.p;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "persistentCacheRefillListener", dw2Var5, linkedHashMapA);
        vf0 vf0Var5 = this.a;
        ki1 ki1Var = new ki1(vf0Var5.u, iu1VarA, vf0Var5.A3);
        dw2 do0Var = ki1Var instanceof do0 ? ki1Var : new do0(ki1Var);
        this.A0 = do0Var;
        vf0 vf0Var6 = this.a;
        dw2 w33Var = new w33(vf0Var6.u, vf0Var6.h, vf0Var6.u1, vf0Var6.o1, do0Var, this.f, this.e);
        if (!(w33Var instanceof do0)) {
            w33Var = new do0(w33Var);
        }
        this.B0 = w33Var;
        this.C0 = new sh0(vh1.a(n03Var));
        rn1 rn1Var = new rn1(this.C0, new sh0(vh1.a(tn1Var)));
        dw2 do0Var2 = rn1Var instanceof do0 ? rn1Var : new do0(rn1Var);
        this.D0 = do0Var2;
        vf0 vf0Var7 = this.a;
        ol olVar = new ol(vf0Var7.f4, do0Var2, this.g, this.j, this.e, this.b, this.c, this.z, this.h, vf0Var7.g4, this.f);
        dw2 do0Var3 = olVar instanceof do0 ? olVar : new do0(olVar);
        vf0 vf0Var8 = this.a;
        dw2 ti1Var = new ti1(this.b, this.e, this.f, this.v0, new wi2(vf0Var8.u, vf0Var8.C, vf0Var8.T3, vf0Var8.h, this.B0, do0Var3), this.D0, this.q, vf0Var8.t, this.A0);
        if (!(ti1Var instanceof do0)) {
            ti1Var = new do0(ti1Var);
        }
        this.E0 = ti1Var;
        dw2 lj1Var = new lj1(this.b, this.e, this.D0, this.q, this.u0, this.a.t);
        if (!(lj1Var instanceof do0)) {
            lj1Var = new do0(lj1Var);
        }
        this.F0 = lj1Var;
    }

    public final void a(Boolean bool, Boolean bool2) {
        vf0 vf0Var = this.a;
        vh1 vh1Var = vf0Var.f;
        dw2 dw2Var = vf0Var.t;
        dw2 dw2Var2 = vf0Var.w1;
        this.w = new ri3(new c61(vh1Var, dw2Var, dw2Var2), dw2Var);
        this.x = new ui3(new tp1(vh1Var, dw2Var, dw2Var2), dw2Var);
        vh1 vh1Var2 = mj0.a;
        this.y = vh1Var2;
        this.z = vh1.a(bool);
        vh1 vh1VarA = vh1.a(bool2);
        vf0 vf0Var2 = this.a;
        dw2 z8Var = new z8(vf0Var2.h, this.g, this.y, vf0Var2.J0, vf0Var2.f, this.c, this.z, vf0Var2.t, vf0Var2.B3, vh1VarA, this.r);
        Object obj = do0.c;
        if (!(z8Var instanceof do0)) {
            z8Var = new do0(z8Var);
        }
        vf0 vf0Var3 = this.a;
        dw2 dw2Var3 = vf0Var3.t;
        this.A = new zh3(z8Var, dw2Var3);
        this.B = new bi3(new vb(vf0Var3.V), dw2Var3);
        vh1 vh1Var3 = this.y;
        vh1 vh1Var4 = this.c;
        this.C = new ai3(new nb(vh1Var3, vh1Var2, vh1Var4, vf0Var3.f, dw2Var3, vf0Var3.u2), dw2Var3);
        this.D = new pn1(vh1Var4);
        this.E = new wh3(this.g);
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        pn1 pn1Var = this.D;
        boolean z = rc3.c;
        if (!z && pn1Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(pn1Var);
        wh3 wh3Var = this.E;
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
        ec ecVar = new ec(new sc3(listB, listB2));
        vf0 vf0Var4 = this.a;
        dw2 dw2Var4 = vf0Var4.t;
        this.F = new ci3(ecVar, dw2Var4);
        this.G = new fi3(vf0Var4.C3, dw2Var4);
        this.H = new uh3(vf0Var4.j2, dw2Var4);
        this.I = new gi3(vf0Var4.D3, dw2Var4);
        this.J = new hi3(vf0Var4.V2, dw2Var4);
        this.K = new ii3(vf0Var4.X2, dw2Var4);
        this.L = new zv(this.c, vf0Var4.H0, this.g, vf0Var4.S1);
    }

    public final void b() {
        zv zvVar = this.L;
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        this.M = new ji3(zvVar, dw2Var);
        this.N = new li3(vf0Var.E3, dw2Var);
        dw2 dw2VarA = jk3.a(new ar0(dw2Var));
        vf0 vf0Var2 = this.a;
        dw2 dw2Var2 = vf0Var2.t;
        this.O = new pi3(dw2VarA, dw2Var2);
        this.P = new si3(vf0Var2.F3, dw2Var2);
        this.Q = new vi3(dw2Var2, new qw1(vf0Var2.e0));
        this.R = new mi3(new gn0(vf0Var2.f, vf0Var2.H), dw2Var2);
        this.S = new wi3(vf0Var2.G3, dw2Var2);
        this.T = new xi3(vf0Var2.l2, dw2Var2);
        this.U = new zi3(vf0Var2.H3, dw2Var2);
        this.V = new aj3(vf0Var2.I3, dw2Var2);
        this.W = new ij3(vf0Var2.p2, dw2Var2);
        dw2 dw2VarA2 = jk3.a(new xn3(vf0Var2.y1));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var3 = vf0Var3.t;
        this.X = new vh3(dw2VarA2, dw2Var3);
        this.Y = new hj3(vf0Var3.J3, dw2Var3);
        this.Z = new yh3(vf0Var3.h2, dw2Var3);
        dw2 e13Var = new e13(vf0Var3.w3, this.g, vf0Var3.e0, this.d);
        Object obj = do0.c;
        if (!(e13Var instanceof do0)) {
            e13Var = new do0(e13Var);
        }
        this.a0 = new cj3(e13Var, this.a.t);
        dw2 q43Var = new q43(this.b);
        if (!(q43Var instanceof do0)) {
            q43Var = new do0(q43Var);
        }
        vf0 vf0Var4 = this.a;
        dw2 dw2Var4 = vf0Var4.t;
        this.b0 = new dj3(q43Var, dw2Var4);
        this.c0 = new fj3(vf0Var4.n2, dw2Var4);
        this.d0 = new di3(vf0Var4.K3, dw2Var4);
        this.e0 = mj0.a;
    }
}
