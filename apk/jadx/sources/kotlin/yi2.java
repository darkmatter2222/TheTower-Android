package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yi2 implements rh3 {
    public final m13 a;

    public yi2(m13 recursiveAdData) {
        Intrinsics.checkNotNullParameter(recursiveAdData, "recursiveAdData");
        this.a = recursiveAdData;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.PARENT_AD_CONFIG;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new xi2(this.a));
    }
}
