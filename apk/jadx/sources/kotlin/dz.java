package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dz implements jr0 {
    public final dw2 a;

    public dz(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        fm0 listener = (fm0) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (h73) kq2.b(listener);
    }
}
