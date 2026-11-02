package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAd;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdEventCallback;
import com.ironsource.C3510b4;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class j91 extends eq implements IconAd {
    public final l12 b;
    public final Image c;
    public final String d;
    public final String e;
    public final String f;
    public final Double g;
    public final AdChoicesInfo h;
    public final tn3 i;
    public static final /* synthetic */ KProperty[] k = {kk.a(j91.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;", 0)};
    public static final h91 j = new h91();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j91(l12 nativeAdImpl, Image icon) {
        super(nativeAdImpl.b());
        Intrinsics.checkNotNullParameter(nativeAdImpl, "nativeAdImpl");
        Intrinsics.checkNotNullParameter(icon, "icon");
        this.b = nativeAdImpl;
        this.c = icon;
        this.d = nativeAdImpl.getHeadline();
        this.e = nativeAdImpl.getCallToAction();
        this.f = (String) nativeAdImpl.b().getO().d.get(C3510b4.i.V);
        this.g = nativeAdImpl.getStarRating();
        this.h = nativeAdImpl.getAdChoicesInfo();
        this.i = new tn3(new i91(this), null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final AdChoicesInfo getAdChoicesInfo() {
        return this.h;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final IconAdEventCallback getAdEventCallback() {
        return (IconAdEventCallback) this.i.getValue(this, k[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final String getCallToAction() {
        return this.e;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final String getHeadline() {
        return this.d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final Image getIcon() {
        return this.c;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final String getPackageName() {
        return this.f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final Double getStarRating() {
        return this.g;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconAd
    public final void setAdEventCallback(IconAdEventCallback iconAdEventCallback) {
        this.i.setValue(this, k[0], iconAdEventCallback);
    }
}
