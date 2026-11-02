package kotlin;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class gz1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public gz1(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new fz1((ix1) this.a.get(), (CoroutineScope) this.b.get());
    }
}
