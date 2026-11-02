package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxErrorCode;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k6 extends n5 {
    private static final AtomicBoolean o = new AtomicBoolean();
    private final e3 g;
    private final JSONObject h;
    private final List i;
    private final com.applovin.impl.mediation.ads.a.InterfaceC0019a j;
    private final WeakReference k;
    private final String l;
    private long m;
    private final List n;

    private class b extends n5 {
        private final long g;
        private final int h;
        private final c3 i;
        private final List j;

        class a extends m3 {
            final /* synthetic */ MaxAdFormat b;
            final /* synthetic */ String c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a, MaxAdFormat maxAdFormat, String str) {
                super(interfaceC0019a);
                this.b = maxAdFormat;
                this.c = str;
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoadFailed(String str, MaxError maxError) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - b.this.g;
                com.applovin.impl.sdk.p unused = b.this.c;
                if (com.applovin.impl.sdk.p.a()) {
                    b.this.c.a(b.this.b, "Ad failed to load in " + jElapsedRealtime + " ms for " + this.b.getLabel() + " ad unit " + str + " with error: " + maxError);
                }
                b.this.b("failed to load ad: " + maxError.getCode());
                b bVar = b.this;
                bVar.a(bVar.i, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, jElapsedRealtime, maxError);
                if (b.this.h >= b.this.j.size() - 1) {
                    k6.this.b(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
                } else {
                    b bVar2 = b.this;
                    b.this.a.s0().a((n5) new b(bVar2.h + 1, b.this.j), i6.b.MEDIATION);
                }
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoaded(MaxAd maxAd) {
                b.this.b("loaded ad");
                long jElapsedRealtime = SystemClock.elapsedRealtime() - b.this.g;
                com.applovin.impl.sdk.p unused = b.this.c;
                if (com.applovin.impl.sdk.p.a()) {
                    b.this.c.a(b.this.b, "Ad loaded in " + jElapsedRealtime + "ms for " + this.b.getLabel() + " ad unit " + this.c);
                }
                c3 c3Var = (c3) maxAd;
                b.this.a(c3Var, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, jElapsedRealtime, null);
                int i = b.this.h;
                while (true) {
                    i++;
                    if (i >= b.this.j.size()) {
                        k6.this.b(c3Var);
                        return;
                    } else {
                        b bVar = b.this;
                        bVar.a((c3) bVar.j.get(i), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                    }
                }
            }
        }

        private b(int i, List list) {
            super(k6.this.b, k6.this.a, k6.this.g.b());
            this.g = SystemClock.elapsedRealtime();
            this.h = i;
            this.i = (c3) list.get(i);
            this.j = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(c3 c3Var, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, MaxError maxError) {
            k6.this.n.add(new MaxNetworkResponseInfoImpl(adLoadState, a4.a(c3Var.b()), c3Var.F(), c3Var.Z(), j, c3Var.C(), maxError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            String strB = k6.this.g.b();
            MaxAdFormat maxAdFormatA = k6.this.g.a();
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Loading ad " + (this.h + 1) + " of " + this.j.size() + " from " + this.i.c() + " for " + maxAdFormatA.getLabel() + " ad unit " + strB);
            }
            b("started to load ad");
            Context context = (Context) k6.this.k.get();
            Activity activityW0 = context instanceof Activity ? (Activity) context : this.a.w0();
            this.a.c0().b(this.i);
            this.a.Z().loadThirdPartyMediatedAd(strB, this.i, activityW0, new a(k6.this.j, maxAdFormatA, strB));
        }
    }

    public k6(e3 e3Var, JSONObject jSONObject, Context context, com.applovin.impl.sdk.l lVar, com.applovin.impl.mediation.ads.a.InterfaceC0019a interfaceC0019a) {
        super("TaskProcessMediationWaterfall", lVar, e3Var.b());
        this.g = e3Var;
        this.h = jSONObject;
        this.j = interfaceC0019a;
        this.k = new WeakReference(context);
        this.l = JsonUtils.getString(jSONObject, "mcode", "");
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ads", new JSONArray());
        this.i = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            this.i.add(c3.a(e3Var, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, lVar));
        }
        this.n = new ArrayList(this.i.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(MaxError maxError) {
        ArrayList arrayList = new ArrayList(this.n.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.n) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder("======FAILED AD LOADS======\n");
            int i = 0;
            while (i < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i);
                i++;
                sb.append(i).append(") ").append(maxNetworkResponseInfo2.getMediatedNetwork().getName()).append("\n..code: ").append(maxNetworkResponseInfo2.getError().getCode()).append("\n..message: ").append(maxNetworkResponseInfo2.getError().getMessage()).append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb.toString());
        }
        String strB = this.g.b();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.m;
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d(this.b, "Waterfall failed in " + jElapsedRealtime + "ms for " + this.g.a().getLabel() + " ad unit " + strB + " with error: " + maxError);
        }
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.h, "waterfall_name", ""), JsonUtils.getString(this.h, "waterfall_test_name", ""), jElapsedRealtime, this.n, this.g, JsonUtils.optList(JsonUtils.getJSONArray(this.h, "mwf_info_urls", null), Collections.EMPTY_LIST), this.l, JsonUtils.getString(this.h, "event_id", "")));
        x2.a(this.j, strB, maxError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c3 c3Var) {
        this.a.c0().c(c3Var);
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.m;
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d(this.b, "Waterfall loaded in " + jElapsedRealtime + "ms from " + c3Var.c() + " for " + this.g.a().getLabel() + " ad unit " + this.g.b());
        }
        c3Var.a(new MaxAdWaterfallInfoImpl(c3Var, jElapsedRealtime, this.n, this.l));
        x2.f(this.j, c3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        u7.a("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", this.a.w0());
    }

    @Override // java.lang.Runnable
    public void run() {
        final MaxErrorImpl maxErrorImpl;
        this.m = SystemClock.elapsedRealtime();
        int i = 0;
        if (this.h.optBoolean("is_testing", false) && !this.a.u0().c() && o.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.k6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            });
        }
        String strB = this.g.b();
        MaxAdFormat maxAdFormatA = this.g.a();
        if (this.i.size() > 0) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Starting waterfall for " + maxAdFormatA.getLabel() + " ad unit " + strB + " with " + this.i.size() + " ad(s)...");
            }
            this.a.s0().a(new b(i, this.i));
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.k(this.b, "No ads were returned from the server for " + maxAdFormatA.getLabel() + " ad unit " + strB);
        }
        u7.a(strB, maxAdFormatA, this.h, this.a);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.h, "settings", new JSONObject());
        long j = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        if (a4.a(this.h, strB, this.a)) {
            maxErrorImpl = new MaxErrorImpl(MaxErrorCode.INVALID_AD_UNIT_ID, "Ad Unit ID " + strB + " is invalid or disabled.\nMake sure to use an Ad Unit ID from the MAX dashboard that is enabled and configured for the current application.\nFor more information, see https://support.axon.ai/en/max/getting-started#step-2-create-an-ad-unit\nNote: New ad units cannot load ads until 30-60 minutes after they are created");
            if (u7.c(this.a) && ((Boolean) this.a.a(c5.L6)).booleanValue()) {
                j = 0;
            }
        } else {
            maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device");
        }
        if (j <= 0) {
            b(maxErrorImpl);
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(j);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.k6$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(maxErrorImpl);
            }
        };
        if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", Boolean.FALSE).booleanValue()) {
            i0.a(millis, this.a, runnable);
        } else {
            AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
        }
    }
}
