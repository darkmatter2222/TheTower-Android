package kotlin;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class rs0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public rs0(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new qs0((ls0) this.a.get(), (CoroutineScope) this.b.get(), (ex0) this.c.get());
    }
}
