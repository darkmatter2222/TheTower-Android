package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q50 implements jr0 {
    public final dw2 a;

    public q50(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        mx0 fluidHeightGmsgHandler = (mx0) this.a.get();
        Intrinsics.checkNotNullParameter(fluidHeightGmsgHandler, "fluidHeightGmsgHandler");
        return new i50(fluidHeightGmsgHandler);
    }
}
