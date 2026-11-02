package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w5 extends n5 {
    protected final u g;
    private final String h;

    class a extends r6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar) {
            super(aVar, lVar);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            w5.this.a(i, str2);
            this.a.E().a("fetchAd", str, i, str2);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, JSONObject jSONObject, int i) {
            if (i != 200) {
                w5.this.a(i, MaxAdapterError.NO_FILL.getErrorMessage());
                return;
            }
            JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.m.a());
            JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.m.b());
            HashMap map = new HashMap(5);
            CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), map);
            CollectionUtils.putStringIfValid("code", String.valueOf(i), map);
            CollectionUtils.putStringIfValid("ad_zone_id", w5.this.g.e(), map);
            CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.m.a()), map);
            CollectionUtils.putStringIfValid("response_size", String.valueOf(this.m.b()), map);
            this.a.g().d(h2.B, map);
            w5.this.b(jSONObject);
        }
    }

    public w5(u uVar, String str, com.applovin.impl.sdk.l lVar) {
        super(str, lVar);
        this.g = uVar;
        this.h = lVar.b();
    }

    private Map g() {
        HashMap map = new HashMap(3);
        map.put("AppLovin-Zone-Id", this.g.e());
        if (this.g.f() != null) {
            map.put("AppLovin-Ad-Size", this.g.f().getLabel());
        }
        if (this.g.g() != null) {
            map.put("AppLovin-Ad-Type", this.g.g().getLabel());
        }
        return map;
    }

    protected abstract n5 a(JSONObject jSONObject);

    protected void a(int i, String str) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.b(this.b, "Unable to fetch " + this.g + " ad: server returned " + i);
        }
        this.a.g().a(h2.C, this.g, new AppLovinError(i, str));
    }

    protected void b(JSONObject jSONObject) {
        s0.c(jSONObject, this.a);
        s0.b(jSONObject, this.a);
        s0.a(jSONObject, this.a);
        u.a(jSONObject);
        this.a.s0().a(a(jSONObject));
    }

    protected abstract String e();

    protected abstract String f();

    protected Map h() {
        HashMap map = new HashMap(4);
        map.put("zone_id", this.g.e());
        if (this.g.f() != null) {
            map.put("size", this.g.f().getLabel());
        }
        if (this.g.g() != null) {
            map.put("require", this.g.g().getLabel());
        }
        return map;
    }

    @Override // java.lang.Runnable
    public void run() {
        z4.a aVarA;
        Map map;
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Fetching next ad of zone: " + this.g);
        }
        if (((Boolean) this.a.a(c5.e4)).booleanValue() && u7.k() && com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "User is connected to a VPN");
        }
        u7.a(this.a, this.b);
        this.a.g().a(h2.A, this.g, (AppLovinError) null);
        try {
            JSONObject andResetCustomPostBody = this.a.l().getAndResetCustomPostBody();
            String str = "POST";
            if (((Boolean) this.a.a(c5.r3)).booleanValue()) {
                aVarA = z4.a.a(((Integer) this.a.a(c5.F5)).intValue());
                JSONObject jSONObject = new JSONObject(this.a.B().a(h(), false, true));
                map = new HashMap();
                if (!((Boolean) this.a.a(c5.Q5)).booleanValue() && !((Boolean) this.a.a(c5.M5)).booleanValue()) {
                    map.put("rid", UUID.randomUUID().toString());
                }
                if (!((Boolean) this.a.a(c5.x5)).booleanValue()) {
                    map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
                }
                JsonUtils.putAll(jSONObject, andResetCustomPostBody);
                andResetCustomPostBody = jSONObject;
            } else {
                z4.a aVarA2 = z4.a.a(((Integer) this.a.a(c5.G5)).intValue());
                Map mapA = u7.a(this.a.B().a(h(), false, false));
                if (!((Boolean) this.a.a(c5.X6)).booleanValue()) {
                    mapA.remove("video_decoders");
                }
                if (andResetCustomPostBody == null) {
                    str = "GET";
                    andResetCustomPostBody = null;
                }
                aVarA = aVarA2;
                map = mapA;
            }
            if (u7.h(a()) || u7.j(a())) {
                map.putAll(this.a.l().getAndResetCustomQueryParams());
            }
            if (StringUtils.isValidString(this.h)) {
                map.put("sts", this.h);
            }
            com.applovin.impl.sdk.network.a.C0028a c0028aF = com.applovin.impl.sdk.network.a.a(this.a).b(f()).a(e()).b(map).c(str).a(g()).a((Object) new JSONObject()).a(((Integer) this.a.a(c5.g3)).intValue()).c(((Boolean) this.a.a(c5.h3)).booleanValue()).d(((Boolean) this.a.a(c5.i3)).booleanValue()).c(((Integer) this.a.a(c5.f3)).intValue()).a(aVarA).f(true);
            if (andResetCustomPostBody != null) {
                c0028aF.a(andResetCustomPostBody);
                c0028aF.b(((Boolean) this.a.a(c5.b6)).booleanValue());
            }
            a aVar = new a(c0028aF.a(), this.a);
            aVar.c(c5.m0);
            aVar.b(c5.n0);
            this.a.s0().a(aVar);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Unable to fetch ad for zone id: " + this.g, th);
            }
            a(0, th.getMessage());
        }
    }
}
