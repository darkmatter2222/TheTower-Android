package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class U9 {
    private final int a;
    private final String b;
    private final JSONObject c;
    private final C3814s d;
    private final C3814s e;
    private final C3814s f;

    public U9(int i, String controllerUrl, JSONObject controllerConfig, C3814s bannerConfig, C3814s interstitialConfig, C3814s rewardedConfig) {
        Intrinsics.checkNotNullParameter(controllerUrl, "controllerUrl");
        Intrinsics.checkNotNullParameter(controllerConfig, "controllerConfig");
        Intrinsics.checkNotNullParameter(bannerConfig, "bannerConfig");
        Intrinsics.checkNotNullParameter(interstitialConfig, "interstitialConfig");
        Intrinsics.checkNotNullParameter(rewardedConfig, "rewardedConfig");
        this.a = i;
        this.b = controllerUrl;
        this.c = controllerConfig;
        this.d = bannerConfig;
        this.e = interstitialConfig;
        this.f = rewardedConfig;
    }

    public static /* synthetic */ U9 a(U9 u9, int i, String str, JSONObject jSONObject, C3814s c3814s, C3814s c3814s2, C3814s c3814s3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = u9.a;
        }
        if ((i2 & 2) != 0) {
            str = u9.b;
        }
        if ((i2 & 4) != 0) {
            jSONObject = u9.c;
        }
        if ((i2 & 8) != 0) {
            c3814s = u9.d;
        }
        if ((i2 & 16) != 0) {
            c3814s2 = u9.e;
        }
        if ((i2 & 32) != 0) {
            c3814s3 = u9.f;
        }
        C3814s c3814s4 = c3814s2;
        C3814s c3814s5 = c3814s3;
        return u9.a(i, str, jSONObject, c3814s, c3814s4, c3814s5);
    }

    public final int a() {
        return this.a;
    }

    public final U9 a(int i, String controllerUrl, JSONObject controllerConfig, C3814s bannerConfig, C3814s interstitialConfig, C3814s rewardedConfig) {
        Intrinsics.checkNotNullParameter(controllerUrl, "controllerUrl");
        Intrinsics.checkNotNullParameter(controllerConfig, "controllerConfig");
        Intrinsics.checkNotNullParameter(bannerConfig, "bannerConfig");
        Intrinsics.checkNotNullParameter(interstitialConfig, "interstitialConfig");
        Intrinsics.checkNotNullParameter(rewardedConfig, "rewardedConfig");
        return new U9(i, controllerUrl, controllerConfig, bannerConfig, interstitialConfig, rewardedConfig);
    }

    public final String b() {
        return this.b;
    }

    public final JSONObject c() {
        return this.c;
    }

    public final C3814s d() {
        return this.d;
    }

    public final C3814s e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof U9)) {
            return false;
        }
        U9 u9 = (U9) obj;
        return this.a == u9.a && Intrinsics.areEqual(this.b, u9.b) && Intrinsics.areEqual(this.c, u9.c) && Intrinsics.areEqual(this.d, u9.d) && Intrinsics.areEqual(this.e, u9.e) && Intrinsics.areEqual(this.f, u9.f);
    }

    public final C3814s f() {
        return this.f;
    }

    public final C3814s g() {
        return this.d;
    }

    public final JSONObject h() {
        return this.c;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode();
    }

    public final String i() {
        return this.b;
    }

    public final C3814s j() {
        return this.e;
    }

    public final int k() {
        return this.a;
    }

    public final C3814s l() {
        return this.f;
    }

    public String toString() {
        return "IronSourceAdsInitConfig(logLevel=" + this.a + ", controllerUrl=" + this.b + ", controllerConfig=" + this.c + ", bannerConfig=" + this.d + ", interstitialConfig=" + this.e + ", rewardedConfig=" + this.f + ")";
    }
}
