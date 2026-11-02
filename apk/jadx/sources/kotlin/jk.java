package kotlin;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class jk implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public jk(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new ek((Context) this.a.get(), (ja1) this.b.get());
    }
}
