package kotlin;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.ironsource.C3510b4;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class l12 extends eq implements NativeAd {
    public static final /* synthetic */ KProperty[] q = {kk.a(l12.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", 0)};
    public final InternalNativeAd b;
    public final tn3 c;
    public final String d;
    public final Image e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final Double j;
    public final String k;
    public final String l;
    public final Image m;
    public final Bundle n;
    public final AdChoicesInfo o;
    public final su1 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l12(InternalNativeAd internalNativeAd) {
        super(internalNativeAd);
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.b = internalNativeAd;
        this.c = new tn3(new k12(this), null);
        this.d = (String) internalNativeAd.getO().d.get("headline");
        km1 km1Var = internalNativeAd.getO().f;
        this.e = km1Var != null ? km1Var.a() : null;
        this.f = (String) internalNativeAd.getO().d.get(C3510b4.i.E0);
        this.g = (String) internalNativeAd.getO().d.get("call_to_action");
        this.h = (String) internalNativeAd.getO().d.get(C3510b4.i.F0);
        this.i = (String) internalNativeAd.getO().d.get("creative_summary");
        this.j = internalNativeAd.getO().e;
        this.k = (String) internalNativeAd.getO().d.get("store");
        this.l = (String) internalNativeAd.getO().d.get("price");
        km1 km1Var2 = internalNativeAd.getO().g;
        this.m = km1Var2 != null ? km1Var2.a() : null;
        this.n = internalNativeAd.getO().r;
        ak1 ak1Var = internalNativeAd.getO().h;
        this.o = ak1Var != null ? bk1.a(ak1Var) : null;
        this.p = new su1(internalNativeAd);
        internalNativeAd.v();
        internalNativeAd.m();
    }

    public final InternalNativeAd b() {
        return this.b;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void enableCustomClickGesture() {
        this.b.n();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final AdChoicesInfo getAdChoicesInfo() {
        return this.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final NativeAdEventCallback getAdEventCallback() {
        return (NativeAdEventCallback) this.c.getValue(this, q[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getAdvertiser() {
        return this.h;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getBody() {
        return this.f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getCallToAction() {
        return this.g;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getCreativeSummary() {
        return this.i;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final Bundle getExtras() {
        return this.n;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getHeadline() {
        return this.d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final Image getIcon() {
        return this.m;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final Image getImage() {
        return this.e;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final MediaContent getMediaContent() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getPrice() {
        return this.l;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final Double getStarRating() {
        return this.j;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getStore() {
        return this.k;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        return this.b.u();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void performClick(Bundle clickData) {
        Intrinsics.checkNotNullParameter(clickData, "clickData");
        this.b.a(clickData);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void recordCustomClickGesture() {
        this.b.x();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void recordEvent(Bundle signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        this.b.b(signals);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final boolean recordImpression(Bundle impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        return this.b.c(impressionData);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void reportTouchEvent(Bundle touchEventData) {
        Intrinsics.checkNotNullParameter(touchEventData, "touchEventData");
        this.b.d(touchEventData);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void setAdEventCallback(NativeAdEventCallback nativeAdEventCallback) {
        this.c.setValue(this, q[0], nativeAdEventCallback);
    }
}
