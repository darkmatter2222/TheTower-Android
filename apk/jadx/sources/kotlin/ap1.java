package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ap1 implements jr0 {
    public final dw2 a;

    public ap1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        no1 interstitialAdRenderer = (no1) this.a.get();
        Intrinsics.checkNotNullParameter(interstitialAdRenderer, "interstitialAdRenderer");
        return (j2) kq2.b(interstitialAdRenderer);
    }
}
