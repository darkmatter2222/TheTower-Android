package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gr1 implements jr0 {
    public final dw2 a;

    public gr1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        lw3 updateConsentAllowlistGmsgHandler = (lw3) this.a.get();
        Intrinsics.checkNotNullParameter(updateConsentAllowlistGmsgHandler, "updateConsentAllowlistGmsgHandler");
        return new er1(updateConsentAllowlistGmsgHandler);
    }
}
