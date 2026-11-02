package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class ei0 implements g03 {
    public final vf0 a;
    public vh1 b;
    public dw2 c;
    public dw2 d;
    public vh1 e;
    public vh1 f;
    public sh0 g;
    public dw2 h;
    public dw2 i;

    public ei0(vf0 vf0Var, AdRequest adRequest, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2) {
        this.a = vf0Var;
        a(adRequest, baseRequest, j53Var, bool, bool2);
    }

    @Override // kotlin.g03
    public final px2 a() {
        return (kz2) this.i.get();
    }

    public final void a(AdRequest adRequest, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2) {
        this.b = vh1.a(adRequest);
        vh1 vh1Var = mj0.a;
        dw2 m03Var = new m03(vh1Var, vh1Var, vh1Var);
        Object obj = do0.c;
        if (!(m03Var instanceof do0)) {
            m03Var = new do0(m03Var);
        }
        this.c = m03Var;
        dw2 l03Var = new l03(this.a.w0);
        if (!(l03Var instanceof do0)) {
            l03Var = new do0(l03Var);
        }
        this.d = l03Var;
        this.e = vh1.a(j53Var);
        this.f = vh1.a(bool2);
        this.g = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var = this.a;
        dw2 pd1Var = new pd1(vf0Var.P0, this.e, this.g, this.d, vh1VarA, vf0Var.h, vf0Var.t, vh1Var);
        if (!(pd1Var instanceof do0)) {
            pd1Var = new do0(pd1Var);
        }
        this.h = pd1Var;
        dw2 do0Var = i03.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        k03 k03Var = new k03(this.a.u, do0Var);
        dw2 do0Var2 = k03Var instanceof do0 ? k03Var : new do0(k03Var);
        vf0 vf0Var2 = this.a;
        dw2 lz2Var = new lz2(vf0Var2.c4, vf0Var2.u, this.b, this.c, vf0Var2.t, vf0Var2.G, this.d, this.e, vf0Var2.d, this.f, this.h, vf0Var2.d4, do0Var2, vf0Var2.e0);
        if (!(lz2Var instanceof do0)) {
            lz2Var = new do0(lz2Var);
        }
        this.i = lz2Var;
    }

    @Override // kotlin.g03
    public final md1 b() {
        return (md1) this.h.get();
    }
}
