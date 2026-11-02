package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oj1 implements jr0 {
    public final dw2 a;

    public oj1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        md1 listener = (md1) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (li1) kq2.b(listener);
    }
}
