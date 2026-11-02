package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w6 extends n5 {

    class a extends r6 {
        final /* synthetic */ r0.e n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar, r0.e eVar) {
            super(aVar, lVar);
            this.n = eVar;
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            this.n.a(str, i, str2, jSONObject);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, JSONObject jSONObject, int i) {
            this.n.a(str, jSONObject, i);
        }
    }

    protected w6(String str, com.applovin.impl.sdk.l lVar) {
        super(str, lVar);
    }

    protected void a(int i) {
        s0.a(i, this.a);
    }

    protected abstract void a(JSONObject jSONObject);

    void a(JSONObject jSONObject, r0.e eVar) {
        Map mapC = s0.c(this.a);
        if (((Boolean) this.a.a(c5.T5)).booleanValue() || ((Boolean) this.a.a(c5.M5)).booleanValue()) {
            JsonUtils.putAll(jSONObject, (Map<String, ?>) mapC);
            mapC = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).b(s0.b(f(), this.a)).a(s0.a(f(), this.a)).b(mapC).a(jSONObject).c("POST").b(((Boolean) this.a.a(c5.d6)).booleanValue()).a((Object) new JSONObject()).a(g()).a(z4.a.a(((Integer) this.a.a(c5.K5)).intValue())).a(), this.a, eVar);
        aVar.c(c5.o0);
        aVar.b(c5.p0);
        this.a.s0().a(aVar);
    }

    protected JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        String strE = this.a.z0().e();
        if (((Boolean) this.a.a(c5.L3)).booleanValue() && StringUtils.isValidString(strE)) {
            JsonUtils.putString(jSONObject, "cuid", strE);
        }
        if (((Boolean) this.a.a(c5.N3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "compass_random_token", this.a.v());
        }
        if (((Boolean) this.a.a(c5.P3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "applovin_random_token", this.a.j0());
        }
        a(jSONObject);
        return jSONObject;
    }

    protected abstract String f();

    protected abstract int g();
}
