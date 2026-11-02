package kotlin;

import com.google.android.libraries.ads.mobile.sdk.h5.OnH5AdsEventListener;

/* JADX INFO: loaded from: classes.dex */
public final class wf0 {
    public final vf0 a;
    public OnH5AdsEventListener b;

    public wf0(vf0 vf0Var) {
        this.a = vf0Var;
    }

    public final wf0 a(OnH5AdsEventListener onH5AdsEventListener) {
        onH5AdsEventListener.getClass();
        this.b = onH5AdsEventListener;
        return this;
    }

    public final yf0 a() {
        kq2.a(this.b, OnH5AdsEventListener.class);
        return new yf0(this.a, this.b);
    }
}
