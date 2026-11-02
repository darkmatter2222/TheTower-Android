package kotlin;

import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class sn3 implements jr0 {
    public final dw2 a;

    public sn3(sh0 sh0Var) {
        this.a = sh0Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new qn3((Optional) this.a.get());
    }
}
