package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class l7 {
    private final com.applovin.impl.sdk.l a;
    private boolean b;
    private List c;

    public l7(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        e5 e5Var = e5.I;
        this.b = ((Boolean) lVar.a(e5Var, Boolean.FALSE)).booleanValue() || y.a(com.applovin.impl.sdk.l.p()).a("applovin.sdk.is_test_environment") || AppLovinSdkUtils.isEmulator() || lVar.B().U();
        lVar.c(e5Var);
    }

    private void e() {
        com.applovin.impl.sdk.k kVarU = this.a.u();
        if (this.b) {
            kVarU.b(this.c);
        } else {
            kVarU.a(this.c);
        }
    }

    public void a() {
        this.a.b(e5.I, Boolean.TRUE);
    }

    public void a(String str) {
        if (StringUtils.isValidString(str)) {
            a(Collections.singletonList(str));
        } else {
            a((List) null);
        }
    }

    public void a(List list) {
        if (list == null && this.c == null) {
            return;
        }
        if (list == null || !list.equals(this.c)) {
            this.c = list;
            e();
        }
    }

    public void a(JSONObject jSONObject) {
        if (this.b) {
            return;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray());
        com.applovin.impl.sdk.m mVarB = this.a.B();
        boolean zU = mVarB.U();
        String strA = mVarB.f().a();
        com.applovin.impl.sdk.m.b bVarI = mVarB.I();
        this.b = zU || JsonUtils.containsCaseInsensitiveString(strA, jSONArray) || JsonUtils.containsCaseInsensitiveString(bVarI != null ? bVarI.a : null, jSONArray);
    }

    public List b() {
        return this.c;
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        List list = this.c;
        return (list == null || list.isEmpty()) ? false : true;
    }
}
