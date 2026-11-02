package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bj3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public bj3(hn2 hn2Var, dw2 dw2Var) {
        this.a = hn2Var;
        this.b = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        gn2 phoneOrientationSignalSource = (gn2) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(phoneOrientationSignalSource, "phoneOrientationSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.OPTIONAL;
        qf3 qf3Var = qf3.ASYNC;
        ph3 ph3Var = ph3.BACKGROUND;
        phoneOrientationSignalSource.getClass();
        return new jb2(phoneOrientationSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.PHONE_ORIENTATION));
    }
}
