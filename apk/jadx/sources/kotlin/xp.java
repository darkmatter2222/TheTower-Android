package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xp implements jr0 {
    public final dw2 a;

    public xp(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        u13 renderer = (u13) this.a.get();
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        return (j2) kq2.b(renderer);
    }
}
