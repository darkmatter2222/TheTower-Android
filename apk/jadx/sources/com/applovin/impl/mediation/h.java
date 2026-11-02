package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.c3;
import com.applovin.impl.c5;
import com.applovin.impl.g3;
import com.applovin.impl.i5;
import com.applovin.impl.i6;
import com.applovin.impl.n5;
import com.applovin.impl.o3;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.v3;
import com.applovin.impl.x4;
import com.applovin.impl.x6;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.tapjoy.TapjoyConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    private final l b;
    private final p c;
    private final String d;
    private final o3 e;
    private final String f;
    private MaxAdapter g;
    private String h;
    private c3 i;
    private View j;
    private MaxNativeAd k;
    private MaxNativeAdView l;
    private ViewGroup m;
    private MaxAdapterResponseParameters o;
    private final boolean s;
    private final Handler a = new Handler(Looper.getMainLooper());
    private final b n = new b(this, null);
    private final AtomicBoolean p = new AtomicBoolean(true);
    private final AtomicBoolean q = new AtomicBoolean(false);
    private final AtomicBoolean r = new AtomicBoolean(false);

    class a implements MaxSignalCollectionListener {
        final /* synthetic */ i5 a;
        final /* synthetic */ x4 b;

        a(i5 i5Var, x4 x4Var) {
            this.a = i5Var;
            this.b = x4Var;
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollected(String str) {
            if (this.a.y() && TextUtils.isEmpty(str)) {
                this.b.a(new MaxErrorImpl("Signal is not a valid string"));
            } else {
                this.b.b(str);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollectionFailed(String str) {
            this.b.a(new MaxErrorImpl(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b implements MaxInterstitialAdapterListener, MaxAppOpenAdapterListener, MaxRewardedAdapterListener, MaxAdViewAdapterListener, MaxNativeAdAdapterListener {
        private MediationServiceImpl.b a;

        private b() {
        }

        /* synthetic */ b(h hVar, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            this.a.onAdCollapsed(h.this.i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Bundle bundle) {
            this.a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(g3 g3Var, MaxReward maxReward, Bundle bundle) {
            this.a.a(g3Var, maxReward, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediationServiceImpl.b bVar) {
            if (bVar == null) {
                throw new IllegalArgumentException("No listener specified");
            }
            this.a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError) {
            if (h.this.q.compareAndSet(false, true)) {
                this.a.onAdLoadFailed(h.this.h, maxError);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError, Bundle bundle) {
            this.a.a(h.this.i, maxError, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable, MaxAdListener maxAdListener, String str) {
            try {
                runnable.run();
            } catch (Throwable th) {
                p.c("MediationAdapterWrapper", "Failed to forward call (" + str + ") to " + (maxAdListener != null ? maxAdListener.getClass().getName() : null), th);
                h.this.b.E().a("MediationAdapterWrapper", str, th, CollectionUtils.hashMap("adapter_class", h.this.e.b()));
            }
        }

        private void a(String str, final Bundle bundle) {
            if (h.this.i.x().get()) {
                p unused = h.this.c;
                if (p.a()) {
                    h.this.c.b("MediationAdapterWrapper", h.this.f + ": blocking ad displayed callback for " + h.this.i + " since onAdHidden() has been called");
                }
                h.this.b.u().a(h.this.i, str);
                return;
            }
            if (((Boolean) h.this.b.a(v3.M8)).booleanValue()) {
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.g(bundle);
                    }
                });
            } else if (h.this.i.u().compareAndSet(false, true)) {
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.h(bundle);
                    }
                });
            }
        }

        private void a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            h.this.a.post(new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(runnable, maxAdListener, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError) {
            if (!h.this.i.x().get()) {
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(maxError);
                    }
                });
                return;
            }
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.b("MediationAdapterWrapper", h.this.f + ": blocking ad load failed callback for " + h.this.i + " since onAdHidden() has been called");
            }
            h.this.b.u().a(h.this.i, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError, final Bundle bundle) {
            if (!h.this.i.x().get()) {
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(maxError, bundle);
                    }
                });
                return;
            }
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.b("MediationAdapterWrapper", h.this.f + ": blocking ad display failed callback for " + h.this.i + " since onAdHidden() has been called");
            }
            h.this.b.u().a(h.this.i, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Bundle bundle) {
            this.a.d(h.this.i, bundle);
        }

        private void b(String str, final Bundle bundle) {
            if (h.this.i.x().compareAndSet(false, true)) {
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.i(bundle);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Bundle bundle) {
            this.a.a(h.this.i, bundle);
        }

        private void c(String str, final Bundle bundle) {
            if (!h.this.i.x().get()) {
                h.this.r.set(true);
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.j(bundle);
                    }
                });
            } else {
                p unused = h.this.c;
                if (p.a()) {
                    h.this.c.b("MediationAdapterWrapper", h.this.f + ": blocking ad loaded callback for " + h.this.i + " since onAdHidden() has been called");
                }
                h.this.b.u().a(h.this.i, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Bundle bundle) {
            this.a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Bundle bundle) {
            this.a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Bundle bundle) {
            this.a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Bundle bundle) {
            this.a.c(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Bundle bundle) {
            this.a.c(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(Bundle bundle) {
            this.a.e(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(Bundle bundle) {
            if (h.this.q.compareAndSet(false, true)) {
                this.a.f(h.this.i, bundle);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            onAdViewAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked(final Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": adview ad clicked with extra info: " + bundle);
            }
            a("onAdViewAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            onAdViewAdCollapsed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": adview ad collapsed");
            }
            a("onAdViewAdCollapsed", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAdViewAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": adview ad failed to display with error: " + maxAdapterError);
            }
            a("onAdViewAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": adview ad displayed with extra info: " + bundle);
            }
            a("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            onAdViewAdExpanded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded(final Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": adview ad expanded");
            }
            a("onAdViewAdExpanded", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            onAdViewAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": adview ad hidden with extra info: " + bundle);
            }
            b("onAdViewAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": adview ad ad failed to load with error: " + maxAdapterError);
            }
            a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": adview ad loaded with extra info: " + bundle);
            }
            h.this.j = view;
            c("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked() {
            onAppOpenAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked(final Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": app open ad clicked with extra info: " + bundle);
            }
            a("onAppOpenAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAppOpenAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": app open ad display failed with error: " + maxAdapterError);
            }
            a("onAppOpenAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed() {
            onAppOpenAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": app open ad displayed with extra info: " + bundle);
            }
            a("onAppOpenAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden() {
            onAppOpenAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": app open ad hidden with extra info: " + bundle);
            }
            b("onAppOpenAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoadFailed(MaxAdapterError maxAdapterError) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": app open ad failed to load with error: " + maxAdapterError);
            }
            a("onAppOpenAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded() {
            onAppOpenAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": app open ad loaded with extra info: " + bundle);
            }
            c("onAppOpenAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            onInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked(final Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": interstitial ad clicked with extra info: " + bundle);
            }
            a("onInterstitialAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.d(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": interstitial ad failed to display with error " + maxAdapterError);
            }
            a("onInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": interstitial ad displayed with extra info: " + bundle);
            }
            a("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            onInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": interstitial ad hidden with extra info " + bundle);
            }
            b("onInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": interstitial ad failed to load with error " + maxAdapterError);
            }
            a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": interstitial ad loaded with extra info: " + bundle);
            }
            c("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            onNativeAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked(final Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": native ad clicked");
            }
            a("onNativeAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": native ad displayed with extra info: " + bundle);
            }
            a("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": native ad ad failed to load with error: " + maxAdapterError);
            }
            a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": native ad loaded with extra info: " + bundle);
            }
            h.this.k = maxNativeAd;
            c("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            onRewardedAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked(final Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": rewarded ad clicked with extra info: " + bundle);
            }
            a("onRewardedAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.f(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": rewarded ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": rewarded ad displayed with extra info: " + bundle);
            }
            a("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            onRewardedAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": rewarded ad hidden with extra info: " + bundle);
            }
            b("onRewardedAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.k("MediationAdapterWrapper", h.this.f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(Bundle bundle) {
            p unused = h.this.c;
            if (p.a()) {
                h.this.c.d("MediationAdapterWrapper", h.this.f + ": rewarded ad loaded with extra info: " + bundle);
            }
            c("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(MaxReward maxReward) {
            onUserRewarded(maxReward, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(final MaxReward maxReward, final Bundle bundle) {
            if (h.this.i instanceof g3) {
                final g3 g3Var = (g3) h.this.i;
                if (g3Var.w0().compareAndSet(false, true)) {
                    p unused = h.this.c;
                    if (p.a()) {
                        h.this.c.d("MediationAdapterWrapper", h.this.f + ": user was rewarded: " + maxReward);
                    }
                    a("onUserRewarded", this.a, new Runnable() { // from class: com.applovin.impl.mediation.h$b$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(g3Var, maxReward, bundle);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c implements MaxAdapter.OnCompletionListener {
        private final l a;
        private final o3 b;
        private final long c;
        private final MaxAdapter.OnCompletionListener d;

        public c(l lVar, o3 o3Var, long j, MaxAdapter.OnCompletionListener onCompletionListener) {
            this.a = lVar;
            this.b = o3Var;
            this.c = j;
            this.d = onCompletionListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
            this.a.U().a(this.b, SystemClock.elapsedRealtime() - this.c, initializationStatus, str);
            MaxAdapter.OnCompletionListener onCompletionListener = this.d;
            if (onCompletionListener != null) {
                onCompletionListener.onCompletion(initializationStatus, str);
            }
        }

        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
        public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.h$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(initializationStatus, str);
                }
            }, this.b.h());
        }
    }

    private class d extends n5 {
        private final WeakReference g;

        private d() {
            super("TaskTimeoutMediatedAd", h.this.b);
            this.g = new WeakReference(h.this.n);
        }

        /* synthetic */ d(h hVar, a aVar) {
            this();
        }

        private void b(c3 c3Var) {
            if (c3Var != null) {
                this.a.b0().a(c3Var);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h.this.q.get()) {
                return;
            }
            if (p.a()) {
                this.c.b(this.b, h.this.f + " is timing out " + h.this.i + "...");
            }
            b(h.this.i);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-5101, "Adapter timed out");
            b bVar = (b) this.g.get();
            if (bVar != null) {
                bVar.a(this.b, maxErrorImpl);
            }
        }
    }

    h(o3 o3Var, MaxAdapter maxAdapter, boolean z, l lVar) {
        if (o3Var == null) {
            throw new IllegalArgumentException("No adapter name specified");
        }
        if (maxAdapter == null) {
            throw new IllegalArgumentException("No adapter specified");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.d = o3Var.c();
        this.g = maxAdapter;
        this.b = lVar;
        this.c = lVar.Q();
        this.e = o3Var;
        this.f = maxAdapter.getClass().getSimpleName();
        this.s = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        ((MaxInterstitialAdapter) this.g).showInterstitialAd(this.o, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxInterstitialAdViewAdapter) this.g).showInterstitialAd(this.o, viewGroup, lifecycle, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c3 c3Var, Runnable runnable) {
        a(this.e, c3Var);
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start loading ad for " + this.d + " due to: " + th;
            p.h("MediationAdapterWrapper", str);
            this.n.a("load_ad", new MaxErrorImpl(-1, str));
            this.b.E().a("MediationAdapterWrapper", "load_ad", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("load_ad");
            this.b.V().a(this.e.b(), "load_ad", this.i);
        }
    }

    private void a(n5 n5Var, o3 o3Var, c3 c3Var) {
        long jM = o3Var.m();
        if (jM <= 0) {
            if (p.a()) {
                p pVar = this.c;
                StringBuilder sb = new StringBuilder("Non-positive timeout set for ");
                if (c3Var != null) {
                    o3Var = c3Var;
                }
                pVar.a("MediationAdapterWrapper", sb.append(o3Var).append(", not scheduling a timeout").toString());
                return;
            }
            return;
        }
        if (p.a()) {
            p pVar2 = this.c;
            StringBuilder sbAppend = new StringBuilder("Setting timeout ").append(jM).append("ms for ");
            if (c3Var != null) {
                o3Var = c3Var;
            }
            pVar2.a("MediationAdapterWrapper", sbAppend.append(o3Var).toString());
        }
        this.b.s0().a(n5Var, i6.b.TIMEOUT, jM);
    }

    private void a(o3 o3Var, c3 c3Var) {
        a(new d(this, null), o3Var, c3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapter.OnCompletionListener onCompletionListener, MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (p.a()) {
            this.c.a("MediationAdapterWrapper", "Initializing " + this.f + " on thread: " + Thread.currentThread() + " with 'run_on_ui_thread' value: " + this.e.r());
        }
        this.g.initialize(maxAdapterInitializationParameters, activity, new c(this.b, this.e, jElapsedRealtime, onCompletionListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxSignalProvider maxSignalProvider, MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, i5 i5Var, x4 x4Var) {
        try {
            maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new a(i5Var, x4Var));
        } catch (Throwable th) {
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl("Failed signal collection for " + this.d + " due to: " + th);
            p.h("MediationAdapterWrapper", maxErrorImpl.getMessage());
            x4Var.a(maxErrorImpl);
            this.b.E().a("MediationAdapterWrapper", "collect_signal", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("collect_signal");
            this.b.V().a(this.e.b(), "collect_signal", this.i);
        }
        if (!x4Var.d() && i5Var.m() == 0) {
            if (p.a()) {
                this.c.a("MediationAdapterWrapper", "Failing signal collection " + i5Var + " since it has 0 timeout");
            }
            x4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + this.f + ") has 0 timeout"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxInterstitialAdapter) this.g).loadInterstitialAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity) {
        ((MaxAdViewAdapter) this.g).loadAdViewAd(maxAdapterResponseParameters, maxAdFormat, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start displaying ad for " + this.d + " due to: " + th;
            p.h("MediationAdapterWrapper", str);
            this.n.a("show_ad", new MaxErrorImpl(-1, str), (Bundle) null);
            this.b.E().a("MediationAdapterWrapper", "show_ad", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("show_ad");
            this.b.V().a(this.e.b(), "show_ad", this.i);
        }
    }

    private void a(final Runnable runnable, c3 c3Var) {
        c3Var.g0();
        a("show_ad", c3Var.getFormat(), new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(runnable);
            }
        });
    }

    private void a(String str) {
        if (p.a()) {
            this.c.d("MediationAdapterWrapper", "Marking " + this.f + " as disabled due to: " + str);
        }
        this.p.set(false);
    }

    private void a(final String str, MaxAdFormat maxAdFormat, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, runnable);
            }
        };
        if (a(str, maxAdFormat)) {
            this.a.post(runnable2);
            return;
        }
        x6 x6Var = new x6(this.b, str + ":" + this.e.c(), runnable2);
        if (((Boolean) this.b.a(c5.a0)).booleanValue()) {
            this.b.s0().a(x6Var, this.e);
        } else {
            this.b.s0().a(x6Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (p.a()) {
                this.c.a("MediationAdapterWrapper", this.f + ": running " + str + "...");
            }
            runnable.run();
            if (p.a()) {
                this.c.a("MediationAdapterWrapper", this.f + ": finished " + str + "");
            }
        } catch (Throwable th) {
            p.c("MediationAdapterWrapper", "Failed operation " + str + " for " + this.d, th);
            a("fail_" + str);
            if (!str.equals("destroy")) {
                this.b.V().a(this.e.b(), str, this.i);
            }
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("is_wrapper", "true");
            CollectionUtils.putStringIfValid("adapter_class", this.e.b(), mapHashMap);
            this.b.E().a("MediationAdapterWrapper", str, th, mapHashMap);
        }
    }

    private boolean a(c3 c3Var, Activity activity) {
        if (c3Var == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (c3Var.B() == null) {
            p.h("MediationAdapterWrapper", "Adapter has been garbage collected");
            this.n.a("ad_show", new MaxErrorImpl(-1, "Adapter has been garbage collected"), (Bundle) null);
            return false;
        }
        if (c3Var.B() != this) {
            throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
        }
        if (activity == null && MaxAdFormat.APP_OPEN != c3Var.getFormat()) {
            throw new IllegalArgumentException("No activity specified");
        }
        if (this.p.get()) {
            if (j()) {
                return true;
            }
            throw new IllegalStateException("Mediation adapter '" + this.f + "' does not have an ad loaded. Please load an ad first");
        }
        String str = "Mediation adapter '" + this.f + "' is disabled. Showing ads with this adapter is disabled.";
        p.h("MediationAdapterWrapper", str);
        this.n.a("ad_show", new MaxErrorImpl(-1, str), (Bundle) null);
        return false;
    }

    private boolean a(String str, MaxAdFormat maxAdFormat) {
        Boolean boolJ0;
        Boolean boolL0;
        Boolean boolK0;
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return this.e.r();
        }
        if ("initialize".equals(str)) {
            Boolean boolShouldInitializeOnUiThread = maxAdapter.shouldInitializeOnUiThread();
            if (boolShouldInitializeOnUiThread != null) {
                return boolShouldInitializeOnUiThread.booleanValue();
            }
        } else if ("collect_signal".equals(str)) {
            Boolean boolShouldCollectSignalsOnUiThread = maxAdapter.shouldCollectSignalsOnUiThread();
            if (boolShouldCollectSignalsOnUiThread != null) {
                return boolShouldCollectSignalsOnUiThread.booleanValue();
            }
        } else if ("load_ad".equals(str) && maxAdFormat != null) {
            c3 c3Var = this.i;
            if (c3Var != null && (boolK0 = c3Var.k0()) != null) {
                return boolK0.booleanValue();
            }
            Boolean boolShouldLoadAdsOnUiThread = maxAdapter.shouldLoadAdsOnUiThread(maxAdFormat);
            if (boolShouldLoadAdsOnUiThread != null) {
                return boolShouldLoadAdsOnUiThread.booleanValue();
            }
        } else if ("show_ad".equals(str) && maxAdFormat != null) {
            c3 c3Var2 = this.i;
            if (c3Var2 != null && (boolL0 = c3Var2.l0()) != null) {
                return boolL0.booleanValue();
            }
            Boolean boolShouldShowAdsOnUiThread = maxAdapter.shouldShowAdsOnUiThread(maxAdFormat);
            if (boolShouldShowAdsOnUiThread != null) {
                return boolShouldShowAdsOnUiThread.booleanValue();
            }
        } else if ("destroy".equals(str)) {
            c3 c3Var3 = this.i;
            if (c3Var3 != null && (boolJ0 = c3Var3.j0()) != null) {
                return boolJ0.booleanValue();
            }
            Boolean boolShouldDestroyOnUiThread = maxAdapter.shouldDestroyOnUiThread();
            if (boolShouldDestroyOnUiThread != null) {
                return boolShouldDestroyOnUiThread.booleanValue();
            }
            return true;
        }
        return this.e.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Activity activity) {
        ((MaxAppOpenAdapter) this.g).showAppOpenAd(this.o, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxRewardedAdViewAdapter) this.g).showRewardedAd(this.o, viewGroup, lifecycle, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxAppOpenAdapter) this.g).loadAppOpenAd(maxAdapterResponseParameters, activity, this.n);
    }

    private void b(String str, Runnable runnable) {
        a(str, (MaxAdFormat) null, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        ((MaxRewardedAdapter) this.g).showRewardedAd(this.o, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedAdapter) this.g).loadRewardedAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MediationAdapterBase) this.g).loadNativeAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        a("destroy");
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter != null) {
            this.g = null;
            maxAdapter.onDestroy();
        } else if (p.a()) {
            this.c.k("MediationAdapterWrapper", "Mediation adapter '" + this.f + "' is already destroyed");
        }
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    void a() {
        if (this.s) {
            return;
        }
        b("destroy", new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.l();
            }
        });
    }

    public void a(ViewGroup viewGroup) {
        this.m = viewGroup;
    }

    public void a(c3 c3Var, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity) {
        Runnable runnable;
        if (a(c3Var, activity)) {
            if (c3Var.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(viewGroup, lifecycle, activity);
                    }
                };
            } else {
                if (c3Var.getFormat() != MaxAdFormat.REWARDED) {
                    throw new IllegalStateException("Failed to show " + c3Var + ": " + c3Var.getFormat() + " is not a supported ad format");
                }
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(viewGroup, lifecycle, activity);
                    }
                };
            }
            a(runnable, c3Var);
        }
    }

    void a(final MaxAdapterInitializationParameters maxAdapterInitializationParameters, final Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
        b("initialize", new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(onCompletionListener, maxAdapterInitializationParameters, activity);
            }
        });
    }

    void a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final i5 i5Var, final Activity activity, final x4 x4Var) {
        if (x4Var == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!this.p.get()) {
            p.h("MediationAdapterWrapper", "Mediation adapter '" + this.f + "' is disabled. Signal collection ads with this adapter is disabled.");
            x4Var.a(new MaxErrorImpl("The adapter (" + this.f + ") is disabled"));
            return;
        }
        MaxAdapter maxAdapter = this.g;
        if (!(maxAdapter instanceof MaxSignalProvider)) {
            x4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED, "The adapter (" + this.f + ") does not support signal collection"));
        } else {
            final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
            b("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxSignalProvider, maxAdapterSignalCollectionParameters, activity, i5Var, x4Var);
                }
            });
        }
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.l = maxNativeAdView;
    }

    void a(String str, c3 c3Var) {
        this.h = str;
        this.i = c3Var;
    }

    public void a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final c3 c3Var, final Activity activity, MediationServiceImpl.b bVar) {
        final Runnable runnable;
        if (c3Var == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (!this.p.get()) {
            String str2 = "Mediation adapter '" + this.f + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.";
            p.h("MediationAdapterWrapper", str2);
            bVar.onAdLoadFailed(str, new MaxErrorImpl(-1, str2));
            return;
        }
        this.o = maxAdapterResponseParameters;
        this.n.a(bVar);
        final MaxAdFormat format = c3Var.getFormat();
        if (format == MaxAdFormat.INTERSTITIAL) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxAdapterResponseParameters, activity);
                }
            };
        } else if (format == MaxAdFormat.APP_OPEN) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(maxAdapterResponseParameters, activity);
                }
            };
        } else if (format == MaxAdFormat.REWARDED) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(maxAdapterResponseParameters, activity);
                }
            };
        } else if (format == MaxAdFormat.NATIVE) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.d(maxAdapterResponseParameters, activity);
                }
            };
        } else {
            if (!format.isAdViewAd()) {
                throw new IllegalStateException("Failed to load " + c3Var + ": " + c3Var.getFormat() + " is not a supported ad format");
            }
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxAdapterResponseParameters, format, activity);
                }
            };
        }
        a("load_ad", format, new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(c3Var, runnable);
            }
        });
    }

    public String b() {
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getAdapterVersion();
        } catch (Throwable th) {
            p.c("MediationAdapterWrapper", "Failed to get adapter version for " + this.d, th);
            this.b.E().a("MediationAdapterWrapper", TapjoyConstants.TJC_ADAPTER_VERSION, th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a(TapjoyConstants.TJC_ADAPTER_VERSION);
            this.b.V().a(this.e.b(), TapjoyConstants.TJC_ADAPTER_VERSION, this.i);
            return null;
        }
    }

    public void b(c3 c3Var, final Activity activity) {
        Runnable runnable;
        if (a(c3Var, activity)) {
            if (c3Var.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(activity);
                    }
                };
            } else if (c3Var.getFormat() == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(activity);
                    }
                };
            } else {
                if (c3Var.getFormat() != MaxAdFormat.REWARDED) {
                    throw new IllegalStateException("Failed to show " + c3Var + ": " + c3Var.getFormat() + " is not a supported ad format");
                }
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.h$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(activity);
                    }
                };
            }
            a(runnable, c3Var);
        }
    }

    public MediationServiceImpl.b c() {
        return this.n.a;
    }

    public View d() {
        return this.j;
    }

    public MaxNativeAd e() {
        return this.k;
    }

    public MaxNativeAdView f() {
        return this.l;
    }

    public String g() {
        return this.d;
    }

    public ViewGroup h() {
        return this.m;
    }

    public String i() {
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getSdkVersion();
        } catch (Throwable th) {
            p.c("MediationAdapterWrapper", "Failed to get adapter's SDK version for " + this.d, th);
            this.b.E().a("MediationAdapterWrapper", "sdk_version", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("sdk_version");
            this.b.V().a(this.e.b(), "sdk_version", this.i);
            return null;
        }
    }

    public boolean j() {
        return this.q.get() && this.r.get();
    }

    public boolean k() {
        return this.p.get();
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.f + "'}";
    }
}
