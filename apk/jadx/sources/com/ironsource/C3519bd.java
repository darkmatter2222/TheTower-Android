package com.ironsource;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.bd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
class C3519bd extends AbstractC3560e {
    private final String i = C3699ld.a;

    C3519bd(int i) {
        this.g = i;
    }

    @Override // com.ironsource.AbstractC3560e
    public String a() {
        return C3699ld.a;
    }

    @Override // com.ironsource.AbstractC3560e
    public String a(ArrayList<C5> arrayList, JSONObject jSONObject) {
        if (jSONObject == null) {
            this.f = new JSONObject();
        } else {
            this.f = jSONObject;
        }
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<C5> it = arrayList.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = a(it.next());
                if (jSONObjectA != null) {
                    jSONArray.put(jSONObjectA);
                }
            }
        }
        return a(jSONArray);
    }

    @Override // com.ironsource.AbstractC3560e
    public String c() {
        return "outcome";
    }
}
