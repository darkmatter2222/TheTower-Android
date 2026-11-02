package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.Image;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.DisplayOpenMeasurement;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.OnCustomClickListener;
import java.util.Set;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class nc0 extends eq implements CustomNativeAd {
    public static final /* synthetic */ KProperty[] g = {kk.a(nc0.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", 0), kk.a(nc0.class, "onCustomClickListener", "getOnCustomClickListener()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;", 0)};
    public final InternalNativeAd b;
    public final tn3 c;
    public final tn3 d;
    public final String e;
    public final su1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nc0(InternalNativeAd internalNativeAd) {
        super(internalNativeAd);
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.b = internalNativeAd;
        this.c = new tn3(new lc0(this), null);
        this.d = new tn3(new mc0(this), null);
        this.e = internalNativeAd.getO().c;
        this.f = new su1(internalNativeAd);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final NativeAdEventCallback getAdEventCallback() {
        return (NativeAdEventCallback) this.c.getValue(this, g[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final Set getAssetNameSet() {
        Set mutableSet = CollectionsKt.toMutableSet(CollectionsKt.union(this.b.getO().d.keySet(), this.b.getO().i.keySet()));
        if (this.b.getO().j != null) {
            mutableSet.add("_videoMediaView");
        }
        return CollectionsKt.toSet(mutableSet);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final String getCustomFormatId() {
        return this.e;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final DisplayOpenMeasurement getDisplayOpenMeasurement() {
        return this.b.getP().f();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final Image getImage(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        km1 km1Var = (km1) this.b.getO().i.get(assetName);
        if (km1Var != null) {
            return km1Var.a();
        }
        return null;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final MediaContent getMediaContent() {
        return this.f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final OnCustomClickListener getOnCustomClickListener() {
        return (OnCustomClickListener) this.d.getValue(this, g[1]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final String getText(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        return (String) this.b.getO().d.get(assetName);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final void performClick(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        this.b.getP().a(assetName);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final void recordImpression() {
        j12 p = this.b.getP();
        if (p.a.getAndSet(true)) {
            return;
        }
        p.b();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final void setAdEventCallback(NativeAdEventCallback nativeAdEventCallback) {
        this.c.setValue(this, g[0], nativeAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd
    public final void setOnCustomClickListener(OnCustomClickListener onCustomClickListener) {
        this.d.setValue(this, g[1], onCustomClickListener);
    }
}
