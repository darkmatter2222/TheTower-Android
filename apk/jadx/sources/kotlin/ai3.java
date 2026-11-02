package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ai3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ai3(nb nbVar, dw2 dw2Var) {
        this.a = nbVar;
        this.b = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        mb adSizeSignalSource = (mb) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(adSizeSignalSource, "adSizeSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.SEQUENTIAL;
        ph3 ph3Var = ph3.BACKGROUND;
        adSizeSignalSource.getClass();
        return new jb2(adSizeSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.AD_SIZE));
    }
}
