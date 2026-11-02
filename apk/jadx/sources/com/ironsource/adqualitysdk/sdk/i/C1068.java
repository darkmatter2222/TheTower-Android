package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1068 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f3802;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject f3803;

    public C1068(String str, JSONObject jSONObject) {
        this.f3803 = jSONObject;
        this.f3802 = str;
    }

    public C1068(JSONObject jSONObject) {
        String string = UUID.randomUUID().toString();
        this.f3803 = jSONObject;
        this.f3802 = string;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m2432() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(StringFog.decrypt("jzMj5Hns5B8=\n", "/1xQkD2NkH4=\n"), this.f3803);
        jSONObject.put(StringFog.decrypt("MlLyaQ==\n", "RyebDQbnck4=\n"), this.f3802);
        return jSONObject;
    }
}
