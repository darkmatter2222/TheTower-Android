package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g60 implements jr0 {
    public final dw2 a;

    public g60(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        od adViewabilityMonitor = (od) this.a.get();
        Intrinsics.checkNotNullParameter(adViewabilityMonitor, "adViewabilityMonitor");
        return new t40(adViewabilityMonitor);
    }
}
