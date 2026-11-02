package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class y7 implements v4 {
    private int a;
    private int b;
    private Uri c;
    private d8 d;
    private final Set e = new HashSet();
    private final Map f = new HashMap();

    private y7() {
    }

    public static y7 a(u8 u8Var, y7 y7Var, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        u8 u8VarC;
        if (u8Var == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (y7Var == null) {
            try {
                y7Var = new y7();
            } catch (Throwable th) {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().a("VastCompanionAd", "Error occurred while initializing", th);
                }
                lVar.E().a("VastCompanionAd", th);
                return null;
            }
        }
        if (y7Var.a == 0 && y7Var.b == 0) {
            int i = StringUtils.parseInt((String) u8Var.a().get("width"));
            int i2 = StringUtils.parseInt((String) u8Var.a().get("height"));
            if (i > 0 && i2 > 0) {
                y7Var.a = i;
                y7Var.b = i2;
            }
        }
        y7Var.d = d8.a(u8Var, y7Var.d, lVar);
        if (y7Var.c == null && (u8VarC = u8Var.c("CompanionClickThrough")) != null) {
            String strD = u8VarC.d();
            if (StringUtils.isValidString(strD)) {
                y7Var.c = Uri.parse(strD);
            }
        }
        h8.a(u8Var.a("CompanionClickTracking"), y7Var.e, z7Var, lVar);
        h8.a(u8Var, y7Var.f, z7Var, lVar);
        return y7Var;
    }

    public static y7 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        if (jSONObject == null) {
            return null;
        }
        int i = JsonUtils.getInt(jSONObject, "width", 0);
        int i2 = JsonUtils.getInt(jSONObject, "height", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        Uri uri = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        d8 d8VarA = d8.a(JsonUtils.getJSONObject(jSONObject, "non_video_resource", (JSONObject) null), lVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            f8 f8VarA = f8.a(JsonUtils.getJSONObject(jSONArray, i3, (JSONObject) null), lVar);
            if (f8VarA != null) {
                hashSet.add(f8VarA);
            }
        }
        y7 y7Var = new y7();
        y7Var.a = i;
        y7Var.b = i2;
        y7Var.c = uri;
        y7Var.d = d8VarA;
        y7Var.e.addAll(hashSet);
        return y7Var;
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "width", this.a);
        JsonUtils.putInt(jSONObject, "height", this.b);
        Uri uri = this.c;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        d8 d8Var = this.d;
        JsonUtils.putJSONObject(jSONObject, "non_video_resource", d8Var != null ? d8Var.a() : null);
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            jSONArray.put(((f8) it.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        return jSONObject;
    }

    public Set b() {
        return this.e;
    }

    public Uri c() {
        return this.c;
    }

    public Map d() {
        return this.f;
    }

    public d8 e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y7)) {
            return false;
        }
        y7 y7Var = (y7) obj;
        if (this.a != y7Var.a || this.b != y7Var.b) {
            return false;
        }
        Uri uri = this.c;
        if (uri == null ? y7Var.c != null : !uri.equals(y7Var.c)) {
            return false;
        }
        d8 d8Var = this.d;
        if (d8Var == null ? y7Var.d != null : !d8Var.equals(y7Var.d)) {
            return false;
        }
        Set set = this.e;
        if (set == null ? y7Var.e != null : !set.equals(y7Var.e)) {
            return false;
        }
        Map map = this.f;
        Map map2 = y7Var.f;
        if (map != null) {
            return map.equals(map2);
        }
        return map2 == null;
    }

    public int hashCode() {
        int i = ((this.a * 31) + this.b) * 31;
        Uri uri = this.c;
        int iHashCode = (i + (uri != null ? uri.hashCode() : 0)) * 31;
        d8 d8Var = this.d;
        int iHashCode2 = (iHashCode + (d8Var != null ? d8Var.hashCode() : 0)) * 31;
        Set set = this.e;
        int iHashCode3 = (iHashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map map = this.f;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "VastCompanionAd{width=" + this.a + ", height=" + this.b + ", destinationUri=" + this.c + ", nonVideoResource=" + this.d + ", clickTrackers=" + this.e + ", eventTrackers=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }
}
