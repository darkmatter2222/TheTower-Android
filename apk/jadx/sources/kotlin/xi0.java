package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xi0 implements om3 {
    public dw2 A;
    public ol0 A0;
    public sc3 B;
    public iv3 B0;
    public dw2 C;
    public jv3 C0;
    public dw2 D;
    public lv3 D0;
    public vh1 E;
    public mv3 E0;
    public e53 F;
    public cv3 F0;
    public dw2 G;
    public dv3 G0;
    public dw2 H;
    public ev3 H0;
    public dw2 I;
    public nv3 I0;
    public dw2 J;
    public kv3 J0;
    public dw2 K;
    public gv3 K0;
    public dw2 L;
    public ou3 L0;
    public dw2 M;
    public hc2 M0;
    public dw2 N;
    public x50 N0;
    public vh1 O;
    public z50 O0;
    public dw2 P;
    public c60 P0;
    public dw2 Q;
    public d60 Q0;
    public dw2 R;
    public u50 R0;
    public dw2 S;
    public a60 S0;
    public dw2 T;
    public y50 T0;
    public dw2 U;
    public b60 U0;
    public dw2 V;
    public iu1 V0;
    public dw2 W;
    public r50 W0;
    public dw2 X;
    public m60 X0;
    public vh1 Y;
    public h60 Y0;
    public dw2 Z;
    public dw2 Z0;
    public final vf0 a;
    public dw2 a0;
    public dw2 a1;
    public dw2 b;
    public dw2 b0;
    public dw2 b1;
    public vh1 c;
    public vh1 c0;
    public g60 c1;
    public vh1 d;
    public dw2 d0;
    public k60 d1;
    public sh0 e;
    public dw2 e0;
    public f60 e1;
    public sh0 f;
    public dw2 f0;
    public i60 f1;
    public sh0 g;
    public k50 g0;
    public l60 g1;
    public dw2 h;
    public n50 h0;
    public j60 h1;
    public vh1 i;
    public m50 i0;
    public dw2 i1;
    public sh0 j;
    public l50 j0;
    public dw2 k;
    public dw2 k0;
    public vh1 l;
    public o50 l0;
    public sh0 m;
    public q50 m0;
    public ol0 n;
    public p50 n0;
    public my1 o;
    public s50 o0;
    public dw2 p;
    public t50 p0;
    public dw2 q;
    public e60 q0;
    public ny1 r;
    public v50 r0;
    public e63 s;
    public w50 s0;
    public vh1 t;
    public dw2 t0;
    public sh0 u;
    public qg2 u0;
    public vh1 v;
    public vh1 v0;
    public vh1 w;
    public av3 w0;
    public dw2 x;
    public bv3 x0;
    public vh1 y;
    public fv3 y0;
    public vh1 z;
    public hv3 z0;

    public xi0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, r31 r31Var, View view, SwipeableInterstitialRequest swipeableInterstitialRequest, h41 h41Var, mb0 mb0Var, AdSize adSize) {
        this.a = vf0Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, r31Var, h41Var);
        a(baseRequest, j53Var, num, ec3Var, eo2Var, t91Var, view, swipeableInterstitialRequest);
        a(adSize);
        a(mb0Var);
        g();
        h();
    }

    @Override // kotlin.x1
    public final zh1 a() {
        return (zn1) this.Z.get();
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
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        my1 my1Var = this.o;
        if (my1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("AdEventListener", my1Var);
        iu1 iu1Var = new iu1(linkedHashMapA);
        vf0 vf0Var2 = this.a;
        ay1 ay1Var = new ay1(vf0Var2.u, iu1Var, vf0Var2.A3);
        dw2 do0Var2 = ay1Var instanceof do0 ? ay1Var : new do0(ay1Var);
        this.p = do0Var2;
        vf0 vf0Var3 = this.a;
        dw2 cz1Var = new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.k, this.m, vf0Var3.E, do0Var2);
        if (!(cz1Var instanceof do0)) {
            cz1Var = new do0(cz1Var);
        }
        this.q = cz1Var;
        dw2 hx1Var = new hx1(cz1Var);
        if (!(hx1Var instanceof do0)) {
            hx1Var = new do0(hx1Var);
        }
        this.r = new ny1(hx1Var);
        this.s = new e63(this.c, this.d, this.a.u1);
    }

    public final void a(mb0 mb0Var) {
        vf0 vf0Var = this.a;
        dw2 ewVar = new ew(vf0Var.V, this.n, this.s, vf0Var.N4, this.c);
        Object obj = do0.c;
        if (!(ewVar instanceof do0)) {
            ewVar = new do0(ewVar);
        }
        this.k0 = ewVar;
        this.l0 = new o50(ewVar);
        vf0 vf0Var2 = this.a;
        this.m0 = new q50(vf0Var2.P4);
        this.n0 = new p50(vf0Var2.B4);
        this.o0 = new s50(vf0Var2.l3);
        this.p0 = new t50(vf0Var2.C4);
        dw2 lt1Var = new lt1(vf0Var2.v0, this.c);
        if (!(lt1Var instanceof do0)) {
            lt1Var = new do0(lt1Var);
        }
        this.q0 = new e60(lt1Var);
        vf0 vf0Var3 = this.a;
        dw2 dw2Var = vf0Var3.M4;
        dw2 dw2Var2 = vf0Var3.x;
        gz1 gz1Var = new gz1(dw2Var, dw2Var2);
        dw2 dw2Var3 = vf0Var3.N;
        ol0 ol0Var = vf0Var3.u;
        dw2 dw2Var4 = vf0Var3.I;
        dw2 dw2Var5 = vf0Var3.E;
        dw2 ey1Var = new ey1(gz1Var, this.q, vf0Var3.Q4, new nz1(dw2Var3, dw2Var, dw2Var2, ol0Var, dw2Var4, dw2Var5, vf0Var3.G, this.h), new pz1(this.p), dw2Var5, this.X);
        if (!(ey1Var instanceof do0)) {
            ey1Var = new do0(ey1Var);
        }
        this.r0 = new v50(ey1Var);
        vf0 vf0Var4 = this.a;
        dw2 ky1Var = new ky1(vf0Var4.f, vf0Var4.E, vf0Var4.M4, vf0Var4.z, vf0Var4.x, vf0Var4.N);
        if (!(ky1Var instanceof do0)) {
            ky1Var = new do0(ky1Var);
        }
        this.s0 = new w50(ky1Var);
        dw2 do0Var = k1.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.t0 = do0Var;
        vf0 vf0Var5 = this.a;
        this.u0 = new qg2(vf0Var5.f, vf0Var5.x, vf0Var5.w, vf0Var5.u, vf0Var5.C, vf0Var5.t, vf0Var5.F, vf0Var5.z, this.m, this.z, this.d, this.c, vf0Var5.E, this.n, this.V, vf0Var5.U, do0Var);
        this.v0 = vh1.a(mb0Var);
        this.w0 = new av3(this.f0);
        this.x0 = new bv3(this.k0);
        vf0 vf0Var6 = this.a;
        this.y0 = new fv3(vf0Var6.B4);
        this.z0 = new hv3(vf0Var6.l3);
        ol0 ol0Var2 = new ol0();
        this.A0 = ol0Var2;
        this.B0 = new iv3(ol0Var2);
        this.C0 = new jv3(vf0Var6.l0);
    }

    public final void a(AdSize adSize) {
        vf0 vf0Var = this.a;
        dw2 g24Var = new g24(vf0Var.x, this.j, this.d, vf0Var.z);
        Object obj = do0.c;
        if (!(g24Var instanceof do0)) {
            g24Var = new do0(g24Var);
        }
        this.Q = g24Var;
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.P;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("WebViewPauseResumeListener", dw2Var);
        dw2 dw2Var2 = this.Q;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "WebViewVisibilityChangedAfmaEventListener", dw2Var2, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        dw2 n24Var = new n24(vf0Var2.x, iu1VarA, vf0Var2.A3);
        if (!(n24Var instanceof do0)) {
            n24Var = new do0(n24Var);
        }
        this.R = n24Var;
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        dw2 dw2Var3 = this.R;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("WebViewVisibilityChangedEventEmitter", dw2Var3);
        dw2 dw2Var4 = this.k;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "MraidViewabilityEventListener", dw2Var4, linkedHashMapA2);
        vf0 vf0Var3 = this.a;
        a24 a24Var = new a24(vf0Var3.x, iu1VarA2, vf0Var3.A3);
        dw2 do0Var = a24Var instanceof do0 ? a24Var : new do0(a24Var);
        vf0 vf0Var4 = this.a;
        dw2 d24Var = new d24(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.j, vf0Var4.h, vf0Var4.t, this.z, vf0Var4.E, this.c);
        if (!(d24Var instanceof do0)) {
            d24Var = new do0(d24Var);
        }
        this.S = d24Var;
        vf0 vf0Var5 = this.a;
        dw2 sv0Var = new sv0(vf0Var5.x, vf0Var5.u, vf0Var5.z, this.l, vf0Var5.V, this.c, this.O, vf0Var5.E, vf0Var5.G, this.s, vf0Var5.h, vf0Var5.t, d24Var);
        if (!(sv0Var instanceof do0)) {
            sv0Var = new do0(sv0Var);
        }
        this.T = sv0Var;
        vf0 vf0Var6 = this.a;
        af2 af2Var = new af2(vf0Var6.O, this.c, vf0Var6.t, vf0Var6.w);
        dw2 do0Var2 = af2Var instanceof do0 ? af2Var : new do0(af2Var);
        this.U = do0Var2;
        vf0 vf0Var7 = this.a;
        dw2 ke2Var = new ke2(vf0Var7.w, vf0Var7.x, this.c, vf0Var7.O, this.l, do0Var2, vf0Var7.t);
        if (!(ke2Var instanceof do0)) {
            ke2Var = new do0(ke2Var);
        }
        this.V = ke2Var;
        dw2 e04Var = new e04(this.i, ke2Var);
        if (!(e04Var instanceof do0)) {
            e04Var = new do0(e04Var);
        }
        this.W = e04Var;
        vf0 vf0Var8 = this.a;
        dw2 t93Var = new t93(vf0Var8.z, this.c, vf0Var8.U, vf0Var8.I, this.z, vf0Var8.t);
        if (!(t93Var instanceof do0)) {
            t93Var = new do0(t93Var);
        }
        this.X = t93Var;
        vh1 vh1Var2 = iu1.b;
        hu1 hu1Var = new hu1(16);
        hu1Var.a("MraidAdEventListener", this.r);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.C);
        hu1Var.a("DelegatingAdEventListener", this.D);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.F);
        hu1Var.a("AdStatsTrackerListener", this.G);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.I);
        hu1Var.a("AdLifecycleTrackerListener", this.J);
        hu1Var.a("PreloadAdCloseListener", this.K);
        hu1Var.a("PersistentCacheAdMonitor", this.L);
        hu1Var.a("AdQualityDataHandler", this.M);
        hu1Var.a("ConsentFormActionMonitor", this.N);
        hu1Var.a("SwipeableInterstitialAdCoreAsInternalAdEventListener", this.T);
        hu1Var.a("WebViewLifecycleMonitor", this.W);
        hu1Var.a("SafeBrowsingLifecycleMonitor", this.X);
        hu1Var.a("OmidMonitorAsAdEventListener", this.V);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.n;
        vf0 vf0Var9 = this.a;
        dw2 w3Var = new w3(vf0Var9.u, iu1Var, this.c, vf0Var9.A3);
        if (!(w3Var instanceof do0)) {
            w3Var = new do0(w3Var);
        }
        ol0.a(ol0Var, w3Var);
        this.Y = vh1.a(adSize);
        dw2 do1Var = new do1(this.b, this.c, this.d, this.h, this.j, this.n, this.D, this.a.f0, this.X, this.y, this.t, this.Y, this.T, this.E);
        if (!(do1Var instanceof do0)) {
            do1Var = new do0(do1Var);
        }
        this.Z = do1Var;
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
        vf0 vf0Var10 = this.a;
        dw2 uk0Var = new uk0(vh1Var4, vf0Var10.u, vf0Var10.b3, this.a.t, this.E, this.c, this.h);
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
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Integer num, ec3 ec3Var, eo2 eo2Var, t91 t91Var, View view, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        vh1 vh1VarA = vh1.a(view);
        this.t = vh1VarA;
        this.u = new sh0(vh1VarA);
        this.v = vh1.a(ec3Var);
        this.w = vh1.a(num);
        dw2 do0Var = cc3.a;
        Object obj = do0.c;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.x = do0Var;
        this.y = vh1.a(eo2Var);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.z = vh1VarA2;
        dw2 tyVar = new ty(vh1VarA2);
        if (!(tyVar instanceof do0)) {
            tyVar = new do0(tyVar);
        }
        this.A = tyVar;
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.A;
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
        this.B = new sc3(listB, listB2);
        vh1 vh1VarA3 = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        dw2 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.s, this.u, this.v, this.c, this.h, this.w, vf0Var.h, this.x, vf0Var.N4, this.y, this.n, vf0Var.D2, this.B, vf0Var.t, vh1VarA3);
        if (!(mt3Var instanceof do0)) {
            mt3Var = new do0(mt3Var);
        }
        this.C = mt3Var;
        vf0 vf0Var2 = this.a;
        dw2 gm0Var = new gm0(vf0Var2.u, vf0Var2.t, this.h, vf0Var2.G);
        if (!(gm0Var instanceof do0)) {
            gm0Var = new do0(gm0Var);
        }
        this.D = gm0Var;
        vh1 vh1VarA4 = vh1.a(baseRequest);
        this.E = vh1VarA4;
        vf0 vf0Var3 = this.a;
        this.F = new e53(vf0Var3.U3, vh1VarA4, this.z);
        dw2 tcVar = new tc(vf0Var3.w3, vh1VarA4);
        if (!(tcVar instanceof do0)) {
            tcVar = new do0(tcVar);
        }
        this.G = tcVar;
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.H = dw2VarA;
        vf0 vf0Var5 = this.a;
        dw2 no2Var = new no2(vf0Var5.f, this.c, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E);
        if (!(no2Var instanceof do0)) {
            no2Var = new do0(no2Var);
        }
        this.I = no2Var;
        vf0 vf0Var6 = this.a;
        dw2 l4Var = new l4(vf0Var6.e0, this.z, vf0Var6.f0);
        if (!(l4Var instanceof do0)) {
            l4Var = new do0(l4Var);
        }
        this.J = l4Var;
        vf0 vf0Var7 = this.a;
        dw2 sq2Var = new sq2(vf0Var7.x1, vf0Var7.u, this.z, vf0Var7.t, vf0Var7.G);
        if (!(sq2Var instanceof do0)) {
            sq2Var = new do0(sq2Var);
        }
        this.K = sq2Var;
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.v;
        vf0 vf0Var8 = this.a;
        dw2 yj2Var = new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.E, this.z, vh1Var, vf0Var8.s, vf0Var8.F);
        if (!(yj2Var instanceof do0)) {
            yj2Var = new do0(yj2Var);
        }
        this.L = yj2Var;
        vf0 vf0Var9 = this.a;
        dw2 q6Var = new q6(vf0Var9.N1, this.v, this.c, this.B, this.z, vf0Var9.t, vf0Var9.E, vf0Var9.T);
        if (!(q6Var instanceof do0)) {
            q6Var = new do0(q6Var);
        }
        this.M = q6Var;
        dw2 a10Var = new a10(this.c, this.a.D2);
        if (!(a10Var instanceof do0)) {
            a10Var = new do0(a10Var);
        }
        this.N = a10Var;
        this.O = vh1.a(swipeableInterstitialRequest);
        sh0 sh0Var = this.j;
        vf0 vf0Var10 = this.a;
        dw2 m04Var = new m04(sh0Var, vf0Var10.x, vf0Var10.t);
        if (!(m04Var instanceof do0)) {
            m04Var = new do0(m04Var);
        }
        this.P = m04Var;
    }

    @Override // kotlin.x1
    public final ze2 e() {
        throw null;
    }

    @Override // kotlin.x1
    public final no3 f() {
        return (no3) this.d0.get();
    }

    public final void g() {
        vf0 vf0Var = this.a;
        this.D0 = new lv3(vf0Var.A4);
        this.E0 = new mv3(vf0Var.z4);
        this.F0 = new cv3(vf0Var.N0);
        this.G0 = new dv3(vf0Var.L0);
        this.H0 = new ev3();
        dw2 i1Var = new i1(this.t0);
        Object obj = do0.c;
        if (!(i1Var instanceof do0)) {
            i1Var = new do0(i1Var);
        }
        this.I0 = new nv3(i1Var);
        this.J0 = new kv3(this.a.n0);
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
        vf0 vf0Var2 = this.a;
        vh1 vh1Var2 = vf0Var2.f;
        dw2 dw2Var = vf0Var2.x;
        dw2 dw2Var2 = vf0Var2.w;
        ol0 ol0Var = vf0Var2.u;
        ol0 ol0Var2 = vf0Var2.C;
        dw2 dw2Var3 = vf0Var2.t;
        ol0 ol0Var3 = vf0Var2.F;
        dw2 dw2Var4 = vf0Var2.z;
        vh1 vh1Var3 = this.z;
        vh1 vh1Var4 = this.d;
        vh1 vh1Var5 = this.c;
        dw2 dw2Var5 = vf0Var2.E;
        ol0 ol0Var4 = this.n;
        dw2 dw2Var6 = this.V;
        dw2 dw2Var7 = vf0Var2.U;
        vh1 vh1Var6 = this.v0;
        dw2 dw2Var8 = this.h;
        dw2 dw2Var9 = vf0Var2.h0;
        dw2 dw2Var10 = this.t0;
        dw2 dw2Var11 = vf0Var2.G;
        this.L0 = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var, ol0Var2, dw2Var3, ol0Var3, dw2Var4, vh1Var3, vh1Var4, vh1Var5, dw2Var5, ol0Var4, dw2Var6, dw2Var7, vh1Var6, dw2Var8, dw2Var9, ov3Var, dw2Var10, dw2Var11);
        this.M0 = new hc2(vh1Var5, vh1Var4, vf0Var2.y1, vf0Var2.s1, dw2Var3);
        bp2 bp2Var = new bp2(vh1Var5, vf0Var2.h, vh1Var4, ol0Var, dw2Var11, this.s, dw2Var3, vf0Var2.o1, this.v);
        dw2 do0Var = bp2Var instanceof do0 ? bp2Var : new do0(bp2Var);
        ol0 ol0Var5 = this.A0;
        vf0 vf0Var3 = this.a;
        dw2 bh2Var = new bh2(vf0Var3.f, vf0Var3.t, vf0Var3.U, vf0Var3.V, this.n, vf0Var3.E, this.u0, this.L0, this.q, this.z, vf0Var3.r2, vf0Var3.N4, this.c, this.X, this.M0, do0Var, this.H, vf0Var3.F, this.d, vf0Var3.u);
        if (!(bh2Var instanceof do0)) {
            bh2Var = new do0(bh2Var);
        }
        ol0.a(ol0Var5, bh2Var);
        this.N0 = new x50(this.A0);
        this.O0 = new z50(this.a.l0);
        this.P0 = new c60(this.a.A4);
        this.Q0 = new d60(this.a.z4);
        this.R0 = new u50(this.a.j0);
        this.S0 = new a60(this.a.h3);
        this.T0 = new y50(this.a.j3);
        this.U0 = new b60(this.a.n0);
        vh1 vh1Var7 = iu1.b;
        hu1 hu1Var2 = new hu1(20);
        hu1Var2.a("/appEvent", this.g0);
        hu1Var2.a("/canOpenURLs", this.h0);
        hu1Var2.a("/canOpenIntents", this.i0);
        hu1Var2.a("/canOpenApp", this.j0);
        hu1Var2.a("/click", this.l0);
        hu1Var2.a("/contentHeight", this.m0);
        hu1Var2.a("/delayPageLoaded", this.n0);
        hu1Var2.a("/httpTrack", this.o0);
        hu1Var2.a("/getLocationInfo", this.p0);
        hu1Var2.a("/logScionEvent", this.q0);
        hu1Var2.a("/mraid", this.r0);
        hu1Var2.a("/mraidLoaded", this.s0);
        hu1Var2.a("/open", this.N0);
        hu1Var2.a("/result", this.O0);
        hu1Var2.a("/video", this.P0);
        hu1Var2.a("/videoMeta", this.Q0);
        hu1Var2.a("/log", this.R0);
        hu1Var2.a("/setPAIDPersonalizationEnabled", this.S0);
        hu1Var2.a("/resetPAID", this.T0);
        hu1Var2.a("/setPersistentPair", this.U0);
        this.V0 = new iu1(hu1Var2.a);
    }

    public final void h() {
        this.W0 = new r50(this.V0);
        vh1 vh1Var = this.c;
        vf0 vf0Var = this.a;
        this.X0 = new m60(vh1Var, vf0Var.R4);
        this.Y0 = new h60(vh1Var, vf0Var.S4);
        dw2 hs0Var = new hs0(this.E, vf0Var.v0, vh1Var, vf0Var.u);
        Object obj = do0.c;
        if (!(hs0Var instanceof do0)) {
            hs0Var = new do0(hs0Var);
        }
        this.Z0 = hs0Var;
        vh1 vh1Var2 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.Z0;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "FirebaseAnalyticsAdEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        dw2 wdVar = new wd(vf0Var2.x, iu1VarA, vf0Var2.A3);
        if (!(wdVar instanceof do0)) {
            wdVar = new do0(wdVar);
        }
        this.a1 = wdVar;
        dw2 ndVar = new nd(this.n);
        if (!(ndVar instanceof do0)) {
            ndVar = new do0(ndVar);
        }
        this.b1 = ndVar;
        LinkedHashMap linkedHashMapA2 = ud0.a(3);
        dw2 dw2Var2 = this.a1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdVisibilityChangedEventEmitter", dw2Var2);
        dw2 dw2Var3 = this.b1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdViewabilityMonitor", dw2Var3);
        dw2 dw2Var4 = this.T;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "SwipeableInterstitialAdCore", dw2Var4, linkedHashMapA2);
        vf0 vf0Var3 = this.a;
        kd kdVar = new kd(vf0Var3.x, iu1VarA2, vf0Var3.A3);
        dw2 do0Var = kdVar instanceof do0 ? kdVar : new do0(kdVar);
        vf0 vf0Var4 = this.a;
        dw2 pdVar = new pd(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.t, vf0Var4.h, vf0Var4.t, this.z, vf0Var4.E, this.c);
        if (!(pdVar instanceof do0)) {
            pdVar = new do0(pdVar);
        }
        this.c1 = new g60(pdVar);
        this.d1 = new k60(this.S);
        this.e1 = new f60(this.n);
        vf0 vf0Var5 = this.a;
        this.f1 = new i60(vf0Var5.T4);
        dw2 t24Var = new t24(vf0Var5.v0, vf0Var5.u, vf0Var5.U, vf0Var5.t, this.c, vf0Var5.I);
        if (!(t24Var instanceof do0)) {
            t24Var = new do0(t24Var);
        }
        this.g1 = new l60(t24Var);
        this.h1 = new j60(this.X);
        hu1 hu1Var = new hu1(9);
        hu1Var.a("GmsgHandlerInstaller", this.W0);
        hu1Var.a("WriteLocalStorageGmsgHandlerModifier", this.X0);
        hu1Var.a("ClearLocalStorageGmsgHandlerModifier", this.Y0);
        hu1Var.a("AdViewabilityMonitorInitializer", this.c1);
        hu1Var.a("WebViewViewabilityMonitorInitializer", this.d1);
        hu1Var.a("AdEventEmitter", this.e1);
        hu1Var.a("MraidRequestHandler", this.f1);
        hu1Var.a("WebviewFirebaseAnalyticsEventHandler", this.g1);
        hu1Var.a("SafeBrowsingClickListener", this.h1);
        dw2 n40Var = new n40(new iu1(hu1Var.a));
        if (!(n40Var instanceof do0)) {
            n40Var = new do0(n40Var);
        }
        this.i1 = n40Var;
    }
}
