package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class H0 implements InterfaceC3777pf<JSONObject>, InterfaceC3737nf<F0> {
    private final Map<String, C3955zc> a = new LinkedHashMap();

    @Override // com.ironsource.InterfaceC3737nf
    public void a(F0 record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String strD = record.d();
        Map<String, C3955zc> map = this.a;
        C3955zc c3955zc = map.get(strD);
        if (c3955zc == null) {
            c3955zc = new C3955zc();
            map.put(strD, c3955zc);
        }
        c3955zc.a(record.a(new G0()));
    }

    @Override // com.ironsource.InterfaceC3604g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(EnumC3755of mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, C3955zc> entry : this.a.entrySet()) {
            String key = entry.getKey();
            JSONObject jSONObjectA = entry.getValue().a(mode);
            if (jSONObjectA.length() > 0) {
                jSONObject.put(StringsKt.substringAfterLast$default(key, "_", (String) null, 2, (Object) null), jSONObjectA);
            }
        }
        return jSONObject;
    }
}
