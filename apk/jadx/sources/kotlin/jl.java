package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jl implements jr0 {
    public final dw2 a;

    public jl(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        xk wrapper = (xk) this.a.get();
        Intrinsics.checkNotNullParameter(wrapper, "wrapper");
        return (rf) kq2.b(wrapper);
    }
}
