package kotlin;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class r91 {
    public static NativeAdRequest a(IconAdRequest iconAdRequest) {
        Intrinsics.checkNotNullParameter(iconAdRequest, "<this>");
        NativeAdRequest.Builder builder = new NativeAdRequest.Builder(iconAdRequest.getAdUnitId(), CollectionsKt.listOf(NativeAd.NativeAdType.NATIVE));
        if (iconAdRequest.getIsImageLoadingDisabled()) {
            builder.disableImageDownloading();
        }
        builder.setAdChoicesPlacement(iconAdRequest.getAdChoicesPlacement());
        if (iconAdRequest.getAdPersistenceEnabled()) {
            builder.setAdPersistenceEnabled();
        }
        return builder.build();
    }
}
