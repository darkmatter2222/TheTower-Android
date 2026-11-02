package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0586 extends AbstractC0627 {
    public C0586(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        super(abstractC1031, abstractC1032);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C0248 c0248M2420 = this.f2504.m2420(c0983, c0116);
        Object obj = this.f2505.m2420(c0983, c0116).f1193;
        if (obj instanceof JSONObject) {
            return new C0248(((JSONObject) obj).opt((String) c0248M2420.f1193));
        }
        if (obj instanceof JSONArray) {
            return new C0248(((JSONArray) obj).opt(c0248M2420.m1986().intValue()));
        }
        if (obj instanceof Map) {
            return new C0248(((Map) obj).get(c0248M2420.f1193));
        }
        if (obj instanceof List) {
            return new C0248(((List) obj).get(c0248M2420.m1986().intValue()));
        }
        if (obj.getClass().isArray()) {
            return new C0248(((Object[]) obj)[c0248M2420.m1986().intValue()]);
        }
        throw new C0548(c0116, c0983, StringFog.decrypt("2U6uyvv2WYz9UKnE/b9SnbxPqcf6tU6T7Ej8wuyiHJ/kTK7A+qVVlfIc+w==\n", "nDzcpYnWPPo=\n") + this + StringFog.decrypt("+q11sGypVoe6tyGrPqVMjP3MCORxvh+Is7cgqm2lT5my5SGhevBQi7fyNrA+\n", "3ZdVxB7QP+k=\n") + obj, null);
    }
}
