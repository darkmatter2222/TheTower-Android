package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;

/* JADX INFO: loaded from: classes.dex */
public final class bi0 implements wz2 {
    public final vf0 a;
    public vh1 b;
    public vh1 c;
    public dw2 d;
    public dw2 e;
    public vh1 f;
    public vh1 g;
    public sh0 h;
    public dw2 i;
    public vh1 j;
    public dw2 k;

    public bi0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, NativeAdRequest nativeAdRequest, Integer num, IconAdRequest iconAdRequest) {
        this.a = vf0Var;
        a(baseRequest, j53Var, bool, bool2, nativeAdRequest, num, iconAdRequest);
    }

    @Override // kotlin.g03
    public final px2 a() {
        return (fz2) this.k.get();
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, NativeAdRequest nativeAdRequest, Integer num, IconAdRequest iconAdRequest) {
        this.b = vh1.a(nativeAdRequest);
        this.c = vh1.a(iconAdRequest);
        vh1 vh1Var = mj0.a;
        dw2 m03Var = new m03(vh1Var, vh1Var, vh1Var);
        Object obj = do0.c;
        if (!(m03Var instanceof do0)) {
            m03Var = new do0(m03Var);
        }
        this.d = m03Var;
        dw2 l03Var = new l03(this.a.w0);
        if (!(l03Var instanceof do0)) {
            l03Var = new do0(l03Var);
        }
        this.e = l03Var;
        this.f = vh1.a(j53Var);
        this.g = vh1.a(bool2);
        this.h = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var = this.a;
        dw2 pd1Var = new pd1(vf0Var.P0, this.f, this.h, this.e, vh1VarA, vf0Var.h, vf0Var.t, vh1Var);
        if (!(pd1Var instanceof do0)) {
            pd1Var = new do0(pd1Var);
        }
        this.i = pd1Var;
        this.j = vh1.a(num);
        dw2 do0Var = i03.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        k03 k03Var = new k03(this.a.u, do0Var);
        dw2 do0Var2 = k03Var instanceof do0 ? k03Var : new do0(k03Var);
        vf0 vf0Var2 = this.a;
        dw2 gz2Var = new gz2(vf0Var2.c4, vf0Var2.u, this.b, this.c, this.d, vf0Var2.t, vf0Var2.G, this.e, this.f, vf0Var2.d, this.g, this.i, vf0Var2.i1, this.j, do0Var2, vf0Var2.e0);
        if (!(gz2Var instanceof do0)) {
            gz2Var = new do0(gz2Var);
        }
        this.k = gz2Var;
    }

    @Override // kotlin.g03
    public final md1 b() {
        return (md1) this.i.get();
    }
}
