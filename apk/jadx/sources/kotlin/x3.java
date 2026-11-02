package kotlin;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.PersonallyIdentifiableInformation;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x3 implements oe3 {
    public final AdvertisingIdClient.Info a;

    public x3(AdvertisingIdClient.Info info) {
        this.a = info;
    }

    @Override // kotlin.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        AdvertisingIdClient.Info info = this.a;
        if (info != null) {
            PersonallyIdentifiableInformation personallyIdentifiableInformation = signals.personallyIdentifiableInformation;
            personallyIdentifiableInformation.adId = info.getId();
            personallyIdentifiableInformation.isLimitedAdTracking = Boolean.valueOf(this.a.isLimitAdTrackingEnabled());
            personallyIdentifiableInformation.idTypeParameter = "adid";
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x3) && Intrinsics.areEqual(this.a, ((x3) obj).a);
    }

    public final int hashCode() {
        AdvertisingIdClient.Info info = this.a;
        if (info == null) {
            return 0;
        }
        return info.hashCode();
    }

    public final String toString() {
        return "AdIdInfoSignal(adIdInfo=" + this.a + ")";
    }
}
