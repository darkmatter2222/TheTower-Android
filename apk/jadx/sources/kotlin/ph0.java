package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ph0 {
    public vh1 A;
    public vh1 B;
    public dw2 C;
    public fo2 D;
    public n82 E;
    public dw2 F;
    public q82 G;
    public p82 H;
    public sh0 I;
    public t82 J;
    public s82 K;
    public dw2 L;
    public final vf0 a;
    public vh1 b;
    public vh1 c;
    public e63 d;
    public vh1 e;
    public dw2 f;
    public u52 g;
    public vh1 h;
    public dw2 i;
    public x62 j;
    public w62 k;
    public s62 l;
    public y62 m;
    public u62 n;
    public v62 o;
    public t62 p;
    public dw2 q;
    public hq2 r;
    public gq2 s;
    public iu1 t;
    public iq2 u;
    public jq2 v;
    public sh0 w;
    public dw2 x;
    public vh1 y;
    public vh1 z;

    public ph0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Integer num2, NativeRequest nativeRequest) {
        this.a = vf0Var;
        a(zyVar, i2Var, j53Var, nativeRequest);
        a(ec3Var, l, num, baseRequest, n03Var, tn1Var, num2);
        a();
    }

    public final void a() {
        q82 q82Var = this.G;
        p82 p82Var = this.H;
        sh0 sh0Var = this.I;
        vf0 vf0Var = this.a;
        jo3 jo3Var = new jo3(q82Var, p82Var, sh0Var, vf0Var.E1, this.F, vf0Var.x, vf0Var.f1, this.x, this.y, this.e, this.z, this.A, this.b, this.c, this.B, this.C, this.D);
        Object obj = do0.c;
        dw2 do0Var = jo3Var instanceof do0 ? jo3Var : new do0(jo3Var);
        this.J = new t82(do0Var);
        dw2 l83Var = new l83(do0Var, this.x, this.y, this.e, this.z, this.A, this.b, this.c, this.B, this.C, this.D);
        if (!(l83Var instanceof do0)) {
            l83Var = new do0(l83Var);
        }
        this.K = new s82(l83Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(3);
        n82 n82Var = this.E;
        if (n82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("FirstPartyRenderer", n82Var);
        t82 t82Var = this.J;
        if (t82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("ThirdPartyRenderer", t82Var);
        s82 s82Var = this.K;
        if (s82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("RtbRendererNative", s82Var);
        dw2 j8Var = new j8(new iu1(linkedHashMapA));
        if (!(j8Var instanceof do0)) {
            j8Var = new do0(j8Var);
        }
        this.L = j8Var;
    }

    public final void a(ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, n03 n03Var, tn1 tn1Var, Integer num2) {
        this.u = new iq2(this.t);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        iq2 iq2Var = this.u;
        if (iq2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("GmsgHandlerInstaller", iq2Var);
        this.v = new jq2(new iu1(linkedHashMapA));
        this.w = new sh0(vh1.a(n03Var));
        dw2 bzVar = new bz(this.w, new sh0(vh1.a(tn1Var)));
        Object obj = do0.c;
        if (!(bzVar instanceof do0)) {
            bzVar = new do0(bzVar);
        }
        this.x = bzVar;
        this.y = vh1.a(baseRequest);
        this.z = vh1.a(l);
        this.A = vh1.a(num);
        this.B = vh1.a(ec3Var);
        dw2 azVar = new az(this.a.w0);
        if (!(azVar instanceof do0)) {
            azVar = new do0(azVar);
        }
        this.C = azVar;
        vh1 vh1VarA = vh1.a(num2);
        vh1 vh1Var2 = this.y;
        fo2 fo2Var = new fo2(vh1Var2);
        this.D = fo2Var;
        dw2 dw2Var = this.f;
        vf0 vf0Var = this.a;
        dw2 d22Var = new d22(dw2Var, vf0Var.x4, vf0Var.y4, this.g, this.q, this.h, this.v, vf0Var.G, this.x, vh1Var2, this.e, this.z, this.A, this.b, this.c, this.B, this.C, vf0Var.u, vh1VarA, fo2Var);
        if (!(d22Var instanceof do0)) {
            d22Var = new do0(d22Var);
        }
        this.E = new n82(d22Var);
        jm0 jm0Var = im0.a;
        dw2 do0Var = jm0Var instanceof do0 ? jm0Var : new do0(jm0Var);
        this.F = do0Var;
        vh1 vh1Var3 = this.y;
        vh1 vh1Var4 = this.h;
        vf0 vf0Var2 = this.a;
        dw2 e42Var = new e42(vh1Var3, vh1Var4, vf0Var2.J0, vf0Var2.f, vf0Var2.E, do0Var, vf0Var2.E4);
        if (!(e42Var instanceof do0)) {
            e42Var = new do0(e42Var);
        }
        this.G = new q82(e42Var);
        vh1 vh1Var5 = this.y;
        vh1 vh1Var6 = this.h;
        vf0 vf0Var3 = this.a;
        dw2 x82Var = new x82(vh1Var5, vh1Var6, vf0Var3.J0, vf0Var3.f, vf0Var3.E, this.F, vf0Var3.E4);
        if (!(x82Var instanceof do0)) {
            x82Var = new do0(x82Var);
        }
        this.H = new p82(x82Var);
        vh1 vh1Var7 = this.y;
        vh1 vh1Var8 = this.h;
        vf0 vf0Var4 = this.a;
        dw2 c72Var = new c72(vh1Var7, vh1Var8, vf0Var4.J0, vf0Var4.f, vf0Var4.E, this.F, vf0Var4.E4);
        if (!(c72Var instanceof do0)) {
            c72Var = new do0(c72Var);
        }
        this.I = new sh0(new o82(c72Var));
    }

    public final void a(zy zyVar, i2 i2Var, j53 j53Var, NativeRequest nativeRequest) {
        this.b = vh1.a(i2Var);
        vh1 vh1VarA = vh1.a(zyVar);
        this.c = vh1VarA;
        this.d = new e63(this.b, vh1VarA, this.a.u1);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.e = vh1VarA2;
        vf0 vf0Var = this.a;
        dw2 nb0Var = new nb0(vf0Var.u, vf0Var.f, vf0Var.t, vf0Var.h, this.d, vh1VarA2, vf0Var.N, this.c);
        Object obj = do0.c;
        if (!(nb0Var instanceof do0)) {
            nb0Var = new do0(nb0Var);
        }
        this.f = nb0Var;
        vf0 vf0Var2 = this.a;
        this.g = new u52(vf0Var2.x, vf0Var2.u, vf0Var2.t, vf0Var2.h0, vf0Var2.G, vf0Var2.p3, vf0Var2.o3);
        this.h = vh1.a(nativeRequest);
        vf0 vf0Var3 = this.a;
        this.i = jk3.a(new ys(vf0Var3.I, vf0Var3.t, vf0Var3.F));
        vf0 vf0Var4 = this.a;
        this.j = new x62(vf0Var4.z4);
        this.k = new w62(vf0Var4.A4);
        this.l = new s62(vf0Var4.B4);
        this.m = new y62(vf0Var4.C4);
        this.n = new u62(vf0Var4.j0);
        this.o = new v62(vf0Var4.n0);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        x62 x62Var = this.j;
        if (x62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/videoMeta", x62Var);
        w62 w62Var = this.k;
        if (w62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/video", w62Var);
        s62 s62Var = this.l;
        if (s62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/delayPageLoaded", s62Var);
        y62 y62Var = this.m;
        if (y62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/getLocationInfo", y62Var);
        u62 u62Var = this.n;
        if (u62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/log", u62Var);
        v62 v62Var = this.o;
        if (v62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("/setPersistentPair", v62Var);
        this.p = new t62(new iu1(linkedHashMapA));
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        t62 t62Var = this.p;
        if (t62Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("GmsgHandlerInstaller", t62Var);
        z62 z62Var = new z62(new iu1(linkedHashMapA2));
        vf0 vf0Var5 = this.a;
        k62 k62Var = new k62(vf0Var5.f, vf0Var5.x, vf0Var5.h0, z62Var, vf0Var5.t, this.h);
        dw2 do0Var = k62Var instanceof do0 ? k62Var : new do0(k62Var);
        vh1 vh1Var2 = this.h;
        dw2 dw2Var = this.i;
        vf0 vf0Var6 = this.a;
        w42 w42Var = new w42(vh1Var2, dw2Var, vf0Var6.F, do0Var, vf0Var6.h0, vf0Var6.w, vf0Var6.x, vf0Var6.G);
        dw2 do0Var2 = w42Var instanceof do0 ? w42Var : new do0(w42Var);
        h52 h52Var = new h52(do0Var2);
        vf0 vf0Var7 = this.a;
        dw2 h12Var = new h12(vf0Var7.f, vf0Var7.C, do0Var2, h52Var, this.h, vf0Var7.t, vf0Var7.F);
        if (!(h12Var instanceof do0)) {
            h12Var = new do0(h12Var);
        }
        this.q = h12Var;
        vh1 vh1Var3 = this.b;
        this.r = new hq2(vh1Var3);
        this.s = new gq2(vh1Var3, this.a.D4);
        LinkedHashMap linkedHashMapA3 = ud0.a(2);
        hq2 hq2Var = this.r;
        if (hq2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("/canOpenURLs", hq2Var);
        gq2 gq2Var = this.s;
        if (gq2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("/canOpenIntents", gq2Var);
        this.t = new iu1(linkedHashMapA3);
    }
}
