package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f60 implements jr0 {
    public final dw2 a;

    public f60(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        v3 adEventEmitter = (v3) this.a.get();
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        return new s40(adEventEmitter);
    }
}
