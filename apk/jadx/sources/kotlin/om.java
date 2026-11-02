package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class om implements jr0 {
    public final dw2 a;

    public om(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        o00 listener = (o00) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (gj1) kq2.b(listener);
    }
}
