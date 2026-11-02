package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ev0 implements jr0 {
    public final dw2 a;

    public ev0(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        r4 adMetadataGmsgHandler = (r4) this.a.get();
        Intrinsics.checkNotNullParameter(adMetadataGmsgHandler, "adMetadataGmsgHandler");
        return new i50(adMetadataGmsgHandler);
    }
}
