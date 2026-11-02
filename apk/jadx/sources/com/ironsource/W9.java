package com.ironsource;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.controller.FeaturesManager;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class W9 implements InterfaceC3736ne, InterfaceC3929y4, InterfaceC3911x4, InterfaceC3875v4, InterfaceC3893w4, InterfaceC3534ca, Uc {
    private static final String m = "IronSourceAdsPublisherAgent";
    private static W9 n;
    private com.ironsource.sdk.controller.e a;
    private String b;
    private String c;
    private Y4 d;
    private C3865uc e;
    private C3565e4 g;
    private boolean f = false;
    private FeaturesManager h = FeaturesManager.getInstance();
    private R8.a i = Pb.b0().j();
    private P.a j = Pb.b0().I();
    private P k = Pb.k0().K();
    private InterfaceC3805r8 l = Pb.k0().t();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;

        a(String str, String str2, X4 x4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, this.b, this.c, (InterfaceC3929y4) w9);
        }
    }

    class b implements Runnable {
        final /* synthetic */ JSONObject a;

        b(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, (InterfaceC3929y4) w9);
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;

        c(String str, String str2, X4 x4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, this.b, this.c, (InterfaceC3911x4) w9);
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;

        d(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, w9);
        }
    }

    class e implements Runnable {
        final /* synthetic */ JSONObject a;

        e(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, (InterfaceC3911x4) w9);
        }
    }

    class f implements Runnable {
        final /* synthetic */ R9 a;
        final /* synthetic */ Map b;

        f(R9 r9, Map map) {
            this.a = r9;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3843t8.e eVar = this.a.i() ? C3843t8.e.Banner : C3843t8.e.Interstitial;
            X4 x4A = W9.this.d.a(eVar, this.a);
            C3879v8 c3879v8 = new C3879v8();
            c3879v8.a(G5.x, Boolean.valueOf(this.a.j())).a(G5.G, Boolean.valueOf(this.a.m())).a(G5.v, this.a.g()).a(G5.w, C3553da.a(this.a)).a(G5.I, Long.valueOf(M.a.b(this.a.e())));
            A8.a(C3700le.h, c3879v8.a());
            if (eVar == C3843t8.e.Banner) {
                W9 w9 = W9.this;
                w9.a.a(w9.b, w9.c, x4A, (InterfaceC3893w4) w9);
                W9 w10 = W9.this;
                w10.a.a(x4A, this.b, (InterfaceC3893w4) w10);
                return;
            }
            W9 w11 = W9.this;
            w11.a.a(w11.b, w11.c, x4A, (InterfaceC3911x4) w11);
            W9 w12 = W9.this;
            w12.a.b(x4A, this.b, w12);
        }
    }

    class g implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;

        g(X4 x4, Map map) {
            this.a = x4;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, this.b, (InterfaceC3911x4) w9);
        }
    }

    class h implements Runnable {
        final /* synthetic */ R9 a;

        h(R9 r9) {
            this.a = r9;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3843t8.e eVar = this.a.i() ? C3843t8.e.Banner : C3843t8.e.Interstitial;
            X4 x4A = W9.this.d.a(eVar, this.a);
            C3879v8 c3879v8 = new C3879v8();
            c3879v8.a(G5.x, Boolean.valueOf(this.a.j())).a(G5.v, this.a.g()).a(G5.w, C3553da.a(this.a)).a("isMultipleAdObjects", Boolean.valueOf(this.a.l()));
            A8.a(C3700le.m, c3879v8.a());
            if (eVar == C3843t8.e.Banner) {
                W9.this.a.a(x4A);
            } else {
                x4A.a(false);
                W9.this.a.b(x4A);
            }
        }
    }

    private W9(Context context, int i) {
        c(context);
    }

    W9(String str, String str2, Context context) {
        this.b = str;
        this.c = str2;
        c(context);
    }

    private Pc a(X4 x4) {
        if (x4 == null) {
            return null;
        }
        return (Pc) x4.i();
    }

    public static synchronized W9 a(Context context, int i) throws Exception {
        Logger.i(m, "getInstance()");
        if (n == null) {
            n = new W9(context, i);
        }
        return n;
    }

    public static InterfaceC3534ca a(Context context, String str, String str2) {
        return a(str, str2, context);
    }

    public static synchronized InterfaceC3534ca a(String str, String str2, Context context) {
        if (n == null) {
            A8.a(C3700le.a);
            n = new W9(str, str2, context);
        }
        return n;
    }

    private Map<String, String> a(Map<String, String> map) {
        map.put("adm", SDKUtils.decodeString(map.get("adm")));
        return map;
    }

    private Rc b(X4 x4) {
        if (x4 == null) {
            return null;
        }
        return (Rc) x4.i();
    }

    public static synchronized W9 b(Context context) throws Exception {
        return a(context, 0);
    }

    private void b(R9 r9, Map<String, String> map) {
        Logger.d(m, "loadOnNewInstance " + r9.e());
        this.a.a(new f(r9, map));
    }

    private Wc c(X4 x4) {
        if (x4 == null) {
            return null;
        }
        return (Wc) x4.i();
    }

    private void c(Context context) {
        try {
            SDKUtils.getNetworkConfiguration();
            C3678ka.a(context);
            IronSourceStorageUtils.initializeCacheDirectory(context, new Bf(SDKUtils.getNetworkConfiguration().optJSONObject(C3510b4.a.k)));
            C3678ka.e().d(SDKUtils.getSDKVersion());
            this.d = new Y4();
            C3565e4 c3565e4 = new C3565e4();
            this.g = c3565e4;
            if (context instanceof Activity) {
                c3565e4.a((Activity) context);
            }
            int debugMode = this.h.getDebugMode();
            this.e = new C3865uc();
            this.a = new com.ironsource.sdk.controller.e(context, this.g, this.d, V7.a, debugMode, this.h.getDataManagerConfig(), this.b, this.c, this.e);
            Logger.enableLogging(debugMode);
            Logger.i(m, "C'tor");
            a(context);
            this.e.d();
            this.e.e();
            this.e.a(context);
            this.e.b();
            this.e.a();
            this.e.c();
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    private void c(R9 r9, Map<String, String> map) {
        try {
            map = a(map);
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            C3879v8 c3879v8A = new C3879v8().a(G5.A, e2.getMessage()).a(G5.x, Boolean.valueOf(r9.j())).a(G5.G, Boolean.valueOf(r9.m())).a(G5.v, r9.g()).a(G5.w, C3553da.a(r9)).a(G5.I, Long.valueOf(M.a.b(r9.e())));
            M.a.a(r9.e());
            A8.a(C3700le.k, c3879v8A.a());
            IronLog.INTERNAL.error(e2.toString());
            Logger.d(m, "loadInAppBiddingAd failed decoding  ADM " + e2.getMessage());
        }
        b(r9, map);
    }

    private X4 d(C3843t8.e eVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.d.a(eVar, str);
    }

    @Override // com.ironsource.InterfaceC3534ca
    public com.ironsource.sdk.controller.e a() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3736ne, com.ironsource.InterfaceC3534ca
    public void a(Activity activity) {
        if (this.f) {
            return;
        }
        e(activity);
    }

    @Override // com.ironsource.InterfaceC3571ea
    public void a(Activity activity, R9 r9, Map<String, String> map) {
        this.g.a(activity);
        Logger.i(m, "showAd " + r9.e());
        X4 x4A = this.d.a(C3843t8.e.Interstitial, r9.e());
        if (x4A == null) {
            return;
        }
        this.a.a(new g(x4A, map));
    }

    public void a(Context context) {
        this.f = false;
        Boolean boolC = this.l.c(C3510b4.a.g);
        if (boolC == null) {
            boolC = Boolean.FALSE;
        }
        boolean zBooleanValue = boolC.booleanValue();
        this.f = zBooleanValue;
        if (zBooleanValue) {
            try {
                ((Application) context).registerActivityLifecycleCallbacks(new C3632i(this));
            } catch (Throwable th) {
                C3801r4.d().a(th);
                C3879v8 c3879v8 = new C3879v8();
                c3879v8.a(G5.y, th.getMessage());
                A8.a(C3700le.u, c3879v8.a());
            }
        }
    }

    @Override // com.ironsource.InterfaceC3571ea
    public void a(R9 r9, Map<String, String> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        map.put(C3510b4.i.y0, String.valueOf(jCurrentTimeMillis));
        M.a.a(r9.e(), jCurrentTimeMillis);
        C3879v8 c3879v8 = new C3879v8();
        c3879v8.a(G5.x, Boolean.valueOf(r9.j())).a(G5.G, Boolean.valueOf(r9.m())).a(G5.v, r9.g()).a(G5.w, C3553da.a(r9)).a(G5.I, Long.valueOf(jCurrentTimeMillis));
        A8.a(C3700le.f, c3879v8.a());
        Logger.d(m, "loadAd " + r9.e());
        O o = new O(r9);
        this.j.a(o);
        this.j.a(new JSONObject(map), EnumC3740o0.LOAD_REQUEST, o.c());
        if (c(r9)) {
            this.i.a(new C3630hf(o));
        }
        if (r9.k()) {
            c(r9, map);
        } else {
            b(r9, map);
        }
    }

    @Override // com.ironsource.InterfaceC3875v4
    public void a(C3843t8.e eVar, String str) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            if (eVar == C3843t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.a();
                    return;
                }
                return;
            }
            if (eVar == C3843t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialClick();
                    return;
                }
                return;
            }
            if (eVar != C3843t8.e.Banner || (pcA = a(x4D)) == null) {
                return;
            }
            pcA.onBannerClick();
        }
    }

    @Override // com.ironsource.InterfaceC3875v4
    public void a(C3843t8.e eVar, String str, Z0 z0) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            x4D.b(2);
            if (eVar == C3843t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.a(z0);
                    return;
                }
                return;
            }
            if (eVar == C3843t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialInitSuccess();
                    return;
                }
                return;
            }
            if (eVar != C3843t8.e.Banner || (pcA = a(x4D)) == null) {
                return;
            }
            pcA.onBannerInitSuccess();
        }
    }

    @Override // com.ironsource.InterfaceC3875v4
    public void a(C3843t8.e eVar, String str, String str2) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        C3879v8 c3879v8A = new C3879v8().a(G5.v, str).a(G5.w, eVar).a(G5.A, str2);
        if (x4D != null) {
            M m2 = M.a;
            c3879v8A.a(G5.I, Long.valueOf(m2.b(x4D.h())));
            c3879v8A.a(G5.x, Boolean.valueOf(B8.a(x4D)));
            m2.a(x4D.h());
            x4D.b(3);
            if (eVar == C3843t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.b(str2);
                }
            } else if (eVar == C3843t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialInitFailed(str2);
                }
            } else if (eVar == C3843t8.e.Banner && (pcA = a(x4D)) != null) {
                pcA.onBannerLoadFail(str2);
            }
        }
        A8.a(C3700le.i, c3879v8A.a());
    }

    @Override // com.ironsource.InterfaceC3875v4
    public void a(C3843t8.e eVar, String str, String str2, JSONObject jSONObject) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        if (x4D == null || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            Logger.i(m, "Received Event Notification: " + str2 + " for demand source: " + x4D.f());
            if (eVar == C3843t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    jSONObject.put("demandSourceName", str);
                    rcB.onInterstitialEventNotificationReceived(str2, jSONObject);
                    return;
                }
                return;
            }
            if (eVar == C3843t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    jSONObject.put("demandSourceName", str);
                    wcC.a(str2, jSONObject);
                    return;
                }
                return;
            }
            if (eVar != C3843t8.e.Banner || (pcA = a(x4D)) == null) {
                return;
            }
            jSONObject.put("demandSourceName", str);
            if (str2.equalsIgnoreCase("impressions")) {
                pcA.onBannerShowSuccess();
            }
        } catch (JSONException e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    @Override // com.ironsource.InterfaceC3929y4
    public void a(String str, int i) {
        Wc wcC;
        X4 x4D = d(C3843t8.e.RewardedVideo, str);
        if (x4D == null || (wcC = c(x4D)) == null) {
            return;
        }
        wcC.a(i);
    }

    @Override // com.ironsource.InterfaceC3893w4
    public void a(String str, C3676k8 c3676k8) {
        Pc pcA;
        X4 x4D = d(C3843t8.e.Banner, str);
        if (x4D == null || (pcA = a(x4D)) == null) {
            return;
        }
        pcA.onBannerLoadSuccess(x4D.c(), c3676k8);
    }

    @Override // com.ironsource.InterfaceC3911x4
    public void a(String str, String str2) {
        C3843t8.e eVar = C3843t8.e.Interstitial;
        X4 x4D = d(eVar, str);
        C3879v8 c3879v8 = new C3879v8();
        c3879v8.a(G5.A, str2).a(G5.v, str);
        if (x4D != null) {
            C3879v8 c3879v8A = c3879v8.a(G5.w, B8.a(x4D, eVar)).a(G5.y, x4D.e() == 2 ? G5.E : G5.F).a(G5.x, Boolean.valueOf(B8.a(x4D)));
            M m2 = M.a;
            c3879v8A.a(G5.I, Long.valueOf(m2.b(x4D.h())));
            m2.a(x4D.h());
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialLoadFailed(str2);
            }
        }
        A8.a(C3700le.g, c3879v8.a());
    }

    @Override // com.ironsource.InterfaceC3736ne
    public void a(String str, String str2, int i) {
        C3843t8.e productType;
        X4 x4A;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (productType = SDKUtils.getProductType(str)) == null || (x4A = this.d.a(productType, str2)) == null) {
            return;
        }
        x4A.c(i);
    }

    @Override // com.ironsource.InterfaceC3736ne
    public void a(String str, String str2, String str3, Map<String, String> map, Rc rc) {
        this.b = str;
        this.c = str2;
        this.a.a(new c(str, str2, this.d.a(C3843t8.e.Interstitial, str3, map, rc)));
    }

    @Override // com.ironsource.InterfaceC3736ne
    public void a(String str, String str2, String str3, Map<String, String> map, Wc wc) {
        this.b = str;
        this.c = str2;
        this.a.a(new a(str, str2, this.d.a(C3843t8.e.RewardedVideo, str3, map, wc)));
    }

    @Override // com.ironsource.InterfaceC3911x4
    public void a(String str, JSONObject jSONObject) {
        C3843t8.e eVar = C3843t8.e.Interstitial;
        X4 x4D = d(eVar, str);
        C3879v8 c3879v8A = new C3879v8().a(G5.v, str);
        if (x4D != null) {
            R9 r9C = x4D.c();
            this.j.a(jSONObject, EnumC3740o0.LOAD_SUCCESS, r9C.e());
            if (c(r9C)) {
                this.i.a(new Cif(this.k.a(r9C.e())));
            }
            C3879v8 c3879v8A2 = c3879v8A.a(G5.w, B8.a(x4D, eVar)).a(G5.x, Boolean.valueOf(B8.a(x4D)));
            M m2 = M.a;
            c3879v8A2.a(G5.I, Long.valueOf(m2.b(x4D.h())));
            m2.a(x4D.h());
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialLoadSuccess(x4D.c());
            }
        }
        A8.a(C3700le.l, c3879v8A.a());
    }

    @Override // com.ironsource.InterfaceC3736ne
    public void a(JSONObject jSONObject) {
        this.a.a(new b(jSONObject));
    }

    @Override // com.ironsource.InterfaceC3571ea
    public boolean a(R9 r9) {
        Logger.d(m, "isAdAvailable " + r9.e());
        X4 x4A = this.d.a(C3843t8.e.Interstitial, r9.e());
        if (x4A == null) {
            return false;
        }
        return x4A.d();
    }

    @Override // com.ironsource.InterfaceC3736ne
    public boolean a(String str) {
        return this.a.a(str);
    }

    @Override // com.ironsource.InterfaceC3736ne, com.ironsource.InterfaceC3534ca
    public void b(Activity activity) {
        if (this.f) {
            return;
        }
        d(activity);
    }

    @Override // com.ironsource.InterfaceC3571ea
    public void b(Activity activity, R9 r9, Map<String, String> map) {
        if (Pb.k0().h().k()) {
            this.g.a(activity);
        }
        a(r9, map);
    }

    @Override // com.ironsource.InterfaceC3571ea
    public void b(R9 r9) {
        Logger.d(m, "destroyInstance " + r9.e());
        if (c(r9)) {
            this.j.a(EnumC3740o0.DESTROYED, r9.e());
            this.i.a(new C3612gf(this.k.a(r9.e())));
        }
        this.a.a(new h(r9));
    }

    @Override // com.ironsource.InterfaceC3875v4
    public void b(C3843t8.e eVar, String str) {
        Rc rcB;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            if (eVar == C3843t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.d();
                    return;
                }
                return;
            }
            if (eVar != C3843t8.e.Interstitial || (rcB = b(x4D)) == null) {
                return;
            }
            rcB.onInterstitialClose();
        }
    }

    @Override // com.ironsource.InterfaceC3911x4
    public void b(String str) {
        X4 x4D = d(C3843t8.e.Interstitial, str);
        if (x4D != null) {
            R9 r9C = x4D.c();
            this.j.a(EnumC3740o0.SHOW_SUCCESS, r9C.e());
            if (c(r9C)) {
                this.i.a(new C3683kf(this.k.a(r9C.e())));
            }
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialShowSuccess();
            }
        }
    }

    @Override // com.ironsource.InterfaceC3929y4
    public void b(String str, String str2) {
        Wc wcC;
        X4 x4D = d(C3843t8.e.RewardedVideo, str);
        if (x4D == null || (wcC = c(x4D)) == null) {
            return;
        }
        wcC.a(str2);
    }

    @Override // com.ironsource.InterfaceC3736ne
    public void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("demandSourceName");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        this.a.a(new d(strOptString));
    }

    @Override // com.ironsource.InterfaceC3736ne, com.ironsource.InterfaceC3534ca
    public void c(Activity activity) {
        try {
            Logger.i(m, "release()");
            C3529c5.g();
            this.g.b();
            this.a.a((Context) activity);
            this.a.a();
            this.a = null;
        } catch (Exception e2) {
            C3801r4.d().a(e2);
        }
        n = null;
    }

    @Override // com.ironsource.InterfaceC3875v4
    public void c(C3843t8.e eVar, String str) {
        Wc wcC;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            if (eVar == C3843t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialOpen();
                    return;
                }
                return;
            }
            if (eVar != C3843t8.e.RewardedVideo || (wcC = c(x4D)) == null) {
                return;
            }
            wcC.b();
        }
    }

    @Override // com.ironsource.InterfaceC3929y4
    public void c(String str) {
        Wc wcC;
        X4 x4D = d(C3843t8.e.RewardedVideo, str);
        if (x4D == null || (wcC = c(x4D)) == null) {
            return;
        }
        wcC.c();
    }

    @Override // com.ironsource.InterfaceC3893w4
    public void c(String str, String str2) {
        Pc pcA;
        X4 x4D = d(C3843t8.e.Banner, str);
        if (x4D == null || (pcA = a(x4D)) == null) {
            return;
        }
        pcA.onBannerLoadFail(str2);
    }

    @Override // com.ironsource.InterfaceC3736ne
    public void c(JSONObject jSONObject) {
        this.a.a(new e(jSONObject));
    }

    public boolean c(R9 r9) {
        return r9.l() && !r9.i() && a(r9);
    }

    @Override // com.ironsource.Uc
    public void d(Activity activity) {
        try {
            this.a.e();
            this.a.a((Context) activity);
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    @Override // com.ironsource.InterfaceC3911x4
    public void d(String str, String str2) {
        X4 x4D = d(C3843t8.e.Interstitial, str);
        if (x4D != null) {
            R9 r9C = x4D.c();
            this.j.a(EnumC3740o0.SHOW_FAIL, r9C.e());
            if (c(r9C)) {
                this.i.a(new C3665jf(this.k.a(r9C.e())));
            }
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialShowFailed(str2);
            }
        }
    }

    @Override // com.ironsource.Uc
    public void e(Activity activity) {
        this.g.a(activity);
        this.a.g();
        this.a.b(activity);
    }

    @Override // com.ironsource.InterfaceC3911x4
    public void onInterstitialAdRewarded(String str, int i) {
        X4 x4D = d(C3843t8.e.Interstitial, str);
        Rc rcB = b(x4D);
        if (x4D == null || rcB == null) {
            return;
        }
        rcB.onInterstitialAdRewarded(str, i);
    }
}
