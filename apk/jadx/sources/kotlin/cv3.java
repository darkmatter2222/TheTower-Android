package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cv3 implements jr0 {
    public final dw2 a;

    public cv3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        hy closeGmsgHandler = (hy) this.a.get();
        Intrinsics.checkNotNullParameter(closeGmsgHandler, "closeGmsgHandler");
        return new yu3(closeGmsgHandler);
    }
}
