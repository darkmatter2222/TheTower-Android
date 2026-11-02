package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0998 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f3524 = new HashMap();

    public C0998(HashMap map) {
        for (String str : map.keySet()) {
            this.f3524.put(AbstractC0736.m2259(str), (AbstractC1031) map.get(str));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        HashMap map = this.f3524;
        HashMap map2 = ((C0998) obj).f3524;
        if (map != null) {
            return map.equals(map2);
        }
        return map2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        HashMap map = this.f3524;
        if (map != null) {
            return map.hashCode();
        }
        return 0;
    }

    public final String toString() {
        if (this.f3524.isEmpty()) {
            return StringFog.decrypt("n0k=\n", "5DTCn21sSgE=\n");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("7zw=\n", "lByYROjLPv0=\n"));
        boolean z = true;
        for (String str : this.f3524.keySet()) {
            if (!z) {
                sb.append(StringFog.decrypt("Tiw=\n", "YgxD0MlstXQ=\n"));
            }
            sb.append(StringFog.decrypt("Ug==\n", "cLzaSh+OP/A=\n"));
            sb.append(str);
            sb.append(StringFog.decrypt("V2qm\n", "dVCGHIFIkPI=\n"));
            sb.append(this.f3524.get(str));
            z = false;
        }
        sb.append(StringFog.decrypt("l20=\n", "txAxN71KOHE=\n"));
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        JSONObject jSONObject = new JSONObject();
        for (String str : this.f3524.keySet()) {
            C0248 c0248M2420 = ((AbstractC1031) this.f3524.get(str)).m2420(c0983, c0116);
            try {
                jSONObject.put(str, c0248M2420.f1193);
            } catch (JSONException e) {
                throw new C0548(c0116, c0983, AbstractC0270.m2002("0Jol97mpjebQ\n", "8PxKhZnC6J8=\n", new StringBuilder().append(StringFog.decrypt("BMfMb3LGd3s1wdduZ8ZubS7bnnZhinF7YQ==\n", "QbW+AADmBB4=\n")).append(c0248M2420.f1193), str), e);
            }
        }
        return new C0248(jSONObject);
    }
}
