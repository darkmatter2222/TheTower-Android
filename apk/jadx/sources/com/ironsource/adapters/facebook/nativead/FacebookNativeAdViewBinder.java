package com.ironsource.adapters.facebook.nativead;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayMediaView;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdOptionsPosition;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookNativeAdViewBinder.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u0004\u0018\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, d2 = {"Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAd", "Lcom/facebook/ads/NativeAd;", "adOptionsPosition", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;", "<init>", "(Lcom/facebook/ads/NativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;)V", "mainHandler", "Landroid/os/Handler;", "nativeAdLayout", "Lcom/facebook/ads/NativeAdLayout;", "networkNativeAdView", "Landroid/view/ViewGroup;", "getNetworkNativeAdView", "()Landroid/view/ViewGroup;", "setNativeAdView", "", "nativeAdView", "Landroid/view/View;", "getAdOptionsLayoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookNativeAdViewBinder extends AdapterNativeAdViewBinder {
    private final AdOptionsPosition adOptionsPosition;
    private final Handler mainHandler;
    private final NativeAd nativeAd;
    private NativeAdLayout nativeAdLayout;

    /* JADX INFO: compiled from: FacebookNativeAdViewBinder.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdOptionsPosition.values().length];
            try {
                iArr[AdOptionsPosition.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdOptionsPosition.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdOptionsPosition.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdOptionsPosition.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FacebookNativeAdViewBinder(NativeAd nativeAd, AdOptionsPosition adOptionsPosition) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        Intrinsics.checkNotNullParameter(adOptionsPosition, "adOptionsPosition");
        this.nativeAd = nativeAd;
        this.adOptionsPosition = adOptionsPosition;
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    private final FrameLayout.LayoutParams getAdOptionsLayoutParams() {
        int i;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.adOptionsPosition.ordinal()];
        if (i2 == 1) {
            i = 51;
        } else if (i2 == 2) {
            i = 53;
        } else if (i2 == 3) {
            i = 83;
        } else {
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            i = 85;
        }
        layoutParams.gravity = i;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setNativeAdView$lambda$5(Context context, FacebookNativeAdViewBinder facebookNativeAdViewBinder, NativeAdLayout nativeAdLayout, View view, ArrayList arrayList) {
        MediaView mediaView = new MediaView(context);
        LevelPlayMediaView mediaView2 = facebookNativeAdViewBinder.getNativeAdViewHolder().getMediaView();
        if (mediaView2 != null) {
            mediaView2.addView(mediaView);
        }
        nativeAdLayout.addView(new AdOptionsView(context, facebookNativeAdViewBinder.nativeAd, nativeAdLayout), facebookNativeAdViewBinder.getAdOptionsLayoutParams());
        nativeAdLayout.addView(view);
        facebookNativeAdViewBinder.nativeAd.registerViewForInteraction(view, mediaView, arrayList);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public ViewGroup getNetworkNativeAdView() {
        return this.nativeAdLayout;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public void setNativeAdView(final View nativeAdView) {
        if (nativeAdView == null) {
            IronLog.INTERNAL.error(FacebookConstants.Logs.NATIVE_AD_VIEW_IS_NULL);
            return;
        }
        final Context context = nativeAdView.getContext();
        final NativeAdLayout nativeAdLayout = new NativeAdLayout(context);
        this.nativeAdLayout = nativeAdLayout;
        final ArrayList arrayList = new ArrayList();
        View titleView = getNativeAdViewHolder().getTitleView();
        if (titleView != null) {
            arrayList.add(titleView);
        }
        View advertiserView = getNativeAdViewHolder().getAdvertiserView();
        if (advertiserView != null) {
            arrayList.add(advertiserView);
        }
        View iconView = getNativeAdViewHolder().getIconView();
        if (iconView != null) {
            arrayList.add(iconView);
        }
        View bodyView = getNativeAdViewHolder().getBodyView();
        if (bodyView != null) {
            arrayList.add(bodyView);
        }
        View callToActionView = getNativeAdViewHolder().getCallToActionView();
        if (callToActionView != null) {
            arrayList.add(callToActionView);
        }
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdViewBinder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FacebookNativeAdViewBinder.setNativeAdView$lambda$5(context, this, nativeAdLayout, nativeAdView, arrayList);
            }
        });
    }
}
