package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jk1 implements jr0 {
    public final dw2 a;

    public jk1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        pp bannerRefreshSignalSource = (pp) this.a.get();
        Intrinsics.checkNotNullParameter(bannerRefreshSignalSource, "bannerRefreshSignalSource");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.SEQUENTIAL;
        ph3 ph3Var = ph3.BACKGROUND;
        return new jb2(bannerRefreshSignalSource, lg3Var, qf3Var, kj3.b.a);
    }
}
