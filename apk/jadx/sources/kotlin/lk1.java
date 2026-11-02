package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lk1 {
    public static AdLoadResult a(xz1 internalAd) {
        Intrinsics.checkNotNullParameter(internalAd, "internalAd");
        if (internalAd instanceof vz1) {
            return new AdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INTERNAL_ERROR, "Invalid native ad response, icon ad requests should never return a banner ad.", ((vz1) internalAd).a.getResponseInfo()));
        }
        if (!(internalAd instanceof wz1)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        wz1 wz1Var = (wz1) internalAd;
        km1 km1Var = wz1Var.a.getO().g;
        if (km1Var != null) {
            return new AdLoadResult.Success(new j91(new l12(wz1Var.a), km1Var.a()));
        }
        InternalNativeAd internalAd2 = wz1Var.a;
        Intrinsics.checkNotNullParameter(internalAd2, "internalAd");
        return new AdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INVALID_AD_RESPONSE, "Icon ad response does not contain icon", internalAd2.getResponseInfo()));
    }
}
