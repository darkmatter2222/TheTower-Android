package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uh3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public uh3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        vl appPermissionsSignalSource = (vl) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(appPermissionsSignalSource, "appPermissionsSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.REQUIRED;
        qf3 qf3Var = qf3.ASYNC;
        ph3 ph3Var = ph3.BACKGROUND;
        appPermissionsSignalSource.getClass();
        return new jb2(appPermissionsSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.APP_PERMISSIONS));
    }
}
