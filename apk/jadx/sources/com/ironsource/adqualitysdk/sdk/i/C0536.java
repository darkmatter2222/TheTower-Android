package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0536 extends AbstractC0627 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC1031 f2233;

    public C0536(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032, AbstractC1031 abstractC1033) {
        super(abstractC1031, abstractC1032);
        this.f2233 = abstractC1033;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0627, com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC1031 abstractC1031 = this.f2233;
        AbstractC1031 abstractC1032 = ((C0536) obj).f2233;
        if (abstractC1031 != null) {
            return abstractC1031.equals(abstractC1032);
        }
        return abstractC1032 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0627, com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        AbstractC1031 abstractC1031 = this.f2233;
        return iHashCode + (abstractC1031 != null ? abstractC1031.hashCode() : 0);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0627
    public final String toString() {
        return super.toString() + StringFog.decrypt("d7Ur\n", "V4gLx88vndo=\n") + this.f2233.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C0248 c0248M2420 = this.f2504.m2420(c0983, c0116);
        C0248 c0248M2421 = this.f2233.m2420(c0983, c0116);
        try {
            Object obj = this.f2505.m2420(c0983, c0116).f1193;
            if (obj instanceof JSONObject) {
                ((JSONObject) obj).put((String) c0248M2420.f1193, c0248M2421.f1193);
                return c0248M2421;
            }
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(c0248M2420.m1986().intValue(), c0248M2421.f1193);
                return c0248M2421;
            }
            if (obj instanceof Map) {
                ((Map) obj).put(c0248M2420.f1193, c0248M2421.f1193);
                return c0248M2421;
            }
            if (obj instanceof List) {
                ((List) obj).set(c0248M2420.m1986().intValue(), c0248M2421.f1193);
                return c0248M2421;
            }
            if (!obj.getClass().isArray()) {
                throw new C0548(c0116, c0983, StringFog.decrypt("xGywcZXP+lzgcrd/k4bxTaFtt3yUjO1D8WribpKbv0/5brB7lJz2Re8+5Q==\n", "gR7CHufvnyo=\n") + this + StringFog.decrypt("gX0J2xeC2EDBZ13ARY7CS4YcdI8KlZFPyGdcwRaOwV7JNV3KAdveTMwiSttF\n", "pkcpr2X7sS4=\n") + obj, null);
            }
            ((Object[]) obj)[c0248M2420.m1986().intValue()] = c0248M2421.f1193;
            return c0248M2421;
        } catch (JSONException e) {
            throw new C0548(c0116, c0983, AbstractC0897.m2299("Lw==\n", "CAhgZP8KrY8=\n", new StringBuilder().append(StringFog.decrypt("/GnpmCQfztfYd+6WIlbFxplo7pUlXNnIyW+7hyNLi8TBa+mSJUzCztc7vA==\n", "uRub91Y/q6E=\n")).append(this)), e);
        }
    }
}
