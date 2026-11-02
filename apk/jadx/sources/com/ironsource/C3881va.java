package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.va, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3881va {
    private String a;
    private JSONObject b;
    private String c;
    private String d;

    public C3881va(JSONObject jSONObject) {
        this.a = jSONObject.optString(C3510b4.g.b);
        this.b = jSONObject.optJSONObject(C3510b4.g.c);
        this.c = jSONObject.optString("success");
        this.d = jSONObject.optString(C3510b4.g.e);
    }

    public String a() {
        return this.d;
    }

    public String b() {
        return this.a;
    }

    public JSONObject c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(C3510b4.g.b, this.a);
            jSONObject.put(C3510b4.g.c, this.b);
            jSONObject.put("success", this.c);
            jSONObject.put(C3510b4.g.e, this.d);
            return jSONObject;
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return jSONObject;
        }
    }
}
