package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gj3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public gj3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        pc3 sessionIdSignalSource = (pc3) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(sessionIdSignalSource, "sessionIdSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.OPTIONAL;
        qf3 qf3Var = qf3.ASYNC;
        ph3 ph3Var = ph3.BACKGROUND;
        sessionIdSignalSource.getClass();
        return new jb2(sessionIdSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.SESSION_ID));
    }
}
