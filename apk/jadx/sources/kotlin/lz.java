package kotlin;

import kotlinx.coroutines.Dispatchers;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lz implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public lz(dw2 dw2Var, ol0 ol0Var) {
        this.a = dw2Var;
        this.b = ol0Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        sz concurrencyObjects = (sz) this.a.get();
        c01 exceptionHandler = (c01) this.b.get();
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(exceptionHandler, "exceptionHandler");
        return (CoroutineContext) kq2.b(Dispatchers.getMain().plus(exceptionHandler).plus(new rs3()));
    }
}
