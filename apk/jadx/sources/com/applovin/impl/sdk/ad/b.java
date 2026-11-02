package com.applovin.impl.sdk.ad;

import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.arch.core.util.Function;
import androidx.core.app.NotificationCompat;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.impl.c5;
import com.applovin.impl.h1;
import com.applovin.impl.k4;
import com.applovin.impl.m5;
import com.applovin.impl.p0;
import com.applovin.impl.s8;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t4;
import com.applovin.impl.u7;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.common.net.HttpHeaders;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyConstants;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends AppLovinAdImpl implements v4 {
    private final Map d;
    private final AtomicBoolean e;
    private final AtomicBoolean f;
    private final AtomicReference g;
    private final Bundle h;
    private String i;
    private long j;
    private String k;
    private int l;
    private int m;
    private String n;
    private d o;
    private List p;

    /* JADX INFO: renamed from: com.applovin.impl.sdk.ad.b$b, reason: collision with other inner class name */
    public enum EnumC0026b {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    public enum c {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    public class d {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        private d() {
            this.a = AppLovinSdkUtils.dpToPx(l.p(), b.this.p());
            this.b = AppLovinSdkUtils.dpToPx(l.p(), b.this.r());
            this.c = AppLovinSdkUtils.dpToPx(l.p(), b.this.n());
            this.d = AppLovinSdkUtils.dpToPx(l.p(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(c5.q1)).intValue());
            this.e = AppLovinSdkUtils.dpToPx(l.p(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(c5.p1)).intValue());
        }
    }

    public enum e {
        RESIZE_ASPECT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public b(JSONObject jSONObject, JSONObject jSONObject2, l lVar) {
        super(jSONObject, jSONObject2, lVar);
        this.d = Collections.synchronizedMap(new HashMap());
        this.e = new AtomicBoolean();
        this.f = new AtomicBoolean();
        this.g = new AtomicReference();
        this.h = new Bundle();
        this.p = new ArrayList();
    }

    private List G() {
        return getIntegerListFromAdObject("multi_close_style", null);
    }

    private com.applovin.impl.adview.e.a a(boolean z) {
        return z ? com.applovin.impl.adview.e.a.WHITE_ON_TRANSPARENT : com.applovin.impl.adview.e.a.WHITE_ON_BLACK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, m5 m5Var) {
        return u7.a(m5Var.a("video_click_tracking_urls", new JSONObject()), a(motionEvent, true), null, L(), N0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z, m5 m5Var) {
        return u7.a(m5Var.a("click_tracking_urls", new JSONObject()), a(motionEvent, z), c(motionEvent, z), L(), N0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List a(Function function, m5 m5Var) {
        return (List) function.apply(m5Var.a("omid_verification_script_resources", (JSONArray) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(m5 m5Var) {
        return u7.a(m5Var.a("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            try {
                URL url = new URL(JsonUtils.getString(jSONObject, "url", null));
                String string = JsonUtils.getString(jSONObject, "vendor_key", null);
                String string2 = JsonUtils.getString(jSONObject, "parameters", null);
                if (StringUtils.isValidString(string) && StringUtils.isValidString(string2)) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(string, url, string2));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                }
            } catch (Throwable th) {
                this.sdk.Q();
                if (p.a()) {
                    this.sdk.Q().a("DirectAd", "Failed to parse OMID verification script resource", th);
                }
            }
        }
        return arrayList;
    }

    private Map a(MotionEvent motionEvent, boolean z) {
        Point pointB = p0.b(l.p());
        HashMap map = new HashMap(7);
        map.put("{CLCODE}", getClCode());
        map.put("{CLICK_X}", String.valueOf(motionEvent != null ? motionEvent.getRawX() : -1.0f));
        map.put("{CLICK_Y}", String.valueOf(motionEvent != null ? motionEvent.getRawY() : -1.0f));
        map.put("{SCREEN_WIDTH}", String.valueOf(pointB.x));
        map.put("{SCREEN_HEIGHT}", String.valueOf(pointB.y));
        map.put("{IS_VIDEO_CLICK}", String.valueOf(z));
        return map;
    }

    private List b(final MotionEvent motionEvent, final boolean z) {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda14
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.a(motionEvent, z, (m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("click_tracking_urls", new JSONObject()), a(motionEvent, z), c(motionEvent, z), L(), N0(), this.sdk);
        }
        return listA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List b(m5 m5Var) {
        return u7.a(m5Var.a("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    private String c(MotionEvent motionEvent, boolean z) {
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map mapA = a(motionEvent, z);
        if (stringFromAdObject != null) {
            return StringUtils.replace(stringFromAdObject, mapA);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Map c(m5 m5Var) {
        try {
            return JsonUtils.toStringMap(m5Var.a("custom_tabs_http_headers", new JSONObject()));
        } catch (JSONException e2) {
            this.sdk.Q();
            if (p.a()) {
                this.sdk.Q().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e2);
            }
            return new HashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List d(m5 m5Var) {
        return u7.a(m5Var.a("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List e(m5 m5Var) {
        return u7.a(m5Var.a("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List f(m5 m5Var) {
        return u7.a(m5Var.a("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List g(m5 m5Var) {
        return u7.a(m5Var.a("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h1 h(m5 m5Var) {
        JSONObject jSONObjectA = m5Var.a("custom_tabs_settings", (JSONObject) null);
        if (jSONObjectA != null) {
            return new h1(jSONObjectA);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List i(m5 m5Var) {
        return u7.a(m5Var.a("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List j(m5 m5Var) {
        return u7.a(m5Var.a("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    private String j0() {
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject != null) {
            return stringFromAdObject.replace("{CLCODE}", getClCode());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List k(m5 m5Var) {
        return u7.a(m5Var.a("imp_urls", new JSONObject()), getClCode(), null, null, L(), N0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map l(m5 m5Var) {
        try {
            return JsonUtils.toStringMap(m5Var.a("http_headers_for_postbacks", new JSONObject()));
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List m(m5 m5Var) {
        return u7.a(m5Var.a("video_end_urls", new JSONObject()), getClCode(), j0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.impl.adview.l n(m5 m5Var) {
        JSONObject jSONObjectA = m5Var.a("web_view_settings", (JSONObject) null);
        if (jSONObjectA != null) {
            return new com.applovin.impl.adview.l(jSONObjectA);
        }
        return null;
    }

    public long A() {
        return this.j;
    }

    public AtomicBoolean A0() {
        return this.e;
    }

    public List B() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda2
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.k((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("imp_urls", new JSONObject()), getClCode(), null, null, L(), N0(), this.sdk);
        }
        return listA;
    }

    public boolean B0() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.a(c5.f2));
    }

    public int C() {
        return getIntFromAdObject("mdafra", ((Integer) this.sdk.a(c5.V0)).intValue());
    }

    public boolean C0() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE);
    }

    public int D() {
        return getIntFromAdObject("mraorpg", ((Integer) this.sdk.a(c5.f7)).intValue());
    }

    public abstract boolean D0();

    public boolean E() {
        return getBooleanFromAdObject("playback_requires_user_action", Boolean.TRUE);
    }

    public boolean E0() {
        return getBooleanFromAdObject("web_contents_debugging_enabled", Boolean.valueOf(u7.j(l.p()) || u7.h(l.p()) || ((Boolean) this.sdk.a(c5.K6)).booleanValue()));
    }

    public List F() {
        List listG = G();
        if (listG == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(listG.size());
        Iterator it = listG.iterator();
        while (it.hasNext()) {
            arrayList.add(a(((Integer) it.next()).intValue()));
        }
        return arrayList;
    }

    public void F0() {
        this.m++;
        s0();
    }

    public abstract void G0();

    public List H() {
        return getIntegerListFromAdObject("multi_close_delay_graphic", null);
    }

    public boolean H0() {
        return getBooleanFromAdObject("aarwdc", (Boolean) this.sdk.a(c5.D2));
    }

    public Uri I() {
        String stringFromAdObject = getStringFromAdObject("mute_image", "https://assets.applovin.com/sound_off.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean I0() {
        return getBooleanFromAdObject("always_reward_user", (Boolean) this.sdk.a(c5.n1));
    }

    public List J() {
        String stringFromAdObject = getStringFromAdObject("optional_html_resources", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : Collections.EMPTY_LIST;
    }

    public boolean J0() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", Boolean.FALSE);
    }

    public abstract String K();

    public boolean K0() {
        return this.f.get();
    }

    public Map L() {
        HashMap map = new HashMap();
        try {
            m5 m5Var = this.synchronizedAdObject;
            map.putAll(m5Var != null ? (Map) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda13
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.l((m5) obj);
                }
            }) : JsonUtils.toStringMap(getJsonObjectFromAdObject("http_headers_for_postbacks", new JSONObject())));
        } catch (JSONException e2) {
            this.sdk.Q();
            if (p.a()) {
                this.sdk.Q().a("DirectAd", "Failed to retrieve http headers for postbacks", e2);
            }
        }
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", Boolean.FALSE)) {
            map.put(HttpHeaders.USER_AGENT, s8.a());
        }
        return map;
    }

    public boolean L0() {
        return U0() || S0() || T0();
    }

    public EnumC0026b M() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            if (TapjoyConstants.TJC_FULLSCREEN_AD_DISMISS_URL.equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0026b.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0026b.DO_NOT_DISMISS;
            }
        }
        return EnumC0026b.UNSPECIFIED;
    }

    public boolean M0() {
        return getBooleanFromAdObject("serfaad", (Boolean) this.sdk.a(c5.U0));
    }

    public int N() {
        return getColorFromAdObject("postitial_progress_bar_color", -922746881);
    }

    public boolean N0() {
        return getBooleanFromAdObject("fire_postbacks_from_webview", Boolean.FALSE);
    }

    public long O() {
        return getLongFromAdObject("postitial_progress_bar_total_ms", -1L);
    }

    public boolean O0() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", Boolean.FALSE);
    }

    public List P() {
        return getStringListFromAdObject("pbpn", this.sdk.c(c5.Z6));
    }

    public boolean P0() {
        return getBooleanFromAdObject("fmsstwvoar", Boolean.FALSE);
    }

    public long Q() {
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject >= 0) {
            return TimeUnit.SECONDS.toMillis(longFromAdObject);
        }
        return -1L;
    }

    public boolean Q0() {
        return getBooleanFromAdObject("sftbpn", Boolean.FALSE);
    }

    public int R() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    public boolean R0() {
        return getBooleanFromAdObject("fvcetwv", Boolean.FALSE);
    }

    public List S() {
        String stringFromAdObject = getStringFromAdObject("required_html_resources", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : Collections.EMPTY_LIST;
    }

    public boolean S0() {
        return getStringListFromAdObject("system_bars_hide_list", this.sdk.c(c5.C2)).contains(NotificationCompat.CATEGORY_NAVIGATION);
    }

    public int T() {
        return this.l;
    }

    public boolean T0() {
        return getStringListFromAdObject("system_bars_hide_list", this.sdk.c(c5.C2)).contains("none");
    }

    public int U() {
        return this.m;
    }

    public boolean U0() {
        return getStringListFromAdObject("system_bars_hide_list", this.sdk.c(c5.C2)).contains("status");
    }

    public List V() {
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        ArrayList arrayList = stringFromAdObject != null ? new ArrayList(CollectionUtils.explode(stringFromAdObject)) : new ArrayList(this.sdk.c(c5.I0));
        if (u7.j(l.p())) {
            arrayList.add("https://p.applov.in/");
        }
        return arrayList;
    }

    public boolean V0() {
        return getBooleanFromAdObject("avoms", Boolean.FALSE);
    }

    public List W() {
        return getStringListFromAdObject("rea", S());
    }

    public boolean W0() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", Boolean.TRUE);
    }

    public com.applovin.impl.adview.e.a X() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        return intFromAdObject == -1 ? q() : a(intFromAdObject);
    }

    public boolean X0() {
        return getBooleanFromAdObject("require_interaction_for_click", Boolean.FALSE);
    }

    public List Y() {
        return getStringListFromAdObject("substrings_for_disabled_click_logic", Collections.EMPTY_LIST);
    }

    public boolean Y0() {
        return getBooleanFromAdObject("sruifwvc", Boolean.FALSE);
    }

    public c Z() {
        c cVar = c.DEFAULT;
        String upperCase = getStringFromAdObject("ad_target", cVar.toString()).toUpperCase(Locale.ENGLISH);
        if ("ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase)) {
            return c.ACTIVITY_PORTRAIT;
        }
        return "ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase) ? c.ACTIVITY_LANDSCAPE : cVar;
    }

    public boolean Z0() {
        return g() >= 0;
    }

    protected com.applovin.impl.adview.e.a a(int i) {
        if (i == 1) {
            return com.applovin.impl.adview.e.a.WHITE_ON_TRANSPARENT;
        }
        if (i == 2) {
            return com.applovin.impl.adview.e.a.INVISIBLE;
        }
        return i == 3 ? com.applovin.impl.adview.e.a.TRANSPARENT_SKIP : com.applovin.impl.adview.e.a.WHITE_ON_BLACK;
    }

    public List a(MotionEvent motionEvent) {
        return b(motionEvent, false);
    }

    public void a(long j) {
        this.j = j;
    }

    public void a(t4 t4Var) {
        this.g.set(t4Var);
    }

    public void a(String str) {
        this.i = str;
    }

    public void a(String str, String str2) {
        this.d.put(str, str2);
    }

    public void a(List list) {
        this.p = list;
    }

    public String a0() {
        return this.n;
    }

    public boolean a1() {
        return getBooleanFromAdObject("respect_adview_fully_watched", Boolean.FALSE);
    }

    public List b(final MotionEvent motionEvent) {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            listA = (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda6
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.a(motionEvent, (m5) obj);
                }
            });
        } else {
            synchronized (this.adObjectLock) {
                listA = u7.a(getJsonObjectFromAdObject("video_click_tracking_urls", new JSONObject()), a(motionEvent, true), null, L(), N0(), this.sdk);
            }
        }
        return listA.isEmpty() ? b(motionEvent, true) : listA;
    }

    public void b(String str) {
        this.n = str;
    }

    public void b(boolean z) {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            m5Var.a("html_resources_cached", z);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putBoolean(this.adObject, "html_resources_cached", z);
        }
    }

    public String b0() {
        return this.k;
    }

    public boolean b1() {
        return getBooleanFromAdObject("sscomt", Boolean.FALSE);
    }

    public long c() {
        return getLongFromAdObject("batfort", TimeUnit.SECONDS.toMillis(1L));
    }

    public void c(String str) {
        this.k = str;
    }

    public List c0() {
        return this.p;
    }

    public boolean c1() {
        return getBooleanFromAdObject("sudbia", (Boolean) this.sdk.a(c5.Y6));
    }

    public void d() {
        this.f.set(true);
    }

    public Uri d0() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "https://assets.applovin.com/sound_on.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean d1() {
        return getBooleanFromAdObject("upiosp", Boolean.FALSE);
    }

    public List e() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda17
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.a((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public abstract Uri e0();

    public long f() {
        return getLongFromAdObject("ad_dismiss_delay_on_app_launch_ms", TimeUnit.SECONDS.toMillis(3L));
    }

    public long f0() {
        return getLongFromAdObject("close_delay", 0L);
    }

    public long g() {
        return getLongFromAdObject("ad_reshow_delay_on_app_launch_ms", -1L);
    }

    public long g0() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public abstract k4 getAdEventTracker();

    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    public Bundle getCustomTabsHeaders() {
        Map map;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            map = (Map) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda16
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.c((m5) obj);
                }
            });
        } else {
            try {
                map = JsonUtils.toStringMap(getJsonObjectFromAdObject("custom_tabs_http_headers", new JSONObject()));
            } catch (JSONException e2) {
                this.sdk.Q();
                if (p.a()) {
                    this.sdk.Q().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e2);
                }
                map = new HashMap();
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        if (getBooleanFromAdObject("custom_tabs_should_use_webview_ua", Boolean.FALSE)) {
            bundle.putString(HttpHeaders.USER_AGENT, s8.a());
        }
        return bundle;
    }

    public List getCustomTabsNavigationAbortedPostbacks() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda3
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.d((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List getCustomTabsNavigationFailedPostbacks() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda7
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.e((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List getCustomTabsNavigationFinishedPostbacks() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda8
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.f((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List getCustomTabsNavigationStartedPostbacks() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda5
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.g((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public h1 getCustomTabsSettings() {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (h1) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda12
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.h((m5) obj);
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("custom_tabs_settings", null);
        if (jsonObjectFromAdObject != null) {
            return new h1(jsonObjectFromAdObject);
        }
        return null;
    }

    public List getCustomTabsTabHiddenPostbacks() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda1
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.i((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List getCustomTabsTabShownPostbacks() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda9
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.j((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List getCustomTabsWarmupUrls() {
        return getStringListFromAdObject("custom_tabs_warmup_urls", Collections.EMPTY_LIST);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public List getOpenMeasurementVerificationScriptResources() {
        List list;
        final Function function = new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda10
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return this.f$0.a((JSONArray) obj);
            }
        };
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda11
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.a(function, (m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            list = (List) function.apply(getJsonArrayFromAdObject("omid_verification_script_resources", null));
        }
        return list;
    }

    public long h() {
        return getLongFromAdObject("ardorpgm", ((Long) this.sdk.a(c5.g7)).longValue());
    }

    public int h0() {
        return u7.c(getIntFromAdObject("video_completion_percent", -1));
    }

    public Bundle i() {
        return this.h;
    }

    public List i0() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda4
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.m((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("video_end_urls", new JSONObject()), getClCode(), j0(), this.sdk);
        }
        return listA;
    }

    public boolean isCustomTabsClientWarmupEnabled() {
        return getBooleanFromAdObject("custom_tabs_client_warmup_enabled", Boolean.FALSE);
    }

    public boolean isCustomTabsEnabled() {
        return getBooleanFromAdObject("custom_tabs_enabled", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.j4
    public abstract boolean isOpenMeasurementEnabled();

    public t4 j() {
        return (t4) this.g.getAndSet(null);
    }

    public List k() {
        List listA;
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (List) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda15
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.b((m5) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = u7.a(getJsonObjectFromAdObject("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public e k0() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        if (TJAdUnitConstants.String.TOP.equals(stringFromAdObject)) {
            return e.TOP;
        }
        if (TJAdUnitConstants.String.BOTTOM.equals(stringFromAdObject)) {
            return e.BOTTOM;
        }
        if (TJAdUnitConstants.String.LEFT.equals(stringFromAdObject)) {
            return e.LEFT;
        }
        return TJAdUnitConstants.String.RIGHT.equals(stringFromAdObject) ? e.RIGHT : e.RESIZE_ASPECT;
    }

    public String l() {
        String stringFromAdObject = getStringFromAdObject("base_url", DomExceptionUtils.SEPARATOR);
        if (AbstractJsonLexerKt.NULL.equalsIgnoreCase(stringFromAdObject)) {
            return null;
        }
        return stringFromAdObject;
    }

    public int l0() {
        return getColorFromAdObject("progress_bar_color", -922746881);
    }

    public Map m() {
        return this.d;
    }

    public boolean m0() {
        return getBooleanFromAdObject("progress_bar_enabled", Boolean.FALSE);
    }

    public int n() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.a(c5.T1)).intValue());
    }

    public abstract Uri n0();

    public d o() {
        if (this.o == null) {
            this.o = new d();
        }
        return this.o;
    }

    public int o0() {
        int i;
        if (u7.a(getSize())) {
            i = 1;
        } else {
            i = ((Boolean) this.sdk.a(c5.n6)).booleanValue() ? 0 : -1;
        }
        return getIntFromAdObject("whalt", i);
    }

    public int p() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.a(c5.U1)).intValue());
    }

    public com.applovin.impl.adview.l p0() {
        m5 m5Var = this.synchronizedAdObject;
        if (m5Var != null) {
            return (com.applovin.impl.adview.l) m5Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.n((m5) obj);
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject != null) {
            return new com.applovin.impl.adview.l(jsonObjectFromAdObject);
        }
        return null;
    }

    public com.applovin.impl.adview.e.a q() {
        List listG = G();
        int intFromAdObject = getIntFromAdObject("close_style", (listG == null || listG.size() <= 0) ? -1 : ((Integer) listG.get(0)).intValue());
        return intFromAdObject == -1 ? a(hasVideoUrl()) : a(intFromAdObject);
    }

    public List q0() {
        return CollectionUtils.explode(getStringFromAdObject("wlh", null));
    }

    public int r() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.a(c5.V1)).intValue());
    }

    public List r0() {
        return CollectionUtils.explode(getStringFromAdObject("wls", ""));
    }

    public long s() {
        List listH = H();
        long longFromAdObject = getLongFromAdObject("close_delay_graphic", (listH == null || listH.size() <= 0) ? 0L : ((Integer) listH.get(0)).intValue());
        if (longFromAdObject == -1 || longFromAdObject == -2) {
            return 0L;
        }
        return longFromAdObject;
    }

    public void s0() {
        this.l++;
    }

    public boolean shouldCustomTabsTrackEvents() {
        return getBooleanFromAdObject("custom_tabs_should_track_events", Boolean.FALSE);
    }

    public int t() {
        return getColorFromAdObject("countdown_color", -922746881);
    }

    public boolean t0() {
        return this.l > 0;
    }

    public int u() {
        return getIntFromAdObject("countdown_length", 0);
    }

    public boolean u0() {
        return getBooleanFromAdObject("bvde", (Boolean) this.sdk.a(c5.u6));
    }

    public boolean v() {
        return getBooleanFromAdObject("dismiss_on_skip", Boolean.FALSE);
    }

    public boolean v0() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.a(c5.S1));
    }

    public String w() {
        return this.i;
    }

    public boolean w0() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", Boolean.FALSE);
    }

    public int x() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    public boolean x0() {
        return getBooleanFromAdObject("gase", Boolean.FALSE);
    }

    public int y() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    public boolean y0() {
        return getBooleanFromAdObject("lock_current_orientation", Boolean.FALSE);
    }

    public int z() {
        return u7.a(getIntFromAdObject("graphic_completion_percent", -1), 90);
    }

    public abstract boolean z0();
}
