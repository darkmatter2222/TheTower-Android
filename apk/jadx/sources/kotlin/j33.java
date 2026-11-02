package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j33 implements jr0 {
    public final dw2 a;

    public j33(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        g23 refreshGmsgHandler = (g23) this.a.get();
        Intrinsics.checkNotNullParameter(refreshGmsgHandler, "refreshGmsgHandler");
        return new i50(refreshGmsgHandler);
    }
}
