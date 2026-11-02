package com.ironsource;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.mediation.R;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.LevelPlayAdSize;
import com.unity3d.mediation.banner.LevelPlayBannerAdView;
import com.unity3d.mediation.banner.LevelPlayBannerAdViewListener;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import java.util.UUID;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Ha implements H2 {
    public static final a o = new a(null);
    private final UUID a;
    private final String b;
    private final C3545d3 c;
    private final LevelPlayBannerAdView.Config d;
    private final C3758p0 e;
    private final C3551d9 f;
    private final V8 g;
    private final LevelPlayAdSize h;
    private LevelPlayBannerAdViewListener i;
    private final String j;
    private Ea k;
    private Boolean l;
    private C3717md m;
    private boolean n;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Pair<String, LevelPlayBannerAdView.Config> a(Context context, AttributeSet attributeSet) {
            Intrinsics.checkNotNullParameter(context, "context");
            String str = "";
            if (attributeSet == null) {
                return TuplesKt.to("", LevelPlayBannerAdView.Config.Companion.empty());
            }
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LevelPlayBannerAdView);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            try {
                LevelPlayBannerAdView.Config.Builder builder = new LevelPlayBannerAdView.Config.Builder();
                if (typedArrayObtainStyledAttributes.hasValue(R.styleable.LevelPlayBannerAdView_bidFloor)) {
                    builder.setBidFloor(typedArrayObtainStyledAttributes.getFloat(R.styleable.LevelPlayBannerAdView_bidFloor, -1.0f));
                }
                String string = typedArrayObtainStyledAttributes.getString(R.styleable.LevelPlayBannerAdView_adSize);
                if (string != null) {
                    builder.setAdSize(LevelPlayAdSize.Companion.createAdSize$mediationsdk_release(string));
                }
                String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.LevelPlayBannerAdView_adUnitId);
                if (string2 != null) {
                    str = string2;
                }
                return TuplesKt.to(str, builder.build());
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    public Ha(UUID adId, String adUnitId, C3545d3 bannerContainer, LevelPlayBannerAdView.Config config, C3758p0 adTools, C3551d9 impressionDataListenerHolder) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(bannerContainer, "bannerContainer");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(impressionDataListenerHolder, "impressionDataListenerHolder");
        this.a = adId;
        this.b = adUnitId;
        this.c = bannerContainer;
        this.d = config;
        this.e = adTools;
        this.f = impressionDataListenerHolder;
        this.g = Pb.w.d().B();
        LevelPlayAdSize adSize = config.getAdSize();
        this.h = adSize == null ? LevelPlayAdSize.BANNER : adSize;
        String placementName = config.getPlacementName();
        this.j = placementName == null ? "" : placementName;
        adTools.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                Ha.a(this.f$0);
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Ha(UUID uuid, String str, C3545d3 c3545d3, LevelPlayBannerAdView.Config config, C3758p0 c3758p0, C3551d9 c3551d9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        uuid = (i & 1) != 0 ? C3950z7.a.a() : uuid;
        c3758p0 = (i & 16) != 0 ? new C3758p0(IronSource.a.BANNER, E0.b.MEDIATION) : c3758p0;
        this(uuid, str, c3545d3, config, c3758p0, (i & 32) != 0 ? new C3551d9(c3758p0) : c3551d9);
    }

    private final Ea a() {
        C3717md c3717md;
        this.m = this.e.a(this.j);
        Context context = this.c.getContext();
        if (context instanceof Activity) {
            ContextProvider.getInstance().updateActivity((Activity) context);
        }
        UUID uuid = this.a;
        String str = this.b;
        C3717md c3717md2 = this.m;
        C3717md c3717md3 = null;
        if (c3717md2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerPlacement");
            c3717md = null;
        } else {
            c3717md = c3717md2;
        }
        Q2 q2 = new Q2(uuid, str, c3717md, this.h, null, null, this.g.a(), this.d.getBidFloor(), 48, null);
        this.e.f().a(new C0(this.e, q2, null, 4, null));
        ISBannerSize iSBannerSizeA = this.e.a(q2.i());
        E5 e5F = this.e.f();
        C3758p0 c3758p0 = this.e;
        C3717md c3717md4 = this.m;
        if (c3717md4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerPlacement");
        } else {
            c3717md3 = c3717md4;
        }
        e5F.a(new C3582f3(c3758p0, iSBannerSizeA, c3717md3.c()));
        return new Ea(this, this.e, q2, this.c, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ha ha) {
        ha.e.f().a(new C3721n(IronSource.a.BANNER, ha.a, ha.b));
        Double bidFloor = ha.d.getBidFloor();
        if (bidFloor != null) {
            ha.e.f().f().a(bidFloor.doubleValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ha ha, Ea ea) {
        ha.e.f().f().b();
        ea.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ha ha, LevelPlayBannerAdViewListener levelPlayBannerAdViewListener) {
        ha.i = levelPlayBannerAdViewListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ha ha, LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        ha.f.a(levelPlayImpressionDataListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayAdError levelPlayAdError, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdLoadFailed() error: " + levelPlayAdError);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdLoadFailed(levelPlayAdError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayAdInfo levelPlayAdInfo, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdClicked() adInfo: " + levelPlayAdInfo);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdClicked(levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayAdInfo levelPlayAdInfo, LevelPlayAdError levelPlayAdError, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdDisplayFailed() adInfo " + levelPlayAdInfo + " error: " + levelPlayAdError);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdDisplayFailed(levelPlayAdInfo, levelPlayAdError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(boolean z, LevelPlayAdInfo levelPlayAdInfo, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdLoaded() isReload: " + z + " adInfo: " + levelPlayAdInfo);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdLoaded(levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(final Ha ha) {
        if (!ha.n) {
            IronLog.INTERNAL.warning(C3758p0.a(ha.e, "Banner not loaded", (String) null, 2, (Object) null));
            return;
        }
        if (ha.k == null) {
            IronLog.INTERNAL.warning(C3758p0.a(ha.e, "Banner already destroyed", (String) null, 2, (Object) null));
            return;
        }
        C3936yb.a(ha.e, new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Ha.c(this.f$0);
            }
        }, 0L, 2, null);
        Ea ea = ha.k;
        if (ea != null) {
            ea.c();
        }
        ha.k = null;
        ha.l = null;
        ha.i = null;
        ha.f.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Ha ha, Ea ea) {
        ha.e.f().f().c();
        ea.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(LevelPlayAdInfo levelPlayAdInfo, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdDisplayed() adInfo: " + levelPlayAdInfo);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdDisplayed(levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Ha ha) {
        ha.c.removeAllViews();
        ViewParent parent = ha.c.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(ha.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(LevelPlayAdInfo levelPlayAdInfo, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdLeftApplication() adInfo: " + levelPlayAdInfo);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdLeftApplication(levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Ha ha) {
        if (ha.n) {
            IronLog.INTERNAL.warning(C3758p0.a(ha.e, "Banner load already called", (String) null, 2, (Object) null));
            return;
        }
        ha.n = true;
        if (ha.h()) {
            Ea eaA = ha.a();
            ha.k = eaA;
            Boolean bool = ha.l;
            if (bool != null) {
                if (bool.booleanValue()) {
                    eaA.f();
                } else {
                    eaA.d();
                }
            }
            eaA.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(LevelPlayAdInfo levelPlayAdInfo, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdScreenDismissed() adInfo: " + levelPlayAdInfo);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdCollapsed(levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(LevelPlayAdInfo levelPlayAdInfo, Ha ha) {
        IronLog.CALLBACK.info("LevelPlayBannerAdViewListener.onBannerAdScreenPresented() adInfo: " + levelPlayAdInfo);
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = ha.i;
        if (levelPlayBannerAdViewListener != null) {
            levelPlayBannerAdViewListener.onAdExpanded(levelPlayAdInfo);
        }
    }

    private final boolean h() {
        if (this.b.length() == 0) {
            String string = this.a.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            a(new LevelPlayAdError(string, this.b, LevelPlayAdError.ERROR_CODE_NO_AD_UNIT_ID_SPECIFIED, "Ad unit ID should be specified"));
            return false;
        }
        if (!this.e.a()) {
            String string2 = this.a.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            a(new LevelPlayAdError(string2, this.b, LevelPlayAdError.ERROR_CODE_LOAD_BEFORE_INIT_SUCCESS_CALLBACK, "load must be called after init success callback"));
            return false;
        }
        C3456ab c3456abA = Pb.w.d().f().a();
        if (c3456abA != null && c3456abA.a(this.b, LevelPlay.AdFormat.BANNER)) {
            return true;
        }
        LevelPlayBannerAdViewListener levelPlayBannerAdViewListener = this.i;
        if (levelPlayBannerAdViewListener != null) {
            String string3 = this.a.toString();
            Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
            levelPlayBannerAdViewListener.onAdLoadFailed(new LevelPlayAdError(string3, this.b, LevelPlayAdError.ERROR_CODE_INVALID_AD_UNIT_ID, "Invalid ad unit id"));
        }
        return false;
    }

    @Override // com.ironsource.H2
    public void a(final LevelPlayAdError levelPlayAdError) {
        if (levelPlayAdError != null) {
            this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Ha.a(levelPlayAdError, this);
                }
            });
        }
    }

    @Override // com.ironsource.H2
    public void a(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Ha.e(adInfo, this);
            }
        });
    }

    @Override // com.ironsource.H2
    public void a(final LevelPlayAdInfo adInfo, final LevelPlayAdError levelPlayAdError) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (levelPlayAdError != null) {
            this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Ha.a(adInfo, levelPlayAdError, this);
                }
            });
        }
    }

    @Override // com.ironsource.H2
    public void a(final LevelPlayAdInfo adInfo, final boolean z) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Ha.a(z, adInfo, this);
            }
        });
    }

    public final void a(final LevelPlayBannerAdViewListener levelPlayBannerAdViewListener) {
        IronLog.API.info("LevelPlayBannerAdView.setBannerListener()");
        this.e.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                Ha.a(this.f$0, levelPlayBannerAdViewListener);
            }
        });
    }

    public final void a(final LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        IronLog.API.info("LevelPlayBannerAdView.setImpressionDataListener()");
        this.e.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Ha.a(this.f$0, levelPlayImpressionDataListener);
            }
        });
    }

    public final void b() {
        IronLog.API.info("LevelPlayBannerAdView.destroyBanner()");
        this.e.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Ha.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.H2
    public void b(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Ha.b(adInfo, this);
            }
        });
    }

    public final UUID c() {
        return this.a;
    }

    @Override // com.ironsource.H2
    public void c(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                Ha.d(adInfo, this);
            }
        });
    }

    public final LevelPlayAdSize d() {
        return this.h;
    }

    @Override // com.ironsource.H2
    public void d(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                Ha.a(adInfo, this);
            }
        });
    }

    public final String e() {
        return this.b;
    }

    @Override // com.ironsource.H2
    public void e(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                Ha.c(adInfo, this);
            }
        });
    }

    public final LevelPlayBannerAdViewListener f() {
        return this.i;
    }

    public final String g() {
        return this.j;
    }

    public final void i() {
        IronLog.API.info("LevelPlayBannerAdView.loadAd()");
        this.e.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Ha.d(this.f$0);
            }
        });
    }

    public final void j() {
        IronLog.API.info("LevelPlayBannerAdView.pauseAutoRefresh()");
        final Ea ea = this.k;
        if (ea != null) {
            this.e.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    Ha.a(this.f$0, ea);
                }
            });
        } else {
            this.l = Boolean.FALSE;
        }
    }

    public final void k() {
        IronLog.API.info("LevelPlayBannerAdView.resumeAutoRefresh()");
        final Ea ea = this.k;
        if (ea != null) {
            this.e.a(new Runnable() { // from class: com.ironsource.Ha$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    Ha.b(this.f$0, ea);
                }
            });
        } else {
            this.l = Boolean.TRUE;
        }
    }
}
