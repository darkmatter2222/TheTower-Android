package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k50 implements jr0 {
    public final dw2 a;

    public k50(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        ck appEventGmsgHandler = (ck) this.a.get();
        Intrinsics.checkNotNullParameter(appEventGmsgHandler, "appEventGmsgHandler");
        return new i50(appEventGmsgHandler);
    }
}
