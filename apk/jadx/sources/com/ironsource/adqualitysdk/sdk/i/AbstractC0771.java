package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0771 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2835;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2836 = StringFog.decrypt("QFtEhg==\n", "JTUyqSlkUjY=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public String f2839;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f2840;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2841;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2842;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public boolean f2838 = true;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f2837 = true;

    static {
        StringFog.decrypt("wjoNhXohqfk=\n", "qEli61REx5o=\n");
        StringFog.decrypt("DmjCADKTRFgBdc4=\n", "ZButbhz0PnY=\n");
        f2835 = StringFog.decrypt("uRLI\n", "2HyspJ2XJdc=\n");
    }

    public AbstractC0771(String str, String str2, String str3, String str4) {
        this.f2842 = str;
        this.f2841 = str2;
        this.f2840 = str3;
        this.f2839 = str4;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m2267() {
        JSONObject jSONObject;
        String strDecrypt = StringFog.decrypt("AP+ZsW/epM1d\n", "cpr03hu7wK8=\n");
        if (this.f2838) {
            C0961 c0961 = (C0961) AbstractC0953.m2334();
            synchronized (c0961) {
                jSONObject = c0961.f2613;
            }
            String strOptString = jSONObject.optString(c0961.f3449);
            if (!TextUtils.isEmpty(strOptString)) {
                return AbstractC0897.m2299("0A==\n", "/8CP2rwjuOk=\n", new StringBuilder().append(strDecrypt).append(f2836).append(strOptString));
            }
        }
        return strDecrypt;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public String mo2268() {
        return m2267() + this.f2842 + StringFog.decrypt("5Q==\n", "yvBA5yAbzI8=\n") + this.f2841 + StringFog.decrypt("Bw==\n", "KVzCTMcgVq0=\n") + f2835 + StringFog.decrypt("gw==\n", "reAedyvC47E=\n") + this.f2840 + StringFog.decrypt("tg==\n", "mLg6SqjSr3A=\n") + this.f2839;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2269(String str) {
        StringBuilder sbAppend = new StringBuilder().append(m2267()).append(this.f2842).append(StringFog.decrypt("Cg==\n", "JTtQephaXsQ=\n"));
        String str2 = f2835;
        return AbstractC0662.m2192("DA==\n", "Iq9li92Z6DQ=\n", AbstractC0662.m2192("LQ==\n", "Au4YzE2wleo=\n", sbAppend.append(str2), str).append(StringFog.decrypt("6w==\n", "xIGQGJ/hafk=\n")).append(this.f2841), str2).append(StringFog.decrypt("lA==\n", "uimNU/MwyCM=\n")).append(this.f2840).append(StringFog.decrypt("ow==\n", "jflR5SOcIJc=\n")).append(this.f2839).toString();
    }
}
