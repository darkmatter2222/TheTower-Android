package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h33 implements g33 {
    public g33 a;

    public h33(e33 refreshListener) {
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = refreshListener;
    }

    @Override // kotlin.g33
    public final Object a(boolean z, Continuation continuation) {
        Object objA;
        g33 g33Var = this.a;
        return (g33Var == null || (objA = g33Var.a(z, continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objA;
    }

    @Override // kotlin.g33
    public final Object b(Continuation continuation) {
        Object objB;
        g33 g33Var = this.a;
        return (g33Var == null || (objB = g33Var.b(continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objB;
    }

    @Override // kotlin.g33
    public final Object c(boolean z, Continuation continuation) {
        Object objC;
        g33 g33Var = this.a;
        return (g33Var == null || (objC = g33Var.c(z, continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objC;
    }

    @Override // kotlin.g33
    public final void f() {
        this.a = null;
    }
}
