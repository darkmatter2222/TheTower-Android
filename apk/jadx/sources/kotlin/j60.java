package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j60 implements jr0 {
    public final dw2 a;

    public j60(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        s93 safeBrowsingManager = (s93) this.a.get();
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        return new b50(safeBrowsingManager);
    }
}
