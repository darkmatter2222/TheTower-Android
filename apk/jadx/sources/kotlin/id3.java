package kotlin;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class id3 implements oe3 {
    public final Bundle a;

    public id3(Bundle sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.a = sharedPreferences;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.sharedPreferenceSignals = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof id3) && Intrinsics.areEqual(this.a, ((id3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SharedPreferenceSignal(sharedPreferences=" + this.a + ")";
    }
}
