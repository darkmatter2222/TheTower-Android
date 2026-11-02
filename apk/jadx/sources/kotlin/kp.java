package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kp extends xt2 {
    public final wy2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kp(ck1 ad, wy2 adLoader) {
        super(ad);
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.b = adLoader;
    }
}
