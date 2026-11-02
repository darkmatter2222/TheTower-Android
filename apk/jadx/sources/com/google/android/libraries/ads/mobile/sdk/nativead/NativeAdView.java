package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdAssetViewContainer;
import com.google.common.base.Splitter;
import kotlin.f01;
import kotlin.l12;
import kotlin.m32;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\u0018\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dR(\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R.\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR(\u0010 \u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u0011\"\u0004\b\"\u0010\u0013R(\u0010#\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013¨\u0006*"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "value", "Landroid/view/View;", "advertiserView", "getAdvertiserView", "()Landroid/view/View;", "setAdvertiserView", "(Landroid/view/View;)V", "bodyView", "getBodyView", "setBodyView", "creativeSummaryView", "getCreativeSummaryView$annotations", "()V", "getCreativeSummaryView", "setCreativeSummaryView", "mediaView", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;", "getMediaView", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;", "priceView", "getPriceView", "setPriceView", "storeView", "getStoreView", "setStoreView", "registerNativeAd", "", "ad", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NativeAdView extends BaseAdAssetViewContainer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdView(Context context, AttributeSet attrs, int i, int i2) {
        super(context, attrs, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    public final View getAdvertiserView() {
        return getNativeAdViewContainer().b("3005");
    }

    public final View getBodyView() {
        return getNativeAdViewContainer().b("3004");
    }

    public final View getCreativeSummaryView() {
        return getNativeAdViewContainer().b(NativeAdAssetNames.ASSET_CREATIVE_SUMMARY);
    }

    public final MediaView getMediaView() {
        View viewB = getNativeAdViewContainer().b("3010");
        if (viewB instanceof MediaView) {
            return (MediaView) viewB;
        }
        return null;
    }

    public final View getPriceView() {
        return getNativeAdViewContainer().b("3007");
    }

    public final View getStoreView() {
        return getNativeAdViewContainer().b("3006");
    }

    public final void registerNativeAd(NativeAd ad, MediaView mediaView) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        getNativeAdViewContainer().a(mediaView, "3010");
        if (mediaView != null) {
            mediaView.a(new m32(this));
        }
        if (ad instanceof l12) {
            getNativeAdViewContainer().a(((l12) ad).b);
        } else {
            Splitter splitter = f01.a;
            f01.c("Internal Error: Cannot display Native Ad", null);
        }
    }

    public final void setAdvertiserView(View view) {
        getNativeAdViewContainer().a(view, "3005");
    }

    public final void setBodyView(View view) {
        getNativeAdViewContainer().a(view, "3004");
    }

    public final void setCreativeSummaryView(View view) {
        getNativeAdViewContainer().a(view, NativeAdAssetNames.ASSET_CREATIVE_SUMMARY);
    }

    public final void setPriceView(View view) {
        getNativeAdViewContainer().a(view, "3007");
    }

    public final void setStoreView(View view) {
        getNativeAdViewContainer().a(view, "3006");
    }
}
