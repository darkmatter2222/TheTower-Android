package kotlin;

import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oz1 {
    public final zx1 a;

    public oz1(zx1 mraidEventEmitter) {
        Intrinsics.checkNotNullParameter(mraidEventEmitter, "mraidEventEmitter");
        this.a = mraidEventEmitter;
    }

    public final p005kotlin.Unit a(cy1 cy1Var) {
        Object objD = this.a.d(cy1Var);
        if (objD != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objD = p005kotlin.Unit.INSTANCE;
        }
        return (p005kotlin.Unit) objD;
    }
}
