package kotlin;

import com.google.android.libraries.ads.mobile.sdk.h5.OnH5AdsEventListener;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class yf0 {
    public final OnH5AdsEventListener a;
    public final vf0 b;
    public final yf0 c = this;
    public xf0 d;

    public yf0(vf0 vf0Var, OnH5AdsEventListener onH5AdsEventListener) {
        this.b = vf0Var;
        this.a = onH5AdsEventListener;
        b();
    }

    public final f51 a() {
        h51 h51Var = new h51(this.a, (ex0) this.b.t.get(), (CoroutineScope) this.b.x.get());
        ex0 ex0Var = (ex0) this.b.t.get();
        g83 g83Var = (g83) this.b.G.get();
        xf0 xf0Var = this.d;
        l43 l43Var = (l43) this.b.J0.get();
        vf0 vf0Var = this.b;
        return new f51(h51Var, ex0Var, g83Var, xf0Var, l43Var, vf0Var.b, (CoroutineScope) vf0Var.u.get(), (CoroutineScope) this.b.x.get(), (o21) this.b.U.get());
    }

    public final void b() {
        this.d = new xf0(this);
    }
}
