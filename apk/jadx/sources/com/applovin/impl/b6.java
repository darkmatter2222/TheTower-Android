package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b6 extends n5 {
    private final r0.e g;

    class a extends r6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar, boolean z) {
            super(aVar, lVar, z);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            b6.this.g.a(str, i, str2, jSONObject);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, JSONObject jSONObject, int i) {
            b6.this.g.a(str, jSONObject, i);
        }
    }

    public b6(r0.e eVar, com.applovin.impl.sdk.l lVar) {
        super("TaskFetchMediationDebuggerInfo", lVar, true);
        this.g = eVar;
    }

    private JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putJsonArrayIfValid(jSONObject, "installed_mediation_adapters", a4.b(this.a));
        JsonUtils.putBoolean(jSONObject, "is_tablet", AppLovinSdkUtils.isTablet(context));
        v.a aVarF = this.a.B().f();
        JsonUtils.putStringIfValid(jSONObject, "dnt_code", aVarF.b().b());
        JsonUtils.putStringIfValid(jSONObject, "idfa", aVarF.a());
        Map mapM0 = this.a.m0();
        if (!CollectionUtils.isEmpty(mapM0)) {
            JsonUtils.putJSONObject(jSONObject, "segments", new JSONObject(mapM0));
        }
        return jSONObject;
    }

    protected Map e() {
        HashMap map = new HashMap();
        map.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.a.a(c5.x5)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
        }
        Map mapH = this.a.B().H();
        map.put(C3510b4.i.V, String.valueOf(mapH.get(C3510b4.i.V)));
        map.put(TapjoyConstants.TJC_APP_VERSION_NAME, String.valueOf(mapH.get(TapjoyConstants.TJC_APP_VERSION_NAME)));
        Map mapO = this.a.B().O();
        map.put("platform", String.valueOf(mapO.get("platform")));
        map.put(R6.F, String.valueOf(mapO.get(R6.F)));
        return map;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map mapE = e();
        JSONObject jSONObjectA = a(a());
        if (((Boolean) this.a.a(c5.P5)).booleanValue() || ((Boolean) this.a.a(c5.M5)).booleanValue()) {
            JsonUtils.putAll(jSONObjectA, (Map<String, ?>) mapE);
            mapE = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).c("POST").b(p3.i(this.a)).a(p3.h(this.a)).b(mapE).a(jSONObjectA).a((Object) new JSONObject()).c(((Long) this.a.a(v3.J7)).intValue()).a(z4.a.a(((Integer) this.a.a(c5.E5)).intValue())).a(), this.a, d());
        aVar.c(v3.F7);
        aVar.b(v3.G7);
        this.a.s0().a(aVar);
    }
}
