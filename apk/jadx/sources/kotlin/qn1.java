package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qn1 implements jr0 {
    public final dw2 a;

    public qn1(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        AppStats appStats = (AppStats) this.a.get();
        Intrinsics.checkNotNullParameter(appStats, "appStats");
        return Integer.valueOf(appStats.priorRequestCount);
    }
}
