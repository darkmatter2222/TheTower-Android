package kotlin;

import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.ExecutorsKt;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gz implements jr0 {
    public final dw2 a;

    public gz(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        sz concurrencyObjects = (sz) this.a.get();
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        return (CoroutineContext) kq2.b(ExecutorsKt.from((ExecutorService) concurrencyObjects.c).plus(new rs3()));
    }
}
