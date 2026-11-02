package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h91 {
    public static px2 a(IconAdRequest iconAdRequest, int i) {
        a01.a.getClass();
        ai0 ai0Var = new ai0(((vf0) zz0.a()).c);
        iconAdRequest.getClass();
        ai0Var.j = iconAdRequest;
        ai0Var.k = iconAdRequest;
        ai0Var.c = iconAdRequest;
        ai0Var.b = iconAdRequest;
        Intrinsics.checkNotNullParameter(iconAdRequest, "<this>");
        String adUnitId = iconAdRequest.getAdUnitId();
        NativeAd.NativeAdType nativeAdType = NativeAd.NativeAdType.NATIVE;
        NativeAdRequest.Builder builder = new NativeAdRequest.Builder(adUnitId, CollectionsKt.listOf(nativeAdType));
        if (iconAdRequest.getIsImageLoadingDisabled()) {
            builder.disableImageDownloading();
        }
        builder.setAdChoicesPlacement(iconAdRequest.getAdChoicesPlacement());
        if (iconAdRequest.getAdPersistenceEnabled()) {
            builder.setAdPersistenceEnabled();
        }
        vz2 vz2VarA = ai0Var.a((NativeRequest) builder.build());
        Intrinsics.checkNotNullParameter(iconAdRequest, "<this>");
        NativeAdRequest.Builder builder2 = new NativeAdRequest.Builder(iconAdRequest.getAdUnitId(), CollectionsKt.listOf(nativeAdType));
        if (iconAdRequest.getIsImageLoadingDisabled()) {
            builder2.disableImageDownloading();
        }
        builder2.setAdChoicesPlacement(iconAdRequest.getAdChoicesPlacement());
        if (iconAdRequest.getAdPersistenceEnabled()) {
            builder2.setAdPersistenceEnabled();
        }
        return ((vz2) ((vz2) ((vz2) vz2VarA.a(builder2.build()).a(j53.g)).b(false)).a(false)).a(i).a().a();
    }

    public static void a(IconAdRequest adRequest, int i, AdLoadCallback adLoadCallback) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        px2 px2VarA = a(adRequest, i);
        a01.a.getClass();
        ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new f91(px2VarA, adLoadCallback, null));
    }
}
