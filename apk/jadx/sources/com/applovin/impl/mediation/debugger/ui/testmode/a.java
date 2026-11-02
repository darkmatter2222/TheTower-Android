package com.applovin.impl.mediation.debugger.ui.testmode;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.i3;
import com.applovin.impl.r3;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u7;
import com.applovin.impl.w;
import com.applovin.impl.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends r3 implements MaxRewardedAdListener, MaxAdViewAdListener, AdControlButton.a, MaxAdRevenueListener, w.a {
    private i3 b;
    private l c;
    private MaxAdView d;
    private MaxAdView e;
    private MaxInterstitialAd f;
    private MaxAppOpenAd g;
    private MaxRewardedAd h;
    private MaxAd i;
    private MaxNativeAdLoader j;
    private List k;
    private String l;
    private AdControlButton m;
    private AdControlButton n;
    private AdControlButton o;
    private AdControlButton p;
    private AdControlButton q;
    private AdControlButton r;
    private Button s;
    private Button t;
    private FrameLayout u;
    private FrameLayout v;
    private Switch w;
    private Switch x;
    private Map y;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.testmode.a$a, reason: collision with other inner class name */
    class C0020a extends MaxNativeAdListener {
        final /* synthetic */ MaxNativeAdView a;

        C0020a(MaxNativeAdView maxNativeAdView) {
            this.a = maxNativeAdView;
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(MaxAd maxAd) {
            a.this.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(String str, MaxError maxError) {
            a.this.onAdLoadFailed(str, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
            if (a.this.i != null) {
                a.this.j.destroy(a.this.i);
            }
            a.this.i = maxAd;
            a.this.j.render(this.a, maxAd);
            a.this.v.removeAllViews();
            a.this.v.addView(this.a);
            a.this.onAdLoaded(maxAd);
        }
    }

    private AdControlButton a(String str) {
        if (str.equals("test_mode_banner") || str.equals("test_mode_leader")) {
            return this.m;
        }
        if (str.equals("test_mode_mrec")) {
            return this.n;
        }
        if (str.equals("test_mode_interstitial")) {
            return this.o;
        }
        if (str.equals("test_mode_app_open")) {
            return this.p;
        }
        if (str.equals(this.l)) {
            return this.q;
        }
        if (str.equals("test_mode_native")) {
            return this.r;
        }
        throw new IllegalArgumentException("Invalid test mode ad unit identifier provided " + str);
    }

    private void a() {
        MaxAdFormat maxAdFormat;
        String str;
        boolean zIsTablet = AppLovinSdkUtils.isTablet(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.banner_ad_view_container);
        if (zIsTablet) {
            maxAdFormat = MaxAdFormat.LEADER;
            ((TextView) findViewById(R.id.banner_label)).setText("Leader");
            str = "test_mode_leader";
        } else {
            maxAdFormat = MaxAdFormat.BANNER;
            str = "test_mode_banner";
        }
        if (!this.b.r().contains(maxAdFormat)) {
            findViewById(R.id.banner_control_view).setVisibility(8);
            frameLayout.setVisibility(8);
            return;
        }
        MaxAdView maxAdView = new MaxAdView(str, maxAdFormat, this.c.B0(), this);
        this.d = maxAdView;
        maxAdView.setExtraParameter("adaptive_banner", "false");
        this.d.setExtraParameter("disable_auto_retries", "true");
        this.d.setExtraParameter("disable_precache", "true");
        this.d.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
        this.d.stopAutoRefresh();
        this.d.setListener(this);
        frameLayout.addView(this.d, new FrameLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getWidth()), AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getHeight())));
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.banner_control_button);
        this.m = adControlButton;
        adControlButton.setOnClickListener(this);
        this.m.setFormat(maxAdFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.u.setVisibility(0);
        this.v.setVisibility(8);
        this.s.setBackgroundColor(-1);
        this.t.setBackgroundColor(-3355444);
    }

    private void a(MaxAdFormat maxAdFormat) {
        p.g("MaxDebuggerMultiAdActivity", "Loading test " + maxAdFormat.getDisplayName() + " Ad from " + this.b.g());
        MaxAdFormat maxAdFormat2 = MaxAdFormat.BANNER;
        boolean z = (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) && this.w.isChecked();
        MaxAdFormat maxAdFormat3 = MaxAdFormat.MREC;
        boolean z2 = maxAdFormat3 == maxAdFormat && this.x.isChecked();
        if (z || z2) {
            this.c.u0().a(this.b.w());
        } else {
            this.c.u0().a(getTestModeNetwork(maxAdFormat));
        }
        if (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.d.loadAd();
            return;
        }
        if (maxAdFormat3 == maxAdFormat) {
            this.e.loadAd();
            this.s.callOnClick();
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f.loadAd();
            return;
        }
        if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.g.loadAd();
            return;
        }
        if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.h.loadAd();
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.j.loadAd();
            this.t.callOnClick();
        }
    }

    private void b() {
        List listR = this.b.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.INTERSTITIAL;
        if (!listR.contains(maxAdFormat)) {
            findViewById(R.id.interstitial_control_view).setVisibility(8);
            return;
        }
        MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd("test_mode_interstitial", this.c.B0(), this);
        this.f = maxInterstitialAd;
        maxInterstitialAd.setExtraParameter("disable_auto_retries", "true");
        this.f.setListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.interstitial_control_button);
        this.o = adControlButton;
        adControlButton.setOnClickListener(this);
        this.o.setFormat(maxAdFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.v.setVisibility(0);
        this.u.setVisibility(8);
        this.t.setBackgroundColor(-1);
        this.s.setBackgroundColor(-3355444);
    }

    private void b(MaxAdFormat maxAdFormat) {
        p.g("MaxDebuggerMultiAdActivity", "Showing test " + maxAdFormat.getDisplayName() + " Ad from " + this.b.g());
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f.showAd();
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.g.showAd();
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.h.showAd();
        }
    }

    private void c() {
        this.u = (FrameLayout) findViewById(R.id.mrec_ad_view_container);
        List listR = this.b.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.MREC;
        if (!listR.contains(maxAdFormat)) {
            findViewById(R.id.mrec_control_view).setVisibility(8);
            this.u.setVisibility(8);
            return;
        }
        MaxAdView maxAdView = new MaxAdView("test_mode_mrec", maxAdFormat, this.c.B0(), this);
        this.e = maxAdView;
        maxAdView.setExtraParameter("disable_auto_retries", "true");
        this.e.setExtraParameter("disable_precache", "true");
        this.e.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
        this.e.stopAutoRefresh();
        this.e.setListener(this);
        this.u.addView(this.e, new FrameLayout.LayoutParams(-1, -1));
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.mrec_control_button);
        this.n = adControlButton;
        adControlButton.setOnClickListener(this);
        this.n.setFormat(maxAdFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        this.d.removeAllViews();
        this.m.setControlState(AdControlButton.b.LOAD);
    }

    private void d() {
        this.v = (FrameLayout) findViewById(R.id.native_ad_view_container);
        if (!this.b.I()) {
            findViewById(R.id.native_control_view).setVisibility(8);
            this.v.setVisibility(8);
            return;
        }
        MaxNativeAdView maxNativeAdView = new MaxNativeAdView(new MaxNativeAdViewBinder.Builder(R.layout.max_native_ad_template_1).setTitleTextViewId(R.id.applovin_native_title_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setCallToActionButtonId(R.id.applovin_native_cta_button).setIconImageViewId(R.id.applovin_native_icon_image_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setStarRatingContentViewGroupId(R.id.applovin_native_star_rating_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).build(), this);
        MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader("test_mode_native");
        this.j = maxNativeAdLoader;
        maxNativeAdLoader.setExtraParameter("disable_auto_retries", "true");
        this.j.setNativeAdListener(new C0020a(maxNativeAdView));
        this.j.setRevenueListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.native_control_button);
        this.r = adControlButton;
        adControlButton.setOnClickListener(this);
        this.r.setFormat(MaxAdFormat.NATIVE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        this.e.removeAllViews();
        this.n.setControlState(AdControlButton.b.LOAD);
    }

    private void e() {
        List listR = this.b.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.REWARDED;
        if (!listR.contains(maxAdFormat)) {
            findViewById(R.id.rewarded_control_view).setVisibility(8);
            return;
        }
        String str = "test_mode_rewarded_" + this.b.m();
        this.l = str;
        MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(str, this.c.B0(), this);
        this.h = maxRewardedAd;
        maxRewardedAd.setExtraParameter("disable_auto_retries", "true");
        this.h.setListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.rewarded_control_button);
        this.q = adControlButton;
        adControlButton.setOnClickListener(this);
        this.q.setFormat(maxAdFormat);
    }

    @Override // com.applovin.impl.r3
    protected l getSdk() {
        return this.c;
    }

    public String getTestModeNetwork(MaxAdFormat maxAdFormat) {
        return (this.b.x() == null || !this.b.x().containsKey(maxAdFormat)) ? this.b.m() : (String) this.b.x().get(maxAdFormat);
    }

    public void initialize(i3 i3Var) {
        this.b = i3Var;
        this.c = i3Var.o();
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
        a(maxAd.getAdUnitId()).setControlState(AdControlButton.b.LOAD);
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
        if (MaxAdFormat.BANNER == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.d.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.MREC == maxAdFormat) {
            this.e.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.g.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.h.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.j.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(String str, MaxError maxError) {
        AdControlButton adControlButtonA = a(str);
        adControlButtonA.setControlState(AdControlButton.b.LOAD);
        u7.a(maxError, adControlButtonA.getFormat().getLabel(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        AdControlButton adControlButtonA = a(maxAd.getAdUnitId());
        if (maxAd.getFormat().isAdViewAd() || maxAd.getFormat().equals(MaxAdFormat.NATIVE)) {
            adControlButtonA.setControlState(AdControlButton.b.LOAD);
        } else {
            adControlButtonA.setControlState(AdControlButton.b.SHOW);
        }
    }

    @Override // com.applovin.impl.w.a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.d.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.MREC == maxAdFormat) {
            this.e.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.h.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.j.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        u7.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        MaxAdFormat format = adControlButton.getFormat();
        AdControlButton.b bVar = AdControlButton.b.LOAD;
        if (bVar != adControlButton.getControlState()) {
            if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
                adControlButton.setControlState(bVar);
                b(format);
                return;
            }
            return;
        }
        adControlButton.setControlState(AdControlButton.b.LOADING);
        Map map = this.y;
        if (map == null || map.get(format) == null) {
            a(format);
        } else {
            ((w) this.y.get(format)).a();
        }
    }

    @Override // com.applovin.impl.r3, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.b == null) {
            p.h("MaxDebuggerMultiAdActivity", "Failed to initialize activity with a network model.");
            return;
        }
        setContentView(R.layout.mediation_debugger_multi_ad_activity);
        setTitle(this.b.g() + " Test Ads");
        this.k = this.c.u0().b();
        a();
        c();
        b();
        e();
        d();
        findViewById(R.id.app_open_ad_control_view).setVisibility(8);
        this.s = (Button) findViewById(R.id.show_mrec_button);
        this.t = (Button) findViewById(R.id.show_native_button);
        if (this.b.I() && this.b.r().contains(MaxAdFormat.MREC)) {
            this.v.setVisibility(8);
            this.s.setBackgroundColor(-1);
            this.t.setBackgroundColor(-3355444);
            this.s.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.a(view);
                }
            });
            this.t.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.b(view);
                }
            });
        } else {
            this.s.setVisibility(8);
            this.t.setVisibility(8);
        }
        this.w = (Switch) findViewById(R.id.native_banner_switch);
        this.x = (Switch) findViewById(R.id.native_mrec_switch);
        if (this.b.J()) {
            this.w.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.c(view);
                }
            });
            this.x.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.d(view);
                }
            });
        } else {
            this.w.setVisibility(8);
            this.x.setVisibility(8);
        }
        if (!StringUtils.isValidString(this.b.e()) || this.b.d() == null || this.b.d().size() <= 0) {
            return;
        }
        AdRegistration.getInstance(this.b.e(), this);
        AdRegistration.enableTesting(true);
        AdRegistration.enableLogging(true);
        HashMap map = new HashMap(this.b.d().size());
        for (MaxAdFormat maxAdFormat : this.b.d().keySet()) {
            map.put(maxAdFormat, new w((x) this.b.d().get(maxAdFormat), maxAdFormat, getApplicationContext(), this));
        }
        this.y = map;
    }

    @Override // com.applovin.impl.r3, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.c.u0().a(this.k);
        MaxAdView maxAdView = this.d;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxAdView maxAdView2 = this.e;
        if (maxAdView2 != null) {
            maxAdView2.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.h;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.j;
        if (maxNativeAdLoader != null) {
            MaxAd maxAd = this.i;
            if (maxAd != null) {
                maxNativeAdLoader.destroy(maxAd);
            }
            this.j.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        u7.a("onUserRewarded", maxAd, this);
    }
}
