package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import java.util.Map;
import org.json.JSONObject;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class T3 {
    private final C3832t a;
    private final C3832t b;
    private final C3448a3 c;
    private final Xb d;
    private final J1 e;
    private final Map<LevelPlay.AdFormat, C3832t> f;

    public T3(JSONObject configurations) {
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        C3832t c3832t = new C3832t(a(configurations, "rewarded"));
        this.a = c3832t;
        C3832t c3832t2 = new C3832t(a(configurations, "interstitial"));
        this.b = c3832t2;
        this.c = new C3448a3(a(configurations, "banner"));
        this.d = new Xb(a(configurations, "nativeAd"));
        JSONObject jSONObjectOptJSONObject = configurations.optJSONObject("application");
        this.e = new J1(jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject);
        this.f = MapsKt.mapOf(TuplesKt.to(LevelPlay.AdFormat.INTERSTITIAL, c3832t2), TuplesKt.to(LevelPlay.AdFormat.REWARDED, c3832t));
    }

    private final JSONObject a(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("adFormats");
        return (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(str)) == null) ? new JSONObject() : jSONObjectOptJSONObject;
    }

    public final Map<LevelPlay.AdFormat, C3832t> a() {
        return this.f;
    }

    public final J1 b() {
        return this.e;
    }

    public final C3448a3 c() {
        return this.c;
    }

    public final Xb d() {
        return this.d;
    }
}
