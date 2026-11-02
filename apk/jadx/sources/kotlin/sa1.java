package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sa1 implements lm0 {
    public final /* synthetic */ gl2 a;
    public final /* synthetic */ im2 b;

    public sa1(gl2 gl2Var, im2 im2Var) {
        this.a = gl2Var;
        this.b = im2Var;
    }

    @Override // kotlin.lm0
    public final p005kotlin.Unit a() {
        gl2 gl2Var = this.a;
        im2 manager = this.b;
        gl2Var.getClass();
        Intrinsics.checkNotNullParameter(manager, "manager");
        gl2Var.g = manager;
        return p005kotlin.Unit.INSTANCE;
    }
}
