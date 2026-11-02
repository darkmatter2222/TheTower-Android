package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.ironsource.C3510b4;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.BuildConfig;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class y0 {
    private final JSONObject a;

    public enum a {
        NEUTRAL,
        POSITIVE,
        NEGATIVE
    }

    private y0(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public static y0 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        String string = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "title", (JSONObject) null), C3510b4.i.W, null);
        if ("TOS".equalsIgnoreCase(string) && lVar.y().h() == null) {
            return null;
        }
        if ("PP".equalsIgnoreCase(string) && lVar.y().f() == null) {
            return null;
        }
        return new y0(jSONObject);
    }

    public int a() {
        return JsonUtils.getInt(this.a, "destination_state_id", -1);
    }

    public String b() {
        return JsonUtils.getString(this.a, "event", null);
    }

    public a c() {
        String string = JsonUtils.getString(this.a, TJAdUnitConstants.String.STYLE, null);
        if (BuildConfig.FLAVOR.equalsIgnoreCase(string)) {
            return a.POSITIVE;
        }
        return ("destructive".equalsIgnoreCase(string) || "cancel".equalsIgnoreCase(string)) ? a.NEGATIVE : a.NEUTRAL;
    }

    public String d() {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.a, "title", (JSONObject) null);
        return com.applovin.impl.sdk.l.a(JsonUtils.getString(jSONObject, C3510b4.i.W, ""), JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "replacements", null), null));
    }

    public String toString() {
        return "ConsentFlowStateAlertAction{title=" + d() + ", destinationStateId=" + a() + ", event=" + b() + "}";
    }
}
