package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class in3 implements jr0 {
    public final dw2 a;

    public in3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        dn3 swipeableInterstitialAdRenderer = (dn3) this.a.get();
        Intrinsics.checkNotNullParameter(swipeableInterstitialAdRenderer, "swipeableInterstitialAdRenderer");
        return (j2) kq2.b(swipeableInterstitialAdRenderer);
    }
}
