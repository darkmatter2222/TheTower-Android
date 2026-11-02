package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dj3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public dj3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        p43 requestIdSignalSource = (p43) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(requestIdSignalSource, "requestIdSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.SEQUENTIAL;
        ph3 ph3Var = ph3.BACKGROUND;
        requestIdSignalSource.getClass();
        return new jb2(requestIdSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.REQUEST_ID));
    }
}
