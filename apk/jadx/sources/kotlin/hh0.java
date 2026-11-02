package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class hh0 {
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public vh1 d;
    public sh0 e;
    public dw2 f;
    public vh1 g;
    public e63 h;
    public vh1 i;
    public dw2 j;
    public vh1 k;
    public vh1 l;
    public vh1 m;
    public fo2 n;
    public ap1 o;
    public dw2 p;
    public dp1 q;
    public cp1 r;
    public bp1 s;
    public gp1 t;
    public fp1 u;
    public vh1 v;
    public vh1 w;
    public vh1 x;
    public ep1 y;
    public dw2 z;

    public hh0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Boolean bool, md1 md1Var, pb pbVar, vo1 vo1Var) {
        this.a = vf0Var;
        a(zyVar, i2Var, ec3Var, l, num, baseRequest, j53Var, n03Var, tn1Var);
        a(bool, md1Var, pbVar, vo1Var);
    }

    public final void a(zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var) {
        dw2 azVar = new az(this.a.w0);
        Object obj = do0.c;
        if (!(azVar instanceof do0)) {
            azVar = new do0(azVar);
        }
        this.b = azVar;
        this.c = vh1.a(i2Var);
        this.d = vh1.a(ec3Var);
        this.e = new sh0(vh1.a(n03Var));
        dw2 bzVar = new bz(this.e, new sh0(vh1.a(tn1Var)));
        if (!(bzVar instanceof do0)) {
            bzVar = new do0(bzVar);
        }
        this.f = bzVar;
        vh1 vh1VarA = vh1.a(zyVar);
        this.g = vh1VarA;
        this.h = new e63(this.c, vh1VarA, this.a.u1);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.i = vh1VarA2;
        vf0 vf0Var = this.a;
        dw2 nb0Var = new nb0(vf0Var.u, vf0Var.f, vf0Var.t, vf0Var.h, this.h, vh1VarA2, vf0Var.N, this.g);
        if (!(nb0Var instanceof do0)) {
            nb0Var = new do0(nb0Var);
        }
        this.j = nb0Var;
        this.k = vh1.a(baseRequest);
        this.l = vh1.a(l);
        vh1 vh1VarA3 = vh1.a(num);
        this.m = vh1VarA3;
        vh1 vh1Var = this.k;
        fo2 fo2Var = new fo2(vh1Var);
        this.n = fo2Var;
        dw2 dw2Var = this.b;
        vh1 vh1Var2 = this.c;
        vh1 vh1Var3 = this.d;
        dw2 dw2Var2 = this.f;
        vf0 vf0Var2 = this.a;
        dw2 oo1Var = new oo1(dw2Var, vh1Var2, vh1Var3, dw2Var2, vf0Var2.H4, this.j, vf0Var2.h0, this.g, vh1Var, this.l, vh1VarA3, this.i, vf0Var2.x, vf0Var2.T0, vf0Var2.W, fo2Var);
        if (!(oo1Var instanceof do0)) {
            oo1Var = new do0(oo1Var);
        }
        this.o = new ap1(oo1Var);
        dw2 do0Var = im0.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.p = do0Var;
        vh1 vh1Var4 = this.k;
        vf0 vf0Var3 = this.a;
        dw2 qo1Var = new qo1(vh1Var4, vf0Var3.J0, vf0Var3.f, vf0Var3.E, do0Var, vf0Var3.I4);
        if (!(qo1Var instanceof do0)) {
            qo1Var = new do0(qo1Var);
        }
        this.q = new dp1(qo1Var);
        vh1 vh1Var5 = this.k;
        vf0 vf0Var4 = this.a;
        dw2 kp1Var = new kp1(vh1Var5, vf0Var4.J0, vf0Var4.f, vf0Var4.E, this.p, vf0Var4.I4);
        if (!(kp1Var instanceof do0)) {
            kp1Var = new do0(kp1Var);
        }
        this.r = new cp1(kp1Var);
        vh1 vh1Var6 = this.k;
        vf0 vf0Var5 = this.a;
        dw2 so1Var = new so1(vh1Var6, vf0Var5.J0, vf0Var5.f, vf0Var5.E, this.p, vf0Var5.I4);
        if (!(so1Var instanceof do0)) {
            so1Var = new do0(so1Var);
        }
        this.s = new bp1(so1Var);
    }

    public final void a(Boolean bool, md1 md1Var, pb pbVar, vo1 vo1Var) {
        sh0 sh0Var = new sh0(this.s);
        dp1 dp1Var = this.q;
        cp1 cp1Var = this.r;
        vf0 vf0Var = this.a;
        jo3 jo3Var = new jo3(dp1Var, cp1Var, sh0Var, vf0Var.E1, this.p, vf0Var.x, vf0Var.f1, this.f, this.k, this.i, this.l, this.m, this.c, this.g, this.d, this.b, this.n);
        Object obj = do0.c;
        dw2 do0Var = jo3Var instanceof do0 ? jo3Var : new do0(jo3Var);
        this.t = new gp1(do0Var);
        dw2 l83Var = new l83(do0Var, this.f, this.k, this.i, this.l, this.m, this.c, this.g, this.d, this.b, this.n);
        if (!(l83Var instanceof do0)) {
            l83Var = new do0(l83Var);
        }
        this.u = new fp1(l83Var);
        this.v = vh1.a(vo1Var);
        this.w = vh1.a(bool);
        this.x = vh1.a(md1Var);
        dw2 y13Var = new y13(this.v, this.f, this.k, this.i, this.l, this.m, this.c, this.g, this.d, this.b, this.w, this.x, vh1.a(pbVar), this.n);
        if (!(y13Var instanceof do0)) {
            y13Var = new do0(y13Var);
        }
        this.y = new ep1(y13Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        ap1 ap1Var = this.o;
        if (ap1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("FirstPartyRenderer", ap1Var);
        gp1 gp1Var = this.t;
        if (gp1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("ThirdPartyRenderer", gp1Var);
        fp1 fp1Var = this.u;
        if (fp1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("RtbRendererInterstitial", fp1Var);
        ep1 ep1Var = this.y;
        if (ep1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("RecursiveRenderer", ep1Var);
        dw2 j8Var = new j8(new iu1(linkedHashMapA));
        if (!(j8Var instanceof do0)) {
            j8Var = new do0(j8Var);
        }
        this.z = j8Var;
    }
}
