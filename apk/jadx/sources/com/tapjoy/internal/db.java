package com.tapjoy.internal;

import com.ironsource.C3510b4;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class db {
    private final boolean a = false;
    private final Float b = null;
    private final boolean c = false;
    private final da d;

    public db(da daVar) {
        this.d = daVar;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.a);
            if (this.a) {
                jSONObject.put("skipOffset", this.b);
            }
            jSONObject.put("autoPlay", this.c);
            jSONObject.put(C3510b4.i.L, this.d);
            return jSONObject;
        } catch (JSONException e) {
            dp.a("VastProperties: JSON error", e);
            return jSONObject;
        }
    }
}
