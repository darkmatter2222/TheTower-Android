package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class lj0 implements x1 {
    public dw2 A;
    public dw2 B;
    public dw2 C;
    public dw2 D;
    public ez E;
    public dz F;
    public dw2 G;
    public dw2 H;
    public dw2 I;
    public dw2 J;
    public dw2 K;
    public dw2 L;
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public vh1 d;
    public sh0 e;
    public sh0 f;
    public sh0 g;
    public dw2 h;
    public vh1 i;
    public e63 j;
    public vh1 k;
    public vh1 l;
    public vh1 m;
    public dw2 n;
    public vh1 o;
    public ol0 p;
    public vh1 q;
    public dw2 r;
    public sc3 s;
    public dw2 t;
    public dw2 u;
    public vh1 v;
    public e53 w;
    public dw2 x;
    public dw2 y;
    public dw2 z;

    public lj0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, np3 np3Var) {
        this.a = vf0Var;
        a(j53Var, num, i2Var, zyVar, ec3Var, n03Var, tn1Var, m33Var, zbVar, eo2Var, t91Var);
        a(baseRequest, np3Var);
        g();
    }

    @Override // kotlin.x1
    public final zh1 a() {
        return (un1) this.L.get();
    }

    public final void a(j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var) {
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
        vh1 vh1Var = mj0.a;
        this.i = vh1Var;
        this.j = new e63(this.c, this.d, this.a.u1);
        this.k = vh1Var;
        this.l = vh1.a(ec3Var);
        this.m = vh1.a(num);
        dw2 do0Var2 = cc3.a;
        if (!(do0Var2 instanceof do0)) {
            do0Var2 = new do0(do0Var2);
        }
        this.n = do0Var2;
        this.o = vh1.a(eo2Var);
        this.p = new ol0();
        vh1 vh1VarA = vh1.a(j53Var);
        this.q = vh1VarA;
        dw2 tyVar = new ty(vh1VarA);
        if (!(tyVar instanceof do0)) {
            tyVar = new do0(tyVar);
        }
        this.r = tyVar;
        int i = sc3.c;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.r;
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
        this.s = new sc3(listB, listB2);
        vh1 vh1VarA2 = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        dw2 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.j, this.k, this.l, this.c, this.h, this.m, vf0Var.h, this.n, vf0Var.N4, this.o, this.p, vf0Var.D2, this.s, vf0Var.t, vh1VarA2);
        if (!(mt3Var instanceof do0)) {
            mt3Var = new do0(mt3Var);
        }
        this.t = mt3Var;
    }

    public final void a(BaseRequest baseRequest, np3 np3Var) {
        vf0 vf0Var = this.a;
        dw2 gm0Var = new gm0(vf0Var.u, vf0Var.t, this.h, vf0Var.G);
        Object obj = do0.c;
        if (!(gm0Var instanceof do0)) {
            gm0Var = new do0(gm0Var);
        }
        this.u = gm0Var;
        vh1 vh1VarA = vh1.a(baseRequest);
        this.v = vh1VarA;
        vf0 vf0Var2 = this.a;
        this.w = new e53(vf0Var2.U3, vh1VarA, this.q);
        dw2 tcVar = new tc(vf0Var2.w3, vh1VarA);
        if (!(tcVar instanceof do0)) {
            tcVar = new do0(tcVar);
        }
        this.x = tcVar;
        vf0 vf0Var3 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var3.f, vf0Var3.t));
        vf0 vf0Var4 = this.a;
        dw2 no2Var = new no2(vf0Var4.f, this.c, vf0Var4.O4, vf0Var4.t, vf0Var4.G, dw2VarA, vf0Var4.F, vf0Var4.u, vf0Var4.E);
        if (!(no2Var instanceof do0)) {
            no2Var = new do0(no2Var);
        }
        this.y = no2Var;
        vf0 vf0Var5 = this.a;
        dw2 l4Var = new l4(vf0Var5.e0, this.q, vf0Var5.f0);
        if (!(l4Var instanceof do0)) {
            l4Var = new do0(l4Var);
        }
        this.z = l4Var;
        vf0 vf0Var6 = this.a;
        dw2 sq2Var = new sq2(vf0Var6.x1, vf0Var6.u, this.q, vf0Var6.t, vf0Var6.G);
        if (!(sq2Var instanceof do0)) {
            sq2Var = new do0(sq2Var);
        }
        this.A = sq2Var;
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.l;
        vf0 vf0Var7 = this.a;
        dw2 yj2Var = new yj2(vh1Var2, vf0Var7.A0, vf0Var7.A1, this.v, this.q, vh1Var, vf0Var7.s, vf0Var7.F);
        if (!(yj2Var instanceof do0)) {
            yj2Var = new do0(yj2Var);
        }
        this.B = yj2Var;
        vf0 vf0Var8 = this.a;
        dw2 q6Var = new q6(vf0Var8.N1, this.l, this.c, this.s, this.q, vf0Var8.t, vf0Var8.E, vf0Var8.T);
        if (!(q6Var instanceof do0)) {
            q6Var = new do0(q6Var);
        }
        this.C = q6Var;
        dw2 a10Var = new a10(this.c, this.a.D2);
        if (!(a10Var instanceof do0)) {
            a10Var = new do0(a10Var);
        }
        this.D = a10Var;
        vh1 vh1Var3 = iu1.b;
        hu1 hu1Var = new hu1(11);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.t);
        hu1Var.a("DelegatingAdEventListener", this.u);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.w);
        hu1Var.a("AdStatsTrackerListener", this.x);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.y);
        hu1Var.a("AdLifecycleTrackerListener", this.z);
        hu1Var.a("PreloadAdCloseListener", this.A);
        hu1Var.a("PersistentCacheAdMonitor", this.B);
        hu1Var.a("AdQualityDataHandler", this.C);
        hu1Var.a("ConsentFormActionMonitor", this.D);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.p;
        vf0 vf0Var9 = this.a;
        dw2 w3Var = new w3(vf0Var9.u, iu1Var, this.c, vf0Var9.A3);
        if (!(w3Var instanceof do0)) {
            w3Var = new do0(w3Var);
        }
        ol0.a(ol0Var, w3Var);
        this.E = new ez(this.t);
        this.F = new dz(this.u);
        LinkedHashMap linkedHashMapA = ud0.a(2);
        ez ezVar = this.E;
        if (ezVar == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("trackingPingMonitorAsRewardedEventListener", ezVar);
        dz dzVar = this.F;
        if (dzVar == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("provideDelegatingAdEventListenerAsRewardedEventListener", dzVar);
        iu1 iu1Var2 = new iu1(linkedHashMapA);
        vf0 vf0Var10 = this.a;
        dw2 g73Var = new g73(vf0Var10.u, iu1Var2, vf0Var10.A3);
        if (!(g73Var instanceof do0)) {
            g73Var = new do0(g73Var);
        }
        this.G = g73Var;
        vf0 vf0Var11 = this.a;
        sq3 sq3Var = new sq3(vf0Var11.u, iu1.b, vf0Var11.A3);
        dw2 hp3Var = new hp3(this.a.u, this.c, this.p, this.G, sq3Var instanceof do0 ? sq3Var : new do0(sq3Var), vh1Var);
        if (!(hp3Var instanceof do0)) {
            hp3Var = new do0(hp3Var);
        }
        this.H = hp3Var;
        vh1 vh1VarA2 = vh1.a(np3Var);
        vf0 vf0Var12 = this.a;
        dw2 mp3Var = new mp3(vf0Var12.u, this.p, this.H, vh1VarA2, vf0Var12.E);
        if (!(mp3Var instanceof do0)) {
            mp3Var = new do0(mp3Var);
        }
        this.I = mp3Var;
        dw2 do0Var = u4.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.J = do0Var;
        vf0 vf0Var13 = this.a;
        dw2 t93Var = new t93(vf0Var13.z, this.c, vf0Var13.U, vf0Var13.I, this.q, vf0Var13.t);
        if (!(t93Var instanceof do0)) {
            t93Var = new do0(t93Var);
        }
        this.K = t93Var;
    }

    @Override // kotlin.x1
    public final no3 f() {
        return (no3) this.H.get();
    }

    public final void g() {
        dw2 xn1Var = new xn1(this.b, this.c, this.d, this.h, this.i, this.p, this.u, this.I, this.n, this.J, this.a.f0, this.K, this.o, this.v);
        Object obj = do0.c;
        if (!(xn1Var instanceof do0)) {
            xn1Var = new do0(xn1Var);
        }
        this.L = xn1Var;
        vf0 vf0Var = this.a;
        af2 af2Var = new af2(vf0Var.O, this.c, vf0Var.t, vf0Var.w);
        if (af2Var instanceof do0) {
            return;
        }
        new do0(af2Var);
    }
}
