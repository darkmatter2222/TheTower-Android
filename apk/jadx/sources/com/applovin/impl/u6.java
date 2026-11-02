package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u6 extends w6 {

    class a implements r0.e {
        a() {
        }

        @Override // com.applovin.impl.r0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            u6.this.a(i);
        }

        @Override // com.applovin.impl.r0.e
        public void a(String str, JSONObject jSONObject, int i) {
            u6.this.b(jSONObject);
        }
    }

    protected u6(String str, com.applovin.impl.sdk.l lVar) {
        super(str, lVar);
    }

    private JSONObject a(t4 t4Var) {
        JSONObject jSONObjectE = e();
        JsonUtils.putString(jSONObjectE, "result", t4Var.b());
        Map mapA = t4Var.a();
        if (mapA != null) {
            JsonUtils.putJSONObject(jSONObjectE, "params", new JSONObject(mapA));
        }
        return jSONObjectE;
    }

    protected abstract void b(JSONObject jSONObject);

    @Override // com.applovin.impl.w6
    protected int g() {
        return ((Integer) this.a.a(c5.m1)).intValue();
    }

    protected abstract t4 h();

    protected abstract void i();

    @Override // java.lang.Runnable
    public void run() {
        t4 t4VarH = h();
        if (t4VarH != null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Reporting pending reward: " + t4VarH + "...");
            }
            a(a(t4VarH), new a());
        } else {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Pending reward not found");
            }
            i();
        }
    }
}
