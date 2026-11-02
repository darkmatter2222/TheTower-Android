package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v50 implements jr0 {
    public final dw2 a;

    public v50(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        dy1 mraidGmsgHandler = (dy1) this.a.get();
        Intrinsics.checkNotNullParameter(mraidGmsgHandler, "mraidGmsgHandler");
        return new i50(mraidGmsgHandler);
    }
}
