package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x73 implements jr0 {
    public final dw2 a;

    public x73(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        d23 recursiveRewardedAdRenderer = (d23) this.a.get();
        Intrinsics.checkNotNullParameter(recursiveRewardedAdRenderer, "recursiveRewardedAdRenderer");
        return (j2) kq2.b(recursiveRewardedAdRenderer);
    }
}
