package kotlin;

import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gp implements by1 {
    public final g33 a;
    public final AtomicBoolean b;

    public gp(g33 refreshListener) {
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = refreshListener;
        this.b = new AtomicBoolean(false);
    }

    @Override // kotlin.by1
    public final Object d(Continuation continuation) {
        Object objB;
        return (this.b.compareAndSet(false, true) && (objB = this.a.b(continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objB : p005kotlin.Unit.INSTANCE;
    }
}
