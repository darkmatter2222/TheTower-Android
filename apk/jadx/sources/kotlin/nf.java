package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nf implements oe3 {
    public final Map a;

    public nf(Map adapterNameToVersionsMap) {
        Intrinsics.checkNotNullParameter(adapterNameToVersionsMap, "adapterNameToVersionsMap");
        this.a = adapterNameToVersionsMap;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.adapterVersionData.putAll(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nf) && Intrinsics.areEqual(this.a, ((nf) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "AdapterVersionsSignal(adapterNameToVersionsMap=" + this.a + ")";
    }
}
