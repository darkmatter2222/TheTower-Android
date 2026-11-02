package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wn0 implements oe3 {
    public final int a;

    public wn0(int i) {
        this.a = i;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.displayCount = Integer.valueOf(this.a);
    }
}
