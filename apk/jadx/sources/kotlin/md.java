package kotlin;

import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class md implements ld {
    public final v3 a;
    public final AtomicBoolean b;

    public md(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
        this.b = new AtomicBoolean(false);
    }

    @Override // kotlin.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        if (!ey3Var.b || !this.b.compareAndSet(false, true)) {
            return p005kotlin.Unit.INSTANCE;
        }
        Object objR = this.a.r(continuation);
        return objR == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : p005kotlin.Unit.INSTANCE;
    }
}
