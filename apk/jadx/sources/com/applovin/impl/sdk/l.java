package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.a4;
import com.applovin.impl.b5;
import com.applovin.impl.c5;
import com.applovin.impl.d3;
import com.applovin.impl.d4;
import com.applovin.impl.d5;
import com.applovin.impl.e5;
import com.applovin.impl.f1;
import com.applovin.impl.f5;
import com.applovin.impl.f7;
import com.applovin.impl.g1;
import com.applovin.impl.h2;
import com.applovin.impl.h4;
import com.applovin.impl.h6;
import com.applovin.impl.i6;
import com.applovin.impl.k1;
import com.applovin.impl.l7;
import com.applovin.impl.mediation.MaxSegmentCollectionImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.n5;
import com.applovin.impl.n8;
import com.applovin.impl.o2;
import com.applovin.impl.o3;
import com.applovin.impl.o4;
import com.applovin.impl.p3;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.r0;
import com.applovin.impl.r8;
import com.applovin.impl.s0;
import com.applovin.impl.s1;
import com.applovin.impl.s2;
import com.applovin.impl.s7;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t3;
import com.applovin.impl.t7;
import com.applovin.impl.u7;
import com.applovin.impl.v0;
import com.applovin.impl.v1;
import com.applovin.impl.v3;
import com.applovin.impl.x2;
import com.applovin.impl.x6;
import com.applovin.impl.y3;
import com.applovin.impl.y5;
import com.applovin.impl.z3;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxSegmentCollection;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserData;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    public static l F0;
    protected static Context G0;
    private static boolean H0;
    private static final boolean J0;
    private static volatile com.applovin.impl.c K0;
    private AppLovinSdk.SdkInitializationListener B0;
    private AppLovinSdk.SdkInitializationListener C0;
    private String a;
    private String b;
    private WeakReference c;
    private final long d;
    private long e;
    private long f;
    private Long g;
    private long h;
    private final AppLovinSdkSettings j;
    private MaxSegmentCollection k;
    private com.applovin.impl.mediation.e k0;
    private String l;
    private volatile AppLovinUserData m;
    private List n0;
    private volatile AppLovinSdk r;
    private boolean s0;
    private String x0;
    private AppLovinSdkInitializationConfiguration y0;
    private static final Object L0 = new Object();
    private static final long I0 = System.currentTimeMillis();
    private final AtomicBoolean i = new AtomicBoolean();
    private final AtomicReference n = new AtomicReference();
    private final AtomicReference o = new AtomicReference();
    private final AtomicReference p = new AtomicReference();
    private final AtomicReference q = new AtomicReference();
    private final p s = new p(this);
    private final com.applovin.impl.f t = new com.applovin.impl.f(this);
    private final d3 u = new d3(this);
    private final s1 v = new s1(this);
    private final s7 w = new s7(this);
    private final AtomicReference x = new AtomicReference();
    private final AtomicReference y = new AtomicReference();
    private final AtomicReference z = new AtomicReference();
    private final AtomicReference A = new AtomicReference();
    private final AtomicReference B = new AtomicReference();
    private final AtomicReference C = new AtomicReference();
    private final AtomicReference D = new AtomicReference();
    private final AtomicReference E = new AtomicReference();
    private final AtomicReference F = new AtomicReference();
    private final AtomicReference G = new AtomicReference();
    private final AtomicReference H = new AtomicReference();
    private final AtomicReference I = new AtomicReference();
    private final AtomicReference J = new AtomicReference();
    private final AtomicReference K = new AtomicReference();
    private final AtomicReference L = new AtomicReference();
    private final AtomicReference M = new AtomicReference();
    private final AtomicReference N = new AtomicReference();
    private final AtomicReference O = new AtomicReference();
    private final AtomicReference P = new AtomicReference();
    private final AtomicReference Q = new AtomicReference();
    private final AtomicReference R = new AtomicReference();
    private final AtomicReference S = new AtomicReference();
    private final AtomicReference T = new AtomicReference();
    private final AtomicReference U = new AtomicReference();
    private final AtomicReference V = new AtomicReference();
    private final AtomicReference W = new AtomicReference();
    private final AtomicReference X = new AtomicReference();
    private final AtomicReference Y = new AtomicReference();
    private final AtomicReference Z = new AtomicReference();
    private final AtomicReference a0 = new AtomicReference();
    private final AtomicReference b0 = new AtomicReference();
    private final AtomicReference c0 = new AtomicReference();
    private final AtomicReference d0 = new AtomicReference();
    private final AtomicReference e0 = new AtomicReference();
    private final AtomicReference f0 = new AtomicReference();
    private final AtomicReference g0 = new AtomicReference();
    private final AtomicReference h0 = new AtomicReference();
    private final AtomicReference i0 = new AtomicReference();
    private final AtomicReference j0 = new AtomicReference();
    private final AtomicReference l0 = new AtomicReference();
    private final AtomicReference m0 = new AtomicReference();
    private final Object o0 = new Object();
    private final AtomicBoolean p0 = new AtomicBoolean(true);
    private final AtomicBoolean q0 = new AtomicBoolean();
    private final AtomicBoolean r0 = new AtomicBoolean();
    private boolean t0 = false;
    private boolean u0 = false;
    private boolean v0 = false;
    private int w0 = 0;
    private final Object z0 = new Object();
    private SdkConfigurationImpl A0 = new SdkConfigurationImpl(this);
    private final n5 D0 = new x6(this, true, "scheduleAdLoadIntegrationError", new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.N0();
        }
    });
    private final n5 E0 = new x6(this, true, "sdkInit", new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.O0();
        }
    });

    class a implements y5.b {
        a() {
        }

        @Override // com.applovin.impl.y5.b
        public void a(JSONObject jSONObject) {
            boolean zIsValid = JsonUtils.isValid(jSONObject);
            l.this.c(jSONObject);
            if (((Boolean) l.this.a(v3.u8)).booleanValue()) {
                l lVar = l.this;
                lVar.k0 = new com.applovin.impl.mediation.e(lVar);
            }
            l.this.n().a();
            s0.a(jSONObject, zIsValid, l.this);
            Boolean bool = JsonUtils.getBoolean(jSONObject, "smd", Boolean.FALSE);
            l.this.W().a(bool.booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
            l.this.E().b();
            JSONObject jSONObject2 = new JSONObject();
            JsonUtils.putString(jSONObject2, "default_browser_package_name", StringUtils.emptyIfNull(m.K()));
            JsonUtils.putBoolean(jSONObject2, "init_success", zIsValid);
            JsonUtils.putInt(jSONObject2, "default_preferences_key_count", PreferenceManager.getDefaultSharedPreferences(l.G0).getAll().size());
            l.this.y0().d(h2.g, CollectionUtils.map("details", jSONObject2.toString()));
            l lVar2 = l.this;
            lVar2.n0 = lVar2.a(jSONObject);
            if (zIsValid) {
                l.this.A0.setEnabledAmazonAdUnitIds(CollectionUtils.explode(JsonUtils.getString(jSONObject, "eaaui", "")));
            }
            l.this.u0().a(jSONObject);
            l.this.b(jSONObject);
            x2.b(((Boolean) l.this.a(c5.H6)).booleanValue());
            x2.a(((Boolean) l.this.a(c5.I6)).booleanValue());
            l.this.S0();
            if (!((Boolean) l.this.a(c5.n3)).booleanValue() || zIsValid || !s0.a(l.p())) {
                l.this.Q0();
                return;
            }
            l.this.Q();
            if (p.a()) {
                l.this.Q().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
            }
            l.this.V0();
        }
    }

    class b implements v0.c {
        b() {
        }

        @Override // com.applovin.impl.v0.c
        public void a(v0.b bVar) {
            l.this.Q();
            if (p.a()) {
                l.this.Q().a("AppLovinSdk", "Terms and Privacy Policy flow completed with status: " + bVar);
            }
            l.this.r0.set(bVar.b());
            if (!bVar.a()) {
                l.this.c("Initializing SDK in MAX environment...");
                return;
            }
            l.this.Q();
            if (p.a()) {
                l.this.Q().a("AppLovinSdk", "Re-initializing SDK with the updated privacy settings...");
            }
            l.this.U0();
            l.this.T0();
        }
    }

    class c implements y5.b {
        c() {
        }

        @Override // com.applovin.impl.y5.b
        public void a(JSONObject jSONObject) {
            l.this.c(jSONObject);
            l.this.i.set(false);
            l.this.Q0();
        }
    }

    class d implements d4.a {
        final /* synthetic */ d4 a;

        d(d4 d4Var) {
            this.a = d4Var;
        }

        @Override // com.applovin.impl.d4.a
        public void a() {
            l.this.Q();
            if (p.a()) {
                l.this.Q().d("AppLovinSdk", "Connected to internet - re-initializing SDK");
            }
            synchronized (l.this.o0) {
                if (!l.this.s0) {
                    l.this.U0();
                }
            }
            this.a.b(this);
        }

        @Override // com.applovin.impl.d4.a
        public void b() {
        }
    }

    static {
        try {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    u7.c();
                }
            });
            J0 = true;
        } catch (Throwable unused) {
            J0 = false;
        }
    }

    public l(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.s0 = false;
        F0 = this;
        this.j = appLovinSdkSettings;
        this.d = System.currentTimeMillis();
        this.s0 = true;
        if (!I0()) {
            throw new RuntimeException("As of version 12.0.0, the AppLovin MAX SDK requires Java 8. For more information visit our docs: https://support.axon.ai/en/max/android/overview/integration");
        }
        G0 = context.getApplicationContext();
        if (context instanceof Activity) {
            this.c = new WeakReference((Activity) context);
        }
    }

    private void D0() {
        Context context = G0;
        p pVarQ = Q();
        f5 f5VarR0 = r0();
        v0 v0VarY = y();
        a(context);
        o0();
        k();
        e0();
        U().a(MaxAdapter.InitializationStatus.INITIALIZING);
        NativeCrashReporter.a(this);
        String str = this.a;
        if (str == null || str.length() != 86) {
            p.h("AppLovinSdk", "SDK key provided is invalid (" + this.a + "). Expected length: 86 characters.\n\nStack trace:\n" + Log.getStackTraceString(new Throwable()));
        }
        if (StringUtils.isValidString(this.b) && this.b.length() != 36) {
            String str2 = "Axon event key length " + this.b + " is invalid - expected 36";
            if (u7.c(this)) {
                throw new IllegalArgumentException(str2);
            }
            p.h("AppLovinSdk", str2);
        }
        if (v0VarY.l()) {
            String str3 = "Terms Flow has been replaced. " + v0VarY.g();
            if (u7.c(this)) {
                throw new IllegalStateException(str3);
            }
            p.h("AppLovinSdk", str3);
        }
        if (u7.j()) {
            p.h("AppLovinSdk", "Failed to find class for name: com.applovin.sdk.AppLovinSdk. Please ensure proguard rules have not been omitted from the build.");
        }
        if (!u7.b(this)) {
            p.h("AppLovinSdk", "Detected non-Android core JSON library. Please double-check that none of your third party libraries include custom implementation of org.json.JSONObject.");
        }
        if (u7.m(context)) {
            this.j.setVerboseLogging(true);
        }
        q0().a(c5.k, Boolean.valueOf(this.j.isVerboseLoggingEnabled()));
        a4.e(this);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        e5 e5Var = e5.c;
        if (TextUtils.isEmpty((String) f5VarR0.a(e5Var, (Object) null, defaultSharedPreferences))) {
            this.u0 = true;
            f5VarR0.b(e5Var, Boolean.toString(true), defaultSharedPreferences);
        } else {
            f5VarR0.b(e5Var, Boolean.toString(false), defaultSharedPreferences);
        }
        e5 e5Var2 = e5.d;
        if (((Boolean) f5VarR0.a(e5Var2, Boolean.FALSE)).booleanValue()) {
            if (p.a()) {
                pVarQ.a("AppLovinSdk", "Initializing SDK for non-maiden launch");
            }
            this.v0 = true;
        } else {
            if (p.a()) {
                pVarQ.a("AppLovinSdk", "Initializing SDK for maiden launch");
            }
            f5VarR0.b(e5Var2, Boolean.TRUE);
            f5VarR0.b(e5.t, Boolean.valueOf(v0VarY.j()));
        }
        e5 e5Var3 = e5.e;
        this.f = ((Long) f5VarR0.a(e5Var3, 0L)).longValue() + 1;
        r0().b(e5Var3, Long.valueOf(this.f));
        e5 e5Var4 = e5.f;
        this.g = (Long) f5VarR0.a(e5Var4, null);
        r0().b(e5Var4, Long.valueOf(I0));
        e5 e5Var5 = e5.g;
        String str4 = (String) f5VarR0.a(e5Var5, null);
        if (StringUtils.isValidString(str4)) {
            if (AppLovinSdk.VERSION_CODE > u7.g(str4)) {
                f5VarR0.b(e5Var5, AppLovinSdk.VERSION);
            }
        } else {
            f5VarR0.b(e5Var5, AppLovinSdk.VERSION);
        }
        y0().d(h2.e, CollectionUtils.map("details", "isInitProviderContextSet=" + H0));
    }

    public static boolean I0() {
        return J0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L0() {
        if (s0().f()) {
            return;
        }
        Q();
        if (p.a()) {
            Q().a("AppLovinSdk", "Timing out adapters init...");
        }
        s0().g();
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M0() {
        i6 i6VarS0 = s0();
        int i = this.w0 + 1;
        this.w0 = i;
        i6VarS0.a((n5) new y5(i, this, new c()), i6.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N0() {
        if (J0()) {
            o2.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O0() {
        synchronized (this.o0) {
            boolean zA = s0.a(p());
            if (!J0()) {
                Q();
                if (p.a()) {
                    Q().a("AppLovinSdk", "non-MAX mediation detected, mediation provider is: " + X());
                }
            }
            if (!((Boolean) a(c5.o3)).booleanValue() || zA) {
                U0();
            }
            if (((Boolean) a(c5.n3)).booleanValue() && !zA) {
                Q();
                if (p.a()) {
                    Q().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
                }
                V0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        Long l = (Long) a(c5.w3);
        if (l.longValue() >= 0 && this.i.compareAndSet(false, true)) {
            n8.a(l.longValue(), false, this, new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.M0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0() {
        if (!J0()) {
            c("Initializing SDK in non-MAX environment...");
            return;
        }
        if (!this.q0.compareAndSet(false, true)) {
            c("Consent flow is already shown. Initializing SDK in MAX environment...");
        } else if (!y().j()) {
            c("Consent flow is not enabled. Initializing SDK in MAX environment...");
        } else {
            y().a(w0(), new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0() {
        d4 d4VarE0 = e0();
        d4VarE0.a(new d(d4VarE0));
    }

    private Map Y() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) a(c5.u4)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    public static com.applovin.impl.c a(Context context) {
        if (K0 == null) {
            synchronized (L0) {
                if (K0 == null) {
                    K0 = new com.applovin.impl.c(context);
                }
            }
        }
        return K0;
    }

    public static String a(int i) {
        return a(i, (List) null);
    }

    public static String a(int i, List list) {
        String string = p().getResources().getString(i);
        return list != null ? String.format(string, list.toArray()) : string;
    }

    public static String a(String str) {
        return a(str, (List) null);
    }

    public static String a(String str, List list) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Context contextP = p();
        return a(contextP.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, contextP.getPackageName()), list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a(JSONObject jSONObject) {
        List listAsList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(FacebookConstants.PLACEMENT_IDS_SEPARATOR));
        ArrayList arrayList = new ArrayList(listAsList.size());
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            MaxAdFormat fromString = MaxAdFormat.formatFromString((String) it.next());
            if (fromString != null) {
                arrayList.add(fromString);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        sdkInitializationListener.onSdkInitialized(this.A0);
    }

    public static void b(Context context) {
        if (context == null) {
            return;
        }
        G0 = context.getApplicationContext();
        H0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        Q();
        if (p.a()) {
            Q().a("AppLovinSdk", "Calling back publisher's initialization completion handler...");
        }
        sdkInitializationListener.onSdkInitialized(this.A0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration) {
        D0();
        this.j.attachAppLovinSdk(this);
        String pluginVersion = appLovinSdkInitializationConfiguration.getPluginVersion();
        if (pluginVersion != null) {
            p.g("AppLovinSdk", "Setting plugin version: " + pluginVersion);
            q0().a(c5.W3, pluginVersion);
        }
        if (appLovinSdkInitializationConfiguration.isExceptionHandlerEnabled() && ((Boolean) a(c5.s)).booleanValue()) {
            AppLovinExceptionHandler.shared().addSdk(this);
            AppLovinExceptionHandler.shared().enable();
        }
        i6 i6VarS0 = s0();
        n5 n5Var = this.D0;
        i6.b bVar = i6.b.CORE;
        i6VarS0.a(n5Var, bVar);
        s0().a(this.E0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        if (u7.c(this)) {
            throw new IllegalStateException(str);
        }
        HashMap map = new HashMap();
        map.put("details", AppLovinMediationProvider.ADMOB);
        map.put("error_message", str);
        E().a(h2.h1, "adapterVersionMismatch", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        Iterator it = JsonUtils.getList(jSONObject, "error_messages", Collections.EMPTY_LIST).iterator();
        while (it.hasNext()) {
            p.h("AppLovinSdk", (String) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        Q();
        if (p.a()) {
            Q().a("AppLovinSdk", str);
        }
        s0().a(new h6(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        if (JsonUtils.isValid(jSONObject)) {
            this.h = System.currentTimeMillis();
            s0.c(jSONObject, this);
            s0.b(jSONObject, this);
            s0.a(jSONObject, this);
            p3.f(jSONObject, this);
            p3.d(jSONObject, this);
            p3.e(jSONObject, this);
            p3.g(jSONObject, this);
        }
    }

    private void d() {
        i6 i6VarS0 = s0();
        int i = this.w0 + 1;
        this.w0 = i;
        i6VarS0.a((n5) new y5(i, this, new a()), i6.b.CORE);
    }

    public static long o() {
        return I0;
    }

    public static Context p() {
        return G0;
    }

    public g1 A() {
        Object g1Var = this.V.get();
        if (g1Var == null) {
            synchronized (this.V) {
                g1Var = this.V.get();
                if (g1Var == null) {
                    g1Var = new g1(this);
                    this.V.set(g1Var);
                }
            }
        }
        if (g1Var == this.V) {
            g1Var = null;
        }
        return (g1) g1Var;
    }

    public r8 A0() {
        Object r8Var = this.M.get();
        if (r8Var == null) {
            synchronized (this.M) {
                r8Var = this.M.get();
                if (r8Var == null) {
                    r8Var = new r8(this);
                    this.M.set(r8Var);
                }
            }
        }
        if (r8Var == this.M) {
            r8Var = null;
        }
        return (r8) r8Var;
    }

    public m B() {
        Object mVar = this.B.get();
        if (mVar == null) {
            synchronized (this.B) {
                mVar = this.B.get();
                if (mVar == null) {
                    mVar = new m(this);
                    this.B.set(mVar);
                }
            }
        }
        if (mVar == this.B) {
            mVar = null;
        }
        return (m) mVar;
    }

    public AppLovinSdk B0() {
        return this.r;
    }

    public k1 C() {
        Object k1Var = this.E.get();
        if (k1Var == null) {
            synchronized (this.E) {
                k1Var = this.E.get();
                if (k1Var == null) {
                    k1Var = new k1(this);
                    this.E.set(k1Var);
                }
            }
        }
        if (k1Var == this.E) {
            k1Var = null;
        }
        return (k1) k1Var;
    }

    public boolean C0() {
        return this.v0;
    }

    public String D() {
        return this.x0;
    }

    public s1 E() {
        return this.v;
    }

    public boolean E0() {
        boolean z;
        synchronized (this.o0) {
            z = this.t0;
        }
        return z;
    }

    public String F() {
        return z0().d();
    }

    public boolean F0() {
        return this.u0;
    }

    public EventServiceImpl G() {
        Object eventServiceImpl = this.p.get();
        if (eventServiceImpl == null) {
            synchronized (this.p) {
                eventServiceImpl = this.p.get();
                if (eventServiceImpl == null) {
                    eventServiceImpl = new EventServiceImpl(this);
                    this.p.set(eventServiceImpl);
                }
            }
        }
        if (eventServiceImpl == this.p) {
            eventServiceImpl = null;
        }
        return (EventServiceImpl) eventServiceImpl;
    }

    public boolean G0() {
        boolean z;
        synchronized (this.z0) {
            z = this.y0 != null;
        }
        return z;
    }

    public v1 H() {
        Object v1Var = this.l0.get();
        if (v1Var == null) {
            synchronized (this.l0) {
                v1Var = this.l0.get();
                if (v1Var == null) {
                    v1Var = new v1(this);
                    this.l0.set(v1Var);
                }
            }
        }
        if (v1Var == this.l0) {
            v1Var = null;
        }
        return (v1) v1Var;
    }

    public boolean H0() {
        boolean z;
        synchronized (this.o0) {
            z = this.s0;
        }
        return z;
    }

    public n I() {
        Object nVar = this.H.get();
        if (nVar == null) {
            synchronized (this.H) {
                nVar = this.H.get();
                if (nVar == null) {
                    nVar = new n(this);
                    this.H.set(nVar);
                }
            }
        }
        if (nVar == this.H) {
            nVar = null;
        }
        return (n) nVar;
    }

    public o J() {
        Object oVar = this.J.get();
        if (oVar == null) {
            synchronized (this.J) {
                oVar = this.J.get();
                if (oVar == null) {
                    oVar = new o(this);
                    this.J.set(oVar);
                }
            }
        }
        if (oVar == this.J) {
            oVar = null;
        }
        return (o) oVar;
    }

    public boolean J0() {
        return StringUtils.containsIgnoreCase(X(), AppLovinMediationProvider.MAX);
    }

    public Activity K() {
        WeakReference weakReference;
        if (!((Boolean) a(c5.J4)).booleanValue() || (weakReference = this.c) == null) {
            return null;
        }
        return (Activity) weakReference.get();
    }

    public boolean K0() {
        return u7.a("com.unity3d.player.UnityPlayerActivity");
    }

    public AppLovinSdkInitializationConfiguration L() {
        return this.y0;
    }

    public long M() {
        return this.d;
    }

    public Long N() {
        return this.g;
    }

    public long O() {
        return this.f;
    }

    public s2 P() {
        Object s2Var = this.Z.get();
        if (s2Var == null) {
            synchronized (this.Z) {
                s2Var = this.Z.get();
                if (s2Var == null) {
                    s2Var = new s2(this);
                    this.Z.set(s2Var);
                }
            }
        }
        if (s2Var == this.Z) {
            s2Var = null;
        }
        return (s2) s2Var;
    }

    protected void P0() {
        b(false);
    }

    public p Q() {
        return this.s;
    }

    public d3 R() {
        return this.u;
    }

    public void R0() {
        if (StringUtils.isValidString(this.l)) {
            return;
        }
        this.l = AppLovinMediationProvider.MAX;
    }

    public com.applovin.impl.mediation.d S() {
        Object dVar = this.j0.get();
        if (dVar == null) {
            synchronized (this.j0) {
                dVar = this.j0.get();
                if (dVar == null) {
                    dVar = new com.applovin.impl.mediation.d(this);
                    this.j0.set(dVar);
                }
            }
        }
        if (dVar == this.j0) {
            dVar = null;
        }
        return (com.applovin.impl.mediation.d) dVar;
    }

    public com.applovin.impl.mediation.e T() {
        return this.k0;
    }

    public void T0() {
        u().a();
    }

    public com.applovin.impl.mediation.f U() {
        Object fVar = this.e0.get();
        if (fVar == null) {
            synchronized (this.e0) {
                fVar = this.e0.get();
                if (fVar == null) {
                    fVar = new com.applovin.impl.mediation.f(this);
                    this.e0.set(fVar);
                }
            }
        }
        if (fVar == this.e0) {
            fVar = null;
        }
        return (com.applovin.impl.mediation.f) fVar;
    }

    public void U0() {
        synchronized (this.o0) {
            this.s0 = true;
            s0().h();
            d();
        }
    }

    public com.applovin.impl.mediation.g V() {
        Object gVar = this.d0.get();
        if (gVar == null) {
            synchronized (this.d0) {
                gVar = this.d0.get();
                if (gVar == null) {
                    gVar = new com.applovin.impl.mediation.g(this);
                    this.d0.set(gVar);
                }
            }
        }
        if (gVar == this.d0) {
            gVar = null;
        }
        return (com.applovin.impl.mediation.g) gVar;
    }

    public t3 W() {
        Object t3Var = this.h0.get();
        if (t3Var == null) {
            synchronized (this.h0) {
                t3Var = this.h0.get();
                if (t3Var == null) {
                    t3Var = new t3(this);
                    this.h0.set(t3Var);
                }
            }
        }
        if (t3Var == this.h0) {
            t3Var = null;
        }
        return (t3) t3Var;
    }

    public void W0() {
        p.h("AppLovinSdk", "Resetting SDK state...");
        q0().a();
        q0().e();
        if (this.p0.compareAndSet(true, false)) {
            U0();
        } else {
            this.p0.set(true);
        }
    }

    public String X() {
        return this.l;
    }

    public void X0() {
        if (StringUtils.isValidString(this.x0)) {
            return;
        }
        this.x0 = AppLovinMediationProvider.MAX;
        Q();
        if (p.a()) {
            Q().a("AppLovinSdk", "Detected mediation provider: MAX");
        }
    }

    public void Y0() {
        z().n();
    }

    public MediationServiceImpl Z() {
        Object mediationServiceImpl = this.f0.get();
        if (mediationServiceImpl == null) {
            synchronized (this.f0) {
                mediationServiceImpl = this.f0.get();
                if (mediationServiceImpl == null) {
                    mediationServiceImpl = new MediationServiceImpl(this);
                    this.f0.set(mediationServiceImpl);
                }
            }
        }
        if (mediationServiceImpl == this.f0) {
            mediationServiceImpl = null;
        }
        return (MediationServiceImpl) mediationServiceImpl;
    }

    public void Z0() {
        a((Map) null);
    }

    public Object a(c5 c5Var) {
        return q0().a(c5Var);
    }

    public Object a(e5 e5Var) {
        return a(e5Var, (Object) null);
    }

    public Object a(e5 e5Var, Object obj) {
        return r0().a(e5Var, obj);
    }

    public Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return f5.a(str, obj, cls, sharedPreferences);
    }

    public void a() {
        String str = (String) r0().a(e5.g, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE < u7.g(str)) {
                p.h("AppLovinSdk", "Current version (" + AppLovinSdk.VERSION + ") is older than earlier installed version (" + str + "), which may cause compatibility issues.");
            }
        }
    }

    public void a(SharedPreferences sharedPreferences) {
        r0().a(sharedPreferences);
    }

    public void a(Uri uri) {
        C().a(uri);
    }

    public void a(o3 o3Var) {
        if (s0().f()) {
            return;
        }
        List listA = a4.a(this);
        if (listA.size() <= 0 || !U().a().containsAll(listA)) {
            return;
        }
        Q();
        if (p.a()) {
            Q().a("AppLovinSdk", "All required adapters initialized");
        }
        s0().g();
        P0();
    }

    public void a(AppLovinSdk appLovinSdk) {
        this.r = appLovinSdk;
    }

    public void a(final AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration, final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        synchronized (this.z0) {
            if (this.y0 != null) {
                p.h("AppLovinSdk", "AppLovin SDK already initialized with configuration: " + this.y0 + ". Ignoring the provided initialization configuration.");
                if (!E0() || sdkInitializationListener == null) {
                    return;
                }
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(sdkInitializationListener);
                    }
                });
                return;
            }
            this.e = System.currentTimeMillis();
            this.y0 = appLovinSdkInitializationConfiguration;
            this.B0 = sdkInitializationListener;
            if (p.a()) {
                this.s.a("AppLovinSdk", "Initializing with configuration: " + this.y0 + ", listener: " + (this.B0 != null ? "configured" : "none"));
            }
            this.a = appLovinSdkInitializationConfiguration.getSdkKey();
            this.b = appLovinSdkInitializationConfiguration.getAxonEventKey();
            this.l = appLovinSdkInitializationConfiguration.getMediationProvider();
            this.k = appLovinSdkInitializationConfiguration.getSegmentCollection();
            u7.a(new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(appLovinSdkInitializationConfiguration);
                }
            });
        }
    }

    public void a(AppLovinUserData appLovinUserData) {
        this.m = appLovinUserData;
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        r0().a(str, obj, editor);
    }

    public void a(Map map) {
        W().a(map);
    }

    public void a(boolean z) {
        synchronized (this.o0) {
            this.s0 = false;
            this.t0 = z;
        }
        if (z) {
            List listA = a4.a(this);
            if (listA.isEmpty()) {
                s0().g();
                P0();
                return;
            }
            Long l = (Long) a(v3.E7);
            x6 x6Var = new x6(this, true, "timeoutInitAdapters", new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.L0();
                }
            });
            Q();
            if (p.a()) {
                Q().a("AppLovinSdk", "Waiting for required adapters to init: " + listA + " - timing out in " + l + "ms...");
            }
            s0().a(x6Var, i6.b.TIMEOUT, l.longValue(), true);
        }
    }

    public boolean a(c5 c5Var, MaxAdFormat maxAdFormat) {
        return b(c5Var).contains(maxAdFormat);
    }

    public boolean a(MaxAdFormat maxAdFormat) {
        List list = this.n0;
        return (list == null || list.size() <= 0 || this.n0.contains(maxAdFormat)) ? false : true;
    }

    public y3 a0() {
        Object y3Var = this.A.get();
        if (y3Var == null) {
            synchronized (this.A) {
                y3Var = this.A.get();
                if (y3Var == null) {
                    y3Var = new y3(this);
                    this.A.set(y3Var);
                }
            }
        }
        if (y3Var == this.A) {
            y3Var = null;
        }
        return (y3) y3Var;
    }

    public void a1() {
        if (AppLovinMediationProvider.ADMOB.equalsIgnoreCase(this.l) && ((Boolean) a(c5.X3)).booleanValue()) {
            String str = (String) a(c5.W3);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            String str2 = AppLovinSdk.VERSION;
            if (str.startsWith(sb.append(str2).append(".").toString())) {
                return;
            }
            final String str3 = "Mismatched AdMob adapter (" + str + ") and AppLovin SDK (" + str2 + ") versions detected, which may cause compatibility issues.";
            p.h("AppLovinSdk", str3);
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(str3);
                }
            });
        }
    }

    public Object b(e5 e5Var) {
        return r0().a(e5Var);
    }

    public String b() {
        if (StringUtils.isValidString(this.x0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Map mapY = Y();
        List listC = c(c5.w4);
        Boolean bool = (Boolean) a(c5.x4);
        if (mapY.isEmpty() && !bool.booleanValue()) {
            return null;
        }
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            Integer numValueOf = (Integer) a(c5.v4);
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (numValueOf.intValue() <= 0) {
                    break;
                }
                String className = stackTraceElement.getClassName();
                Iterator it = listC.iterator();
                do {
                    if (!it.hasNext()) {
                        for (Map.Entry entry : mapY.entrySet()) {
                            if (className.startsWith((String) entry.getKey())) {
                                this.x0 = (String) entry.getValue();
                                Q();
                                if (p.a()) {
                                    Q().a("AppLovinSdk", "Detected mediation provider: " + this.x0);
                                }
                                return null;
                            }
                        }
                        if (bool.booleanValue()) {
                            arrayList.add(className);
                        }
                        numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                        break;
                    }
                } while (!className.startsWith((String) it.next()));
            }
        } catch (Throwable th) {
            E().a("AppLovinSdk", "detectMediationProvider", th);
        }
        this.x0 = "unknown";
        Q();
        if (p.a()) {
            Q().k("AppLovinSdk", "Unable to detect mediation provider");
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        String strJoin = StringUtils.join(FacebookConstants.PLACEMENT_IDS_SEPARATOR, arrayList);
        if (!((Boolean) a(c5.y4)).booleanValue()) {
            return strJoin;
        }
        E().a(h2.d, "detectMediationProvider", CollectionUtils.hashMap("details", strJoin));
        return null;
    }

    public List b(c5 c5Var) {
        return q0().b(c5Var);
    }

    public void b(e5 e5Var, Object obj) {
        r0().b(e5Var, obj);
    }

    protected void b(boolean z) {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener;
        if (y().i() || (sdkInitializationListener = this.B0) == null) {
            return;
        }
        if (E0()) {
            this.B0 = null;
            this.C0 = null;
            U().a(MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS);
        } else {
            if (this.C0 == sdkInitializationListener) {
                return;
            }
            U().a(MaxAdapter.InitializationStatus.INITIALIZED_FAILURE);
            if (((Boolean) a(c5.p)).booleanValue()) {
                this.B0 = null;
            } else {
                this.C0 = sdkInitializationListener;
            }
        }
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putBoolean(jSONObject, "enabled", E0());
        JsonUtils.putBoolean(jSONObject, "timeout", z);
        JsonUtils.putBoolean(jSONObject, "consent_flow_shown", this.r0.get());
        long jCurrentTimeMillis = System.currentTimeMillis() - this.e;
        HashMap map = new HashMap();
        map.put("duration_ms", String.valueOf(jCurrentTimeMillis));
        map.put("details", jSONObject.toString());
        this.w.d(h2.l, map);
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(sdkInitializationListener);
            }
        }, Math.max(0L, ((Long) a(c5.q)).longValue()));
    }

    public z3 b0() {
        Object z3Var = this.g0.get();
        if (z3Var == null) {
            synchronized (this.g0) {
                z3Var = this.g0.get();
                if (z3Var == null) {
                    z3Var = new z3();
                    this.g0.set(z3Var);
                }
            }
        }
        if (z3Var == this.g0) {
            z3Var = null;
        }
        return (z3) z3Var;
    }

    public List c(c5 c5Var) {
        return q0().c(c5Var);
    }

    public void c() {
        synchronized (this.o0) {
            if (!this.s0 && !this.t0) {
                U0();
            }
        }
    }

    public void c(e5 e5Var) {
        r0().b(e5Var);
    }

    public q c0() {
        Object qVar = this.i0.get();
        if (qVar == null) {
            synchronized (this.i0) {
                qVar = this.i0.get();
                if (qVar == null) {
                    qVar = new q(this);
                    this.i0.set(qVar);
                }
            }
        }
        if (qVar == this.i0) {
            qVar = null;
        }
        return (q) qVar;
    }

    public AppLovinNativeAdService d0() {
        Object appLovinNativeAdService = this.o.get();
        if (appLovinNativeAdService == null) {
            synchronized (this.o) {
                appLovinNativeAdService = this.o.get();
                if (appLovinNativeAdService == null) {
                    appLovinNativeAdService = new AppLovinNativeAdService(this);
                    this.o.set(appLovinNativeAdService);
                }
            }
        }
        if (appLovinNativeAdService == this.o) {
            appLovinNativeAdService = null;
        }
        return (AppLovinNativeAdService) appLovinNativeAdService;
    }

    public com.applovin.impl.c e() {
        return a(G0);
    }

    public d4 e0() {
        Object d4Var = this.N.get();
        if (d4Var == null) {
            synchronized (this.N) {
                d4Var = this.N.get();
                if (d4Var == null) {
                    d4Var = new d4(p());
                    this.N.set(d4Var);
                }
            }
        }
        if (d4Var == this.N) {
            d4Var = null;
        }
        return (d4) d4Var;
    }

    public com.applovin.impl.sdk.a f() {
        Object aVar = this.G.get();
        if (aVar == null) {
            synchronized (this.G) {
                aVar = this.G.get();
                if (aVar == null) {
                    aVar = new com.applovin.impl.sdk.a(this);
                    this.G.set(aVar);
                }
            }
        }
        if (aVar == this.G) {
            aVar = null;
        }
        return (com.applovin.impl.sdk.a) aVar;
    }

    public h4 f0() {
        Object h4Var = this.Y.get();
        if (h4Var == null) {
            synchronized (this.Y) {
                h4Var = this.Y.get();
                if (h4Var == null) {
                    h4Var = new h4(this);
                    this.Y.set(h4Var);
                }
            }
        }
        if (h4Var == this.Y) {
            h4Var = null;
        }
        return (h4) h4Var;
    }

    public com.applovin.impl.f g() {
        return this.t;
    }

    public o4 g0() {
        Object o4Var = this.U.get();
        if (o4Var == null) {
            synchronized (this.U) {
                o4Var = this.U.get();
                if (o4Var == null) {
                    o4Var = new o4(this);
                    this.U.set(o4Var);
                }
            }
        }
        if (o4Var == this.U) {
            o4Var = null;
        }
        return (o4) o4Var;
    }

    public com.applovin.impl.sdk.c h() {
        Object cVar = this.L.get();
        if (cVar == null) {
            synchronized (this.L) {
                cVar = this.L.get();
                if (cVar == null) {
                    cVar = new com.applovin.impl.sdk.c(this);
                    this.L.set(cVar);
                }
            }
        }
        if (cVar == this.L) {
            cVar = null;
        }
        return (com.applovin.impl.sdk.c) cVar;
    }

    public com.applovin.impl.sdk.network.b h0() {
        Object bVar = this.b0.get();
        if (bVar == null) {
            synchronized (this.b0) {
                bVar = this.b0.get();
                if (bVar == null) {
                    bVar = new com.applovin.impl.sdk.network.b(this);
                    this.b0.set(bVar);
                }
            }
        }
        if (bVar == this.b0) {
            bVar = null;
        }
        return (com.applovin.impl.sdk.network.b) bVar;
    }

    public e i() {
        Object eVar = this.W.get();
        if (eVar == null) {
            synchronized (this.W) {
                eVar = this.W.get();
                if (eVar == null) {
                    eVar = new e(this);
                    this.W.set(eVar);
                }
            }
        }
        if (eVar == this.W) {
            eVar = null;
        }
        return (e) eVar;
    }

    public PostbackServiceImpl i0() {
        Object postbackServiceImpl = this.a0.get();
        if (postbackServiceImpl == null) {
            synchronized (this.a0) {
                postbackServiceImpl = this.a0.get();
                if (postbackServiceImpl == null) {
                    postbackServiceImpl = new PostbackServiceImpl(this);
                    this.a0.set(postbackServiceImpl);
                }
            }
        }
        if (postbackServiceImpl == this.a0) {
            postbackServiceImpl = null;
        }
        return (PostbackServiceImpl) postbackServiceImpl;
    }

    public f j() {
        Object fVar = this.F.get();
        if (fVar == null) {
            synchronized (this.F) {
                fVar = this.F.get();
                if (fVar == null) {
                    fVar = new f(this);
                    this.F.set(fVar);
                }
            }
        }
        if (fVar == this.F) {
            fVar = null;
        }
        return (f) fVar;
    }

    public String j0() {
        return z0().a();
    }

    public com.applovin.impl.j k() {
        Object jVar = this.c0.get();
        if (jVar == null) {
            synchronized (this.c0) {
                jVar = this.c0.get();
                if (jVar == null) {
                    jVar = new com.applovin.impl.j(this);
                    this.c0.set(jVar);
                }
            }
        }
        if (jVar == this.c0) {
            jVar = null;
        }
        return (com.applovin.impl.j) jVar;
    }

    public String k0() {
        return this.a;
    }

    public AppLovinAdServiceImpl l() {
        Object appLovinAdServiceImpl = this.n.get();
        if (appLovinAdServiceImpl == null) {
            synchronized (this.n) {
                appLovinAdServiceImpl = this.n.get();
                if (appLovinAdServiceImpl == null) {
                    appLovinAdServiceImpl = new AppLovinAdServiceImpl(this);
                    this.n.set(appLovinAdServiceImpl);
                }
            }
        }
        if (appLovinAdServiceImpl == this.n) {
            appLovinAdServiceImpl = null;
        }
        return (AppLovinAdServiceImpl) appLovinAdServiceImpl;
    }

    public MaxSegmentCollectionImpl l0() {
        return (MaxSegmentCollectionImpl) this.k;
    }

    public h m() {
        Object hVar = this.K.get();
        if (hVar == null) {
            synchronized (this.K) {
                hVar = this.K.get();
                if (hVar == null) {
                    hVar = new h();
                    this.K.set(hVar);
                }
            }
        }
        if (hVar == this.K) {
            hVar = null;
        }
        return (h) hVar;
    }

    public Map m0() {
        MaxSegmentCollectionImpl maxSegmentCollectionImplL0 = l0();
        if (maxSegmentCollectionImplL0 == null) {
            return null;
        }
        return maxSegmentCollectionImplL0.getJsonData();
    }

    public i n() {
        Object iVar = this.X.get();
        if (iVar == null) {
            synchronized (this.X) {
                iVar = this.X.get();
                if (iVar == null) {
                    iVar = new i(this);
                    this.X.set(iVar);
                }
            }
        }
        if (iVar == this.X) {
            iVar = null;
        }
        return (i) iVar;
    }

    public b5 n0() {
        Object b5Var = this.P.get();
        if (b5Var == null) {
            synchronized (this.P) {
                b5Var = this.P.get();
                if (b5Var == null) {
                    b5Var = new b5(this);
                    this.P.set(b5Var);
                }
            }
        }
        if (b5Var == this.P) {
            b5Var = null;
        }
        return (b5) b5Var;
    }

    public SessionTracker o0() {
        Object sessionTracker = this.I.get();
        if (sessionTracker == null) {
            synchronized (this.I) {
                sessionTracker = this.I.get();
                if (sessionTracker == null) {
                    sessionTracker = new SessionTracker(this);
                    this.I.set(sessionTracker);
                }
            }
        }
        if (sessionTracker == this.I) {
            sessionTracker = null;
        }
        return (SessionTracker) sessionTracker;
    }

    public AppLovinSdkSettings p0() {
        return this.j;
    }

    public j q() {
        Object jVar = this.Q.get();
        if (jVar == null) {
            synchronized (this.Q) {
                jVar = this.Q.get();
                if (jVar == null) {
                    jVar = new j(this);
                    this.Q.set(jVar);
                }
            }
        }
        if (jVar == this.Q) {
            jVar = null;
        }
        return (j) jVar;
    }

    public d5 q0() {
        Object d5Var = this.y.get();
        if (d5Var == null) {
            synchronized (this.y) {
                d5Var = this.y.get();
                if (d5Var == null) {
                    d5Var = new d5(this);
                    this.y.set(d5Var);
                }
            }
        }
        if (d5Var == this.y) {
            d5Var = null;
        }
        return (d5) d5Var;
    }

    public String r() {
        return this.b;
    }

    public f5 r0() {
        Object f5Var = this.C.get();
        if (f5Var == null) {
            synchronized (this.C) {
                f5Var = this.C.get();
                if (f5Var == null) {
                    f5Var = new f5(this);
                    this.C.set(f5Var);
                }
            }
        }
        if (f5Var == this.C) {
            f5Var = null;
        }
        return (f5) f5Var;
    }

    public String s() {
        return z0().b();
    }

    public i6 s0() {
        Object i6Var = this.x.get();
        if (i6Var == null) {
            synchronized (this.x) {
                i6Var = this.x.get();
                if (i6Var == null) {
                    i6Var = new i6(this);
                    this.x.set(i6Var);
                }
            }
        }
        if (i6Var == this.x) {
            i6Var = null;
        }
        return (i6) i6Var;
    }

    public CmpServiceImpl t() {
        Object cmpServiceImpl = this.q.get();
        if (cmpServiceImpl == null) {
            synchronized (this.q) {
                cmpServiceImpl = this.q.get();
                if (cmpServiceImpl == null) {
                    cmpServiceImpl = new CmpServiceImpl(this);
                    this.q.set(cmpServiceImpl);
                }
            }
        }
        if (cmpServiceImpl == this.q) {
            cmpServiceImpl = null;
        }
        return (CmpServiceImpl) cmpServiceImpl;
    }

    public f7 t0() {
        Object f7Var = this.S.get();
        if (f7Var == null) {
            synchronized (this.S) {
                f7Var = this.S.get();
                if (f7Var == null) {
                    f7Var = new f7(this);
                    this.S.set(f7Var);
                }
            }
        }
        if (f7Var == this.S) {
            f7Var = null;
        }
        return (f7) f7Var;
    }

    public String toString() {
        return "CoreSdk{sdkKey='" + this.a + "', enabled=" + this.t0 + ", isFirstSession=" + this.u0 + AbstractJsonLexerKt.END_OBJ;
    }

    public k u() {
        Object kVar = this.O.get();
        if (kVar == null) {
            synchronized (this.O) {
                kVar = this.O.get();
                if (kVar == null) {
                    kVar = new k(this);
                    this.O.set(kVar);
                }
            }
        }
        if (kVar == this.O) {
            kVar = null;
        }
        return (k) kVar;
    }

    public l7 u0() {
        Object l7Var = this.m0.get();
        if (l7Var == null) {
            synchronized (this.m0) {
                l7Var = this.m0.get();
                if (l7Var == null) {
                    l7Var = new l7(this);
                    this.m0.set(l7Var);
                }
            }
        }
        if (l7Var == this.m0) {
            l7Var = null;
        }
        return (l7) l7Var;
    }

    public String v() {
        return z0().c();
    }

    public long v0() {
        if (this.h == 0) {
            return -1L;
        }
        return System.currentTimeMillis() - this.h;
    }

    public SdkConfigurationImpl w() {
        return this.A0;
    }

    public Activity w0() {
        Activity activityB = a(p()).b();
        return activityB != null ? activityB : K();
    }

    public r0 x() {
        Object r0Var = this.z.get();
        if (r0Var == null) {
            synchronized (this.z) {
                r0Var = this.z.get();
                if (r0Var == null) {
                    r0Var = new r0(this);
                    this.z.set(r0Var);
                }
            }
        }
        if (r0Var == this.z) {
            r0Var = null;
        }
        return (r0) r0Var;
    }

    public AppLovinUserData x0() {
        return this.m;
    }

    public v0 y() {
        Object v0Var = this.R.get();
        if (v0Var == null) {
            synchronized (this.R) {
                v0Var = this.R.get();
                if (v0Var == null) {
                    v0Var = new v0(this);
                    this.R.set(v0Var);
                }
            }
        }
        if (v0Var == this.R) {
            v0Var = null;
        }
        return (v0) v0Var;
    }

    public s7 y0() {
        return this.w;
    }

    public f1 z() {
        Object f1Var = this.T.get();
        if (f1Var == null) {
            synchronized (this.T) {
                f1Var = this.T.get();
                if (f1Var == null) {
                    f1Var = new f1(this);
                    this.T.set(f1Var);
                }
            }
        }
        if (f1Var == this.T) {
            f1Var = null;
        }
        return (f1) f1Var;
    }

    public t7 z0() {
        Object t7Var = this.D.get();
        if (t7Var == null) {
            synchronized (this.D) {
                t7Var = this.D.get();
                if (t7Var == null) {
                    t7Var = new t7(this);
                    this.D.set(t7Var);
                }
            }
        }
        if (t7Var == this.D) {
            t7Var = null;
        }
        return (t7) t7Var;
    }
}
