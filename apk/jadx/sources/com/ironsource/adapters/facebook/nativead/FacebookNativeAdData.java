package com.ironsource.adapters.facebook.nativead;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookNativeAdData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u0004\u0018\u00010\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000bR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdData;", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "nativeAd", "Lcom/facebook/ads/NativeAd;", "iconDrawable", "Landroid/graphics/drawable/Drawable;", "<init>", "(Lcom/facebook/ads/NativeAd;Landroid/graphics/drawable/Drawable;)V", "title", "", "getTitle", "()Ljava/lang/String;", C3510b4.i.F0, "getAdvertiser", C3510b4.i.E0, "getBody", "callToAction", "getCallToAction", C3510b4.i.H0, "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;", "getIcon", "()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookNativeAdData extends AdapterNativeAdData {
    private Drawable iconDrawable;
    private final NativeAd nativeAd;

    public FacebookNativeAdData(NativeAd nativeAd, Drawable drawable) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        this.nativeAd = nativeAd;
        this.iconDrawable = drawable;
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getAdvertiser() {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(FacebookConstants.Logs.NATIVE_ADVERTISER, Arrays.copyOf(new Object[]{this.nativeAd.getAdvertiserName()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        return this.nativeAd.getAdvertiserName();
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getBody() {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(FacebookConstants.Logs.NATIVE_BODY, Arrays.copyOf(new Object[]{this.nativeAd.getAdBodyText()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        return this.nativeAd.getAdBodyText();
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getCallToAction() {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(FacebookConstants.Logs.NATIVE_CTA, Arrays.copyOf(new Object[]{this.nativeAd.getAdCallToAction()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        return this.nativeAd.getAdCallToAction();
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public NativeAdDataInterface.Image getIcon() {
        String url;
        NativeAdBase.Image adIcon = this.nativeAd.getAdIcon();
        Uri uri = (adIcon == null || (url = adIcon.getUrl()) == null) ? null : Uri.parse(url);
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(FacebookConstants.Logs.NATIVE_ICON_URI, Arrays.copyOf(new Object[]{uri}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        Drawable preloadedIconViewDrawable = this.nativeAd.getPreloadedIconViewDrawable();
        if (preloadedIconViewDrawable != null) {
            this.iconDrawable = preloadedIconViewDrawable;
        }
        return new NativeAdDataInterface.Image(this.iconDrawable, uri);
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getTitle() {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(FacebookConstants.Logs.NATIVE_TITLE, Arrays.copyOf(new Object[]{this.nativeAd.getAdHeadline()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        return this.nativeAd.getAdHeadline();
    }
}
