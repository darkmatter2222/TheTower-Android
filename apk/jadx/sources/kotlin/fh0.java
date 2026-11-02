package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class fh0 implements ot0 {
    public vh1 A;
    public iv3 A0;
    public dw2 B;
    public jv3 B0;
    public sc3 C;
    public lv3 C0;
    public dw2 D;
    public mv3 D0;
    public dw2 E;
    public cv3 E0;
    public vh1 F;
    public dv3 F0;
    public e53 G;
    public ev3 G0;
    public dw2 H;
    public dw2 H0;
    public dw2 I;
    public nv3 I0;
    public dw2 J;
    public kv3 J0;
    public dw2 K;
    public gv3 K0;
    public dw2 L;
    public x50 L0;
    public dw2 M;
    public z50 M0;
    public dw2 N;
    public c60 N0;
    public dw2 O;
    public d60 O0;
    public dw2 P;
    public u50 P0;
    public dw2 Q;
    public a60 Q0;
    public dw2 R;
    public y50 R0;
    public dw2 S;
    public b60 S0;
    public dw2 T;
    public xt0 T0;
    public dw2 U;
    public vt0 U0;
    public dw2 V;
    public ut0 V0;
    public dw2 W;
    public wt0 W0;
    public dw2 X;
    public yt0 X0;
    public cu0 Y;
    public r50 Y0;
    public dw2 Z;
    public m60 Z0;
    public final vf0 a;
    public dw2 a0;
    public h60 a1;
    public dw2 b;
    public dw2 b0;
    public dw2 b1;
    public vh1 c;
    public vh1 c0;
    public dw2 c1;
    public vh1 d;
    public dw2 d0;
    public dw2 d1;
    public sh0 e;
    public dw2 e0;
    public g60 e1;
    public sh0 f;
    public dw2 f0;
    public dw2 f1;
    public sh0 g;
    public k50 g0;
    public dw2 g1;
    public dw2 h;
    public n50 h0;
    public dw2 h1;
    public vh1 i;
    public m50 i0;
    public k60 i1;
    public sh0 j;
    public l50 j0;
    public f60 j1;
    public dw2 k;
    public dw2 k0;
    public i60 k1;
    public vh1 l;
    public o50 l0;
    public dw2 l1;
    public sh0 m;
    public q50 m0;
    public l60 m1;
    public ol0 n;
    public p50 n0;
    public j60 n1;
    public my1 o;
    public s50 o0;
    public zt0 o1;
    public dw2 p;
    public t50 p0;
    public dw2 p1;
    public dw2 q;
    public e60 q0;
    public dw2 r;
    public v50 r0;
    public ny1 s;
    public w50 s0;
    public e63 t;
    public qg2 t0;
    public vh1 u;
    public vh1 u0;
    public sh0 v;
    public av3 v0;
    public vh1 w;
    public bv3 w0;
    public vh1 x;
    public fv3 x0;
    public dw2 y;
    public hv3 y0;
    public vh1 z;
    public ol0 z0;

    public fh0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, r31 r31Var, View view, h41 h41Var, mb0 mb0Var) {
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
        return (pk1) this.Z.get();
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
        this.m0 = new q50(vf0Var.P4);
        this.n0 = new p50(vf0Var.B4);
        this.o0 = new s50(vf0Var.l3);
        this.p0 = new t50(vf0Var.C4);
        dw2 lt1Var = new lt1(vf0Var.v0, this.c);
        Object obj = do0.c;
        if (!(lt1Var instanceof do0)) {
            lt1Var = new do0(lt1Var);
        }
        this.q0 = new e60(lt1Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var = vf0Var2.M4;
        dw2 dw2Var2 = vf0Var2.x;
        gz1 gz1Var = new gz1(dw2Var, dw2Var2);
        dw2 dw2Var3 = vf0Var2.N;
        ol0 ol0Var = vf0Var2.u;
        dw2 dw2Var4 = vf0Var2.I;
        dw2 dw2Var5 = vf0Var2.E;
        dw2 ey1Var = new ey1(gz1Var, this.r, vf0Var2.Q4, new nz1(dw2Var3, dw2Var, dw2Var2, ol0Var, dw2Var4, dw2Var5, vf0Var2.G, this.h), new pz1(this.q), dw2Var5, this.S);
        if (!(ey1Var instanceof do0)) {
            ey1Var = new do0(ey1Var);
        }
        this.r0 = new v50(ey1Var);
        vf0 vf0Var3 = this.a;
        dw2 ky1Var = new ky1(vf0Var3.f, vf0Var3.E, vf0Var3.M4, vf0Var3.z, vf0Var3.x, vf0Var3.N);
        if (!(ky1Var instanceof do0)) {
            ky1Var = new do0(ky1Var);
        }
        this.s0 = new w50(ky1Var);
        vf0 vf0Var4 = this.a;
        this.t0 = new qg2(vf0Var4.f, vf0Var4.x, vf0Var4.w, vf0Var4.u, vf0Var4.C, vf0Var4.t, vf0Var4.F, vf0Var4.z, this.m, this.A, this.d, this.c, vf0Var4.E, this.n, this.Q, vf0Var4.U, this.V);
        this.u0 = vh1.a(mb0Var);
        this.v0 = new av3(this.f0);
        this.w0 = new bv3(this.k0);
        vf0 vf0Var5 = this.a;
        this.x0 = new fv3(vf0Var5.B4);
        this.y0 = new hv3(vf0Var5.l3);
        ol0 ol0Var2 = new ol0();
        this.z0 = ol0Var2;
        this.A0 = new iv3(ol0Var2);
        this.B0 = new jv3(vf0Var5.l0);
        this.C0 = new lv3(vf0Var5.A4);
        this.D0 = new mv3(vf0Var5.z4);
        this.E0 = new cv3(vf0Var5.N0);
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
        vf0 vf0Var = this.a;
        dw2 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.t, this.v, this.w, this.c, this.h, this.x, vf0Var.h, this.y, vf0Var.N4, this.z, this.n, vf0Var.D2, this.C, vf0Var.t, vh1VarA3);
        if (!(mt3Var instanceof do0)) {
            mt3Var = new do0(mt3Var);
        }
        this.D = mt3Var;
        vf0 vf0Var2 = this.a;
        dw2 gm0Var = new gm0(vf0Var2.u, vf0Var2.t, this.h, vf0Var2.G);
        if (!(gm0Var instanceof do0)) {
            gm0Var = new do0(gm0Var);
        }
        this.E = gm0Var;
        vh1 vh1VarA4 = vh1.a(baseRequest);
        this.F = vh1VarA4;
        vf0 vf0Var3 = this.a;
        this.G = new e53(vf0Var3.U3, vh1VarA4, this.A);
        dw2 tcVar = new tc(vf0Var3.w3, vh1VarA4);
        if (!(tcVar instanceof do0)) {
            tcVar = new do0(tcVar);
        }
        this.H = tcVar;
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.I = dw2VarA;
        vf0 vf0Var5 = this.a;
        dw2 no2Var = new no2(vf0Var5.f, this.c, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E);
        if (!(no2Var instanceof do0)) {
            no2Var = new do0(no2Var);
        }
        this.J = no2Var;
        vf0 vf0Var6 = this.a;
        dw2 l4Var = new l4(vf0Var6.e0, this.A, vf0Var6.f0);
        if (!(l4Var instanceof do0)) {
            l4Var = new do0(l4Var);
        }
        this.K = l4Var;
        vf0 vf0Var7 = this.a;
        dw2 sq2Var = new sq2(vf0Var7.x1, vf0Var7.u, this.A, vf0Var7.t, vf0Var7.G);
        if (!(sq2Var instanceof do0)) {
            sq2Var = new do0(sq2Var);
        }
        this.L = sq2Var;
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.w;
        vf0 vf0Var8 = this.a;
        dw2 yj2Var = new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.F, this.A, vh1Var, vf0Var8.s, vf0Var8.F);
        if (!(yj2Var instanceof do0)) {
            yj2Var = new do0(yj2Var);
        }
        this.M = yj2Var;
        vf0 vf0Var9 = this.a;
        dw2 q6Var = new q6(vf0Var9.N1, this.w, this.c, this.C, this.A, vf0Var9.t, vf0Var9.E, vf0Var9.T);
        if (!(q6Var instanceof do0)) {
            q6Var = new do0(q6Var);
        }
        this.N = q6Var;
        dw2 a10Var = new a10(this.c, this.a.D2);
        if (!(a10Var instanceof do0)) {
            a10Var = new do0(a10Var);
        }
        this.O = a10Var;
        vf0 vf0Var10 = this.a;
        dw2 af2Var = new af2(vf0Var10.O, this.c, vf0Var10.t, vf0Var10.w);
        if (!(af2Var instanceof do0)) {
            af2Var = new do0(af2Var);
        }
        this.P = af2Var;
    }

    @Override // kotlin.ot0
    public final tk0 b() {
        return (tk0) this.e0.get();
    }

    @Override // kotlin.ot0
    public final m40 c() {
        return (m40) this.p1.get();
    }

    @Override // kotlin.x1
    public final ze2 e() {
        return (ze2) this.P.get();
    }

    @Override // kotlin.x1
    public final no3 f() {
        return (no3) this.d0.get();
    }

    public final void g() {
        vf0 vf0Var = this.a;
        dw2 ke2Var = new ke2(vf0Var.w, vf0Var.x, this.c, vf0Var.O, this.l, this.P, vf0Var.t);
        Object obj = do0.c;
        if (!(ke2Var instanceof do0)) {
            ke2Var = new do0(ke2Var);
        }
        this.Q = ke2Var;
        dw2 e04Var = new e04(this.i, ke2Var);
        if (!(e04Var instanceof do0)) {
            e04Var = new do0(e04Var);
        }
        this.R = e04Var;
        vf0 vf0Var2 = this.a;
        dw2 t93Var = new t93(vf0Var2.z, this.c, vf0Var2.U, vf0Var2.I, this.A, vf0Var2.t);
        if (!(t93Var instanceof do0)) {
            t93Var = new do0(t93Var);
        }
        this.S = t93Var;
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(15);
        hu1Var.a("MraidAdEventListener", this.s);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.D);
        hu1Var.a("DelegatingAdEventListener", this.E);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.G);
        hu1Var.a("AdStatsTrackerListener", this.H);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.J);
        hu1Var.a("AdLifecycleTrackerListener", this.K);
        hu1Var.a("PreloadAdCloseListener", this.L);
        hu1Var.a("PersistentCacheAdMonitor", this.M);
        hu1Var.a("AdQualityDataHandler", this.N);
        hu1Var.a("ConsentFormActionMonitor", this.O);
        hu1Var.a("WebViewLifecycleMonitor", this.R);
        hu1Var.a("SafeBrowsingLifecycleMonitor", this.S);
        hu1Var.a("OmidMonitorAsAdEventListener", this.Q);
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
        this.T = bp2Var;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.T;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "PostClickLifecycleMonitor", dw2Var, linkedHashMapA);
        vf0 vf0Var5 = this.a;
        dw2 d1Var = new d1(vf0Var5.x, iu1VarA, vf0Var5.A3);
        if (!(d1Var instanceof do0)) {
            d1Var = new do0(d1Var);
        }
        this.U = d1Var;
        dw2 do0Var = k1.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.V = do0Var;
        vf0 vf0Var6 = this.a;
        dw2 ku0Var = new ku0(vf0Var6.f, vf0Var6.x, vf0Var6.w, vf0Var6.u, vf0Var6.C, vf0Var6.t, vf0Var6.F, vf0Var6.V, vf0Var6.z, this.n, this.U, this.l, vf0Var6.G, this.h, this.A, this.d, this.c, this.Q, vf0Var6.U, do0Var, vf0Var6.D2);
        if (!(ku0Var instanceof do0)) {
            ku0Var = new do0(ku0Var);
        }
        this.W = ku0Var;
        vf0 vf0Var7 = this.a;
        dw2 it0Var = new it0(vf0Var7.f, vf0Var7.x, vf0Var7.w, vf0Var7.u, vf0Var7.C, vf0Var7.t, vf0Var7.F, vf0Var7.z, this.n, this.U, this.l, vf0Var7.G, this.h, this.A, this.d, this.c, this.Q, this.a.U, this.V);
        if (!(it0Var instanceof do0)) {
            it0Var = new do0(it0Var);
        }
        this.X = it0Var;
        cu0 cu0Var = new cu0(this.d, this.W, it0Var);
        this.Y = cu0Var;
        dw2 sk1Var = new sk1(this.b, this.c, this.d, this.h, this.j, this.n, this.E, cu0Var, this.a.f0, this.S, this.z, this.F);
        if (!(sk1Var instanceof do0)) {
            sk1Var = new do0(sk1Var);
        }
        this.Z = sk1Var;
        ol0 ol0Var2 = this.a.u;
        vh1 vh1Var3 = iu1.b;
        dw2 g73Var = new g73(ol0Var2, vh1Var3, this.a.A3);
        if (!(g73Var instanceof do0)) {
            g73Var = new do0(g73Var);
        }
        this.a0 = g73Var;
        dw2 sq3Var = new sq3(this.a.u, vh1Var3, this.a.A3);
        if (!(sq3Var instanceof do0)) {
            sq3Var = new do0(sq3Var);
        }
        this.b0 = sq3Var;
        this.c0 = mj0.a;
        dw2 hp3Var = new hp3(this.a.u, this.c, this.n, this.a0, this.b0, this.c0);
        if (!(hp3Var instanceof do0)) {
            hp3Var = new do0(hp3Var);
        }
        this.d0 = hp3Var;
        vh1 vh1Var4 = this.a.f;
        vf0 vf0Var8 = this.a;
        dw2 uk0Var = new uk0(vh1Var4, vf0Var8.u, vf0Var8.b3, this.a.t, this.F, this.c, this.h);
        if (!(uk0Var instanceof do0)) {
            uk0Var = new do0(uk0Var);
        }
        this.e0 = uk0Var;
        dw2 dkVar = new dk(this.n);
        if (!(dkVar instanceof do0)) {
            dkVar = new do0(dkVar);
        }
        this.f0 = dkVar;
        this.g0 = new k50(dkVar);
        this.h0 = new n50();
        this.i0 = new m50(this.a.D4);
        this.j0 = new l50(this.a.d3);
        dw2 ewVar = new ew(this.a.V, this.n, this.t, this.a.N4, this.c);
        if (!(ewVar instanceof do0)) {
            ewVar = new do0(ewVar);
        }
        this.k0 = ewVar;
        this.l0 = new o50(ewVar);
    }

    public final void h() {
        this.F0 = new dv3(this.a.L0);
        this.G0 = new ev3();
        dw2 i1Var = new i1(this.V);
        Object obj = do0.c;
        if (!(i1Var instanceof do0)) {
            i1Var = new do0(i1Var);
        }
        this.H0 = i1Var;
        this.I0 = new nv3(i1Var);
        this.J0 = new kv3(this.a.n0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.v0);
        hu1Var.a("/click", this.w0);
        hu1Var.a("/delayPageLoaded", this.x0);
        hu1Var.a("/httpTrack", this.y0);
        hu1Var.a("/open", this.A0);
        hu1Var.a("/result", this.B0);
        hu1Var.a("/video", this.C0);
        hu1Var.a("/videoMeta", this.D0);
        hu1Var.a("/close", this.E0);
        hu1Var.a("/customClose", this.F0);
        hu1Var.a("/delayPageClosed", this.G0);
        hu1Var.a("/backButton", this.I0);
        hu1Var.a("/setPersistentPair", this.J0);
        this.K0 = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.K0;
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
        dw2 dw2Var6 = this.Q;
        dw2 dw2Var7 = vf0Var.U;
        ou3 ou3Var = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var, ol0Var2, dw2Var3, ol0Var3, dw2Var4, vh1Var3, vh1Var4, vh1Var5, dw2Var5, ol0Var4, dw2Var6, dw2Var7, this.u0, this.h, vf0Var.h0, ov3Var, this.V, vf0Var.G);
        hc2 hc2Var = new hc2(vh1Var5, vh1Var4, vf0Var.y1, vf0Var.s1, dw2Var3);
        ol0 ol0Var5 = this.z0;
        dw2 bh2Var = new bh2(vh1Var2, dw2Var3, dw2Var7, vf0Var.V, ol0Var4, dw2Var5, this.t0, ou3Var, this.r, vh1Var3, vf0Var.r2, vf0Var.N4, vh1Var5, this.S, hc2Var, this.T, this.I, ol0Var3, vh1Var4, ol0Var);
        if (!(bh2Var instanceof do0)) {
            bh2Var = new do0(bh2Var);
        }
        ol0.a(ol0Var5, bh2Var);
        this.L0 = new x50(this.z0);
        vf0 vf0Var2 = this.a;
        this.M0 = new z50(vf0Var2.l0);
        this.N0 = new c60(vf0Var2.A4);
        this.O0 = new d60(vf0Var2.z4);
        this.P0 = new u50(vf0Var2.j0);
        this.Q0 = new a60(vf0Var2.h3);
        this.R0 = new y50(vf0Var2.j3);
        this.S0 = new b60(vf0Var2.n0);
        dw2 uo1Var = new uo1(new du0(this.d, this.W, this.X));
        if (!(uo1Var instanceof do0)) {
            uo1Var = new do0(uo1Var);
        }
        this.T0 = new xt0(uo1Var);
        vf0 vf0Var3 = this.a;
        this.U0 = new vt0(vf0Var3.L0);
        this.V0 = new ut0(vf0Var3.N0);
    }

    public final void i() {
        this.W0 = new wt0();
        this.X0 = new yt0(this.H0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(25);
        hu1Var.a("/appEvent", this.g0);
        hu1Var.a("/canOpenURLs", this.h0);
        hu1Var.a("/canOpenIntents", this.i0);
        hu1Var.a("/canOpenApp", this.j0);
        hu1Var.a("/click", this.l0);
        hu1Var.a("/contentHeight", this.m0);
        hu1Var.a("/delayPageLoaded", this.n0);
        hu1Var.a("/httpTrack", this.o0);
        hu1Var.a("/getLocationInfo", this.p0);
        hu1Var.a("/logScionEvent", this.q0);
        hu1Var.a("/mraid", this.r0);
        hu1Var.a("/mraidLoaded", this.s0);
        hu1Var.a("/open", this.L0);
        hu1Var.a("/result", this.M0);
        hu1Var.a("/video", this.N0);
        hu1Var.a("/videoMeta", this.O0);
        hu1Var.a("/log", this.P0);
        hu1Var.a("/setPAIDPersonalizationEnabled", this.Q0);
        hu1Var.a("/resetPAID", this.R0);
        hu1Var.a("/setPersistentPair", this.S0);
        hu1Var.a("/setInterstitialProperties", this.T0);
        hu1Var.a("/customClose", this.U0);
        hu1Var.a("/close", this.V0);
        hu1Var.a("/delayPageClosed", this.W0);
        hu1Var.a("/backButton", this.X0);
        this.Y0 = new r50(new iu1(hu1Var.a));
        vh1 vh1Var2 = this.c;
        vf0 vf0Var = this.a;
        this.Z0 = new m60(vh1Var2, vf0Var.R4);
        this.a1 = new h60(vh1Var2, vf0Var.S4);
        dw2 hs0Var = new hs0(this.F, vf0Var.v0, vh1Var2, vf0Var.u);
        Object obj = do0.c;
        if (!(hs0Var instanceof do0)) {
            hs0Var = new do0(hs0Var);
        }
        this.b1 = hs0Var;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.b1;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "FirebaseAnalyticsAdEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        dw2 wdVar = new wd(vf0Var2.x, iu1VarA, vf0Var2.A3);
        if (!(wdVar instanceof do0)) {
            wdVar = new do0(wdVar);
        }
        this.c1 = wdVar;
        dw2 ndVar = new nd(this.n);
        if (!(ndVar instanceof do0)) {
            ndVar = new do0(ndVar);
        }
        this.d1 = ndVar;
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        dw2 dw2Var2 = this.c1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdVisibilityChangedEventEmitter", dw2Var2);
        dw2 dw2Var3 = this.d1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "AdViewabilityMonitor", dw2Var3, linkedHashMapA2);
        vf0 vf0Var3 = this.a;
        kd kdVar = new kd(vf0Var3.x, iu1VarA2, vf0Var3.A3);
        dw2 do0Var = kdVar instanceof do0 ? kdVar : new do0(kdVar);
        vf0 vf0Var4 = this.a;
        dw2 pdVar = new pd(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.u, vf0Var4.h, vf0Var4.t, this.A, vf0Var4.E, this.c);
        if (!(pdVar instanceof do0)) {
            pdVar = new do0(pdVar);
        }
        this.e1 = new g60(pdVar);
        sh0 sh0Var = this.j;
        vf0 vf0Var5 = this.a;
        dw2 m04Var = new m04(sh0Var, vf0Var5.x, vf0Var5.t);
        if (!(m04Var instanceof do0)) {
            m04Var = new do0(m04Var);
        }
        this.f1 = m04Var;
        vf0 vf0Var6 = this.a;
        dw2 g24Var = new g24(vf0Var6.x, this.j, this.d, vf0Var6.z);
        if (!(g24Var instanceof do0)) {
            g24Var = new do0(g24Var);
        }
        this.g1 = g24Var;
        vh1 vh1Var3 = iu1.b;
        LinkedHashMap linkedHashMapA3 = ud0.a(2);
        dw2 dw2Var4 = this.f1;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("WebViewPauseResumeListener", dw2Var4);
        dw2 dw2Var5 = this.g1;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA3 = wd0.a(linkedHashMapA3, "WebViewVisibilityChangedAfmaEventListener", dw2Var5, linkedHashMapA3);
        vf0 vf0Var7 = this.a;
        dw2 n24Var = new n24(vf0Var7.x, iu1VarA3, vf0Var7.A3);
        if (!(n24Var instanceof do0)) {
            n24Var = new do0(n24Var);
        }
        this.h1 = n24Var;
        LinkedHashMap linkedHashMapA4 = ud0.a(2);
        dw2 dw2Var6 = this.h1;
        if (dw2Var6 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA4.put("WebViewVisibilityChangedEventEmitter", dw2Var6);
        dw2 dw2Var7 = this.k;
        if (dw2Var7 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA4 = wd0.a(linkedHashMapA4, "MraidViewabilityEventListener", dw2Var7, linkedHashMapA4);
        vf0 vf0Var8 = this.a;
        a24 a24Var = new a24(vf0Var8.x, iu1VarA4, vf0Var8.A3);
        dw2 do0Var2 = a24Var instanceof do0 ? a24Var : new do0(a24Var);
        vf0 vf0Var9 = this.a;
        dw2 d24Var = new d24(vf0Var9.f, vf0Var9.x, do0Var2, vf0Var9.u2, this.j, vf0Var9.h, vf0Var9.t, this.A, vf0Var9.E, this.c);
        if (!(d24Var instanceof do0)) {
            d24Var = new do0(d24Var);
        }
        this.i1 = new k60(d24Var);
        this.j1 = new f60(this.n);
        this.k1 = new i60(this.a.T4);
        vf0 vf0Var10 = this.a;
        dw2 dw2Var8 = vf0Var10.v0;
        ol0 ol0Var = vf0Var10.u;
        dw2 dw2Var9 = vf0Var10.U;
        vf0 vf0Var11 = this.a;
        dw2 t24Var = new t24(dw2Var8, ol0Var, dw2Var9, vf0Var11.t, this.c, vf0Var11.I);
        if (!(t24Var instanceof do0)) {
            t24Var = new do0(t24Var);
        }
        this.l1 = t24Var;
    }

    public final void j() {
        this.m1 = new l60(this.l1);
        this.n1 = new j60(this.S);
        this.o1 = new zt0(this.d);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(11);
        hu1Var.a("GmsgHandlerInstaller", this.Y0);
        hu1Var.a("WriteLocalStorageGmsgHandlerModifier", this.Z0);
        hu1Var.a("ClearLocalStorageGmsgHandlerModifier", this.a1);
        hu1Var.a("AdViewabilityMonitorInitializer", this.e1);
        hu1Var.a("WebViewViewabilityMonitorInitializer", this.i1);
        hu1Var.a("AdEventEmitter", this.j1);
        hu1Var.a("MraidRequestHandler", this.k1);
        hu1Var.a("WebviewFirebaseAnalyticsEventHandler", this.m1);
        hu1Var.a("SafeBrowsingClickListener", this.n1);
        hu1Var.a("SetFollowUrls", au0.a);
        hu1Var.a("CrossProcessAdConfigurator", this.o1);
        dw2 n40Var = new n40(new iu1(hu1Var.a));
        Object obj = do0.c;
        if (!(n40Var instanceof do0)) {
            n40Var = new do0(n40Var);
        }
        this.p1 = n40Var;
    }
}
