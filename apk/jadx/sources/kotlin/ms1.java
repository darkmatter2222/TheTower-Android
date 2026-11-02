package kotlin;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ms1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ms1(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new ls1((Executor) this.a.get(), (tx) this.b.get());
    }
}
