package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class mi0 implements g03 {
    public final vf0 a;
    public dw2 b;
    public dw2 c;
    public vh1 d;
    public vh1 e;
    public sh0 f;
    public dw2 g;
    public vh1 h;
    public dw2 i;

    public mi0(vf0 vf0Var, AdRequest adRequest, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2) {
        this.a = vf0Var;
        a(adRequest, baseRequest, j53Var, bool, bool2);
    }

    @Override // kotlin.g03
    public final px2 a() {
        return (o03) this.i.get();
    }

    public final void a(AdRequest adRequest, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2) {
        vh1 vh1Var = mj0.a;
        dw2 m03Var = new m03(vh1Var, vh1Var, vh1Var);
        Object obj = do0.c;
        if (!(m03Var instanceof do0)) {
            m03Var = new do0(m03Var);
        }
        this.b = m03Var;
        dw2 l03Var = new l03(this.a.w0);
        if (!(l03Var instanceof do0)) {
            l03Var = new do0(l03Var);
        }
        this.c = l03Var;
        this.d = vh1.a(j53Var);
        this.e = vh1.a(bool2);
        this.f = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var = this.a;
        dw2 pd1Var = new pd1(vf0Var.P0, this.d, this.f, this.c, vh1VarA, vf0Var.h, vf0Var.t, vh1Var);
        if (!(pd1Var instanceof do0)) {
            pd1Var = new do0(pd1Var);
        }
        this.g = pd1Var;
        this.h = vh1.a(adRequest);
        dw2 do0Var = i03.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        k03 k03Var = new k03(this.a.u, do0Var);
        dw2 do0Var2 = k03Var instanceof do0 ? k03Var : new do0(k03Var);
        vf0 vf0Var2 = this.a;
        dw2 p03Var = new p03(vf0Var2.c4, vf0Var2.u, this.b, vf0Var2.t, vf0Var2.G, this.c, this.d, vf0Var2.d, this.e, this.g, this.h, vf0Var2.e4, do0Var2, vf0Var2.e0);
        if (!(p03Var instanceof do0)) {
            p03Var = new do0(p03Var);
        }
        this.i = p03Var;
    }

    @Override // kotlin.g03
    public final md1 b() {
        return (md1) this.g.get();
    }
}
