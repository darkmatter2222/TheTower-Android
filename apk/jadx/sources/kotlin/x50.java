package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x50 implements jr0 {
    public final dw2 a;

    public x50(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        ah2 openGmsgHandler = (ah2) this.a.get();
        Intrinsics.checkNotNullParameter(openGmsgHandler, "openGmsgHandler");
        return new i50(openGmsgHandler);
    }
}
