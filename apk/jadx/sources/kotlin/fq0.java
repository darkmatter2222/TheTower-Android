package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fq0 implements oe3 {
    public final String a;
    public final Long b;

    public fq0(String str, Long l) {
        this.a = str;
        this.b = l;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Long l;
        Intrinsics.checkNotNullParameter(signals, "signals");
        String str = this.a;
        if (str == null || (l = this.b) == null) {
            return;
        }
        signals.clientEoid = str;
        signals.clientEoidTimestampInMs = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fq0)) {
            return false;
        }
        fq0 fq0Var = (fq0) obj;
        return Intrinsics.areEqual(this.a, fq0Var.a) && Intrinsics.areEqual(this.b, fq0Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.b;
        return iHashCode + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "EoidSignal(eoid=" + this.a + ", timestampMs=" + this.b + ")";
    }
}
