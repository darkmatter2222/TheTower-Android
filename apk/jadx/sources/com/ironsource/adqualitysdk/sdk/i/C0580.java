package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0580 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2336;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2337;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f2338;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f2339 = StringFog.decrypt("Dd0if9G9Ohg89iVi1bwiEg3dInfduQ==\n", "TrJMEbTeTnc=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f2340;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List f2341;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final EnumC0583 f2342;

    static {
        StringFog.decrypt("gihNbw==\n", "9lE9CnBESHw=\n");
        StringFog.decrypt("Yn4=\n", "FBBC3aG4yVY=\n");
        StringFog.decrypt("ol6dehQt\n", "0Dv8CXtDMRY=\n");
        f2338 = StringFog.decrypt("F+4Kb0A=\n", "doxlGSXfpjc=\n");
        f2337 = StringFog.decrypt("S6/7Q/w=\n", "KcqXLIvy/64=\n");
        f2336 = StringFog.decrypt("W1X/gjI=\n", "Pi2e4UbtP3w=\n");
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    public C0580(JSONObject jSONObject) {
        byte b;
        EnumC0583 enumC0583;
        String strOptString = jSONObject.optString(StringFog.decrypt("PuoiOg==\n", "SpNSX8VSb2s=\n"));
        int iHashCode = strOptString.hashCode();
        if (iHashCode != 92611485) {
            if (iHashCode != 93621297) {
                if (iHashCode == 96946943 && strOptString.equals(f2336)) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (strOptString.equals(f2337)) {
                b = 2;
            } else {
                b = -1;
            }
        } else if (strOptString.equals(f2338)) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            enumC0583 = EnumC0583.f2349;
        } else if (b != 1) {
            enumC0583 = b != 2 ? EnumC0583.f2352 : EnumC0583.f2350;
        } else {
            enumC0583 = EnumC0583.f2351;
        }
        this.f2342 = enumC0583;
        String strOptString2 = jSONObject.optString(StringFog.decrypt("1yA=\n", "oU6imkwKR6Q=\n"));
        this.f2341 = TextUtils.isEmpty(strOptString2) ? new ArrayList() : Arrays.asList(strOptString2.split(StringFog.decrypt("zg==\n", "4tjQK7gbf/Y=\n")));
        String strOptString3 = jSONObject.optString(StringFog.decrypt("6GH5H3mt\n", "mgSYbBbDaos=\n"));
        this.f2340 = (TextUtils.isEmpty(strOptString3) || strOptString3.equals(StringFog.decrypt("+AuGKA==\n", "ln7qRJwxSf4=\n"))) ? null : strOptString3;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m2137(String str) {
        try {
            int iOrdinal = this.f2342.ordinal();
            if (iOrdinal == 0) {
                return true;
            }
            if (iOrdinal == 1) {
                return this.f2341.size() <= 0 && AbstractC0679.m2217(str, (String) this.f2341.get(0)) >= 0;
            }
            if (iOrdinal == 2) {
                if (this.f2341.size() > 0) {
                    return AbstractC0679.m2217(str, (String) this.f2341.get(0)) < 0;
                }
                if (this.f2341.size() <= 0) {
                }
            } else if (iOrdinal == 3) {
                return this.f2341.contains(str);
            }
            return false;
        } catch (Exception e) {
            AbstractC1071.m2435(f2339, StringFog.decrypt("2oBRJ5UuOoe/gUsnkmI3rfaBQiqLaw==\n", "n/IjSOcOU+k=\n"), (Throwable) e, false);
        }
    }
}
