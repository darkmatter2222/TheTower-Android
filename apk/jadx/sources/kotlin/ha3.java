package kotlin;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;

/* JADX INFO: loaded from: classes.dex */
public final class ha3 implements jr0 {
    public final dw2 a;

    public ha3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new ga3((SignalRequest) this.a.get());
    }
}
