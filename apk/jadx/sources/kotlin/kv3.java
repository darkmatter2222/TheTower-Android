package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kv3 implements jr0 {
    public final dw2 a;

    public kv3(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        tm2 persistentSdkCoreDataGmsgHandler = (tm2) this.a.get();
        Intrinsics.checkNotNullParameter(persistentSdkCoreDataGmsgHandler, "persistentSdkCoreDataGmsgHandler");
        return new yu3(persistentSdkCoreDataGmsgHandler);
    }
}
