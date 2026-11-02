package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class x7 implements v4 {
    private final List a;

    private x7(List list) {
        this.a = list;
    }

    public static x7 a(u8 u8Var, x7 x7Var, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        try {
            List listB = x7Var != null ? x7Var.b() : new ArrayList();
            Iterator it = u8Var.a("Verification").iterator();
            while (it.hasNext()) {
                w7 w7VarA = w7.a((u8) it.next(), z7Var, lVar);
                if (w7VarA != null) {
                    listB.add(w7VarA);
                }
            }
            return new x7(listB);
        } catch (Throwable th) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("VastAdVerifications", "Error occurred while initializing", th);
            }
            lVar.E().a("VastAdVerifications", th);
            return null;
        }
    }

    static x7 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "verifications", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            w7 w7VarA = w7.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), lVar);
            if (w7VarA != null) {
                arrayList.add(w7VarA);
            }
        }
        return new x7(arrayList);
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        if (this.a != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                jSONArray.put(((w7) it.next()).a());
            }
            JsonUtils.putJsonArray(jSONObject, "verifications", jSONArray);
        }
        return jSONObject;
    }

    public List b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x7) {
            return this.a.equals(((x7) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "VastAdVerification{verifications='" + this.a + "'}";
    }
}
