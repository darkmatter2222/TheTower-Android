package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tp implements jr0 {
    public final dw2 a;

    public tp(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        zo bannerAdRenderer = (zo) this.a.get();
        Intrinsics.checkNotNullParameter(bannerAdRenderer, "bannerAdRenderer");
        return (j2) kq2.b(bannerAdRenderer);
    }
}
