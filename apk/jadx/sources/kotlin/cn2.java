package kotlin;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class cn2 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public cn2(ol0 ol0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new bn2((CoroutineScope) this.a.get(), (ex0) this.b.get());
    }
}
