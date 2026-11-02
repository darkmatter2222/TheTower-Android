package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w73 implements jr0 {
    public final dw2 a;

    public w73(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        v63 rewardedAdRenderer = (v63) this.a.get();
        Intrinsics.checkNotNullParameter(rewardedAdRenderer, "rewardedAdRenderer");
        return (j2) kq2.b(rewardedAdRenderer);
    }
}
