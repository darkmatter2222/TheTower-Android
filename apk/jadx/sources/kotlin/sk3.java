package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sk3 implements jr0 {
    public final dw2 a;

    public sk3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        ru canOpenAppGmsgHandler = (ru) this.a.get();
        Intrinsics.checkNotNullParameter(canOpenAppGmsgHandler, "canOpenAppGmsgHandler");
        return new qk3(canOpenAppGmsgHandler);
    }
}
