package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class be0 implements oo {
    public vh1 A;
    public ev3 A0;
    public vh1 B;
    public nv3 B0;
    public dw2 C;
    public kv3 C0;
    public sc3 D;
    public gv3 D0;
    public dw2 E;
    public ou3 E0;
    public dw2 F;
    public hc2 F0;
    public vh1 G;
    public x50 G0;
    public e53 H;
    public z50 H0;
    public dw2 I;
    public c60 I0;
    public dw2 J;
    public d60 J0;
    public dw2 K;
    public u50 K0;
    public dw2 L;
    public a60 L0;
    public dw2 M;
    public y50 M0;
    public dw2 N;
    public b60 N0;
    public dw2 O;
    public dw2 O0;
    public dw2 P;
    public j33 P0;
    public dw2 Q;
    public iu1 Q0;
    public dw2 R;
    public r50 R0;
    public dw2 S;
    public m60 S0;
    public dw2 T;
    public h60 T0;
    public dw2 U;
    public dw2 U0;
    public dw2 V;
    public dw2 V0;
    public dw2 W;
    public iu1 W0;
    public dw2 X;
    public dw2 X0;
    public dw2 Y;
    public dw2 Y0;
    public k50 Z;
    public g60 Z0;
    public final vf0 a;
    public n50 a0;
    public dw2 a1;
    public vh1 b;
    public m50 b0;
    public dw2 b1;
    public dw2 c;
    public l50 c0;
    public dw2 c1;
    public vh1 d;
    public dw2 d0;
    public k60 d1;
    public vh1 e;
    public o50 e0;
    public f60 e1;
    public sh0 f;
    public q50 f0;
    public i60 f1;
    public sh0 g;
    public p50 g0;
    public l60 g1;
    public sh0 h;
    public s50 h0;
    public j60 h1;
    public dw2 i;
    public t50 i0;
    public mt0 i1;
    public vh1 j;
    public e60 j0;
    public dw2 j1;
    public sh0 k;
    public v50 k0;
    public dw2 l;
    public w50 l0;
    public vh1 m;
    public dw2 m0;
    public sh0 n;
    public qg2 n0;
    public ol0 o;
    public vh1 o0;
    public my1 p;
    public av3 p0;
    public vh1 q;
    public bv3 q0;
    public dw2 r;
    public fv3 r0;
    public dw2 s;
    public hv3 s0;
    public dw2 t;
    public ol0 t0;
    public ny1 u;
    public iv3 u0;
    public e63 v;
    public jv3 v0;
    public sh0 w;
    public lv3 w0;
    public vh1 x;
    public mv3 x0;
    public vh1 y;
    public cv3 y0;
    public dw2 z;
    public dv3 z0;

    public be0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, View view, g33 g33Var, r31 r31Var, h41 h41Var, mb0 mb0Var) {
        this.a = vf0Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, view, g33Var, r31Var, h41Var);
        a(baseRequest, j53Var, num, ec3Var, eo2Var, t91Var);
        g();
        a(mb0Var);
        h();
        i();
    }

    @Override // kotlin.x1
    public final zh1 a() {
        return (ck1) this.U.get();
    }

    public final void a(i2 i2Var, zy zyVar, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, View view, g33 g33Var, r31 r31Var, h41 h41Var) {
        this.b = vh1.a(view);
        dw2 do0Var = ry.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.c = do0Var;
        this.d = vh1.a(i2Var);
        this.e = vh1.a(zyVar);
        this.f = new sh0(vh1.a(n03Var));
        this.g = new sh0(vh1.a(tn1Var));
        this.h = new sh0(vh1.a(m33Var));
        dw2 uyVar = new uy(this.f, this.g, this.h, new sh0(vh1.a(zbVar)));
        if (!(uyVar instanceof do0)) {
            uyVar = new do0(uyVar);
        }
        this.i = uyVar;
        vh1 vh1VarA = vh1.a(r31Var);
        this.j = vh1VarA;
        sh0 sh0Var = new sh0(vh1VarA);
        this.k = sh0Var;
        vf0 vf0Var = this.a;
        dw2 uz1Var = new uz1(vf0Var.M4, sh0Var, vf0Var.x);
        if (!(uz1Var instanceof do0)) {
            uz1Var = new do0(uz1Var);
        }
        this.l = uz1Var;
        vh1 vh1VarA2 = vh1.a(h41Var);
        this.m = vh1VarA2;
        this.n = new sh0(vh1VarA2);
        ol0 ol0Var = new ol0();
        this.o = ol0Var;
        this.p = new my1(ol0Var);
        vh1 vh1VarA3 = vh1.a(g33Var);
        this.q = vh1VarA3;
        dw2 hpVar = new hp(vh1VarA3);
        if (!(hpVar instanceof do0)) {
            hpVar = new do0(hpVar);
        }
        this.r = hpVar;
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        my1 my1Var = this.p;
        if (my1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("AdEventListener", my1Var);
        dw2 dw2Var = this.r;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "BannerMraidEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        ay1 ay1Var = new ay1(vf0Var2.u, iu1VarA, vf0Var2.A3);
        dw2 do0Var2 = ay1Var instanceof do0 ? ay1Var : new do0(ay1Var);
        this.s = do0Var2;
        vf0 vf0Var3 = this.a;
        dw2 cz1Var = new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.l, this.n, vf0Var3.E, do0Var2);
        if (!(cz1Var instanceof do0)) {
            cz1Var = new do0(cz1Var);
        }
        this.t = cz1Var;
    }

    public final void a(mb0 mb0Var) {
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.M4;
        dw2 dw2Var2 = vf0Var.x;
        gz1 gz1Var = new gz1(dw2Var, dw2Var2);
        dw2 dw2Var3 = vf0Var.N;
        ol0 ol0Var = vf0Var.u;
        dw2 dw2Var4 = vf0Var.I;
        dw2 dw2Var5 = vf0Var.E;
        dw2 ey1Var = new ey1(gz1Var, this.t, vf0Var.Q4, new nz1(dw2Var3, dw2Var, dw2Var2, ol0Var, dw2Var4, dw2Var5, vf0Var.G, this.i), new pz1(this.s), dw2Var5, this.T);
        Object obj = do0.c;
        if (!(ey1Var instanceof do0)) {
            ey1Var = new do0(ey1Var);
        }
        this.k0 = new v50(ey1Var);
        vf0 vf0Var2 = this.a;
        dw2 ky1Var = new ky1(vf0Var2.f, vf0Var2.E, vf0Var2.M4, vf0Var2.z, vf0Var2.x, vf0Var2.N);
        if (!(ky1Var instanceof do0)) {
            ky1Var = new do0(ky1Var);
        }
        this.l0 = new w50(ky1Var);
        dw2 do0Var = k1.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.m0 = do0Var;
        vf0 vf0Var3 = this.a;
        this.n0 = new qg2(vf0Var3.f, vf0Var3.x, vf0Var3.w, vf0Var3.u, vf0Var3.C, vf0Var3.t, vf0Var3.F, vf0Var3.z, this.n, this.B, this.e, this.d, vf0Var3.E, this.o, this.R, vf0Var3.U, do0Var);
        this.o0 = vh1.a(mb0Var);
        this.p0 = new av3(this.Y);
        this.q0 = new bv3(this.d0);
        vf0 vf0Var4 = this.a;
        this.r0 = new fv3(vf0Var4.B4);
        this.s0 = new hv3(vf0Var4.l3);
        ol0 ol0Var2 = new ol0();
        this.t0 = ol0Var2;
        this.u0 = new iv3(ol0Var2);
        this.v0 = new jv3(vf0Var4.l0);
        this.w0 = new lv3(vf0Var4.A4);
        this.x0 = new mv3(vf0Var4.z4);
        this.y0 = new cv3(vf0Var4.N0);
        this.z0 = new dv3(vf0Var4.L0);
        this.A0 = new ev3();
        dw2 i1Var = new i1(this.m0);
        if (!(i1Var instanceof do0)) {
            i1Var = new do0(i1Var);
        }
        this.B0 = new nv3(i1Var);
        this.C0 = new kv3(this.a.n0);
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Integer num, ec3 ec3Var, eo2 eo2Var, t91 t91Var) {
        dw2 hx1Var = new hx1(this.t);
        Object obj = do0.c;
        if (!(hx1Var instanceof do0)) {
            hx1Var = new do0(hx1Var);
        }
        this.u = new ny1(hx1Var);
        this.v = new e63(this.d, this.e, this.a.u1);
        this.w = new sh0(this.b);
        this.x = vh1.a(ec3Var);
        this.y = vh1.a(num);
        dw2 do0Var = cc3.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.z = do0Var;
        this.A = vh1.a(eo2Var);
        vh1 vh1VarA = vh1.a(j53Var);
        this.B = vh1VarA;
        dw2 tyVar = new ty(vh1VarA);
        if (!(tyVar instanceof do0)) {
            tyVar = new do0(tyVar);
        }
        this.C = tyVar;
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.C;
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
        this.D = new sc3(listB, listB2);
        vh1 vh1VarA2 = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        dw2 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.v, this.w, this.x, this.d, this.i, this.y, vf0Var.h, this.z, vf0Var.N4, this.A, this.o, vf0Var.D2, this.D, vf0Var.t, vh1VarA2);
        if (!(mt3Var instanceof do0)) {
            mt3Var = new do0(mt3Var);
        }
        this.E = mt3Var;
        vf0 vf0Var2 = this.a;
        dw2 gm0Var = new gm0(vf0Var2.u, vf0Var2.t, this.i, vf0Var2.G);
        if (!(gm0Var instanceof do0)) {
            gm0Var = new do0(gm0Var);
        }
        this.F = gm0Var;
        vh1 vh1VarA3 = vh1.a(baseRequest);
        this.G = vh1VarA3;
        vf0 vf0Var3 = this.a;
        this.H = new e53(vf0Var3.U3, vh1VarA3, this.B);
        dw2 tcVar = new tc(vf0Var3.w3, vh1VarA3);
        if (!(tcVar instanceof do0)) {
            tcVar = new do0(tcVar);
        }
        this.I = tcVar;
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.J = dw2VarA;
        vf0 vf0Var5 = this.a;
        dw2 no2Var = new no2(vf0Var5.f, this.d, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E);
        if (!(no2Var instanceof do0)) {
            no2Var = new do0(no2Var);
        }
        this.K = no2Var;
        vf0 vf0Var6 = this.a;
        dw2 l4Var = new l4(vf0Var6.e0, this.B, vf0Var6.f0);
        if (!(l4Var instanceof do0)) {
            l4Var = new do0(l4Var);
        }
        this.L = l4Var;
        vf0 vf0Var7 = this.a;
        dw2 sq2Var = new sq2(vf0Var7.x1, vf0Var7.u, this.B, vf0Var7.t, vf0Var7.G);
        if (!(sq2Var instanceof do0)) {
            sq2Var = new do0(sq2Var);
        }
        this.M = sq2Var;
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.x;
        vf0 vf0Var8 = this.a;
        dw2 yj2Var = new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.G, this.B, vh1Var, vf0Var8.s, vf0Var8.F);
        if (!(yj2Var instanceof do0)) {
            yj2Var = new do0(yj2Var);
        }
        this.N = yj2Var;
        vf0 vf0Var9 = this.a;
        dw2 q6Var = new q6(vf0Var9.N1, this.x, this.d, this.D, this.B, vf0Var9.t, vf0Var9.E, vf0Var9.T);
        if (!(q6Var instanceof do0)) {
            q6Var = new do0(q6Var);
        }
        this.O = q6Var;
        dw2 a10Var = new a10(this.d, this.a.D2);
        if (!(a10Var instanceof do0)) {
            a10Var = new do0(a10Var);
        }
        this.P = a10Var;
    }

    @Override // kotlin.x1
    public final ze2 e() {
        throw null;
    }

    @Override // kotlin.x1
    public final no3 f() {
        return (no3) this.W.get();
    }

    public final void g() {
        vf0 vf0Var = this.a;
        af2 af2Var = new af2(vf0Var.O, this.d, vf0Var.t, vf0Var.w);
        Object obj = do0.c;
        dw2 do0Var = af2Var instanceof do0 ? af2Var : new do0(af2Var);
        this.Q = do0Var;
        vf0 vf0Var2 = this.a;
        dw2 ke2Var = new ke2(vf0Var2.w, vf0Var2.x, this.d, vf0Var2.O, this.m, do0Var, vf0Var2.t);
        if (!(ke2Var instanceof do0)) {
            ke2Var = new do0(ke2Var);
        }
        this.R = ke2Var;
        dw2 e04Var = new e04(this.j, ke2Var);
        if (!(e04Var instanceof do0)) {
            e04Var = new do0(e04Var);
        }
        this.S = e04Var;
        vf0 vf0Var3 = this.a;
        dw2 t93Var = new t93(vf0Var3.z, this.d, vf0Var3.U, vf0Var3.I, this.B, vf0Var3.t);
        if (!(t93Var instanceof do0)) {
            t93Var = new do0(t93Var);
        }
        this.T = t93Var;
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(15);
        hu1Var.a("MraidAdEventListener", this.u);
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
        ol0 ol0Var = this.o;
        vf0 vf0Var4 = this.a;
        dw2 w3Var = new w3(vf0Var4.u, iu1Var, this.d, vf0Var4.A3);
        if (!(w3Var instanceof do0)) {
            w3Var = new do0(w3Var);
        }
        ol0.a(ol0Var, w3Var);
        dw2 gk1Var = new gk1(this.b, this.c, this.d, this.e, this.i, this.k, this.o, this.F, this.a.f0, this.T, this.A, this.q, this.G);
        if (!(gk1Var instanceof do0)) {
            gk1Var = new do0(gk1Var);
        }
        this.U = gk1Var;
        vf0 vf0Var5 = this.a;
        ol0 ol0Var2 = vf0Var5.u;
        vh1 vh1Var2 = iu1.b;
        dw2 g73Var = new g73(ol0Var2, vh1Var2, vf0Var5.A3);
        if (!(g73Var instanceof do0)) {
            g73Var = new do0(g73Var);
        }
        this.V = g73Var;
        vf0 vf0Var6 = this.a;
        sq3 sq3Var = new sq3(vf0Var6.u, vh1Var2, vf0Var6.A3);
        dw2 hp3Var = new hp3(this.a.u, this.d, this.o, this.V, sq3Var instanceof do0 ? sq3Var : new do0(sq3Var), mj0.a);
        if (!(hp3Var instanceof do0)) {
            hp3Var = new do0(hp3Var);
        }
        this.W = hp3Var;
        vf0 vf0Var7 = this.a;
        dw2 uk0Var = new uk0(vf0Var7.f, vf0Var7.u, vf0Var7.b3, vf0Var7.t, this.G, this.d, this.i);
        if (!(uk0Var instanceof do0)) {
            uk0Var = new do0(uk0Var);
        }
        this.X = uk0Var;
        dw2 dkVar = new dk(this.o);
        if (!(dkVar instanceof do0)) {
            dkVar = new do0(dkVar);
        }
        this.Y = dkVar;
        this.Z = new k50(dkVar);
        this.a0 = new n50();
        vf0 vf0Var8 = this.a;
        this.b0 = new m50(vf0Var8.D4);
        this.c0 = new l50(vf0Var8.d3);
        dw2 ewVar = new ew(vf0Var8.V, this.o, this.v, vf0Var8.N4, this.d);
        if (!(ewVar instanceof do0)) {
            ewVar = new do0(ewVar);
        }
        this.d0 = ewVar;
        this.e0 = new o50(ewVar);
        vf0 vf0Var9 = this.a;
        this.f0 = new q50(vf0Var9.P4);
        this.g0 = new p50(vf0Var9.B4);
        this.h0 = new s50(vf0Var9.l3);
        vf0 vf0Var10 = this.a;
        this.i0 = new t50(vf0Var10.C4);
        dw2 lt1Var = new lt1(vf0Var10.v0, this.d);
        if (!(lt1Var instanceof do0)) {
            lt1Var = new do0(lt1Var);
        }
        this.j0 = new e60(lt1Var);
    }

    public final void h() {
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.p0);
        hu1Var.a("/click", this.q0);
        hu1Var.a("/delayPageLoaded", this.r0);
        hu1Var.a("/httpTrack", this.s0);
        hu1Var.a("/open", this.u0);
        hu1Var.a("/result", this.v0);
        hu1Var.a("/video", this.w0);
        hu1Var.a("/videoMeta", this.x0);
        hu1Var.a("/close", this.y0);
        hu1Var.a("/customClose", this.z0);
        hu1Var.a("/delayPageClosed", this.A0);
        hu1Var.a("/backButton", this.B0);
        hu1Var.a("/setPersistentPair", this.C0);
        this.D0 = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.D0;
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
        vh1 vh1Var3 = this.B;
        vh1 vh1Var4 = this.e;
        vh1 vh1Var5 = this.d;
        dw2 dw2Var5 = vf0Var.E;
        ol0 ol0Var4 = this.o;
        dw2 dw2Var6 = this.R;
        dw2 dw2Var7 = vf0Var.U;
        vh1 vh1Var6 = this.o0;
        dw2 dw2Var8 = this.i;
        dw2 dw2Var9 = vf0Var.h0;
        dw2 dw2Var10 = this.m0;
        dw2 dw2Var11 = vf0Var.G;
        this.E0 = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var, ol0Var2, dw2Var3, ol0Var3, dw2Var4, vh1Var3, vh1Var4, vh1Var5, dw2Var5, ol0Var4, dw2Var6, dw2Var7, vh1Var6, dw2Var8, dw2Var9, ov3Var, dw2Var10, dw2Var11);
        this.F0 = new hc2(vh1Var5, vh1Var4, vf0Var.y1, vf0Var.s1, dw2Var3);
        bp2 bp2Var = new bp2(vh1Var5, vf0Var.h, vh1Var4, ol0Var, dw2Var11, this.v, dw2Var3, vf0Var.o1, this.x);
        Object obj = do0.c;
        dw2 do0Var = bp2Var instanceof do0 ? bp2Var : new do0(bp2Var);
        ol0 ol0Var5 = this.t0;
        vf0 vf0Var2 = this.a;
        dw2 bh2Var = new bh2(vf0Var2.f, vf0Var2.t, vf0Var2.U, vf0Var2.V, this.o, vf0Var2.E, this.n0, this.E0, this.t, this.B, vf0Var2.r2, vf0Var2.N4, this.d, this.T, this.F0, do0Var, this.J, vf0Var2.F, this.e, vf0Var2.u);
        if (!(bh2Var instanceof do0)) {
            bh2Var = new do0(bh2Var);
        }
        ol0.a(ol0Var5, bh2Var);
        this.G0 = new x50(this.t0);
        this.H0 = new z50(this.a.l0);
        this.I0 = new c60(this.a.A4);
        this.J0 = new d60(this.a.z4);
        this.K0 = new u50(this.a.j0);
        this.L0 = new a60(this.a.h3);
        this.M0 = new y50(this.a.j3);
        this.N0 = new b60(this.a.n0);
        dw2 h23Var = new h23(this.q);
        if (!(h23Var instanceof do0)) {
            h23Var = new do0(h23Var);
        }
        this.O0 = h23Var;
        this.P0 = new j33(h23Var);
        vh1 vh1Var7 = iu1.b;
        hu1 hu1Var2 = new hu1(21);
        hu1Var2.a("/appEvent", this.Z);
        hu1Var2.a("/canOpenURLs", this.a0);
        hu1Var2.a("/canOpenIntents", this.b0);
        hu1Var2.a("/canOpenApp", this.c0);
        hu1Var2.a("/click", this.e0);
        hu1Var2.a("/contentHeight", this.f0);
        hu1Var2.a("/delayPageLoaded", this.g0);
        hu1Var2.a("/httpTrack", this.h0);
        hu1Var2.a("/getLocationInfo", this.i0);
        hu1Var2.a("/logScionEvent", this.j0);
        hu1Var2.a("/mraid", this.k0);
        hu1Var2.a("/mraidLoaded", this.l0);
        hu1Var2.a("/open", this.G0);
        hu1Var2.a("/result", this.H0);
        hu1Var2.a("/video", this.I0);
        hu1Var2.a("/videoMeta", this.J0);
        hu1Var2.a("/log", this.K0);
        hu1Var2.a("/setPAIDPersonalizationEnabled", this.L0);
        hu1Var2.a("/resetPAID", this.M0);
        hu1Var2.a("/setPersistentPair", this.N0);
        hu1Var2.a("/refresh", this.P0);
        iu1 iu1Var = new iu1(hu1Var2.a);
        this.Q0 = iu1Var;
        this.R0 = new r50(iu1Var);
        this.S0 = new m60(this.d, this.a.R4);
        this.T0 = new h60(this.d, this.a.S4);
        dw2 hs0Var = new hs0(this.G, this.a.v0, this.d, this.a.u);
        if (!(hs0Var instanceof do0)) {
            hs0Var = new do0(hs0Var);
        }
        this.U0 = hs0Var;
        dw2 dpVar = new dp(this.a.x, this.q);
        if (!(dpVar instanceof do0)) {
            dpVar = new do0(dpVar);
        }
        this.V0 = dpVar;
        vh1 vh1Var8 = iu1.b;
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        dw2 dw2Var12 = this.U0;
        if (dw2Var12 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("FirebaseAnalyticsAdEventListener", dw2Var12);
        dw2 dw2Var13 = this.V0;
        if (dw2Var13 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        this.W0 = wd0.a(linkedHashMapA2, "BannerAdVisibilityChangedEventListener", dw2Var13, linkedHashMapA2);
    }

    public final void i() {
        vf0 vf0Var = this.a;
        dw2 wdVar = new wd(vf0Var.x, this.W0, vf0Var.A3);
        Object obj = do0.c;
        if (!(wdVar instanceof do0)) {
            wdVar = new do0(wdVar);
        }
        this.X0 = wdVar;
        dw2 ndVar = new nd(this.o);
        if (!(ndVar instanceof do0)) {
            ndVar = new do0(ndVar);
        }
        this.Y0 = ndVar;
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.X0;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("AdVisibilityChangedEventEmitter", dw2Var);
        dw2 dw2Var2 = this.Y0;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "AdViewabilityMonitor", dw2Var2, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        kd kdVar = new kd(vf0Var2.x, iu1VarA, vf0Var2.A3);
        dw2 do0Var = kdVar instanceof do0 ? kdVar : new do0(kdVar);
        vf0 vf0Var3 = this.a;
        dw2 pdVar = new pd(vf0Var3.f, vf0Var3.x, do0Var, vf0Var3.u2, this.b, vf0Var3.h, vf0Var3.t, this.B, vf0Var3.E, this.d);
        if (!(pdVar instanceof do0)) {
            pdVar = new do0(pdVar);
        }
        this.Z0 = new g60(pdVar);
        sh0 sh0Var = this.k;
        vf0 vf0Var4 = this.a;
        dw2 m04Var = new m04(sh0Var, vf0Var4.x, vf0Var4.t);
        if (!(m04Var instanceof do0)) {
            m04Var = new do0(m04Var);
        }
        this.a1 = m04Var;
        vf0 vf0Var5 = this.a;
        dw2 g24Var = new g24(vf0Var5.x, this.k, this.e, vf0Var5.z);
        if (!(g24Var instanceof do0)) {
            g24Var = new do0(g24Var);
        }
        this.b1 = g24Var;
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        dw2 dw2Var3 = this.a1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("WebViewPauseResumeListener", dw2Var3);
        dw2 dw2Var4 = this.b1;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "WebViewVisibilityChangedAfmaEventListener", dw2Var4, linkedHashMapA2);
        vf0 vf0Var6 = this.a;
        dw2 n24Var = new n24(vf0Var6.x, iu1VarA2, vf0Var6.A3);
        if (!(n24Var instanceof do0)) {
            n24Var = new do0(n24Var);
        }
        this.c1 = n24Var;
        LinkedHashMap linkedHashMapA3 = ud0.a(2);
        dw2 dw2Var5 = this.c1;
        if (dw2Var5 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("WebViewVisibilityChangedEventEmitter", dw2Var5);
        dw2 dw2Var6 = this.l;
        if (dw2Var6 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA3 = wd0.a(linkedHashMapA3, "MraidViewabilityEventListener", dw2Var6, linkedHashMapA3);
        vf0 vf0Var7 = this.a;
        a24 a24Var = new a24(vf0Var7.x, iu1VarA3, vf0Var7.A3);
        dw2 do0Var2 = a24Var instanceof do0 ? a24Var : new do0(a24Var);
        vf0 vf0Var8 = this.a;
        dw2 d24Var = new d24(vf0Var8.f, vf0Var8.x, do0Var2, vf0Var8.u2, this.k, vf0Var8.h, vf0Var8.t, this.B, vf0Var8.E, this.d);
        if (!(d24Var instanceof do0)) {
            d24Var = new do0(d24Var);
        }
        this.d1 = new k60(d24Var);
        this.e1 = new f60(this.o);
        vf0 vf0Var9 = this.a;
        this.f1 = new i60(vf0Var9.T4);
        dw2 t24Var = new t24(vf0Var9.v0, vf0Var9.u, vf0Var9.U, vf0Var9.t, this.d, vf0Var9.I);
        if (!(t24Var instanceof do0)) {
            t24Var = new do0(t24Var);
        }
        this.g1 = new l60(t24Var);
        this.h1 = new j60(this.T);
        this.i1 = new mt0(this.q);
        vh1 vh1Var2 = iu1.b;
        hu1 hu1Var = new hu1(10);
        hu1Var.a("GmsgHandlerInstaller", this.R0);
        hu1Var.a("WriteLocalStorageGmsgHandlerModifier", this.S0);
        hu1Var.a("ClearLocalStorageGmsgHandlerModifier", this.T0);
        hu1Var.a("AdViewabilityMonitorInitializer", this.Z0);
        hu1Var.a("WebViewViewabilityMonitorInitializer", this.d1);
        hu1Var.a("AdEventEmitter", this.e1);
        hu1Var.a("MraidRequestHandler", this.f1);
        hu1Var.a("WebviewFirebaseAnalyticsEventHandler", this.g1);
        hu1Var.a("SafeBrowsingClickListener", this.h1);
        hu1Var.a("RefreshListenerWebViewBinder", this.i1);
        dw2 n40Var = new n40(new iu1(hu1Var.a));
        if (!(n40Var instanceof do0)) {
            n40Var = new do0(n40Var);
        }
        this.j1 = n40Var;
    }
}
