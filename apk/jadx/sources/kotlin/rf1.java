package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rf1 implements jr0 {
    public final dw2 a;

    public rf1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        kg1 inspectorSetApplicationStateGmsgHandler = (kg1) this.a.get();
        Intrinsics.checkNotNullParameter(inspectorSetApplicationStateGmsgHandler, "inspectorSetApplicationStateGmsgHandler");
        return new mf1(inspectorSetApplicationStateGmsgHandler);
    }
}
