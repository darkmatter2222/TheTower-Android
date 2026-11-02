package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o43 implements oe3 {
    public final String a;

    public o43(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.a = requestId;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.requestId = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o43) && Intrinsics.areEqual(this.a, ((o43) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "RequestIdSignal(requestId=" + this.a + ")";
    }
}
