package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.applovin.impl.c3;
import com.applovin.impl.c5;
import com.applovin.impl.f3;
import com.applovin.impl.h2;
import com.applovin.impl.i;
import com.applovin.impl.i6;
import com.applovin.impl.j;
import com.applovin.impl.k8;
import com.applovin.impl.l8;
import com.applovin.impl.m8;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.n5;
import com.applovin.impl.p0;
import com.applovin.impl.s;
import com.applovin.impl.sdk.g;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u7;
import com.applovin.impl.v3;
import com.applovin.impl.x2;
import com.applovin.impl.x6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxAdViewConfiguration;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MaxAdViewImpl extends com.applovin.impl.mediation.ads.a implements g.a, m8.a, j.b {
    private static final Map E = new HashMap();
    private static final Object F = new Object();
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private final Context a;
    private final MaxAdView b;
    private final String c;
    private final View d;
    private long e;
    private f3 f;
    private String g;
    private String h;
    private final MaxAdViewConfiguration i;
    private final b j;
    private final d k;
    private final g l;
    private final l8 m;
    private final m8 n;
    private final Object o;
    private final Object p;
    private f3 q;
    private MaxAd r;
    private boolean s;
    private boolean t;
    private boolean u;
    private final AtomicBoolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    private class b extends c {
        private b() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            p pVar = MaxAdViewImpl.this.logger;
            if (p.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            x2.a(MaxAdViewImpl.this.adListener, str, maxError, true);
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.a()) {
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "Precache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.Z().destroyAd(maxAd);
                return;
            }
            f3 f3Var = (f3) maxAd;
            f3Var.g(MaxAdViewImpl.this.g);
            f3Var.f(MaxAdViewImpl.this.h);
            if (f3Var.z() == null) {
                MaxAdViewImpl.this.sdk.Z().destroyAd(f3Var);
                onAdLoadFailed(f3Var.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
                return;
            }
            if (f3Var.z0()) {
                long jU0 = f3Var.u0();
                MaxAdViewImpl.this.sdk.Q();
                if (p.a()) {
                    MaxAdViewImpl.this.sdk.Q().a(MaxAdViewImpl.this.tag, "Scheduling banner ad refresh " + jU0 + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                }
                MaxAdViewImpl.this.l.a(jU0);
                if (MaxAdViewImpl.this.l.g() || MaxAdViewImpl.this.u) {
                    p pVar2 = MaxAdViewImpl.this.logger;
                    if (p.a()) {
                        MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                        maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Pausing ad refresh for publisher");
                    }
                    MaxAdViewImpl.this.l.j();
                }
            }
            p pVar3 = MaxAdViewImpl.this.logger;
            if (p.a()) {
                MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
                maxAdViewImpl3.logger.a(maxAdViewImpl3.tag, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            x2.f(MaxAdViewImpl.this.adListener, maxAd, true);
            MaxAdViewImpl.this.d(f3Var);
        }
    }

    private abstract class c implements MaxAdListener, MaxAdViewAdListener, MaxAdRevenueListener, com.applovin.impl.mediation.ads.a.InterfaceC0019a {
        private c() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                x2.a(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.r)) {
                MaxAdViewImpl.this.r = null;
                if ((MaxAdViewImpl.this.q.A0() || MaxAdViewImpl.this.B) && MaxAdViewImpl.this.s) {
                    MaxAdViewImpl.this.s = false;
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdViewAdListener.onAdCollapsed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                x2.b(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                x2.a(MaxAdViewImpl.this.adListener, maxAd, maxError, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                x2.c(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                MaxAdViewImpl.this.r = maxAd;
                if ((MaxAdViewImpl.this.q.A0() || MaxAdViewImpl.this.B) && !MaxAdViewImpl.this.l.g()) {
                    MaxAdViewImpl.this.s = true;
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdViewAdListener.onAdExpanded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                x2.d(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                x2.e(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            p pVar = MaxAdViewImpl.this.logger;
            if (p.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxAdViewImpl.this.requestListener);
            }
            x2.a(MaxAdViewImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            p pVar = MaxAdViewImpl.this.logger;
            if (p.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.revenueListener);
            }
            x2.a(MaxAdViewImpl.this.revenueListener, maxAd, true);
        }
    }

    private class d extends c {
        private d() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            p pVar = MaxAdViewImpl.this.logger;
            if (p.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "Failed to precache ad for refresh with error code: " + maxError.getCode());
            }
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.x) {
                p pVar = MaxAdViewImpl.this.logger;
                if (p.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.Z().destroyAd(maxAd);
                return;
            }
            p pVar2 = MaxAdViewImpl.this.logger;
            if (p.a()) {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Successfully precached ad for refresh");
            }
            if (((Boolean) MaxAdViewImpl.this.sdk.a(v3.X7)).booleanValue()) {
                MaxAdViewImpl.this.b(maxAd);
            } else {
                MaxAdViewImpl.this.a(maxAd);
            }
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdViewConfiguration maxAdViewConfiguration, MaxAdView maxAdView, View view, Context context) {
        super(str, maxAdFormat, "MaxAdView", AppLovinSdk.getInstance(context).a());
        this.c = UUID.randomUUID().toString().toLowerCase(Locale.US);
        this.e = Long.MAX_VALUE;
        this.o = new Object();
        this.p = new Object();
        this.q = null;
        this.r = null;
        this.v = new AtomicBoolean();
        this.x = false;
        this.a = context.getApplicationContext();
        this.b = maxAdView;
        this.d = view;
        this.j = new b();
        this.k = new d();
        this.l = new g(this.sdk, this);
        this.m = new l8(maxAdView, this.sdk);
        this.n = new m8(maxAdView, this.sdk, this);
        this.i = maxAdViewConfiguration;
        this.sdk.k().a(this);
        if (maxAdViewConfiguration != null && maxAdViewConfiguration.getAdaptiveType() != MaxAdViewConfiguration.AdaptiveType.NONE) {
            setExtraParameter("adaptive_banner", Boolean.toString(true));
            setLocalExtraParameter("adaptive_banner_type", maxAdViewConfiguration.getAdaptiveType().toString());
            int adaptiveWidth = maxAdViewConfiguration.getAdaptiveWidth();
            if (adaptiveWidth > 0) {
                setLocalExtraParameter("adaptive_banner_width", Integer.valueOf(adaptiveWidth));
            }
            int inlineMaximumHeight = maxAdViewConfiguration.getInlineMaximumHeight();
            if (inlineMaximumHeight > 0) {
                setLocalExtraParameter("inline_adaptive_banner_max_height", Integer.valueOf(inlineMaximumHeight));
            }
        }
        a(str);
        if (p.a()) {
            this.logger.a(this.tag, "Created new MaxAdView (" + this + ")");
        }
    }

    private void a(long j) {
        if (!u7.a(j, ((Long) this.sdk.a(v3.c8)).longValue()) || this.C) {
            if (p.a()) {
                this.logger.a(this.tag, "No undesired viewability flags matched or forcing precache - scheduling viewability");
            }
            this.t = false;
            d();
            return;
        }
        if (p.a()) {
            this.logger.a(this.tag, "Undesired flags matched - current: " + Long.toBinaryString(j) + ", undesired: " + Long.toBinaryString(j));
        }
        if (p.a()) {
            this.logger.a(this.tag, "Waiting for refresh timer to manually fire request");
        }
        this.t = true;
    }

    private void a(View view, f3 f3Var) {
        int iY0 = f3Var.y0();
        int iW0 = f3Var.w0();
        int iDpToPx = iY0 == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), iY0);
        int iDpToPx2 = iW0 != -1 ? AppLovinSdkUtils.dpToPx(view.getContext(), iW0) : -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(iDpToPx, iDpToPx2);
        } else {
            layoutParams.width = iDpToPx;
            layoutParams.height = iDpToPx2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            if (p.a()) {
                this.logger.a(this.tag, "Pinning ad view to MAX ad view with width: " + iDpToPx + " and height: " + iDpToPx2 + ".");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i : k8.a(this.b.getGravity(), 10, 14)) {
                layoutParams2.addRule(i);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(f3 f3Var) {
        long jA = this.m.a(f3Var);
        if (!f3Var.t0()) {
            a(f3Var, jA);
        }
        a(jA);
    }

    private void a(f3 f3Var, long j) {
        if (p.a()) {
            this.logger.a(this.tag, "Scheduling viewability impression for ad...");
        }
        this.sdk.Z().processViewabilityAdImpressionPostback(f3Var, j, this.j);
    }

    private void a(final i iVar, final com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        if (!a()) {
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(interfaceC0019a, iVar);
                }
            });
            return;
        }
        boolean zC = u7.c(this.sdk);
        this.sdk.E().a(h2.h1, "attemptingToLoadDestroyedAdView", CollectionUtils.hashMap("details", "debug=" + zC));
        if (zC) {
            throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
        }
        p.h(this.tag, "Failed to load new ad - this instance is already destroyed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a, i iVar) {
        int adaptiveWidth;
        f3 f3Var = this.q;
        if (f3Var != null) {
            long jA = this.m.a(f3Var);
            this.extraParameters.put("visible_ad_ad_unit_id", this.q.getAdUnitId());
            this.extraParameters.put("viewability_flags", Long.valueOf(jA));
        } else {
            this.extraParameters.remove("visible_ad_ad_unit_id");
            this.extraParameters.remove("viewability_flags");
        }
        int iPxToDp = AppLovinSdkUtils.pxToDp(this.b.getContext(), this.b.getWidth());
        int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.b.getContext(), this.b.getHeight());
        this.extraParameters.put("viewport_width", Integer.valueOf(iPxToDp));
        this.extraParameters.put("viewport_height", Integer.valueOf(iPxToDp2));
        this.extraParameters.put("auto_refresh_stopped", Boolean.valueOf(this.l.g() || this.u));
        this.extraParameters.put("auto_retries_disabled", Boolean.valueOf(this.z));
        MaxAdViewConfiguration maxAdViewConfiguration = this.i;
        if (maxAdViewConfiguration != null && (adaptiveWidth = maxAdViewConfiguration.getAdaptiveWidth()) > 0 && iPxToDp != adaptiveWidth) {
            p.j(this.tag, "The requested adaptive ad view width (" + adaptiveWidth + " dp) is different from the MaxAdView width (" + iPxToDp + " dp).");
        }
        if (p.a()) {
            this.logger.a(this.tag, "Loading " + this.adFormat.getLabel().toLowerCase(Locale.ENGLISH) + " ad for '" + this.adUnitId + "' and notifying " + interfaceC0019a + "...");
        }
        this.sdk.Z().loadAd(this.adUnitId, this.c, this.adFormat, iVar, this.localExtraParameters, this.extraParameters, this.a, interfaceC0019a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.w = false;
        if (this.v.compareAndSet(true, false)) {
            if (p.a()) {
                this.logger.a(this.tag, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.j.onAdLoaded(maxAd);
        } else {
            if (p.a()) {
                this.logger.a(this.tag, "Saving precache ad...");
            }
            f3 f3Var = (f3) maxAd;
            this.f = f3Var;
            f3Var.g(this.g);
            this.f.f(this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError) {
        if (a()) {
            if (p.a()) {
                this.logger.a(this.tag, "Ad load failure with ad unit ID '" + this.adUnitId + "' occured after MaxAdView was destroyed.");
                return;
            }
            return;
        }
        if (this.sdk.c(v3.Q7).contains(String.valueOf(maxError.getCode()))) {
            this.sdk.Q();
            if (p.a()) {
                this.sdk.Q().a(this.tag, "Ignoring banner ad refresh for error code " + maxError.getCode());
                return;
            }
            return;
        }
        if (this.u || this.l.g()) {
            if (this.w) {
                if (p.a()) {
                    this.logger.a(this.tag, "Refresh precache failed when auto-refresh is stopped");
                }
                this.w = false;
            }
            if (this.v.get()) {
                if (p.a()) {
                    this.logger.a(this.tag, "Refresh precache failed - MaxAdListener.onAdLoadFailed(adUnitId=" + this.adUnitId + ", error=" + maxError + "), listener=" + this.adListener);
                }
                x2.a(this.adListener, this.adUnitId, maxError, true);
                return;
            }
            return;
        }
        this.t = true;
        this.w = false;
        long jLongValue = ((Long) this.sdk.a(v3.P7)).longValue();
        if (jLongValue >= 0) {
            this.sdk.Q();
            if (p.a()) {
                this.sdk.Q().a(this.tag, "Scheduling failed banner ad refresh " + jLongValue + " milliseconds from now for '" + this.adUnitId + "'...");
            }
            this.l.a(jLongValue);
        }
    }

    private void a(String str) {
        int iIntValue;
        synchronized (F) {
            Map map = E;
            Integer num = (Integer) map.get(str);
            iIntValue = num != null ? 1 + num.intValue() : 1;
            map.put(str, Integer.valueOf(iIntValue));
        }
        if (iIntValue == ((Integer) this.sdk.a(v3.J8)).intValue()) {
            p.j(this.tag, "You are creating multiple MaxAdView instances for ad unit (" + str + ")! For best ad performance, please use a single MaxAdView instance and call loadAd() to refresh.");
            this.sdk.E().a(h2.h1, "excessiveAdViewAllocations", CollectionUtils.hashMap("ad_unit_id", str));
        }
    }

    private void a(String str, String str2) {
        if ("allow_pause_auto_refresh_immediately".equalsIgnoreCase(str)) {
            if (p.a()) {
                this.logger.a(this.tag, "Updated allow immediate auto-refresh pause and ad load to: " + str2);
            }
            this.y = Boolean.parseBoolean(str2);
            return;
        }
        if ("disable_auto_retries".equalsIgnoreCase(str)) {
            if (p.a()) {
                this.logger.a(this.tag, "Updated disable auto-retries to: " + str2);
            }
            this.z = Boolean.parseBoolean(str2);
            return;
        }
        if ("disable_precache".equalsIgnoreCase(str)) {
            if (p.a()) {
                this.logger.a(this.tag, "Updated precached disabled to: " + str2);
            }
            this.A = Boolean.parseBoolean(str2);
            return;
        }
        if ("should_stop_auto_refresh_on_ad_expand".equals(str)) {
            if (p.a()) {
                this.logger.a(this.tag, "Updated should stop auto-refresh on ad expand to: " + str2);
            }
            this.B = Boolean.parseBoolean(str2);
        } else if ("force_precache".equals(str)) {
            if (p.a()) {
                this.logger.a(this.tag, "Updated force precache to: " + str2);
            }
            this.C = Boolean.parseBoolean(str2);
        } else if ("adaptive_banner".equalsIgnoreCase(str)) {
            if (p.a()) {
                this.logger.a(this.tag, "Updated is adaptive banner to: " + str2);
            }
            if (this.i == null) {
                p.h(this.tag, "You configured adaptive banners incorrectly by setting extra parameters to the MaxAdView! Please configure adaptive banners via MaxAdViewConfiguration instead. Learn more: https://support.axon.ai/en/max/android/ad-formats/banner-and-mrec-ads#adaptive-banners");
            }
            this.D = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        boolean z;
        synchronized (this.o) {
            z = this.x;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final f3 f3Var) {
        View viewZ = f3Var.z();
        String str = viewZ == null ? "MaxAdView does not have a loaded ad view" : null;
        MaxAdView maxAdView = this.b;
        if (maxAdView == null) {
            str = "MaxAdView does not have a parent view";
        }
        if (str != null) {
            if (p.a()) {
                this.logger.b(this.tag, str);
            }
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, str);
            if (p.a()) {
                this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + f3Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            x2.a(this.adListener, (MaxAd) f3Var, (MaxError) maxErrorImpl, true);
            this.sdk.Z().processAdDisplayErrorPostbackForUserError(maxErrorImpl, f3Var);
            return;
        }
        h();
        a((c3) f3Var);
        if (f3Var.t0()) {
            this.n.a(f3Var);
        }
        maxAdView.setDescendantFocusability(393216);
        if (f3Var.v0() != Long.MAX_VALUE) {
            this.d.setBackgroundColor((int) f3Var.v0());
        } else {
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                this.d.setBackgroundColor((int) j);
            } else {
                this.d.setBackgroundColor(0);
            }
        }
        maxAdView.addView(viewZ);
        a(viewZ, f3Var);
        this.sdk.z().d(f3Var);
        c(f3Var);
        synchronized (this.o) {
            this.q = f3Var;
        }
        if (p.a()) {
            this.logger.a(this.tag, "Scheduling impression for ad manually...");
        }
        this.sdk.Z().processRawAdImpression(f3Var, this.j);
        if (StringUtils.isValidString(this.q.getAdReviewCreativeId())) {
            x2.a(this.adReviewListener, this.q.getAdReviewCreativeId(), (MaxAd) this.q, true);
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(f3Var);
            }
        }, f3Var.x0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MaxAd maxAd) {
        boolean zCompareAndSet;
        this.w = false;
        synchronized (this.p) {
            zCompareAndSet = this.v.compareAndSet(true, false);
            if (!zCompareAndSet) {
                if (p.a()) {
                    this.logger.a(this.tag, "Saving precache ad...");
                }
                f3 f3Var = (f3) maxAd;
                this.f = f3Var;
                f3Var.g(this.g);
                this.f.f(this.h);
            }
        }
        if (zCompareAndSet) {
            if (p.a()) {
                this.logger.a(this.tag, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.j.onAdLoaded(maxAd);
        }
    }

    private boolean b() {
        if (this.A) {
            return false;
        }
        return ((Boolean) this.sdk.a(v3.d8)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        if (p.a()) {
            this.logger.a(this.tag, "Loading ad for precache request...");
        }
        a(i.SEQUENTIAL_OR_PRECACHE, this.k);
    }

    private void c(f3 f3Var) {
        int height = this.b.getHeight();
        int width = this.b.getWidth();
        if (height > 0 || width > 0) {
            int iPxToDp = AppLovinSdkUtils.pxToDp(this.a, height);
            int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.a, width);
            MaxAdFormat format = f3Var.getFormat();
            int height2 = (this.D ? format.getAdaptiveSize(iPxToDp2, this.b.getContext()) : format.getSize()).getHeight();
            int iMin = Math.min(format.getSize().getWidth(), p0.b(this.a).x);
            if (iPxToDp < height2 || iPxToDp2 < iMin) {
                String str = "\n**************************************************\n`MaxAdView` size " + iPxToDp2 + "x" + iPxToDp + " dp smaller than required " + (this.D ? "adaptive " : "") + "size: " + iMin + "x" + height2 + " dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n";
                if (p.a()) {
                    this.logger.b("AppLovinSdk", str);
                }
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putInt(jSONObject, "container_width_dp", iPxToDp2);
                JsonUtils.putInt(jSONObject, "container_height_dp", iPxToDp);
                JsonUtils.putInt(jSONObject, "required_width_dp", iMin);
                JsonUtils.putInt(jSONObject, "required_height_dp", height2);
                JsonUtils.putBoolean(jSONObject, "is_adaptive", this.D);
                this.sdk.E().a(h2.h1, "adViewContainerUndersized", CollectionUtils.hashMap("details", jSONObject.toString()), this.c);
            }
        }
    }

    private void d() {
        if (b()) {
            if (p.a()) {
                this.logger.a(this.tag, "Scheduling refresh precache request now");
            }
            this.w = true;
            this.sdk.s0().a((n5) new x6(this.sdk, "loadMaxAdForPrecacheRequest", new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            }), i6.b.MEDIATION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final f3 f3Var) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(f3Var);
            }
        });
    }

    private void e() {
        this.v.set(false);
        if (this.f != null) {
            i();
            return;
        }
        if (!b()) {
            if (p.a()) {
                this.logger.a(this.tag, "Refreshing ad from network...");
            }
            loadAd(i.REFRESH);
        } else if (this.t) {
            if (p.a()) {
                this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
            }
            loadAd(i.REFRESH);
        } else {
            if (p.a()) {
                this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            }
            this.v.set(true);
        }
    }

    private void f() {
        boolean z;
        boolean z2;
        synchronized (this.p) {
            z = false;
            this.v.set(false);
            z2 = this.f != null;
            if (!z2) {
                if (b()) {
                    if (!this.t) {
                        if (p.a()) {
                            this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
                        }
                        this.v.set(true);
                    } else if (p.a()) {
                        this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
                    }
                } else if (p.a()) {
                    this.logger.a(this.tag, "Refreshing ad from network...");
                }
                z = true;
            }
        }
        if (z2) {
            i();
        } else if (z) {
            loadAd(i.REFRESH);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        h();
        if (this.f != null) {
            this.sdk.Z().destroyAd(this.f);
        }
        synchronized (this.o) {
            this.x = true;
        }
        this.l.a();
        this.sdk.k().b(this);
        if (this.sdk.T() != null) {
            this.sdk.T().c(this.adUnitId, this.c);
        } else {
            this.sdk.S().c(this.adUnitId, this.c);
        }
        super.destroy();
    }

    private void h() {
        f3 f3Var;
        if (this.b != null) {
            if (((Boolean) this.sdk.a(c5.e7)).booleanValue()) {
                s.b(this.b, this.d);
            } else {
                s.a(this.b, this.d);
            }
        }
        this.n.b();
        synchronized (this.o) {
            f3Var = this.q;
        }
        MaxAd maxAd = this.r;
        if (maxAd != null && maxAd.equals(f3Var)) {
            if (p.a()) {
                this.logger.a(this.tag, "Collapsing ad manually for removed ad.");
            }
            x2.b(this.j, maxAd);
        }
        if (f3Var != null) {
            this.sdk.Z().destroyAd(f3Var);
        }
    }

    private void i() {
        if (p.a()) {
            this.logger.a(this.tag, "Rendering for cached ad: " + this.f + "...");
        }
        this.j.onAdLoaded(this.f);
        this.f = null;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        if (((Boolean) this.sdk.a(v3.Y7)).booleanValue()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.g();
                }
            });
        } else {
            g();
        }
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.g;
    }

    public void loadAd() {
        loadAd(i.PUBLISHER_INITIATED);
    }

    public void loadAd(i iVar) {
        if (p.a()) {
            this.logger.a(this.tag, "" + this + " Loading ad for " + this.adUnitId + "...");
        }
        boolean z = this.y || ((Boolean) this.sdk.a(v3.W7)).booleanValue();
        if (z && !this.l.g() && this.l.h()) {
            p.h(this.tag, "Unable to load a new ad. An ad refresh has already been scheduled in " + TimeUnit.MILLISECONDS.toSeconds(this.l.b()) + " seconds.");
            return;
        }
        if (!z) {
            if (p.a()) {
                this.logger.a(this.tag, "Loading ad...");
            }
            a(iVar, this.j);
        } else if (this.f != null) {
            if (p.a()) {
                this.logger.a(this.tag, "Rendering cached ad");
            }
            i();
        } else if (this.w) {
            if (p.a()) {
                this.logger.a(this.tag, "Waiting for precache ad to load to render");
            }
            this.v.set(true);
        } else {
            if (p.a()) {
                this.logger.a(this.tag, "Loading ad...");
            }
            a(iVar, this.j);
        }
    }

    @Override // com.applovin.impl.sdk.g.a
    public void onAdRefresh() {
        if (((Boolean) this.sdk.a(v3.X7)).booleanValue()) {
            f();
        } else {
            e();
        }
    }

    @Override // com.applovin.impl.j.b
    public void onCreativeIdGenerated(String str, String str2) {
        f3 f3Var = this.q;
        if (f3Var != null && f3Var.T().equalsIgnoreCase(str)) {
            this.q.h(str2);
            x2.b(this.adReviewListener, str2, this.q);
            return;
        }
        f3 f3Var2 = this.f;
        if (f3Var2 == null || !f3Var2.T().equalsIgnoreCase(str)) {
            return;
        }
        this.f.h(str2);
    }

    @Override // com.applovin.impl.m8.a
    public void onLogVisibilityImpression() {
        a(this.q, this.m.a(this.q));
    }

    public void onWindowVisibilityChanged(int i) {
        if (((Boolean) this.sdk.a(v3.U7)).booleanValue() && this.l.h()) {
            if (k8.b(i)) {
                if (p.a()) {
                    this.logger.a(this.tag, "Ad view visible");
                }
                this.l.d();
            } else {
                if (p.a()) {
                    this.logger.a(this.tag, "Ad view hidden");
                }
                this.l.c();
            }
        }
    }

    public void setCustomData(String str) {
        if (this.q != null && p.a()) {
            this.logger.k(this.tag, "Setting custom data (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        u7.b(str, this.tag);
        this.h = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        a(str, str2);
    }

    public void setPlacement(String str) {
        if (this.q != null && p.a()) {
            this.logger.k(this.tag, "Setting placement (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        this.g = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.e = i;
    }

    public void startAutoRefresh() {
        this.u = false;
        if (!this.l.g()) {
            if (p.a()) {
                this.logger.a(this.tag, "Ignoring call to startAutoRefresh() - ad refresh is not paused");
            }
        } else {
            this.l.m();
            if (p.a()) {
                this.logger.a(this.tag, "Resumed auto-refresh with remaining time: " + this.l.b() + "ms");
            }
        }
    }

    public void stopAutoRefresh() {
        if (this.q != null) {
            if (p.a()) {
                this.logger.a(this.tag, "Pausing auto-refresh with remaining time: " + this.l.b() + "ms");
            }
            this.l.j();
        } else if (this.y || ((Boolean) this.sdk.a(v3.W7)).booleanValue()) {
            this.u = true;
        } else {
            p.j(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
        }
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder("MaxAdView{adUnitId='").append(this.adUnitId).append("', adListener=");
        Object obj = this.adListener;
        if (obj == this.b) {
            obj = "this";
        }
        return sbAppend.append(obj).append(", isDestroyed=").append(a()).append(AbstractJsonLexerKt.END_OBJ).toString();
    }
}
