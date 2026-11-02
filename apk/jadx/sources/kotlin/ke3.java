package kotlin;

import p005kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class ke3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ke3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new je3((CoroutineContext) this.a.get(), (j12) this.b.get());
    }
}
