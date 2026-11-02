package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public xi3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        zh2 packageInfoSignalSource = (zh2) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(packageInfoSignalSource, "packageInfoSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.ASYNC;
        ph3 ph3Var = ph3.BACKGROUND;
        packageInfoSignalSource.getClass();
        return new jb2(packageInfoSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.PACKAGE_INFO));
    }
}
