package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jb1 implements jr0 {
    public final dw2 a;

    public jb1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        dw2 chromeVariationsProvider = this.a;
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        return new gp2(chromeVariationsProvider);
    }
}
