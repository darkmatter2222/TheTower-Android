package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;

/* JADX INFO: loaded from: classes.dex */
public final class kn3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;
    public final dw2 j;

    public kn3(af0 af0Var, dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, vh1 vh1Var2, on1 on1Var, dw2 dw2Var3, dw2 dw2Var4, vh1 vh1Var3, dw2 dw2Var5) {
        this.a = af0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = dw2Var2;
        this.e = vh1Var2;
        this.f = on1Var;
        this.g = dw2Var3;
        this.h = dw2Var4;
        this.i = vh1Var3;
        this.j = dw2Var5;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new jn3(this.a, (ks3) this.b.get(), (BaseRequest) this.c.get(), (SwipeableInterstitialRequest) this.d.get(), ((Boolean) this.e.get()).booleanValue(), ((Long) this.f.get()).longValue(), ((Integer) this.g.get()).intValue(), (String) this.h.get(), (md1) this.i.get(), (pb) this.j.get());
    }
}
