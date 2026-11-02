package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wk3 implements jr0 {
    public final dw2 a;

    public wk3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        l53 resetPaidGmsgHandler = (l53) this.a.get();
        Intrinsics.checkNotNullParameter(resetPaidGmsgHandler, "resetPaidGmsgHandler");
        return new qk3(resetPaidGmsgHandler);
    }
}
