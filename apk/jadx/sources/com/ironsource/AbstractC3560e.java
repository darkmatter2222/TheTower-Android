package com.ironsource;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractC3560e {
    private final String a = "eventId";
    private final String b = "timestamp";
    private final String c = "InterstitialEvents";
    private final String d = "events";
    private final String e = "events";
    JSONObject f;
    int g;
    private String h;

    AbstractC3560e() {
    }

    private String a(int i) {
        return i != 2 ? "events" : "InterstitialEvents";
    }

    protected abstract String a();

    public abstract String a(ArrayList<C5> arrayList, JSONObject jSONObject);

    String a(JSONArray jSONArray) {
        try {
            if (this.f == null) {
                return "";
            }
            JSONObject jSONObject = new JSONObject(this.f.toString());
            jSONObject.put("timestamp", IronSourceUtils.e());
            jSONObject.put(a(this.g), jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            C3801r4.d().a(e);
            return "";
        }
    }

    JSONObject a(C5 c5) {
        try {
            String strA = c5.a();
            JSONObject jSONObject = !TextUtils.isEmpty(strA) ? new JSONObject(strA) : new JSONObject();
            jSONObject.put("eventId", c5.c());
            jSONObject.put("timestamp", c5.d());
            return jSONObject;
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return null;
        }
    }

    void a(String str) {
        this.h = str;
    }

    String b() {
        return TextUtils.isEmpty(this.h) ? a() : this.h;
    }

    public abstract String c();
}
