package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n50 implements jr0 {
    public final dw2 a = dv.a;

    @Override // kotlin.cw2
    public final Object get() {
        cv canOpenUrlsGmsgHandler = (cv) this.a.get();
        Intrinsics.checkNotNullParameter(canOpenUrlsGmsgHandler, "canOpenUrlsGmsgHandler");
        return new i50(canOpenUrlsGmsgHandler);
    }
}
