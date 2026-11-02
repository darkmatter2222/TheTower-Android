package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l01 extends i01 {
    public final MediationAdError c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l01(MediationAdError mediationAdError) {
        super(kk1.MEDIATION_NO_FILL, 0);
        Intrinsics.checkNotNullParameter(mediationAdError, "mediationAdError");
        this.c = mediationAdError;
    }

    public final MediationAdError c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l01) && Intrinsics.areEqual(this.c, ((l01) obj).c);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return "InternalMediationAdError(mediationAdError=" + this.c + ")";
    }
}
