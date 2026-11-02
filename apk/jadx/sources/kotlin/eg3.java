package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eg3 implements oe3 {
    public final String a;

    public eg3(String str) {
        this.a = str;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.adResponseEncryptionKey = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof eg3) && Intrinsics.areEqual(this.a, ((eg3) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return "SignalGenerationResponseKeySignal(encryptionKey=" + this.a + ")";
    }
}
