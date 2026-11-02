package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p72 implements ai1 {
    public final n72 a;

    public p72(n72 nativeOnePointFiveOverlayFactory) {
        Intrinsics.checkNotNullParameter(nativeOnePointFiveOverlayFactory, "nativeOnePointFiveOverlayFactory");
        this.a = nativeOnePointFiveOverlayFactory;
    }

    @Override // kotlin.ai1
    public final Object a(Continuation continuation) {
        n72 n72Var = this.a;
        n72Var.getClass();
        Object objB = n72.b(n72Var, continuation);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }
}
