package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a7 extends b7 {
    private final g3 g;

    public a7(g3 g3Var, com.applovin.impl.sdk.l lVar) {
        super("TaskValidateMaxReward", lVar);
        this.g = g3Var;
    }

    @Override // com.applovin.impl.w6
    protected void a(int i) {
        super.a(i);
        String str = (i < 400 || i >= 500) ? "network_timeout" : "rejected";
        this.g.a(t4.a(str));
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("error_message", str);
        mapHashMap.put("code", String.valueOf(i));
        this.a.R().a(h2.B0, this.g, mapHashMap);
    }

    @Override // com.applovin.impl.b7
    protected void a(t4 t4Var) {
        this.g.a(t4Var);
    }

    @Override // com.applovin.impl.w6
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.g.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.g.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.g.e());
        JsonUtils.putString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, this.g.getFormat().getLabel());
        String strV0 = this.g.v0();
        if (!StringUtils.isValidString(strV0)) {
            strV0 = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", strV0);
        String strC = this.g.C();
        if (!StringUtils.isValidString(strC)) {
            strC = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", strC);
    }

    @Override // com.applovin.impl.w6
    protected String f() {
        return "2.0/mvr";
    }

    @Override // com.applovin.impl.b7
    protected boolean h() {
        return this.g.A0();
    }
}
