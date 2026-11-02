package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.a4;
import com.applovin.impl.a7;
import com.applovin.impl.c3;
import com.applovin.impl.c5;
import com.applovin.impl.e3;
import com.applovin.impl.e5;
import com.applovin.impl.g3;
import com.applovin.impl.g5;
import com.applovin.impl.g6;
import com.applovin.impl.h2;
import com.applovin.impl.h5;
import com.applovin.impl.i;
import com.applovin.impl.i5;
import com.applovin.impl.i6;
import com.applovin.impl.j2;
import com.applovin.impl.l3;
import com.applovin.impl.n5;
import com.applovin.impl.o3;
import com.applovin.impl.o6;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t6;
import com.applovin.impl.u7;
import com.applovin.impl.v3;
import com.applovin.impl.w3;
import com.applovin.impl.x2;
import com.applovin.impl.x3;
import com.applovin.impl.x4;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.unity.androidbridge.AndroidBridgeConstants;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {
    private final l a;
    private final p b;
    private final g5 c;
    private final AtomicReference d = new AtomicReference();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[MaxAdapter.InitializationStatus.values().length];
            a = iArr;
            try {
                iArr[MaxAdapter.InitializationStatus.DOES_NOT_APPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[MaxAdapter.InitializationStatus.NOT_INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class b implements MaxAdListener, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, com.applovin.impl.mediation.ads.a.InterfaceC0019a {
        private final c3 a;
        private com.applovin.impl.mediation.ads.a.InterfaceC0019a b;

        public b(c3 c3Var, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
            this.a = c3Var;
            this.b = interfaceC0019a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.a.J().b(maxAd);
            }
            x2.e(this.b, maxAd);
        }

        public void a(com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
            this.b = interfaceC0019a;
        }

        public void a(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            MediationServiceImpl.this.a.m().a(this.a, com.applovin.impl.sdk.h.c.CLICK);
            MediationServiceImpl.this.a(this.a, this.b);
            x2.a((MaxAdListener) this.b, maxAd);
        }

        public void a(MaxAd maxAd, MaxError maxError, Bundle bundle) {
            this.a.a(bundle);
            this.a.d0();
            MediationServiceImpl.this.a(this.a, maxError, this.b);
            if (maxAd.getFormat() == MaxAdFormat.REWARDED && (maxAd instanceof g3)) {
                ((g3) maxAd).m0();
            }
        }

        public void a(MaxAd maxAd, MaxReward maxReward, Bundle bundle) {
            this.a.a(bundle);
            x2.a(this.b, maxAd, maxReward);
            MediationServiceImpl.this.a.s0().a((n5) new t6((g3) maxAd, MediationServiceImpl.this.a), i6.b.OTHER);
        }

        public void b(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            x2.b(this.b, maxAd);
        }

        public void c(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            this.a.e0();
            p unused = MediationServiceImpl.this.b;
            if (p.a()) {
                MediationServiceImpl.this.b.a("MediationService", "Scheduling impression for ad via callback...");
            }
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.a, this.b);
            if (!((Boolean) MediationServiceImpl.this.a.a(v3.M8)).booleanValue() || this.a.u().compareAndSet(false, true)) {
                MediationServiceImpl.this.a.m().a(this.a, com.applovin.impl.sdk.h.c.SHOW);
                MediationServiceImpl.this.a.u().b(this.a, "DID_DISPLAY");
                if (maxAd.getFormat().isFullscreenAd()) {
                    MediationServiceImpl.this.a.J().a(this.a);
                }
                x2.c(this.b, maxAd);
            }
        }

        public void d(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            x2.d(this.b, maxAd);
        }

        public void e(final MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            this.a.f0();
            MediationServiceImpl.this.a.m().a(this.a, com.applovin.impl.sdk.h.c.HIDE);
            MediationServiceImpl.this.a(this.a);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxAd);
                }
            }, maxAd instanceof g3 ? ((g3) maxAd).o0() : 0L);
        }

        public void f(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            this.a.h0();
            MediationServiceImpl.this.a.m().a(this.a, com.applovin.impl.sdk.h.c.LOAD);
            MediationServiceImpl.this.b(this.a);
            x2.f(this.b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            a(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            a(maxAd, maxError, (Bundle) null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            c(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            d(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            e(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            this.a.h0();
            MediationServiceImpl.this.b(this.a, maxError, this.b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            f(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            a(maxAd, maxReward, (Bundle) null);
        }
    }

    public MediationServiceImpl(l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
        this.c = new g5(lVar);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, h hVar, String str, i5 i5Var, MaxAdFormat maxAdFormat, h5.a aVar, boolean z, String str2, MaxError maxError) {
        h5 h5VarA;
        String str3;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        if (z) {
            if (p.a()) {
                str3 = str2;
                this.b.a("MediationService", "Signal collection successful from: " + hVar.g() + " for Ad Unit ID: " + str + " with signal: \"" + str3 + "\"");
            } else {
                str3 = str2;
            }
            h5VarA = h5.a(i5Var, hVar, str3, j, jElapsedRealtime);
            this.c.a(h5VarA, i5Var, str, maxAdFormat);
            HashMap map = new HashMap();
            CollectionUtils.putStringIfValid("network_name", i5Var.c(), map);
            CollectionUtils.putStringIfValid("adapter_class", i5Var.b(), map);
            CollectionUtils.putStringIfValid(TapjoyConstants.TJC_ADAPTER_VERSION, hVar.b(), map);
            CollectionUtils.putStringIfValid("duration_ms", String.valueOf(jElapsedRealtime), map);
            CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, String.valueOf(maxAdFormat.getLabel()), map);
            CollectionUtils.putStringIfValid("ad_unit_id", str, map);
            this.a.R().d(h2.j0, map);
        } else {
            if (p.a()) {
                this.b.b("MediationService", "Signal collection failed from: " + hVar.g() + " for Ad Unit ID: " + str + " with error message: \"" + maxError.getMessage() + "\"");
            }
            h5VarA = h5.a(i5Var, hVar, maxError, j, jElapsedRealtime);
            a(h5VarA, i5Var, hVar);
        }
        aVar.a(h5VarA);
        hVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c3 c3Var) {
        MediationServiceImpl mediationServiceImpl;
        c3 c3Var2;
        this.a.u().b(c3Var, "DID_HIDE");
        HashMap map = new HashMap(1);
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.z0().e());
        if (!((Boolean) this.a.a(c5.R3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        boolean z = c3Var.w().get();
        if (((Boolean) this.a.a(c5.b3)).booleanValue()) {
            HashMap map2 = new HashMap();
            map2.put("ad_hidden_callback_manually_invoked", Boolean.valueOf(z));
            mediationServiceImpl = this;
            c3Var2 = c3Var;
            mediationServiceImpl.a("mclose", null, map, map2, null, c3Var2, true);
        } else {
            mediationServiceImpl = this;
            c3Var2 = c3Var;
            a("mclose", map, c3Var2);
        }
        long jV = c3Var2.V();
        long jK = c3Var2.K();
        Map map3 = CollectionUtils.map("duration_ms", String.valueOf(jV));
        map3.put("details", "foreground_duration_ms=" + jK + ",ad_hidden_callback_manually_invoked=" + z);
        mediationServiceImpl.a.R().a(h2.y0, c3Var2, map3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c3 c3Var, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        this.a.u().b(c3Var, "DID_CLICKED");
        this.a.u().b(c3Var, "DID_CLICK");
        if (c3Var.R().endsWith("click")) {
            this.a.u().b(c3Var);
            x2.a((MaxAdRevenueListener) interfaceC0019a, (MaxAd) c3Var);
        }
        HashMap map = new HashMap(1);
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.z0().e());
        if (!((Boolean) this.a.a(c5.R3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mclick", map, c3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c3 c3Var, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a, String str) {
        String str2 = "Failed to load " + c3Var + ": adapter init failed with error: " + str;
        if (p.a()) {
            this.b.k("MediationService", str2);
        }
        b(c3Var, new MaxErrorImpl(MaxAdapterError.NOT_INITIALIZED.getErrorCode(), "Adapter initialization failed"), interfaceC0019a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c3 c3Var, MaxError maxError, MaxAdListener maxAdListener) {
        this.a.m().a(c3Var, com.applovin.impl.sdk.h.c.SHOW_ERROR);
        this.a.u().b(c3Var, "DID_FAIL_DISPLAY");
        a(maxError, c3Var, true);
        if (c3Var.u().compareAndSet(false, true)) {
            x2.a(maxAdListener, c3Var, maxError);
        }
    }

    private void a(g3 g3Var) {
        if (g3Var.getFormat() == MaxAdFormat.REWARDED) {
            this.a.s0().a((n5) new a7(g3Var, this.a), i6.b.OTHER);
        }
    }

    private void a(final g3 g3Var, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a, final Activity activity, final Map map, final Map map2) {
        this.a.J().a(false);
        a(g3Var, (MaxAdListener) interfaceC0019a);
        if (p.a()) {
            this.b.a("MediationService", "Scheduling impression for ad manually...");
        }
        processRawAdImpression(g3Var, interfaceC0019a);
        if (((Boolean) this.a.a(v3.v8)).booleanValue() && this.a.T() == null && this.a.S().a((MaxAd) g3Var)) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(g3Var, map, map2, activity);
                }
            }, ((Long) this.a.a(v3.w8)).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g3 g3Var, h hVar, Activity activity, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a, Map map, Map map2) {
        a(g3Var);
        hVar.b(g3Var, activity);
        a(g3Var, interfaceC0019a, activity, map, map2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g3 g3Var, h hVar, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a, Map map, Map map2) {
        a(g3Var);
        hVar.a(g3Var, viewGroup, lifecycle, activity);
        a(g3Var, interfaceC0019a, activity, map, map2);
    }

    private void a(final g3 g3Var, final MaxAdListener maxAdListener) {
        final Long l = (Long) this.a.a(v3.k8);
        if (l.longValue() <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(g3Var, l, maxAdListener);
            }
        }, l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g3 g3Var, Long l, MaxAdListener maxAdListener) {
        if (g3Var.u().get()) {
            return;
        }
        String str = "Ad (" + g3Var.k() + ") has not been displayed after " + l + "ms. Failing ad display...";
        p.h("MediationService", str);
        a(g3Var, new MaxErrorImpl(-1, str), maxAdListener);
        this.a.J().b(g3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g3 g3Var, Map map, Map map2, Activity activity) {
        this.a.S().a(g3Var.getAdUnitId(), (String) null, g3Var.getFormat(), i.SEQUENTIAL_OR_PRECACHE, map, map2, activity, (com.applovin.impl.mediation.ads.a.InterfaceC0019a) null);
    }

    private void a(h5 h5Var, i5 i5Var, h hVar) {
        long jB = h5Var.b();
        HashMap map = new HashMap(3);
        map.put("{LOAD_TIME_MS}", String.valueOf(jB));
        CollectionUtils.putStringIfValid("{ADAPTER_VERSION}", hVar.b(), map);
        CollectionUtils.putStringIfValid("{SDK_VERSION}", hVar.i(), map);
        a("serr", map, h5Var.c(), i5Var);
        Map mapA = j2.a(h5Var.c());
        CollectionUtils.putStringIfValid("network_name", i5Var.c(), mapA);
        CollectionUtils.putStringIfValid("adapter_class", i5Var.b(), mapA);
        CollectionUtils.putStringIfValid(TapjoyConstants.TJC_ADAPTER_VERSION, hVar.b(), mapA);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(jB), mapA);
        this.a.R().d(h2.k0, mapA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, x4 x4Var, String str) {
        if (p.a()) {
            this.b.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + hVar.g());
        }
        x4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_NOT_INITIALIZED, "Could not initialize adapter: " + str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, String str, MaxAdapterParametersImpl maxAdapterParametersImpl, c3 c3Var, Activity activity, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        hVar.a(str, maxAdapterParametersImpl, c3Var, activity, new b(c3Var, interfaceC0019a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(x4 x4Var, h hVar, MaxAdapterParametersImpl maxAdapterParametersImpl, i5 i5Var, Activity activity) {
        if (x4Var.d()) {
            return;
        }
        if (p.a()) {
            this.b.a("MediationService", "Collecting signal for now-initialized adapter: " + hVar.g());
        }
        hVar.a(maxAdapterParametersImpl, i5Var, activity, x4Var);
    }

    private void a(MaxError maxError, c3 c3Var) {
        HashMap map = new HashMap(3);
        long jI = c3Var.I();
        map.put("{LOAD_TIME_MS}", String.valueOf(jI));
        if (c3Var.getFormat().isFullscreenAd()) {
            o.a aVarB = this.a.J().b(c3Var.getAdUnitId());
            map.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(aVarB.a()));
            map.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(aVarB.b()));
            map.put("{FAILOVER_LOAD}", String.valueOf(((g3) c3Var).z0()));
        }
        a("mlerr", map, maxError, c3Var);
        Map mapA = j2.a(c3Var);
        mapA.putAll(j2.a(maxError));
        mapA.put("duration_ms", String.valueOf(jI));
        mapA.put("details", "sdk_initialized=" + this.a.E0());
        this.a.R().d(h2.q0, mapA);
    }

    private void a(MaxError maxError, c3 c3Var, boolean z) {
        HashMap map = new HashMap(1);
        if (c3Var instanceof g3) {
            map.put("{PREVIOUS_FAILED_NETWORK_NAME}", StringUtils.emptyIfNull(((g3) c3Var).x0()));
        }
        a("mierr", map, maxError, c3Var, z);
        if (!z || c3Var == null) {
            return;
        }
        this.a.R().a(h2.x0, c3Var, maxError, CollectionUtils.map("duration_ms", String.valueOf(c3Var.G())));
    }

    private void a(String str, List list, Map map, Map map2, MaxError maxError, o3 o3Var, boolean z) {
        this.a.s0().a((n5) new g6(str, list, map, map2, maxError, o3Var, this.a, z), i6.b.OTHER);
    }

    private void a(String str, Map map, o3 o3Var) {
        a(str, map, (MaxError) null, o3Var);
    }

    private void a(String str, Map map, MaxError maxError, o3 o3Var) {
        a(str, map, maxError, o3Var, true);
    }

    private void a(String str, Map map, MaxError maxError, o3 o3Var, boolean z) {
        Map map2 = CollectionUtils.map(map);
        map2.put("{PLACEMENT}", z ? StringUtils.emptyIfNull(o3Var.getPlacement()) : "");
        map2.put("{CUSTOM_DATA}", z ? StringUtils.emptyIfNull(o3Var.e()) : "");
        if (o3Var instanceof c3) {
            map2.put("{CREATIVE_ID}", z ? StringUtils.emptyIfNull(((c3) o3Var).getCreativeId()) : "");
        }
        a(str, null, map2, null, maxError, o3Var, z);
    }

    private boolean a(long j) {
        return System.currentTimeMillis() - j <= ((Long) this.a.a(c5.O2)).longValue();
    }

    private h b(g3 g3Var) {
        h hVarB = g3Var.B();
        if (hVarB != null) {
            return hVarB;
        }
        this.a.J().a(false);
        if (p.a()) {
            this.b.k("MediationService", "Failed to show " + g3Var + ": adapter not found");
        }
        p.h("MediationService", "There may be an integration problem with the adapter for Ad Unit ID '" + g3Var.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
        throw new IllegalStateException("Could not find adapter for provided ad");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c3 c3Var) {
        this.a.u().b(c3Var, "DID_LOAD");
        if (c3Var.R().endsWith("load")) {
            this.a.u().b(c3Var);
        }
        HashMap map = new HashMap(3);
        long jI = c3Var.I();
        map.put("{LOAD_TIME_MS}", String.valueOf(jI));
        if (c3Var.getFormat().isFullscreenAd()) {
            o.a aVarB = this.a.J().b(c3Var.getAdUnitId());
            map.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(aVarB.a()));
            map.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(aVarB.b()));
            map.put("{FAILOVER_LOAD}", String.valueOf(((g3) c3Var).z0()));
        }
        a("load", map, c3Var);
        Map mapA = j2.a(c3Var);
        mapA.put("duration_ms", String.valueOf(jI));
        mapA.put("details", "sdk_initialized=" + this.a.E0());
        this.a.R().d(h2.p0, mapA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c3 c3Var, MaxError maxError, MaxAdListener maxAdListener) {
        a(maxError, c3Var);
        destroyAd(c3Var);
        x2.a(maxAdListener, c3Var.getAdUnitId(), maxError);
    }

    public void collectSignal(final i5 i5Var, Context context, final h5.a aVar) {
        if (i5Var == null) {
            throw new IllegalArgumentException("No spec specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        e3 e3VarU = i5Var.u();
        final String strB = e3VarU.b();
        final MaxAdFormat maxAdFormatA = e3VarU.a();
        h5 h5VarB = this.c.b(i5Var, strB, maxAdFormatA);
        if (h5VarB != null) {
            aVar.a(h5.a(h5VarB));
            return;
        }
        final h hVarA = this.a.V().a(i5Var, i5Var.A());
        if (hVarA == null) {
            aVar.a(h5.a(i5Var, new MaxErrorImpl("Could not load adapter")));
            return;
        }
        final x4 x4Var = new x4("SignalCollection:" + i5Var.c());
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        Executor executor = x4.j;
        x4Var.a(executor, new x4.b() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda5
            @Override // com.applovin.impl.x4.b
            public final void a(boolean z, Object obj, Object obj2) {
                this.f$0.a(jElapsedRealtime, hVarA, strB, i5Var, maxAdFormatA, aVar, z, (String) obj, (MaxError) obj2);
            }
        });
        o6.a(i5Var.m(), x4Var, new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + i5Var.c() + ") timed out collecting signal"), "MediationService", this.a);
        final Activity activityW0 = context instanceof Activity ? (Activity) context : this.a.w0();
        final MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(i5Var, strB, maxAdFormatA);
        if (i5Var.w()) {
            x4 x4VarA = this.a.U().a(i5Var, activityW0);
            x4VarA.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(x4Var, hVarA, maxAdapterParametersImplA, i5Var, activityW0);
                }
            });
            x4VarA.a(executor, new x4.a() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda7
                @Override // com.applovin.impl.x4.a
                public final void a(Object obj) {
                    this.f$0.a(hVarA, x4Var, (String) obj);
                }
            });
            return;
        }
        if (i5Var.x()) {
            x4 x4VarA2 = this.a.U().a(i5Var, activityW0);
            if (x4VarA2.e() && !i5Var.z()) {
                if (p.a()) {
                    this.b.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + hVarA.g());
                }
                x4Var.a(new MaxErrorImpl("Could not initialize adapter: " + ((String) x4VarA2.b())));
                return;
            }
        }
        if (p.a()) {
            this.b.a("MediationService", "Collecting signal for adapter: " + hVarA.g());
        }
        hVarA.a(maxAdapterParametersImplA, i5Var, activityW0, x4Var);
    }

    public void destroyAd(MaxAd maxAd) {
        if (maxAd instanceof c3) {
            if (p.a()) {
                this.b.d("MediationService", "Destroying " + maxAd);
            }
            c3 c3Var = (c3) maxAd;
            h hVarB = c3Var.B();
            if (hVarB != null) {
                hVarB.a();
                c3Var.t();
            }
            this.a.k().c(c3Var.T());
            this.a.m().a(c3Var, com.applovin.impl.sdk.h.c.DESTROY);
        }
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return (JSONObject) this.d.getAndSet(null);
    }

    public void loadAd(String str, String str2, MaxAdFormat maxAdFormat, i iVar, Map<String, Object> map, Map<String, Object> map2, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No Ad Unit ID specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (interfaceC0019a == null) {
            throw new IllegalArgumentException("No listener specified");
        }
        if (TextUtils.isEmpty(this.a.X())) {
            p.h("AppLovinSdk", "Mediation provider is null. Please set the mediation provider in the AppLovinSdkInitializationConfiguration.Builder when initializing the AppLovinSDK.");
        }
        if (!this.a.E0()) {
            p.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        List<String> adUnitIds = this.a.L() != null ? this.a.L().getAdUnitIds() : null;
        boolean zStartsWith = str.startsWith("test_mode");
        if (adUnitIds != null && adUnitIds.size() > 0 && !adUnitIds.contains(str) && !zStartsWith) {
            if (u7.c(this.a)) {
                String str3 = "Ad Unit ID " + str + " has not been initialized. When you use selective init, any ad units that you do not explicitly specify are excluded from serving ads for the current session. For more information visit our docs: https://support.axon.ai/en/max/android/overview/advanced-settings#selective-init";
                if (((Boolean) this.a.a(c5.M6)).booleanValue()) {
                    throw new RuntimeException(str3);
                }
                if (p.a()) {
                    this.b.b("MediationService", str3);
                }
            }
            this.a.E().a(h2.h1, "uninitialized_ad_unit_id", CollectionUtils.hashMap("ad_unit_id", str), "uninitialized_ad_unit_id" + str);
        }
        this.a.c();
        if (str.length() != 16 && !zStartsWith && !this.a.k0().startsWith("05TMD")) {
            p.h("MediationService", "Ad unit ID provided for " + maxAdFormat.getLabel() + " is invalid (" + str + "). Expected length: 16 characters.\n\nStack trace:\n" + Log.getStackTraceString(new Throwable()));
        }
        if (this.a.a(maxAdFormat)) {
            p.h("MediationService", "Ad load failed due to disabled ad format " + maxAdFormat.getLabel());
            x2.a(interfaceC0019a, str, new MaxErrorImpl(-1, "Disabled ad format " + maxAdFormat.getLabel()));
            return;
        }
        this.a.X0();
        x2.a((MaxAdRequestListener) interfaceC0019a, str, true);
        if (this.a.T() != null) {
            this.a.T().a(str, str2, maxAdFormat, iVar, map, map2, context, interfaceC0019a);
        } else {
            this.a.S().a(str, str2, maxAdFormat, iVar, map, map2, context, interfaceC0019a);
        }
    }

    public void loadThirdPartyMediatedAd(final String str, final c3 c3Var, final Activity activity, final com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        x4 x4VarA;
        if (c3Var == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (p.a()) {
            this.b.a("MediationService", "Loading " + c3Var + "...");
        }
        this.a.R().a(h2.o0, c3Var, CollectionUtils.hashMap("details", "sdk_initialized=" + this.a.E0()));
        this.a.m().a(c3Var, com.applovin.impl.sdk.h.c.LOADING);
        this.a.u().b(c3Var, "WILL_LOAD");
        final h hVarA = this.a.V().a(c3Var);
        if (hVarA == null) {
            String str2 = "Failed to load " + c3Var + ": adapter not loaded";
            p.h("MediationService", str2);
            b(c3Var, new MaxErrorImpl(-5001, str2), interfaceC0019a);
            return;
        }
        final MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(c3Var);
        if (c3Var.b0()) {
            x4VarA = this.a.U().a(c3Var, activity);
        } else {
            if (c3Var.c0()) {
                this.a.U().a(c3Var, activity);
            }
            x4VarA = null;
        }
        final c3 c3VarA = c3Var.a(hVarA);
        hVarA.a(str, c3VarA);
        c3VarA.i0();
        if (x4VarA == null) {
            hVarA.a(str, maxAdapterParametersImplA, c3VarA, activity, new b(c3VarA, interfaceC0019a));
            return;
        }
        Executor executor = x4.j;
        x4VarA.a(executor, new x4.a() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda2
            @Override // com.applovin.impl.x4.a
            public final void a(Object obj) {
                this.f$0.a(c3Var, interfaceC0019a, (String) obj);
            }
        });
        x4VarA.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(hVarA, str, maxAdapterParametersImplA, c3VarA, activity, interfaceC0019a);
            }
        });
    }

    public void maybeFireAppKilledWhilePlayingMediatedAdPostback() {
        String str = (String) this.a.b(e5.R);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObjectJsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(str, new JSONObject());
        if (a(JsonUtils.getLong(jSONObjectJsonObjectFromJsonString, "timestamp_ms", 0L))) {
            Long l = (Long) this.a.b(e5.S);
            String string = l != null ? l.toString() : "";
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "ad_info");
            Map mapTryToStringMap = jSONObject != null ? JsonUtils.tryToStringMap(jSONObject) : new HashMap(1);
            CollectionUtils.putStringIfValid("duration_ms", string, mapTryToStringMap);
            this.a.E().d(h2.X0, mapTryToStringMap);
            List list = JsonUtils.getList(jSONObjectJsonObjectFromJsonString, "app_killed_urls", Collections.EMPTY_LIST);
            if (CollectionUtils.isEmpty(list)) {
                if (p.a()) {
                    this.b.k("MediationService", "Unable to track app killed during mediated ad from previous run. Missing app killed tracking URLs.");
                }
            } else {
                JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "user_info");
                Map<String, String> mapTryToStringMap2 = jSONObject2 != null ? JsonUtils.tryToStringMap(jSONObject2) : a4.c(this.a);
                mapTryToStringMap2.put("{IMP_DURATION_MS}", string);
                JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "postback_body");
                a("mappk", list, mapTryToStringMap2, jSONObject3 != null ? JsonUtils.tryToStringObjectMap(jSONObject3) : null, null, null, true);
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object objA = this.a.J().a();
            if (objA instanceof c3) {
                a((MaxError) MaxAdapterError.WEBVIEW_ERROR, (c3) objA, true);
            }
        }
    }

    public void processAdDisplayErrorPostbackForUserError(MaxError maxError, c3 c3Var) {
        a(maxError, c3Var, false);
    }

    public void processAdapterInitializationPostback(o3 o3Var, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap map = new HashMap(2);
        map.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        map.put("{INIT_TIME_MS}", String.valueOf(j));
        a("minit", map, new MaxErrorImpl(str), o3Var);
        Map mapA = j2.a(o3Var);
        CollectionUtils.putStringIfValid("adapter_init_status", String.valueOf(initializationStatus.getCode()), mapA);
        CollectionUtils.putStringIfValid("error_message", str, mapA);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j), mapA);
        switch (a.a[initializationStatus.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.a.R().d(h2.h0, mapA);
                break;
            case 4:
                this.a.R().d(h2.i0, mapA);
                break;
            case 5:
            case 6:
                this.a.Q();
                if (p.a()) {
                    this.a.Q().k("MediationService", "Adapter init postback called while the adapter is not fully initialized.");
                }
                this.a.E().a(h2.d, "adapterNotInitializedForPostback", mapA);
                break;
        }
    }

    public void processCallbackAdImpressionPostback(c3 c3Var, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        if (c3Var.R().endsWith("cimp")) {
            this.a.u().b(c3Var);
            x2.a((MaxAdRevenueListener) interfaceC0019a, (MaxAd) c3Var);
        }
        HashMap map = new HashMap(2);
        if (c3Var instanceof g3) {
            map.put("{PREVIOUS_FAILED_NETWORK_NAME}", StringUtils.emptyIfNull(((g3) c3Var).x0()));
        }
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.z0().e());
        if (!((Boolean) this.a.a(c5.R3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mcimp", map, c3Var);
        this.a.R().a(h2.v0, c3Var);
    }

    public void processRawAdImpression(c3 c3Var, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        this.a.u().b(c3Var, "WILL_DISPLAY");
        if (c3Var.R().endsWith("mimp")) {
            this.a.u().b(c3Var);
            x2.a((MaxAdRevenueListener) interfaceC0019a, (MaxAd) c3Var);
        }
        if (((Boolean) this.a.a(c5.Z4)).booleanValue()) {
            this.a.a0().a(w3.g, x3.a(c3Var), Long.valueOf(System.currentTimeMillis() - this.a.M()));
        }
        HashMap map = new HashMap(3);
        if (c3Var instanceof g3) {
            g3 g3Var = (g3) c3Var;
            map.put("{TIME_TO_SHOW_MS}", String.valueOf(g3Var.s0()));
            map.put("{PREVIOUS_FAILED_NETWORK_NAME}", StringUtils.emptyIfNull(g3Var.x0()));
        }
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.z0().e());
        if (!((Boolean) this.a.a(c5.R3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mimp", map, c3Var);
        this.a.R().a(h2.u0, c3Var);
    }

    public void processViewabilityAdImpressionPostback(l3 l3Var, long j, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        if (l3Var.R().endsWith("vimp")) {
            this.a.u().b(l3Var);
            x2.a((MaxAdRevenueListener) interfaceC0019a, (MaxAd) l3Var);
        }
        HashMap map = new HashMap(3);
        map.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
        map.put("{USED_VIEWABILITY_TIMER}", String.valueOf(l3Var.t0()));
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.z0().e());
        if (!((Boolean) this.a.a(c5.R3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mvimp", map, l3Var);
        this.a.R().a(h2.w0, l3Var);
    }

    public void processWaterfallInfoPostback(MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl, MaxError maxError, long j, long j2) {
        e3 requestParameters = maxAdWaterfallInfoImpl.getRequestParameters();
        String strB = requestParameters.b();
        MaxAdFormat maxAdFormatA = requestParameters.a();
        HashMap map = new HashMap();
        CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, maxAdFormatA.getLabel(), map);
        CollectionUtils.putStringIfValid("ad_unit_id", strB, map);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j2), map);
        CollectionUtils.putStringIfValid("ad_event_id", maxAdWaterfallInfoImpl.getEventId(), map);
        if (((Boolean) this.a.a(c5.N)).booleanValue()) {
            Object obj = requestParameters.c().get("era");
            if (obj == null) {
                obj = 0;
            }
            CollectionUtils.putObjectToStringIfValid("attempt_number", obj, map);
            CollectionUtils.putStringIfValid("details", "consecutiveAdLoadFailuresCount = " + (this.a.T() != null ? this.a.T().b(strB) : this.a.S().b(strB)), map);
        }
        if (maxError != null) {
            map.putAll(j2.a(maxError));
        }
        this.a.R().d(h2.r0, map);
        if (CollectionUtils.isEmpty(maxAdWaterfallInfoImpl.getPostbackUrls())) {
            return;
        }
        HashMap map2 = new HashMap(8);
        CollectionUtils.putStringIfValid("mcode", maxAdWaterfallInfoImpl.getMCode(), map2);
        CollectionUtils.putStringIfValid("ad_unit_id", strB, map2);
        CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, maxAdFormatA.getLabel(), map2);
        CollectionUtils.putStringIfValid("name", maxAdWaterfallInfoImpl.getName(), map2);
        CollectionUtils.putLongIfValid("request_latency_ms", Long.valueOf(j2), map2);
        CollectionUtils.putLongIfValid("request_start_timestamp_ms", Long.valueOf(j), map2);
        CollectionUtils.putLongIfValid("wf_latency_ms", Long.valueOf(maxAdWaterfallInfoImpl.getLatencyMillis()), map2);
        map2.put("arn_info", requestParameters.f().e());
        List<MaxNetworkResponseInfo> networkResponses = maxAdWaterfallInfoImpl.getNetworkResponses();
        ArrayList arrayList = new ArrayList(networkResponses.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : networkResponses) {
            MaxMediatedNetworkInfo mediatedNetwork = maxNetworkResponseInfo.getMediatedNetwork();
            HashMap map3 = new HashMap(5);
            CollectionUtils.putStringIfValid("bcode", ((MaxNetworkResponseInfoImpl) maxNetworkResponseInfo).getBCode(), map3);
            map3.put("name", mediatedNetwork.getName());
            CollectionUtils.putLongIfValid("latency_ms", Long.valueOf(maxNetworkResponseInfo.getLatencyMillis()), map3);
            map3.put("load_state", Integer.valueOf(maxNetworkResponseInfo.getAdLoadState().ordinal()));
            MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxNetworkResponseInfo.getError();
            if (maxErrorImpl != null) {
                HashMap map4 = new HashMap(4);
                map4.put(AndroidBridgeConstants.ERROR_CODE, Integer.valueOf(maxErrorImpl.getCode()));
                map4.put("error_message", maxErrorImpl.getMessage());
                map4.put("third_party_sdk_error_code", Integer.valueOf(maxErrorImpl.getMediatedNetworkErrorCode()));
                map4.put("third_party_sdk_error_message", maxErrorImpl.getMediatedNetworkErrorMessage());
                map3.put("error_info", map4);
            }
            arrayList.add(map3);
        }
        map2.put("ads_info", arrayList);
        a("mwf_info", maxAdWaterfallInfoImpl.getPostbackUrls(), Collections.EMPTY_MAP, map2, null, null, false);
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.d.set(jSONObject);
    }

    public void showFullscreenAd(final g3 g3Var, final Activity activity, final Map<String, Object> map, final Map<String, Object> map2, final com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        if (g3Var == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity == null && MaxAdFormat.APP_OPEN != g3Var.getFormat()) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.a.J().a(true);
        final h hVarB = b(g3Var);
        long jU0 = g3Var.u0();
        if (p.a()) {
            this.b.d("MediationService", "Showing ad " + g3Var.getAdUnitId() + " with delay of " + jU0 + "ms...");
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(g3Var, hVarB, activity, interfaceC0019a, map, map2);
            }
        }, jU0);
    }

    public void showFullscreenAd(final g3 g3Var, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity, final Map<String, Object> map, final Map<String, Object> map2, final com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        if (g3Var == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.a.J().a(true);
        final h hVarB = b(g3Var);
        long jU0 = g3Var.u0();
        if (p.a()) {
            this.b.d("MediationService", "Showing ad " + g3Var.getAdUnitId() + " with delay of " + jU0 + "ms...");
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(g3Var, hVarB, viewGroup, lifecycle, activity, interfaceC0019a, map, map2);
            }
        }, jU0);
    }
}
