package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class o5 extends n5 {

    class a extends r6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar) {
            super(aVar, lVar);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            s0.a(i, this.a);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, JSONObject jSONObject, int i) {
            o5.this.a(jSONObject);
        }
    }

    o5(com.applovin.impl.sdk.l lVar) {
        super("TaskApiSubmitData", lVar);
    }

    private void a(Map map, JSONObject jSONObject) {
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).b(s0.b("2.0/device", this.a)).a(s0.a("2.0/device", this.a)).b(map).a(jSONObject).c("POST").b(((Boolean) this.a.a(c5.a6)).booleanValue()).a((Object) new JSONObject()).a(((Integer) this.a.a(c5.j3)).intValue()).a(z4.a.a(((Integer) this.a.a(c5.J5)).intValue())).a(), this.a);
        aVar.c(c5.o0);
        aVar.b(c5.p0);
        this.a.s0().a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        this.a.q0().a(c5.f, JsonUtils.getString(jSONObject2, "device_id", ""));
        this.a.q0().a(c5.j, JsonUtils.getString(jSONObject2, "device_token", ""));
        s0.a(jSONObject2, this.a);
    }

    private void b(JSONObject jSONObject) {
        com.applovin.impl.sdk.m mVarB = this.a.B();
        Map mapP = mVarB.p();
        u7.a("platform", "type", mapP);
        u7.a("api_level", "sdk_version", mapP);
        JsonUtils.putObject(jSONObject, "device_info", new JSONObject(mapP));
        Map mapH = mVarB.H();
        u7.a("sdk_version", "applovin_sdk_version", mapH);
        u7.a("ia", "installed_at", mapH);
        JsonUtils.putObject(jSONObject, "app_info", new JSONObject(mapH));
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d(this.b, "Submitting user data...");
        }
        Map mapC = s0.c(this.a);
        JSONObject jSONObject = new JSONObject();
        b(jSONObject);
        if (((Boolean) this.a.a(c5.S5)).booleanValue() || ((Boolean) this.a.a(c5.M5)).booleanValue()) {
            JsonUtils.putAll(jSONObject, (Map<String, ?>) mapC);
            mapC = null;
        }
        a(mapC, jSONObject);
    }
}
