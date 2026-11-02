package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ij3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ij3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        kl3 staticDeviceSignalSource = (kl3) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(staticDeviceSignalSource, "staticDeviceSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.ASYNC;
        ph3 ph3Var = ph3.BACKGROUND;
        staticDeviceSignalSource.getClass();
        return new jb2(staticDeviceSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.STATIC_DEVICE));
    }
}
