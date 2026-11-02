package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m91 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public m91(n91 n91Var, dw2 dw2Var) {
        this.a = n91Var;
        this.b = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        l91 iconAdSignalSource = (l91) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(iconAdSignalSource, "iconAdSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.SEQUENTIAL;
        ph3 ph3Var = ph3.BACKGROUND;
        iconAdSignalSource.getClass();
        return new jb2(iconAdSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.ICON_AD));
    }
}
