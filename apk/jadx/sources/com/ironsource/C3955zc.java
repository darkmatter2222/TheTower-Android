package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.zc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3955zc implements InterfaceC3777pf<JSONObject>, InterfaceC3737nf<C3919xc> {
    private final Map<String, C3634i1> a = new LinkedHashMap();

    @Override // com.ironsource.InterfaceC3737nf
    public void a(C3919xc record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String strC = record.c();
        Map<String, C3634i1> map = this.a;
        C3634i1 c3634i1 = map.get(strC);
        if (c3634i1 == null) {
            c3634i1 = new C3634i1();
            map.put(strC, c3634i1);
        }
        c3634i1.a(record.a(new C3937yc()));
    }

    @Override // com.ironsource.InterfaceC3604g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(EnumC3755of mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, C3634i1> entry : this.a.entrySet()) {
            String key = entry.getKey();
            JSONArray jSONArrayA = entry.getValue().a(mode);
            if (jSONArrayA.length() > 0) {
                jSONObject.put(key, jSONArrayA);
            }
        }
        return jSONObject;
    }
}
