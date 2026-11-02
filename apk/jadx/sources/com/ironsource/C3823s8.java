package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3823s8 implements InterfaceC3805r8, InterfaceC3805r8.a {
    private JSONObject a = new JSONObject();
    private JSONObject b = new JSONObject();
    private JSONObject c = new JSONObject();

    private final Object e(String str) {
        if (this.c.has(str)) {
            return this.c.get(str);
        }
        if (this.b.has(str)) {
            return this.b.get(str);
        }
        if (this.a.has(str)) {
            return this.a.get(str);
        }
        return null;
    }

    @Override // com.ironsource.InterfaceC3805r8
    public JSONObject a(String configKey) {
        Intrinsics.checkNotNullParameter(configKey, "configKey");
        Object objE = e(configKey);
        if (objE instanceof JSONObject) {
            return (JSONObject) objE;
        }
        return null;
    }

    @Override // com.ironsource.InterfaceC3805r8.a
    public void a(JSONObject controllerConfig) {
        Intrinsics.checkNotNullParameter(controllerConfig, "controllerConfig");
        this.a = controllerConfig;
        JSONObject jSONObjectOptJSONObject = controllerConfig.optJSONObject(C3510b4.a.b);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        this.b = jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = this.a.optJSONObject(C3510b4.a.c);
        if (jSONObjectOptJSONObject2 == null) {
            jSONObjectOptJSONObject2 = new JSONObject();
        }
        this.c = jSONObjectOptJSONObject2;
    }

    @Override // com.ironsource.InterfaceC3805r8
    public Integer b(String configKey) {
        Intrinsics.checkNotNullParameter(configKey, "configKey");
        Object objE = e(configKey);
        if (objE instanceof Integer) {
            return (Integer) objE;
        }
        return null;
    }

    @Override // com.ironsource.InterfaceC3805r8
    public Boolean c(String configKey) {
        Intrinsics.checkNotNullParameter(configKey, "configKey");
        Object objE = e(configKey);
        if (objE instanceof Boolean) {
            return (Boolean) objE;
        }
        return null;
    }

    @Override // com.ironsource.InterfaceC3805r8
    public String d(String configKey) {
        Intrinsics.checkNotNullParameter(configKey, "configKey");
        Object objE = e(configKey);
        if (objE instanceof String) {
            return (String) objE;
        }
        return null;
    }
}
