package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sn1 implements jr0 {
    public final dw2 a;

    public sn1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        r04 listener = (r04) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (gj1) kq2.b(listener);
    }
}
