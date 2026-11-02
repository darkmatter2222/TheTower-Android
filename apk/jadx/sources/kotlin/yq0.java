package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class yq0 implements oe3 {
    public final String a;

    public yq0(String experimentIds) {
        Intrinsics.checkNotNullParameter(experimentIds, "experimentIds");
        this.a = experimentIds;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (StringsKt.isBlank(this.a)) {
            return;
        }
        signals.experimentIds = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yq0) && Intrinsics.areEqual(this.a, ((yq0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ExperimentIdsSignal(experimentIds=" + this.a + ")";
    }
}
