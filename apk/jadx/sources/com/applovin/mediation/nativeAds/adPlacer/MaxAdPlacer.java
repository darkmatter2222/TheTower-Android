package com.applovin.mediation.nativeAds.adPlacer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.a3;
import com.applovin.impl.b3;
import com.applovin.impl.h3;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class MaxAdPlacer implements b3.a {
    private AppLovinSdkUtils.Size a;
    private MaxNativeAdViewBinder b;
    private final a3 c;
    private final b3 d;
    private Listener e;
    protected final p logger;
    protected final l sdk;

    public interface Listener {
        void onAdClicked(MaxAd maxAd);

        void onAdLoaded(int i);

        void onAdRemoved(int i);

        void onAdRevenuePaid(MaxAd maxAd);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings) {
        this(maxAdPlacerSettings, l.p());
    }

    @Deprecated
    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, Context context) {
        this(maxAdPlacerSettings, AppLovinSdk.getInstance(context), context);
    }

    @Deprecated
    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, AppLovinSdk appLovinSdk, Context context) {
        this.a = AppLovinSdkUtils.Size.ZERO;
        l lVarA = appLovinSdk.a();
        this.sdk = lVarA;
        p pVarQ = lVarA.Q();
        this.logger = pVarQ;
        this.c = new a3(maxAdPlacerSettings);
        this.d = new b3(maxAdPlacerSettings, context, this);
        if (p.a()) {
            pVarQ.a("MaxAdPlacer", "Initializing ad placer with settings: " + maxAdPlacerSettings);
        }
    }

    private void a() {
        int iC;
        while (this.d.d() && (iC = this.c.c()) != -1) {
            if (p.a()) {
                this.logger.a("MaxAdPlacer", "Placing ad at position: " + iC);
            }
            this.c.a(this.d.b(), iC);
            Listener listener = this.e;
            if (listener != null) {
                listener.onAdLoaded(iC);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Removing item at position: " + i);
        }
        this.c.i(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, Collection collection) {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Clearing trailing ads after position " + i);
        }
        this.c.a(collection);
    }

    private void a(Collection collection, Runnable runnable) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            this.d.a(this.c.a(((Integer) it.next()).intValue()));
        }
        runnable.run();
        if (collection.isEmpty()) {
            return;
        }
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Removed " + collection.size() + " ads from stream: " + collection);
        }
        if (this.e != null) {
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                this.e.onAdRemoved(((Integer) it2.next()).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Clearing all cached ads");
        }
        this.c.a();
        this.d.a();
    }

    public void clearAds() {
        a(this.c.b(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b();
            }
        });
    }

    public Collection<Integer> clearTrailingAds(final int i) {
        final Collection<Integer> collectionE = this.c.e(i);
        if (!collectionE.isEmpty()) {
            a(collectionE, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(i, collectionE);
                }
            });
        }
        return collectionE;
    }

    public void destroy() {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Destroying ad placer");
        }
        clearAds();
        this.d.c();
    }

    public long getAdItemId(int i) {
        if (isFilledPosition(i)) {
            return -System.identityHashCode(this.c.a(i));
        }
        return 0L;
    }

    public AppLovinSdkUtils.Size getAdSize(int i) {
        if (isFilledPosition(i)) {
            boolean z = this.a != AppLovinSdkUtils.Size.ZERO;
            h3 h3Var = (h3) this.c.a(i);
            if (z) {
                return this.a;
            }
            if (h3Var.v0() != null) {
                View mainView = h3Var.v0().getMainView();
                return new AppLovinSdkUtils.Size(mainView.getMeasuredWidth(), mainView.getMeasuredHeight());
            }
        }
        return AppLovinSdkUtils.Size.ZERO;
    }

    public int getAdjustedCount(int i) {
        return this.c.b(i);
    }

    public int getAdjustedPosition(int i) {
        return this.c.c(i);
    }

    public int getOriginalPosition(int i) {
        return this.c.d(i);
    }

    public void insertItem(int i) {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Inserting item at position: " + i);
        }
        this.c.f(i);
    }

    public boolean isAdPosition(int i) {
        return this.c.g(i);
    }

    public boolean isFilledPosition(int i) {
        return this.c.h(i);
    }

    public void loadAds() {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Loading ads");
        }
        this.d.e();
    }

    public void moveItem(int i, int i2) {
        this.c.b(i, i2);
    }

    @Override // com.applovin.impl.b3.a
    public void onAdRevenuePaid(MaxAd maxAd) {
        Listener listener = this.e;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.impl.b3.a
    public void onNativeAdClicked(MaxAd maxAd) {
        Listener listener = this.e;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.impl.b3.a
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        if (p.a()) {
            this.logger.b("MaxAdPlacer", "Native ad failed to load: " + maxError);
        }
    }

    @Override // com.applovin.impl.b3.a
    public void onNativeAdLoaded() {
        if (p.a()) {
            this.logger.a("MaxAdPlacer", "Native ad enqueued");
        }
        a();
    }

    public void removeItem(final int i) {
        a(isFilledPosition(i) ? Collections.singletonList(Integer.valueOf(i)) : Collections.EMPTY_LIST, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i);
            }
        });
    }

    public void renderAd(int i, ViewGroup viewGroup) {
        MaxAd maxAdA = this.c.a(i);
        if (maxAdA == null) {
            if (p.a()) {
                this.logger.a("MaxAdPlacer", "An ad is not available for position: " + i);
                return;
            }
            return;
        }
        MaxNativeAdView maxNativeAdViewV0 = ((h3) maxAdA).v0();
        if (maxNativeAdViewV0 != null) {
            if (p.a()) {
                this.logger.a("MaxAdPlacer", "Using pre-rendered ad at position: " + i);
            }
        } else if (this.b == null) {
            if (p.a()) {
                this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i + ". If you're using a custom ad template, check that nativeAdViewBinder is set.");
                return;
            }
            return;
        } else {
            maxNativeAdViewV0 = new MaxNativeAdView(this.b, viewGroup.getContext());
            if (this.d.a(maxNativeAdViewV0, maxAdA)) {
                if (p.a()) {
                    this.logger.a("MaxAdPlacer", "Rendered ad at position: " + i);
                }
            } else if (p.a()) {
                this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i);
            }
        }
        for (int childCount = viewGroup.getChildCount(); childCount >= 0; childCount--) {
            if (viewGroup.getChildAt(childCount) instanceof MaxNativeAdView) {
                viewGroup.removeViewAt(childCount);
            }
        }
        if (maxNativeAdViewV0.getParent() != null) {
            ((ViewGroup) maxNativeAdViewV0.getParent()).removeView(maxNativeAdViewV0);
        }
        viewGroup.addView(maxNativeAdViewV0, -1, -1);
    }

    public void setAdSize(int i, int i2) {
        this.a = new AppLovinSdkUtils.Size(i, i2);
    }

    public void setListener(Listener listener) {
        this.e = listener;
    }

    public void setNativeAdViewBinder(MaxNativeAdViewBinder maxNativeAdViewBinder) {
        this.b = maxNativeAdViewBinder;
    }

    public void updateFillablePositions(int i, int i2) {
        this.c.c(i, i2);
        if (i == -1 || i2 == -1) {
            return;
        }
        a();
    }
}
