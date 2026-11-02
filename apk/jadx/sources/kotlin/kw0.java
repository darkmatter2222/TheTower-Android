package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class kw0 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public kw0(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new jw0(do0.a(this.a), (tx) this.b.get());
    }
}
