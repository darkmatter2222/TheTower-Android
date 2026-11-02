package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class A0 extends C0331 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final String f77;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final String f78;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final String f79;

    public A0() {
    }

    public A0(JSONObject jSONObject) {
        this.f78 = jSONObject.optString(StringFog.decrypt("DL8jB2MAwLEXuzIiRATalyuoJDdjHQ==\n", "e9pBUQplt/I=\n"));
        this.f79 = jSONObject.optString(StringFog.decrypt("JlEG0fKABJkjdgLL1A==\n", "UDhjprHsZeo=\n"));
        this.f77 = jSONObject.optString(StringFog.decrypt("DCLiGK3vCkkZNMAPpv01WA==\n", "fEOQfcObXCA=\n"));
        this.f1593 = jSONObject.optString(StringFog.decrypt("vtj5cddmuay33w==\n", "1KutHp4I08k=\n"));
        this.f1591 = false;
        this.f1588 = !TextUtils.isEmpty(jSONObject.optString(StringFog.decrypt("jyaAUZ6tK2qGIQ==\n", "5VXUPtfDQQ8=\n"))) || jSONObject.optBoolean(StringFog.decrypt("xXDHff7H01DVdOFG8sDrTQ==\n", "sAOiKpulhTk=\n")) || jSONObject.optBoolean(StringFog.decrypt("moDL279hLnWdnMPpmW8EeIGH\n", "7/OujNoDbR0=\n"));
        this.f1587 = jSONObject.optBoolean(StringFog.decrypt("xVEElGfLIvnVVSKva8wa5A==\n", "sCJhwwKpdJA=\n"));
        this.f1586 = jSONObject.optBoolean(StringFog.decrypt("Oof5ysa4Fz8Fhw==\n", "T/Scj77MZV4=\n"));
        ArrayList arrayList = null;
        this.f1592 = TextUtils.isEmpty(jSONObject.optString(StringFog.decrypt("Aw5OU/k+a4sO\n", "dnwiA4tbDeI=\n"))) ? null : Arrays.asList(jSONObject.optString(StringFog.decrypt("P0AH4EN1GEwy\n", "SjJrsDEQfiU=\n")).split(StringFog.decrypt("Mg==\n", "HiNjveErfJ0=\n")));
        this.f1590 = jSONObject.optBoolean(StringFog.decrypt("aGaX2Ao0tut+Z5viHw==\n", "HRXykmtC15g=\n"), true);
        this.f1589 = false;
        this.f1585 = jSONObject.optBoolean(StringFog.decrypt("CJLzthBpwOgsiey2GHfP6BY=\n", "ZeefwnkZrI0=\n"));
        this.f1584 = jSONObject.optBoolean(StringFog.decrypt("kDfIsWJUmJKN\n", "+Vq4/gwE9+E=\n"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(StringFog.decrypt("Q1og09WRL4tSXSrWww==\n", "NTNFpKbFQMI=\n"));
        if (jSONArrayOptJSONArray != null) {
            arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                Object objOpt = jSONArrayOptJSONArray.opt(i);
                if (objOpt != null) {
                    arrayList.add(objOpt);
                }
            }
        }
        if (arrayList != null) {
            this.f1583 = arrayList;
        }
    }
}
