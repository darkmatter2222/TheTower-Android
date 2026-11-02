package kotlin;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class nx0 implements jr0 {
    public final dw2 a;

    public nx0(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return new mx0((CoroutineScope) this.a.get());
    }
}
