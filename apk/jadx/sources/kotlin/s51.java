package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s51 {
    public final AdRequest a;
    public final RequestConfiguration b;

    public /* synthetic */ s51(AdRequest adRequest) {
        this(adRequest, null);
    }

    public s51(AdRequest adRequest, RequestConfiguration requestConfiguration) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.a = adRequest;
        this.b = requestConfiguration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s51)) {
            return false;
        }
        s51 s51Var = (s51) obj;
        return Intrinsics.areEqual(this.a, s51Var.a) && Intrinsics.areEqual(this.b, s51Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        RequestConfiguration requestConfiguration = this.b;
        return iHashCode + (requestConfiguration == null ? 0 : requestConfiguration.hashCode());
    }

    public final String toString() {
        return "H5LoadParams(adRequest=" + this.a + ", requestConfiguration=" + this.b + ")";
    }
}
