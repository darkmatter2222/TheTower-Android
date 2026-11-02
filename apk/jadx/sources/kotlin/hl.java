package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hl implements jr0 {
    public final dw2 a;

    public hl(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        tk appOpenAdRenderer = (tk) this.a.get();
        Intrinsics.checkNotNullParameter(appOpenAdRenderer, "appOpenAdRenderer");
        return (j2) kq2.b(appOpenAdRenderer);
    }
}
