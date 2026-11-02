package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0553 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2283;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2284;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f2285;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1005 f2286;

    public C0553(C0392 c0392, C1005 c1005, String str, String str2) {
        this.f2283 = c0392;
        this.f2286 = c1005;
        this.f2285 = str;
        this.f2284 = str2;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0191  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObjectM2070 = C0392.m2070(this.f2283, this.f2286);
        jSONObjectM2070.put(StringFog.decrypt("hzk=\n", "4kHPpf8Jfo8=\n"), true);
        C0392.m2069(this.f2283).put(this.f2286.f3545.f2382, jSONObjectM2070);
        String strM2028 = this.f2286.f3542.m2028();
        C0303 c0303 = this.f2283.f1899;
        if (StringFog.decrypt("FSG8kkQjqxg=\n", "UWjv0wZv7lw=\n").equals(strM2028)) {
            AbstractC0250.m1997(StringFog.decrypt("zzOp8stTPGP+Eabyz1ctfg==\n", "jFzHnK4wSAw=\n"), this.f2286.f3545.f2381 + StringFog.decrypt("0Rm+iMXr2m6eCPGP2K7dc4Ibs4rO6g==\n", "8XrR5quOuRo=\n"));
            if (c0303 != null) {
                AbstractC0340.m2053(new C0333(c0303, this.f2285, EnumC0367.f1677));
            }
        } else if (this.f2283.m2084(this.f2285)) {
            AbstractC0250.m1997(StringFog.decrypt("B9La2p/cy0428NXam9jaUw==\n", "RL20tPq/vyE=\n"), this.f2286.f3545.f2381 + StringFog.decrypt("/glh2YEBneixGC7Ajhfe+LcZb9WDAZq8uBhh2s8Qlvn+GWvFmQGM\n", "3moOt+9k/pw=\n"));
            if (c0303 != null) {
                AbstractC0340.m2053(new C0333(c0303, this.f2285, EnumC0367.f1677));
            }
            jSONObjectM2070.put(StringFog.decrypt("wjXL\n", "pla4dbSBfrQ=\n"), true);
        } else {
            this.f2283.getClass();
            C0961 c0961 = (C0961) AbstractC0953.m2334();
            synchronized (c0961) {
                jSONObject = c0961.f2613;
            }
            if (jSONObject.optBoolean(c0961.f3435)) {
                AbstractC0340.m2057(new C0555(this));
                ((ArrayList) C0392.m2067(this.f2283)).add(this.f2286);
            } else {
                C0392 c0392 = this.f2283;
                C1005 c1005 = this.f2286;
                c0392.getClass();
                if (C0392.f1893.equals(strM2028) || (!TextUtils.isEmpty(strM2028) && AbstractC0679.m2217(strM2028, c1005.f3545.f2379) >= 0 && AbstractC0679.m2217(strM2028, c1005.f3545.f2378) <= 0)) {
                    AbstractC0340.m2057(new C0555(this));
                    ((ArrayList) C0392.m2067(this.f2283)).add(this.f2286);
                } else {
                    jSONObjectM2070.put(StringFog.decrypt("N55c\n", "ROgvNWJDO40=\n"), false);
                    if (c0303 != null) {
                        AbstractC0340.m2053(new C0345(c0303, this.f2285, EnumC0375.f1831));
                    }
                    AbstractC1071.m2436(StringFog.decrypt("kpOId4Hx7XqjsYd3hfX8Zw==\n", "0fzmGeSSmRU=\n"), AbstractC0897.m2299("5Vqfe37Nb7q8Vph7Y9dr6qpBmD50gnnj5UeEPjDBdPSrVo8vf9A=\n", "xTPsWxCiG5o=\n", AbstractC0662.m2192("pGfQU1+jqsb3Xft2Xw==\n", "hDSUGH/Vz7Q=\n", new StringBuilder().append(this.f2284), strM2028)), null, true, true, false);
                    if (this.f2286.m2394()) {
                        ((C0474) this.f2283.m2079()).adQualitySdkInitFailed(ISAdQualityInitError.AD_NETWORK_VERSION_NOT_SUPPORTED_YET, AbstractC0897.m2299("ELkpWd7n51JJtS5Zw/3jAl+iLhzUqPELEKQyHJDr/BxetTkN3/o=\n", "MNBaebCIk3I=\n", new StringBuilder().append(this.f2286.f3545.f2381).append(StringFog.decrypt("dNKlhTNPjWwn6I6gMw==\n", "VIHhzhM56B4=\n")).append(this.f2286.f3542.m2028())));
                    }
                }
            }
        }
        jSONObjectM2070.remove(StringFog.decrypt("La8=\n", "SNdhN8sdgQw=\n"));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo2130(Throwable th) {
        C0303 c0303 = this.f2283.f1899;
        if (c0303 != null) {
            AbstractC0340.m2053(new C0345(c0303, this.f2285, EnumC0375.f1827));
        }
        AbstractC1071.m2436(StringFog.decrypt("aJ+TBvdT87ZZvZwG81fiqw==\n", "K/D9aJIwh9k=\n"), StringFog.decrypt("J7kFW6boH+0Lvx5VuKEM6gysV1e7phjmAb8YRvQ=\n", "Yst3NNTIdoM=\n") + this.f2285, th, true, true, true);
    }
}
