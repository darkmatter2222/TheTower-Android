package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xd0 implements ot0 {
    public vh1 A;
    public ol0 A0;
    public dw2 B;
    public iv3 B0;
    public sc3 C;
    public jv3 C0;
    public vh1 D;
    public lv3 D0;
    public dw2 E;
    public mv3 E0;
    public dw2 F;
    public cv3 F0;
    public vh1 G;
    public dv3 G0;
    public e53 H;
    public ev3 H0;
    public dw2 I;
    public dw2 I0;
    public dw2 J;
    public nv3 J0;
    public dw2 K;
    public kv3 K0;
    public dw2 L;
    public gv3 L0;
    public dw2 M;
    public x50 M0;
    public dw2 N;
    public z50 N0;
    public dw2 O;
    public c60 O0;
    public dw2 P;
    public d60 P0;
    public dw2 Q;
    public u50 Q0;
    public dw2 R;
    public a60 R0;
    public dw2 S;
    public y50 S0;
    public dw2 T;
    public b60 T0;
    public dw2 U;
    public xt0 U0;
    public dw2 V;
    public vt0 V0;
    public dw2 W;
    public ut0 W0;
    public dw2 X;
    public wt0 X0;
    public dw2 Y;
    public yt0 Y0;
    public cu0 Z;
    public r50 Z0;
    public final vf0 a;
    public dw2 a0;
    public m60 a1;
    public dw2 b;
    public dw2 b0;
    public h60 b1;
    public vh1 c;
    public dw2 c0;
    public dw2 c1;
    public vh1 d;
    public vh1 d0;
    public dw2 d1;
    public sh0 e;
    public dw2 e0;
    public dw2 e1;
    public sh0 f;
    public dw2 f0;
    public dw2 f1;
    public sh0 g;
    public dw2 g0;
    public g60 g1;
    public dw2 h;
    public k50 h0;
    public dw2 h1;
    public vh1 i;
    public n50 i0;
    public dw2 i1;
    public sh0 j;
    public m50 j0;
    public dw2 j1;
    public dw2 k;
    public l50 k0;
    public dw2 k1;
    public vh1 l;
    public dw2 l0;
    public k60 l1;
    public sh0 m;
    public o50 m0;
    public f60 m1;
    public ol0 n;
    public q50 n0;
    public i60 n1;
    public my1 o;
    public p50 o0;
    public l60 o1;
    public dw2 p;
    public s50 p0;
    public j60 p1;
    public dw2 q;
    public t50 q0;
    public zt0 q1;
    public dw2 r;
    public e60 r0;
    public dw2 r1;
    public ny1 s;
    public v50 s0;
    public e63 t;
    public w50 t0;
    public vh1 u;
    public qg2 u0;
    public sh0 v;
    public vh1 v0;
    public vh1 w;
    public av3 w0;
    public vh1 x;
    public bv3 x0;
    public dw2 y;
    public fv3 y0;
    public vh1 z;
    public hv3 z0;

    public xd0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, r31 r31Var, View view, h41 h41Var, mb0 mb0Var) {
        this.a = vf0Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, r31Var, h41Var);
        a(baseRequest, j53Var, num, ec3Var, eo2Var, t91Var, view);
        g();
        a(mb0Var);
        h();
        i();
        j();
    }

    @Override // kotlin.x1
    public final zh1 a() {
        return (sj1) this.a0.get();
    }

    public final void a(i2 i2Var, zy zyVar, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, r31 r31Var, h41 h41Var) {
        dw2 do0Var = ry.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.b = do0Var;
        this.c = vh1.a(i2Var);
        this.d = vh1.a(zyVar);
        this.e = new sh0(vh1.a(n03Var));
        this.f = new sh0(vh1.a(tn1Var));
        this.g = new sh0(vh1.a(m33Var));
        dw2 uyVar = new uy(this.e, this.f, this.g, new sh0(vh1.a(zbVar)));
        if (!(uyVar instanceof do0)) {
            uyVar = new do0(uyVar);
        }
        this.h = uyVar;
        vh1 vh1VarA = vh1.a(r31Var);
        this.i = vh1VarA;
        sh0 sh0Var = new sh0(vh1VarA);
        this.j = sh0Var;
        vf0 vf0Var = this.a;
        dw2 uz1Var = new uz1(vf0Var.M4, sh0Var, vf0Var.x);
        if (!(uz1Var instanceof do0)) {
            uz1Var = new do0(uz1Var);
        }
        this.k = uz1Var;
        vh1 vh1VarA2 = vh1.a(h41Var);
        this.l = vh1VarA2;
        this.m = new sh0(vh1VarA2);
        ol0 ol0Var = new ol0();
        this.n = ol0Var;
        this.o = new my1(ol0Var);
        dw2 nu0Var = new nu0(this.i, this.a.x);
        if (!(nu0Var instanceof do0)) {
            nu0Var = new do0(nu0Var);
        }
        this.p = nu0Var;
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        my1 my1Var = this.o;
        if (my1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("AdEventListener", my1Var);
        dw2 dw2Var = this.p;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "FirstPartyFullscreenMraidEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        ay1 ay1Var = new ay1(vf0Var2.u, iu1VarA, vf0Var2.A3);
        dw2 do0Var2 = ay1Var instanceof do0 ? ay1Var : new do0(ay1Var);
        this.q = do0Var2;
        vf0 vf0Var3 = this.a;
        dw2 cz1Var = new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.k, this.m, vf0Var3.E, do0Var2);
        if (!(cz1Var instanceof do0)) {
            cz1Var = new do0(cz1Var);
        }
        this.r = cz1Var;
        dw2 hx1Var = new hx1(cz1Var);
        if (!(hx1Var instanceof do0)) {
            hx1Var = new do0(hx1Var);
        }
        this.s = new ny1(hx1Var);
    }

    public final void a(mb0 mb0Var) {
        vf0 vf0Var = this.a;
        this.n0 = new q50(vf0Var.P4);
        this.o0 = new p50(vf0Var.B4);
        this.p0 = new s50(vf0Var.l3);
        this.q0 = new t50(vf0Var.C4);
        dw2 lt1Var = new lt1(vf0Var.v0, this.c);
        Object obj = do0.c;
        if (!(lt1Var instanceof do0)) {
            lt1Var = new do0(lt1Var);
        }
        this.r0 = new e60(lt1Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var = vf0Var2.M4;
        dw2 dw2Var2 = vf0Var2.x;
        gz1 gz1Var = new gz1(dw2Var, dw2Var2);
        dw2 dw2Var3 = vf0Var2.N;
        ol0 ol0Var = vf0Var2.u;
        dw2 dw2Var4 = vf0Var2.I;
        dw2 dw2Var5 = vf0Var2.E;
        dw2 ey1Var = new ey1(gz1Var, this.r, vf0Var2.Q4, new nz1(dw2Var3, dw2Var, dw2Var2, ol0Var, dw2Var4, dw2Var5, vf0Var2.G, this.h), new pz1(this.q), dw2Var5, this.T);
        if (!(ey1Var instanceof do0)) {
            ey1Var = new do0(ey1Var);
        }
        this.s0 = new v50(ey1Var);
        vf0 vf0Var3 = this.a;
        dw2 ky1Var = new ky1(vf0Var3.f, vf0Var3.E, vf0Var3.M4, vf0Var3.z, vf0Var3.x, vf0Var3.N);
        if (!(ky1Var instanceof do0)) {
            ky1Var = new do0(ky1Var);
        }
        this.t0 = new w50(ky1Var);
        vf0 vf0Var4 = this.a;
        this.u0 = new qg2(vf0Var4.f, vf0Var4.x, vf0Var4.w, vf0Var4.u, vf0Var4.C, vf0Var4.t, vf0Var4.F, vf0Var4.z, this.m, this.A, this.d, this.c, vf0Var4.E, this.n, this.R, vf0Var4.U, this.W);
        this.v0 = vh1.a(mb0Var);
        this.w0 = new av3(this.g0);
        this.x0 = new bv3(this.l0);
        vf0 vf0Var5 = this.a;
        this.y0 = new fv3(vf0Var5.B4);
        this.z0 = new hv3(vf0Var5.l3);
        ol0 ol0Var2 = new ol0();
        this.A0 = ol0Var2;
        this.B0 = new iv3(ol0Var2);
        this.C0 = new jv3(vf0Var5.l0);
        this.D0 = new lv3(vf0Var5.A4);
        this.E0 = new mv3(vf0Var5.z4);
        this.F0 = new cv3(vf0Var5.N0);
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Integer num, ec3 ec3Var, eo2 eo2Var, t91 t91Var, View view) {
        this.t = new e63(this.c, this.d, this.a.u1);
        vh1 vh1VarA = vh1.a(view);
        this.u = vh1VarA;
        this.v = new sh0(vh1VarA);
        this.w = vh1.a(ec3Var);
        this.x = vh1.a(num);
        dw2 do0Var = cc3.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.y = do0Var;
        this.z = vh1.a(eo2Var);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.A = vh1VarA2;
        dw2 tyVar = new ty(vh1VarA2);
        if (!(tyVar instanceof do0)) {
            tyVar = new do0(tyVar);
        }
        this.B = tyVar;
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.B;
        boolean z = rc3.c;
        if (!z && dw2Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(dw2Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        this.C = new sc3(listB, listB2);
        vh1 vh1VarA3 = vh1.a(t91Var);
        this.D = vh1VarA3;
        vf0 vf0Var = this.a;
        dw2 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.t, this.v, this.w, this.c, this.h, this.x, vf0Var.h, this.y, vf0Var.N4, this.z, this.n, vf0Var.D2, this.C, vf0Var.t, vh1VarA3);
        if (!(mt3Var instanceof do0)) {
            mt3Var = new do0(mt3Var);
        }
        this.E = mt3Var;
        vf0 vf0Var2 = this.a;
        dw2 gm0Var = new gm0(vf0Var2.u, vf0Var2.t, this.h, vf0Var2.G);
        if (!(gm0Var instanceof do0)) {
            gm0Var = new do0(gm0Var);
        }
        this.F = gm0Var;
        vh1 vh1VarA4 = vh1.a(baseRequest);
        this.G = vh1VarA4;
        vf0 vf0Var3 = this.a;
        this.H = new e53(vf0Var3.U3, vh1VarA4, this.A);
        dw2 tcVar = new tc(vf0Var3.w3, vh1VarA4);
        if (!(tcVar instanceof do0)) {
            tcVar = new do0(tcVar);
        }
        this.I = tcVar;
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.J = dw2VarA;
        vf0 vf0Var5 = this.a;
        dw2 no2Var = new no2(vf0Var5.f, this.c, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E);
        if (!(no2Var instanceof do0)) {
            no2Var = new do0(no2Var);
        }
        this.K = no2Var;
        vf0 vf0Var6 = this.a;
        dw2 l4Var = new l4(vf0Var6.e0, this.A, vf0Var6.f0);
        if (!(l4Var instanceof do0)) {
            l4Var = new do0(l4Var);
        }
        this.L = l4Var;
        vf0 vf0Var7 = this.a;
        dw2 sq2Var = new sq2(vf0Var7.x1, vf0Var7.u, this.A, vf0Var7.t, vf0Var7.G);
        if (!(sq2Var instanceof do0)) {
            sq2Var = new do0(sq2Var);
        }
        this.M = sq2Var;
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.w;
        vf0 vf0Var8 = this.a;
        dw2 yj2Var = new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.G, this.A, vh1Var, vf0Var8.s, vf0Var8.F);
        if (!(yj2Var instanceof do0)) {
            yj2Var = new do0(yj2Var);
        }
        this.N = yj2Var;
        vf0 vf0Var9 = this.a;
        dw2 q6Var = new q6(vf0Var9.N1, this.w, this.c, this.C, this.A, vf0Var9.t, vf0Var9.E, vf0Var9.T);
        if (!(q6Var instanceof do0)) {
            q6Var = new do0(q6Var);
        }
        this.O = q6Var;
        dw2 a10Var = new a10(this.c, this.a.D2);
        if (!(a10Var instanceof do0)) {
            a10Var = new do0(a10Var);
        }
        this.P = a10Var;
        vf0 vf0Var10 = this.a;
        dw2 af2Var = new af2(vf0Var10.O, this.c, vf0Var10.t, vf0Var10.w);
        if (!(af2Var instanceof do0)) {
            af2Var = new do0(af2Var);
        }
        this.Q = af2Var;
    }

    @Override // kotlin.ot0
    public final tk0 b() {
        return (tk0) this.f0.get();
    }

    @Override // kotlin.ot0
    public final m40 c() {
        return (m40) this.r1.get();
    }

    @Override // kotlin.x1
    public final ze2 e() {
        return (ze2) this.Q.get();
    }

    @Override // kotlin.x1
    public final no3 f() {
        return (no3) this.e0.get();
    }

    public final void g() {
        vf0 vf0Var = this.a;
        dw2 ke2Var = new ke2(vf0Var.w, vf0Var.x, this.c, vf0Var.O, this.l, this.Q, vf0Var.t);
        Object obj = do0.c;
        if (!(ke2Var instanceof do0)) {
            ke2Var = new do0(ke2Var);
        }
        this.R = ke2Var;
        dw2 e04Var = new e04(this.i, ke2Var);
        if (!(e04Var instanceof do0)) {
            e04Var = new do0(e04Var);
        }
        this.S = e04Var;
        vf0 vf0Var2 = this.a;
        dw2 t93Var = new t93(vf0Var2.z, this.c, vf0Var2.U, vf0Var2.I, this.A, vf0Var2.t);
        if (!(t93Var instanceof do0)) {
            t93Var = new do0(t93Var);
        }
        this.T = t93Var;
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(15);
        hu1Var.a("MraidAdEventListener", this.s);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.E);
        hu1Var.a("DelegatingAdEventListener", this.F);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.H);
        hu1Var.a("AdStatsTrackerListener", this.I);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.K);
        hu1Var.a("AdLifecycleTrackerListener", this.L);
        hu1Var.a("PreloadAdCloseListener", this.M);
        hu1Var.a("PersistentCacheAdMonitor", this.N);
        hu1Var.a("AdQualityDataHandler", this.O);
        hu1Var.a("ConsentFormActionMonitor", this.P);
        hu1Var.a("WebViewLifecycleMonitor", this.S);
        hu1Var.a("SafeBrowsingLifecycleMonitor", this.T);
        hu1Var.a("OmidMonitorAsAdEventListener", this.R);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.n;
        vf0 vf0Var3 = this.a;
        dw2 w3Var = new w3(vf0Var3.u, iu1Var, this.c, vf0Var3.A3);
        if (!(w3Var instanceof do0)) {
            w3Var = new do0(w3Var);
        }
        ol0.a(ol0Var, w3Var);
        vh1 vh1Var2 = this.c;
        vf0 vf0Var4 = this.a;
        dw2 bp2Var = new bp2(vh1Var2, vf0Var4.h, this.d, vf0Var4.u, vf0Var4.G, this.t, vf0Var4.t, vf0Var4.o1, this.w);
        if (!(bp2Var instanceof do0)) {
            bp2Var = new do0(bp2Var);
        }
        this.U = bp2Var;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.U;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "PostClickLifecycleMonitor", dw2Var, linkedHashMapA);
        vf0 vf0Var5 = this.a;
        dw2 d1Var = new d1(vf0Var5.x, iu1VarA, vf0Var5.A3);
        if (!(d1Var instanceof do0)) {
            d1Var = new do0(d1Var);
        }
        this.V = d1Var;
        dw2 do0Var = k1.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.W = do0Var;
        vf0 vf0Var6 = this.a;
        dw2 ku0Var = new ku0(vf0Var6.f, vf0Var6.x, vf0Var6.w, vf0Var6.u, vf0Var6.C, vf0Var6.t, vf0Var6.F, vf0Var6.V, vf0Var6.z, this.n, this.V, this.l, vf0Var6.G, this.h, this.A, this.d, this.c, this.R, vf0Var6.U, do0Var, vf0Var6.D2);
        if (!(ku0Var instanceof do0)) {
            ku0Var = new do0(ku0Var);
        }
        this.X = ku0Var;
        vf0 vf0Var7 = this.a;
        dw2 it0Var = new it0(vf0Var7.f, vf0Var7.x, vf0Var7.w, vf0Var7.u, vf0Var7.C, vf0Var7.t, vf0Var7.F, vf0Var7.z, this.n, this.V, this.l, vf0Var7.G, this.h, this.A, this.d, this.c, this.R, this.a.U, this.W);
        if (!(it0Var instanceof do0)) {
            it0Var = new do0(it0Var);
        }
        this.Y = it0Var;
        cu0 cu0Var = new cu0(this.d, this.X, it0Var);
        this.Z = cu0Var;
        dw2 vj1Var = new vj1(this.b, this.c, this.d, this.h, this.j, this.n, this.F, cu0Var, this.a.f0, this.T, this.z, this.G, this.m, this.D);
        if (!(vj1Var instanceof do0)) {
            vj1Var = new do0(vj1Var);
        }
        this.a0 = vj1Var;
        ol0 ol0Var2 = this.a.u;
        vh1 vh1Var3 = iu1.b;
        dw2 g73Var = new g73(ol0Var2, vh1Var3, this.a.A3);
        if (!(g73Var instanceof do0)) {
            g73Var = new do0(g73Var);
        }
        this.b0 = g73Var;
        dw2 sq3Var = new sq3(this.a.u, vh1Var3, this.a.A3);
        if (!(sq3Var instanceof do0)) {
            sq3Var = new do0(sq3Var);
        }
        this.c0 = sq3Var;
        this.d0 = mj0.a;
        dw2 hp3Var = new hp3(this.a.u, this.c, this.n, this.b0, this.c0, this.d0);
        if (!(hp3Var instanceof do0)) {
            hp3Var = new do0(hp3Var);
        }
        this.e0 = hp3Var;
        vh1 vh1Var4 = this.a.f;
        vf0 vf0Var8 = this.a;
        dw2 uk0Var = new uk0(vh1Var4, vf0Var8.u, vf0Var8.b3, this.a.t, this.G, this.c, this.h);
        if (!(uk0Var instanceof do0)) {
            uk0Var = new do0(uk0Var);
        }
        this.f0 = uk0Var;
        dw2 dkVar = new dk(this.n);
        if (!(dkVar instanceof do0)) {
            dkVar = new do0(dkVar);
        }
        this.g0 = dkVar;
        this.h0 = new k50(dkVar);
        this.i0 = new n50();
        this.j0 = new m50(this.a.D4);
        this.k0 = new l50(this.a.d3);
        dw2 ewVar = new ew(this.a.V, this.n, this.t, this.a.N4, this.c);
        if (!(ewVar instanceof do0)) {
            ewVar = new do0(ewVar);
        }
        this.l0 = ewVar;
        this.m0 = new o50(ewVar);
    }

    public final void h() {
        this.G0 = new dv3(this.a.L0);
        this.H0 = new ev3();
        dw2 i1Var = new i1(this.W);
        Object obj = do0.c;
        if (!(i1Var instanceof do0)) {
            i1Var = new do0(i1Var);
        }
        this.I0 = i1Var;
        this.J0 = new nv3(i1Var);
        this.K0 = new kv3(this.a.n0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.w0);
        hu1Var.a("/click", this.x0);
        hu1Var.a("/delayPageLoaded", this.y0);
        hu1Var.a("/httpTrack", this.z0);
        hu1Var.a("/open", this.B0);
        hu1Var.a("/result", this.C0);
        hu1Var.a("/video", this.D0);
        hu1Var.a("/videoMeta", this.E0);
        hu1Var.a("/close", this.F0);
        hu1Var.a("/customClose", this.G0);
        hu1Var.a("/delayPageClosed", this.H0);
        hu1Var.a("/backButton", this.J0);
        hu1Var.a("/setPersistentPair", this.K0);
        this.L0 = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.L0;
        if (gv3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("GmsgHandlerInstaller", gv3Var);
        linkedHashMapA.put("SetFollowUrls", pv3.a);
        linkedHashMapA.put("SetExpanded", rv3.a);
        ov3 ov3Var = new ov3(new iu1(linkedHashMapA));
        vf0 vf0Var = this.a;
        vh1 vh1Var2 = vf0Var.f;
        dw2 dw2Var = vf0Var.x;
        dw2 dw2Var2 = vf0Var.w;
        ol0 ol0Var = vf0Var.u;
        ol0 ol0Var2 = vf0Var.C;
        dw2 dw2Var3 = vf0Var.t;
        ol0 ol0Var3 = vf0Var.F;
        dw2 dw2Var4 = vf0Var.z;
        vh1 vh1Var3 = this.A;
        vh1 vh1Var4 = this.d;
        vh1 vh1Var5 = this.c;
        dw2 dw2Var5 = vf0Var.E;
        ol0 ol0Var4 = this.n;
        dw2 dw2Var6 = this.R;
        dw2 dw2Var7 = vf0Var.U;
        ou3 ou3Var = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var, ol0Var2, dw2Var3, ol0Var3, dw2Var4, vh1Var3, vh1Var4, vh1Var5, dw2Var5, ol0Var4, dw2Var6, dw2Var7, this.v0, this.h, vf0Var.h0, ov3Var, this.W, vf0Var.G);
        hc2 hc2Var = new hc2(vh1Var5, vh1Var4, vf0Var.y1, vf0Var.s1, dw2Var3);
        ol0 ol0Var5 = this.A0;
        dw2 bh2Var = new bh2(vh1Var2, dw2Var3, dw2Var7, vf0Var.V, ol0Var4, dw2Var5, this.u0, ou3Var, this.r, vh1Var3, vf0Var.r2, vf0Var.N4, vh1Var5, this.T, hc2Var, this.U, this.J, ol0Var3, vh1Var4, ol0Var);
        if (!(bh2Var instanceof do0)) {
            bh2Var = new do0(bh2Var);
        }
        ol0.a(ol0Var5, bh2Var);
        this.M0 = new x50(this.A0);
        vf0 vf0Var2 = this.a;
        this.N0 = new z50(vf0Var2.l0);
        this.O0 = new c60(vf0Var2.A4);
        this.P0 = new d60(vf0Var2.z4);
        this.Q0 = new u50(vf0Var2.j0);
        this.R0 = new a60(vf0Var2.h3);
        this.S0 = new y50(vf0Var2.j3);
        this.T0 = new b60(vf0Var2.n0);
        dw2 uo1Var = new uo1(new du0(this.d, this.X, this.Y));
        if (!(uo1Var instanceof do0)) {
            uo1Var = new do0(uo1Var);
        }
        this.U0 = new xt0(uo1Var);
        vf0 vf0Var3 = this.a;
        this.V0 = new vt0(vf0Var3.L0);
        this.W0 = new ut0(vf0Var3.N0);
    }

    public final void i() {
        this.X0 = new wt0();
        this.Y0 = new yt0(this.I0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(25);
        hu1Var.a("/appEvent", this.h0);
        hu1Var.a("/canOpenURLs", this.i0);
        hu1Var.a("/canOpenIntents", this.j0);
        hu1Var.a("/canOpenApp", this.k0);
        hu1Var.a("/click", this.m0);
        hu1Var.a("/contentHeight", this.n0);
        hu1Var.a("/delayPageLoaded", this.o0);
        hu1Var.a("/httpTrack", this.p0);
        hu1Var.a("/getLocationInfo", this.q0);
        hu1Var.a("/logScionEvent", this.r0);
        hu1Var.a("/mraid", this.s0);
        hu1Var.a("/mraidLoaded", this.t0);
        hu1Var.a("/open", this.M0);
        hu1Var.a("/result", this.N0);
        hu1Var.a("/video", this.O0);
        hu1Var.a("/videoMeta", this.P0);
        hu1Var.a("/log", this.Q0);
        hu1Var.a("/setPAIDPersonalizationEnabled", this.R0);
        hu1Var.a("/resetPAID", this.S0);
        hu1Var.a("/setPersistentPair", this.T0);
        hu1Var.a("/setInterstitialProperties", this.U0);
        hu1Var.a("/customClose", this.V0);
        hu1Var.a("/close", this.W0);
        hu1Var.a("/delayPageClosed", this.X0);
        hu1Var.a("/backButton", this.Y0);
        this.Z0 = new r50(new iu1(hu1Var.a));
        vh1 vh1Var2 = this.c;
        vf0 vf0Var = this.a;
        this.a1 = new m60(vh1Var2, vf0Var.R4);
        this.b1 = new h60(vh1Var2, vf0Var.S4);
        dw2 hs0Var = new hs0(this.G, vf0Var.v0, vh1Var2, vf0Var.u);
        Object obj = do0.c;
        if (!(hs0Var instanceof do0)) {
            hs0Var = new do0(hs0Var);
        }
        this.c1 = hs0Var;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.c1;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "FirebaseAnalyticsAdEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        dw2 wdVar = new wd(vf0Var2.x, iu1VarA, vf0Var2.A3);
        if (!(wdVar instanceof do0)) {
            wdVar = new do0(wdVar);
        }
        this.d1 = wdVar;
        dw2 ndVar = new nd(this.n);
        if (!(ndVar instanceof do0)) {
            ndVar = new do0(ndVar);
        }
        this.e1 = ndVar;
        dw2 wkVar = new wk(this.a0, this.Z);
        if (!(wkVar instanceof do0)) {
            wkVar = new do0(wkVar);
        }
        this.f1 = wkVar;
        LinkedHashMap linkedHashMapA2 = ud0.a(3);
        dw2 dw2Var2 = this.d1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdVisibilityChangedEventEmitter", dw2Var2);
        dw2 dw2Var3 = this.e1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdViewabilityMonitor", dw2Var3);
        dw2 dw2Var4 = this.f1;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "AppOpenAdViewabilityShowMonitor", dw2Var4, linkedHashMapA2);
        vf0 vf0Var3 = this.a;
        kd kdVar = new kd(vf0Var3.x, iu1VarA2, vf0Var3.A3);
        dw2 do0Var = kdVar instanceof do0 ? kdVar : new do0(kdVar);
        vf0 vf0Var4 = this.a;
        dw2 pdVar = new pd(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.u, vf0Var4.h, vf0Var4.t, this.A, vf0Var4.E, this.c);
        if (!(pdVar instanceof do0)) {
            pdVar = new do0(pdVar);
        }
        this.g1 = new g60(pdVar);
        sh0 sh0Var = this.j;
        vf0 vf0Var5 = this.a;
        dw2 m04Var = new m04(sh0Var, vf0Var5.x, vf0Var5.t);
        if (!(m04Var instanceof do0)) {
            m04Var = new do0(m04Var);
        }
        this.h1 = m04Var;
        vf0 vf0Var6 = this.a;
        dw2 g24Var = new g24(vf0Var6.x, this.j, this.d, vf0Var6.z);
        if (!(g24Var instanceof do0)) {
            g24Var = new do0(g24Var);
        }
        this.i1 = g24Var;
        vh1 vh1Var3 = iu1.b;
        LinkedHashMap linkedHashMapA3 = ud0.a(2);
        dw2 dw2Var5 = this.h1;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("WebViewPauseResumeListener", dw2Var5);
        dw2 dw2Var6 = this.i1;
        if (dw2Var6 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA3 = wd0.a(linkedHashMapA3, "WebViewVisibilityChangedAfmaEventListener", dw2Var6, linkedHashMapA3);
        vf0 vf0Var7 = this.a;
        dw2 n24Var = new n24(vf0Var7.x, iu1VarA3, vf0Var7.A3);
        if (!(n24Var instanceof do0)) {
            n24Var = new do0(n24Var);
        }
        this.j1 = n24Var;
        LinkedHashMap linkedHashMapA4 = ud0.a(2);
        dw2 dw2Var7 = this.j1;
        if (dw2Var7 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA4.put("WebViewVisibilityChangedEventEmitter", dw2Var7);
        dw2 dw2Var8 = this.k;
        if (dw2Var8 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA4 = wd0.a(linkedHashMapA4, "MraidViewabilityEventListener", dw2Var8, linkedHashMapA4);
        vf0 vf0Var8 = this.a;
        a24 a24Var = new a24(vf0Var8.x, iu1VarA4, vf0Var8.A3);
        dw2 do0Var2 = a24Var instanceof do0 ? a24Var : new do0(a24Var);
        vf0 vf0Var9 = this.a;
        dw2 d24Var = new d24(vf0Var9.f, vf0Var9.x, do0Var2, vf0Var9.u2, this.j, vf0Var9.h, vf0Var9.t, this.A, vf0Var9.E, this.c);
        if (!(d24Var instanceof do0)) {
            d24Var = new do0(d24Var);
        }
        this.k1 = d24Var;
        this.l1 = new k60(d24Var);
        this.m1 = new f60(this.n);
        this.n1 = new i60(this.a.T4);
    }

    public final void j() {
        vf0 vf0Var = this.a;
        dw2 t24Var = new t24(vf0Var.v0, vf0Var.u, vf0Var.U, vf0Var.t, this.c, vf0Var.I);
        Object obj = do0.c;
        if (!(t24Var instanceof do0)) {
            t24Var = new do0(t24Var);
        }
        this.o1 = new l60(t24Var);
        this.p1 = new j60(this.T);
        this.q1 = new zt0(this.d);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(11);
        hu1Var.a("GmsgHandlerInstaller", this.Z0);
        hu1Var.a("WriteLocalStorageGmsgHandlerModifier", this.a1);
        hu1Var.a("ClearLocalStorageGmsgHandlerModifier", this.b1);
        hu1Var.a("AdViewabilityMonitorInitializer", this.g1);
        hu1Var.a("WebViewViewabilityMonitorInitializer", this.l1);
        hu1Var.a("AdEventEmitter", this.m1);
        hu1Var.a("MraidRequestHandler", this.n1);
        hu1Var.a("WebviewFirebaseAnalyticsEventHandler", this.o1);
        hu1Var.a("SafeBrowsingClickListener", this.p1);
        hu1Var.a("SetFollowUrls", au0.a);
        hu1Var.a("CrossProcessAdConfigurator", this.q1);
        dw2 n40Var = new n40(new iu1(hu1Var.a));
        if (!(n40Var instanceof do0)) {
            n40Var = new do0(n40Var);
        }
        this.r1 = n40Var;
    }
}
