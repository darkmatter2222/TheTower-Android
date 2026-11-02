package com.applovin.impl;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.ironsource.Yf;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends r3 implements AdControlButton.a, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, w.a {
    private com.applovin.impl.sdk.l b;
    private n c;
    private o8 d;
    private m e;
    private MaxAdView f;
    private MaxInterstitialAd g;
    private MaxAppOpenAd h;
    private MaxRewardedAd i;
    private MaxNativeAdView j;
    private MaxNativeAdLoader k;
    private MaxAd l;
    private r m;
    private List n;
    private ListView o;
    private View p;
    private AdControlButton q;
    private TextView r;
    private w s;

    class a extends MaxNativeAdListener {
        a() {
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(MaxAd maxAd) {
            l.this.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(String str, MaxError maxError) {
            l.this.onAdLoadFailed(str, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
            if (l.this.l != null) {
                l.this.k.destroy(l.this.l);
            }
            l.this.l = maxAd;
            l.this.k.render(l.this.j, maxAd);
            l.this.onAdLoaded(maxAd);
        }
    }

    private String a() {
        if (this.b.u0().c()) {
            return "Not supported while Test Mode is enabled";
        }
        return this.e.j() != this.c.f() ? "This waterfall is not targeted for the current device" : "Tap to load an ad";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        this.m = null;
    }

    private void a(ViewGroup viewGroup, AppLovinSdkUtils.Size size) {
        if (this.m != null) {
            return;
        }
        r rVar = new r(viewGroup, size, this);
        this.m = rVar;
        rVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.l$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.a(dialogInterface);
            }
        });
        this.m.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final com.applovin.impl.sdk.l lVar, final n nVar, final o oVar, n2 n2Var, final v2 v2Var) {
        if (v2Var instanceof m.b) {
            d.a(this, MaxDebuggerAdUnitDetailActivity.class, lVar.e(), new d.b() { // from class: com.applovin.impl.l$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    l.a(v2Var, nVar, oVar, lVar, (MaxDebuggerAdUnitDetailActivity) activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(v2 v2Var, n nVar, o oVar, com.applovin.impl.sdk.l lVar, MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
        maxDebuggerAdUnitDetailActivity.initialize(nVar, oVar, ((m.b) v2Var).v(), lVar);
    }

    private void a(MaxAdFormat maxAdFormat) {
        StringBuilder sbAppend = new StringBuilder("Loading live ").append(maxAdFormat.getDisplayName()).append(" Ad from ");
        o8 o8Var = this.d;
        com.applovin.impl.sdk.p.g("MaxDebuggerAdUnitDetailActivity", sbAppend.append(o8Var != null ? o8Var.b().a() : this.e.j().c()).toString());
        if (this.d != null) {
            this.b.u0().a(this.d.b().b());
        }
        if (maxAdFormat.isAdViewAd()) {
            this.f.setPlacement("[Mediation Debugger Live Ad]");
            this.f.loadAd();
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == this.c.a()) {
            this.g.loadAd();
            return;
        }
        if (MaxAdFormat.APP_OPEN == this.c.a()) {
            this.h.loadAd();
            return;
        }
        if (MaxAdFormat.REWARDED == this.c.a()) {
            this.i.loadAd();
        } else if (MaxAdFormat.NATIVE != this.c.a()) {
            u7.a("Live ads currently unavailable for ad format", this);
        } else {
            this.k.setPlacement("[Mediation Debugger Live Ad]");
            this.k.loadAd();
        }
    }

    private void b() {
        String strC = this.c.c();
        if (this.c.a().isAdViewAd()) {
            MaxAdView maxAdView = new MaxAdView(strC, this.c.a());
            this.f = maxAdView;
            maxAdView.setExtraParameter("adaptive_banner", "false");
            this.f.setExtraParameter("disable_auto_retries", "true");
            this.f.setExtraParameter("disable_precache", "true");
            this.f.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.f.stopAutoRefresh();
            this.f.setListener(this);
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == this.c.a()) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(strC);
            this.g = maxInterstitialAd;
            maxInterstitialAd.setExtraParameter("disable_auto_retries", "true");
            this.g.setListener(this);
            return;
        }
        if (MaxAdFormat.APP_OPEN == this.c.a()) {
            MaxAppOpenAd maxAppOpenAd = new MaxAppOpenAd(strC);
            this.h = maxAppOpenAd;
            maxAppOpenAd.setExtraParameter("disable_auto_retries", "true");
            this.h.setListener(this);
            return;
        }
        if (MaxAdFormat.REWARDED == this.c.a()) {
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(strC);
            this.i = maxRewardedAd;
            maxRewardedAd.setExtraParameter("disable_auto_retries", "true");
            this.i.setListener(this);
            return;
        }
        if (MaxAdFormat.NATIVE == this.c.a()) {
            this.j = new MaxNativeAdView(new MaxNativeAdViewBinder.Builder(R.layout.max_native_ad_template_1).setTitleTextViewId(R.id.applovin_native_title_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setCallToActionButtonId(R.id.applovin_native_cta_button).setIconImageViewId(R.id.applovin_native_icon_image_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setStarRatingContentViewGroupId(R.id.applovin_native_star_rating_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).build(), com.applovin.impl.sdk.l.p());
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(strC);
            this.k = maxNativeAdLoader;
            maxNativeAdLoader.setExtraParameter("disable_auto_retries", "true");
            this.k.setNativeAdListener(new a());
            this.k.setRevenueListener(this);
        }
    }

    private void b(MaxAdFormat maxAdFormat) {
        StringBuilder sbAppend = new StringBuilder("Showing live ").append(maxAdFormat.getDisplayName()).append(" Ad from ");
        o8 o8Var = this.d;
        com.applovin.impl.sdk.p.g("MaxDebuggerAdUnitDetailActivity", sbAppend.append(o8Var != null ? o8Var.b().a() : this.e.j().c()).toString());
        if (maxAdFormat.isAdViewAd()) {
            a(this.f, maxAdFormat.getSize());
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == this.c.a()) {
            this.g.showAd("[Mediation Debugger Live Ad]");
            return;
        }
        if (MaxAdFormat.APP_OPEN == this.c.a()) {
            this.h.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED == this.c.a()) {
            this.i.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.NATIVE == this.c.a()) {
            a(this.j, MaxAdFormat.MREC.getSize());
        }
    }

    @Override // com.applovin.impl.r3
    protected com.applovin.impl.sdk.l getSdk() {
        return this.b;
    }

    public void initialize(final n nVar, final o oVar, o8 o8Var, final com.applovin.impl.sdk.l lVar) {
        List listA;
        this.b = lVar;
        this.c = nVar;
        this.d = o8Var;
        this.n = lVar.u0().b();
        m mVar = new m(nVar, oVar, o8Var, this);
        this.e = mVar;
        mVar.a(new w2.a() { // from class: com.applovin.impl.l$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.w2.a
            public final void a(n2 n2Var, v2 v2Var) {
                this.f$0.a(lVar, nVar, oVar, n2Var, v2Var);
            }
        });
        b();
        if (nVar.f().f() && ((o8Var == null || o8Var.b().d().C()) && (listA = lVar.W().a(nVar.c())) != null && !listA.isEmpty())) {
            this.s = new w(listA, nVar.a(), getApplicationContext(), this);
        }
        markInitialized();
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(MaxAd maxAd) {
        u7.a(Yf.f, maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(MaxAd maxAd) {
        u7.a("onAdCollapsed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        this.q.setControlState(AdControlButton.b.LOAD);
        this.r.setText("");
        u7.a("Failed to display " + maxAd.getFormat().getDisplayName(), "MAX Error\nCode: " + maxError.getCode() + "\nMessage: " + maxError.getMessage() + "\n\n" + maxAd.getNetworkName() + " Display Error\nCode: " + maxError.getMediatedNetworkErrorCode() + "\nMessage: " + maxError.getMediatedNetworkErrorMessage(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(MaxAd maxAd) {
        u7.a("onAdDisplayed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(MaxAd maxAd) {
        u7.a("onAdExpanded", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(MaxAd maxAd) {
        u7.a("onAdHidden", maxAd, this);
    }

    @Override // com.applovin.impl.w.a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.f.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.g.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.h.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.i.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.k.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(String str, MaxError maxError) {
        this.q.setControlState(AdControlButton.b.LOAD);
        this.r.setText("");
        if (204 == maxError.getCode()) {
            u7.a("No Fill", "No fills often happen in live environments. Please make sure to use the Mediation Debugger test mode before you go live.", this);
        } else {
            u7.a("", "Failed to load with error code: " + maxError.getCode(), this);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        this.r.setText(maxAd.getNetworkName() + " ad loaded");
        this.q.setControlState(AdControlButton.b.SHOW);
        if (maxAd.getFormat().isAdViewAd()) {
            a(this.f, maxAd.getFormat().getSize());
        } else if (MaxAdFormat.NATIVE == this.c.a()) {
            a(this.j, MaxAdFormat.MREC.getSize());
        }
    }

    @Override // com.applovin.impl.w.a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.h.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.i.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.k.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        u7.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        if (this.b.u0().c()) {
            u7.a("Not Supported", "Ad loads are not supported while Test Mode is enabled. Please restart the app.", this);
            return;
        }
        if (this.e.j() != this.c.f()) {
            u7.a("Not Supported", "You cannot load an ad from this waterfall because it does not target the current device. To load an ad, please select the targeted waterfall.", this);
            return;
        }
        MaxAdFormat maxAdFormatA = this.c.a();
        AdControlButton.b bVar = AdControlButton.b.LOAD;
        if (bVar == adControlButton.getControlState()) {
            adControlButton.setControlState(AdControlButton.b.LOADING);
            w wVar = this.s;
            if (wVar != null) {
                wVar.a();
                return;
            } else {
                a(maxAdFormatA);
                return;
            }
        }
        if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
            if (!maxAdFormatA.isAdViewAd() && maxAdFormatA != MaxAdFormat.NATIVE) {
                adControlButton.setControlState(bVar);
            }
            b(maxAdFormatA);
        }
    }

    @Override // com.applovin.impl.r3, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!isInitialized()) {
            finish();
            return;
        }
        setContentView(R.layout.mediation_debugger_ad_unit_detail_activity);
        setTitle(this.e.k());
        this.o = (ListView) findViewById(R.id.listView);
        this.p = findViewById(R.id.ad_presenter_view);
        this.q = (AdControlButton) findViewById(R.id.ad_control_button);
        this.r = (TextView) findViewById(R.id.status_textview);
        this.o.setAdapter((ListAdapter) this.e);
        this.r.setText(a());
        this.r.setTypeface(Typeface.DEFAULT_BOLD);
        this.q.setOnClickListener(this);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setPadding(0, 10, 0, 0);
        shapeDrawable.getPaint().setColor(-1);
        shapeDrawable.getPaint().setShadowLayer(10, 0.0f, -10, 855638016);
        shapeDrawable.setShape(new RectShape());
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable});
        layerDrawable.setLayerInset(0, 0, 10, 0, 0);
        this.p.setBackground(layerDrawable);
    }

    @Override // com.applovin.impl.r3, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.d != null) {
            this.b.u0().a(this.n);
        }
        MaxAdView maxAdView = this.f;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.g;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxAppOpenAd maxAppOpenAd = this.h;
        if (maxAppOpenAd != null) {
            maxAppOpenAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.i;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.k;
        if (maxNativeAdLoader != null) {
            MaxAd maxAd = this.l;
            if (maxAd != null) {
                maxNativeAdLoader.destroy(maxAd);
            }
            this.k.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        u7.a("onUserRewarded", maxAd, this);
    }
}
