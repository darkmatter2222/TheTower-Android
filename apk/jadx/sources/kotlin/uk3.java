package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uk3 implements jr0 {
    public final dw2 a;

    public uk3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        k81 httpTrackGmsgHandler = (k81) this.a.get();
        Intrinsics.checkNotNullParameter(httpTrackGmsgHandler, "httpTrackGmsgHandler");
        return new qk3(httpTrackGmsgHandler);
    }
}
