package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.tapjoy.TapjoyConstants;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class q8 {
    private final String a;
    private final String b;
    private final List c;

    public q8(JSONObject jSONObject) {
        this.a = JsonUtils.getString(jSONObject, "user_type", "all");
        this.b = JsonUtils.getString(jSONObject, TapjoyConstants.TJC_DEVICE_TYPE_NAME, "all");
        this.c = JsonUtils.getStringList(jSONObject, "segments", null);
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public List c() {
        return this.c;
    }
}
