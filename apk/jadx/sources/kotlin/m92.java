package kotlin;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class m92 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public m92(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new l92((xf) this.a.get(), (yw1) this.b.get(), (Map) this.c.get(), (ts3) this.d.get());
    }
}
