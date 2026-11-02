package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e8 implements v4 {
    private String a;
    private String b;

    private e8() {
    }

    public static e8 a(u8 u8Var, e8 e8Var, com.applovin.impl.sdk.l lVar) {
        if (u8Var == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (e8Var == null) {
            try {
                e8Var = new e8();
            } catch (Throwable th) {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().a("VastSystemInfo", "Error occurred while initializing", th);
                }
                lVar.E().a("VastSystemInfo", th);
                return null;
            }
        }
        if (!StringUtils.isValidString(e8Var.a)) {
            String strD = u8Var.d();
            if (StringUtils.isValidString(strD)) {
                e8Var.a = strD;
            }
        }
        if (!StringUtils.isValidString(e8Var.b)) {
            String str = (String) u8Var.a().get("version");
            if (StringUtils.isValidString(str)) {
                e8Var.b = str;
            }
        }
        return e8Var;
    }

    public static e8 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        if (jSONObject == null) {
            return null;
        }
        e8 e8Var = new e8();
        e8Var.a = JsonUtils.getString(jSONObject, "name", null);
        e8Var.b = JsonUtils.getString(jSONObject, "version", null);
        return e8Var;
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", this.a);
        JsonUtils.putString(jSONObject, "version", this.b);
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e8)) {
            return false;
        }
        e8 e8Var = (e8) obj;
        String str = this.a;
        if (str == null ? e8Var.a != null : !str.equals(e8Var.a)) {
            return false;
        }
        String str2 = this.b;
        String str3 = e8Var.b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        return str3 == null;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "VastSystemInfo{name='" + this.a + "', version='" + this.b + "'}";
    }
}
