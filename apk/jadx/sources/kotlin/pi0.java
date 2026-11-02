package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdRequest;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: loaded from: classes.dex */
public final class pi0 implements y03 {
    public final vf0 a;
    public vh1 b;
    public dw2 c;
    public dw2 d;
    public vh1 e;
    public vh1 f;
    public sh0 g;
    public dw2 h;
    public dw2 i;
    public dw2 j;

    public pi0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, SwipeableInterstitialAdRequest swipeableInterstitialAdRequest) {
        this.a = vf0Var;
        a(baseRequest, j53Var, bool, bool2, swipeableInterstitialAdRequest);
    }

    @Override // kotlin.g03
    public final px2 a() {
        return (t03) this.j.get();
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, SwipeableInterstitialAdRequest swipeableInterstitialAdRequest) {
        this.b = vh1.a(swipeableInterstitialAdRequest);
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
        this.i = do0Var;
        k03 k03Var = new k03(this.a.u, do0Var);
        dw2 do0Var2 = k03Var instanceof do0 ? k03Var : new do0(k03Var);
        vf0 vf0Var2 = this.a;
        dw2 u03Var = new u03(vf0Var2.c4, vf0Var2.u, this.b, this.c, vf0Var2.t, vf0Var2.G, this.d, this.e, vf0Var2.d, this.f, this.h, vf0Var2.h4, do0Var2, vf0Var2.e0);
        if (!(u03Var instanceof do0)) {
            u03Var = new do0(u03Var);
        }
        this.j = u03Var;
    }

    @Override // kotlin.g03
    public final md1 b() {
        return (md1) this.h.get();
    }

    @Override // kotlin.g03
    public final Channel c() {
        throw null;
    }
}
