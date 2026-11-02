package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m60 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public m60(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        i2 adConfiguration = (i2) this.a.get();
        dw2 writeLocalStorageGmsgHandler = this.b;
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(writeLocalStorageGmsgHandler, "writeLocalStorageGmsgHandler");
        return new h50(adConfiguration, writeLocalStorageGmsgHandler);
    }
}
