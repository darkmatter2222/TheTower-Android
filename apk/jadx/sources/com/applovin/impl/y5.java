package com.applovin.impl;

import android.app.ActivityManager;
import android.net.Uri;
import android.os.SystemClock;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.security.ProviderInstaller;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class y5 extends n5 {
    private static final AtomicBoolean j = new AtomicBoolean();
    private final int g;
    private final Object h;
    private b i;

    class a extends r6 {
        final /* synthetic */ long n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar, boolean z, long j) {
            super(aVar, lVar, z);
            this.n = j;
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to fetch basic SDK settings: server returned " + i);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.n;
            y5.this.a(jSONObject != null ? jSONObject : new JSONObject());
            this.a.y0().d(h2.k, y5.this.a(str, jElapsedRealtime, i, jSONObject, str2));
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, JSONObject jSONObject, int i) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.n;
            y5.this.a(jSONObject);
            this.a.y0().d(h2.j, y5.this.a(str, jElapsedRealtime, i, jSONObject, null));
        }
    }

    public interface b {
        void a(JSONObject jSONObject);
    }

    private class c extends n5 {
        public c(com.applovin.impl.sdk.l lVar) {
            super("TaskTimeoutFetchBasicSettings", lVar, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y5.this.i != null) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Timing out fetch basic settings...");
                }
                y5.this.a(new JSONObject());
            }
        }
    }

    public y5(int i, com.applovin.impl.sdk.l lVar, b bVar) {
        super("TaskFetchBasicSettings", lVar, true);
        this.h = new Object();
        this.g = i;
        this.i = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap a(String str, long j2, int i, JSONObject jSONObject, String str2) {
        Uri uriBuild = Uri.parse(str).buildUpon().clearQuery().build();
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putString(jSONObject2, C3510b4.j.D, uriBuild.getHost());
        if (jSONObject != null) {
            JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "auto_init_adapters", null);
            if (jSONArray != null) {
                JsonUtils.putInt(jSONObject2, "signal_provider_count", jSONArray.length());
            }
            if (jSONArray2 != null) {
                JsonUtils.putInt(jSONObject2, "auto_init_adapter_count", jSONArray2.length());
            }
        }
        HashMap map = new HashMap();
        map.put("attempt_number", Integer.toString(this.g));
        map.put("error_message", str2);
        map.put("url", uriBuild.toString());
        map.put("details", jSONObject2.toString());
        map.put("duration_ms", Long.toString(j2));
        map.put("code", Integer.toString(i));
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        b bVar;
        synchronized (this.h) {
            bVar = this.i;
            this.i = null;
        }
        if (bVar != null) {
            bVar.a(jSONObject);
        }
    }

    private HashMap b(String str) {
        return a(str, 0L, 0, null, null);
    }

    private String f() {
        return s0.a((String) this.a.a(c5.l0), "5.0/i", b());
    }

    private String g() {
        return s0.a((String) this.a.a(c5.k0), "5.0/i", b());
    }

    protected JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.applovin.impl.sdk.l lVar = this.a;
            c5 c5Var = c5.M5;
            if (((Boolean) lVar.a(c5Var)).booleanValue() || ((Boolean) this.a.a(c5Var)).booleanValue()) {
                jSONObject.put("rid", UUID.randomUUID().toString());
            }
            jSONObject.put("sdk_version", AppLovinSdk.VERSION);
            JsonUtils.putStringIfValid(jSONObject, "ad_review_sdk_version", j.b());
            jSONObject.put("init_count", this.g);
            jSONObject.put("server_installed_at", this.a.a(c5.o));
            if (this.a.F0()) {
                jSONObject.put("first_install", true);
            }
            if (!this.a.C0()) {
                jSONObject.put("first_install_v2", true);
            }
            JsonUtils.putStringIfValid(jSONObject, "process_name", u7.c(a()));
            JsonUtils.putBooleanIfValid(jSONObject, "is_main_process", u7.i(a()));
            JsonUtils.putStringIfValid(jSONObject, "plugin_version", (String) this.a.a(c5.W3));
            JsonUtils.putStringIfValid(jSONObject, "mediation_provider", this.a.X());
            JsonUtils.putStringIfValid(jSONObject, "mediation_provider_v2", this.a.D());
            jSONObject.put("installed_mediation_adapters", a4.b(this.a));
            Map mapH = this.a.B().H();
            jSONObject.put(C3510b4.i.V, mapH.get(C3510b4.i.V));
            jSONObject.put(TapjoyConstants.TJC_APP_VERSION_NAME, mapH.get(TapjoyConstants.TJC_APP_VERSION_NAME));
            jSONObject.put("debug", mapH.get("debug"));
            jSONObject.put("tg", mapH.get("tg"));
            jSONObject.put("target_sdk", mapH.get("target_sdk"));
            jSONObject.put(TapjoyConstants.TJC_SESSION_ID, mapH.get(TapjoyConstants.TJC_SESSION_ID));
            List list = (List) mapH.get("application_start_info");
            if (!CollectionUtils.isEmpty(list)) {
                JsonUtils.putJsonArray(jSONObject, "application_start_info", new JSONArray((Collection) list));
            }
            List list2 = (List) mapH.get("application_exit_info");
            if (!CollectionUtils.isEmpty(list2)) {
                JsonUtils.putJsonArray(jSONObject, "application_exit_info", new JSONArray((Collection) list2));
            }
            List<String> adUnitIds = this.a.L() != null ? this.a.L().getAdUnitIds() : null;
            if (adUnitIds != null && adUnitIds.size() > 0) {
                List<String> listRemoveTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(adUnitIds);
                jSONObject.put("ad_unit_ids", CollectionUtils.implode(listRemoveTrimmedEmptyStrings, listRemoveTrimmedEmptyStrings.size()));
            }
            jSONObject.put(AndroidTcfDataSource.TCF_TCSTRING_KEY, mapH.get(AndroidTcfDataSource.TCF_TCSTRING_KEY));
            jSONObject.put("IABTCF_gdprApplies", mapH.get("IABTCF_gdprApplies"));
            Object obj = mapH.get("IABTCF_AddtlConsent");
            if (obj instanceof String) {
                JsonUtils.putStringIfValid(jSONObject, "IABTCF_AddtlConsent", (String) obj);
            }
            jSONObject.put("consent_flow_info", this.a.y().b());
            Map mapO = this.a.B().O();
            jSONObject.put("platform", mapO.get("platform"));
            jSONObject.put(R6.F, mapO.get(R6.F));
            jSONObject.put("locale", mapO.get("locale"));
            jSONObject.put("brand", mapO.get("brand"));
            jSONObject.put("brand_name", mapO.get("brand_name"));
            jSONObject.put("hardware", mapO.get("hardware"));
            jSONObject.put(R6.B, mapO.get(R6.B));
            jSONObject.put("revision", mapO.get("revision"));
            jSONObject.put("is_tablet", mapO.get("is_tablet"));
            jSONObject.put("screen_size_in", mapO.get("screen_size_in"));
            jSONObject.put("supported_abis", mapO.get("supported_abis"));
            if (((Boolean) this.a.a(c5.h4)).booleanValue()) {
                jSONObject.put("mtl", this.a.o0().getLastTrimMemoryLevel());
            }
            try {
                ActivityManager activityManager = (ActivityManager) com.applovin.impl.sdk.l.p().getSystemService("activity");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                if (activityManager != null) {
                    activityManager.getMemoryInfo(memoryInfo);
                    jSONObject.put("fm", memoryInfo.availMem);
                    jSONObject.put("tm", memoryInfo.totalMem);
                    jSONObject.put("lmt", memoryInfo.threshold);
                    jSONObject.put("lm", memoryInfo.lowMemory);
                }
            } catch (Throwable unused) {
            }
            v.a aVarF = this.a.B().f();
            jSONObject.put("dnt", aVarF.c());
            jSONObject.put("dnt_code", aVarF.b().b());
            Boolean boolB = q0.c().b(a());
            if (((Boolean) this.a.a(c5.Q3)).booleanValue() && StringUtils.isValidString(aVarF.a()) && !Boolean.TRUE.equals(boolB)) {
                jSONObject.put("idfa", aVarF.a());
            }
            com.applovin.impl.sdk.m.b bVarI = this.a.B().I();
            if (((Boolean) this.a.a(c5.J3)).booleanValue() && bVarI != null && !Boolean.TRUE.equals(boolB)) {
                jSONObject.put("idfv", bVarI.a);
                jSONObject.put("idfv_scope", bVarI.b);
            }
            if (((Boolean) this.a.a(c5.M3)).booleanValue()) {
                jSONObject.put("compass_random_token", this.a.v());
            }
            if (((Boolean) this.a.a(c5.O3)).booleanValue()) {
                jSONObject.put("applovin_random_token", this.a.j0());
            }
            if (((Boolean) this.a.a(c5.S3)).booleanValue()) {
                JsonUtils.putStringIfValid(jSONObject, "art", this.a.s());
            }
            JsonUtils.putStringIfValid(jSONObject, "eventid", this.a.F());
            if (this.a.u0().c()) {
                jSONObject.put("test_mode", true);
            }
            List listB = this.a.u0().b();
            if (listB != null && !listB.isEmpty()) {
                jSONObject.put("test_mode_networks", listB);
            }
            jSONObject.put("sdk_extra_parameters", new JSONObject(this.a.p0().getExtraParameters()));
            Map mapM0 = this.a.m0();
            if (!CollectionUtils.isEmpty(mapM0)) {
                jSONObject.put("segments", new JSONObject(mapM0));
            }
        } catch (JSONException e) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Failed to create JSON body", e);
            }
            this.a.E().a(this.b, "createJSONBody", e);
        }
        return jSONObject;
    }

    protected Map h() {
        HashMap map = new HashMap();
        if (!((Boolean) this.a.a(c5.N5)).booleanValue() && !((Boolean) this.a.a(c5.M5)).booleanValue()) {
            map.put("rid", UUID.randomUUID().toString());
        }
        if (!((Boolean) this.a.a(c5.x5)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
        }
        CollectionUtils.putStringIfValid("connectEventKey", this.a.r(), map);
        Boolean boolB = q0.b().b(a());
        if (boolB != null) {
            map.put("huc", boolB.toString());
        }
        Boolean boolB2 = q0.c().b(a());
        if (boolB2 != null) {
            map.put("aru", boolB2.toString());
        }
        Boolean boolB3 = q0.a().b(a());
        if (boolB3 != null) {
            map.put("dns", boolB3.toString());
        }
        return map;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!p0.f() && j.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(com.applovin.impl.sdk.l.p());
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Cannot update security provider", th);
                }
            }
        }
        this.a.y0().d(h2.i, b(g()));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Map mapH = h();
        com.applovin.impl.sdk.network.a.C0028a c0028aB = com.applovin.impl.sdk.network.a.a(this.a).b(g()).a(f()).b(mapH).a(e()).b(((Boolean) this.a.a(c5.Z5)).booleanValue()).c("POST").a((Object) new JSONObject()).a(((Integer) this.a.a(c5.m3)).intValue()).b(((Integer) this.a.a(c5.p3)).intValue());
        com.applovin.impl.sdk.l lVar = this.a;
        c5 c5Var = c5.l3;
        com.applovin.impl.sdk.network.a aVarA = c0028aB.c(((Integer) lVar.a(c5Var)).intValue()).e(((Boolean) this.a.a(c5.y3)).booleanValue()).a(z4.a.a(((Integer) this.a.a(c5.C5)).intValue())).f(true).a();
        this.a.s0().a(new c(this.a), i6.b.TIMEOUT, ((long) ((Integer) this.a.a(c5Var)).intValue()) + 250);
        a aVar = new a(aVarA, this.a, d(), jElapsedRealtime);
        aVar.c(c5.k0);
        aVar.b(c5.l0);
        this.a.s0().a(aVar);
    }
}
