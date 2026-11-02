package kotlin;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class db3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public db3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new cb3((CoroutineScope) this.a.get(), do0.a(this.b), (tx) this.c.get());
    }
}
