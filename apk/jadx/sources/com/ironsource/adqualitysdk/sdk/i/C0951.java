package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public class C0951 extends AbstractC1031 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3387 = StringFog.decrypt("ytVN\n", "proqt/eIxGY=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031[] f3388;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f3389;

    public C0951(String str, ArrayList arrayList) {
        this.f3389 = AbstractC0736.m2259(str);
        AbstractC1031[] abstractC1031Arr = new AbstractC1031[arrayList.size()];
        this.f3388 = abstractC1031Arr;
        arrayList.toArray(abstractC1031Arr);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0951 c0951 = (C0951) obj;
        if (this.f3389.equals(c0951.f3389)) {
            return Arrays.equals(this.f3388, c0951.f3388);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public int hashCode() {
        String str = this.f3389;
        return Arrays.hashCode(this.f3388) + ((str != null ? str.hashCode() : 0) * 31);
    }

    public String toString() {
        return mo2144(this.f3388);
    }

    /* JADX INFO: renamed from: ﾇ */
    public String mo2144(Object[] objArr) {
        return AbstractC0897.m2299("VQ==\n", "fOIUnvB+E2E=\n", new StringBuilder().append(this.f3389).append(StringFog.decrypt("7A==\n", "xK7tYPLVhlU=\n")).append(AbstractC1031.m2419(objArr)));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public C0248 mo1873(C0983 c0983, C0116 c0116) {
        C1014 c1014;
        ArrayList arrayList = new ArrayList();
        for (AbstractC1031 abstractC1031 : this.f3388) {
            arrayList.add(abstractC1031.m2420(c0983, c0116).f1193);
        }
        if (this.f3389.equals(f3387)) {
            AbstractC0991.m2386(StringFog.decrypt("RGVyWe8Gqw==\n", "Fzc+BqNJ7IU=\n"), c0116.m1903() + StringFog.decrypt("l8U=\n", "reUNfk8pgGg=\n") + arrayList.get(0), null, null);
            return new C0248(null);
        }
        try {
            c1014 = (C1014) c0983.m2382(this.f3389);
        } catch (Exception unused) {
            c1014 = null;
        }
        if (c1014 != null) {
            C0248 c0248M2401 = c1014.m2401(c0983, c0983.f3496, c0116, arrayList);
            return c0248M2401 != null ? new C0248(c0248M2401.f1193) : new C0248(null);
        }
        C1014 c1014M2270 = c0116.f655.m2270(this.f3389);
        if (c1014M2270 == null) {
            return new C0248(c0116.f653.mo1855(c0116, this.f3389, arrayList, c0116.f651, c0983));
        }
        C0248 c0248M2402 = c1014M2270.m2401(c0983, c0983.f3496, c0116, arrayList);
        c0248M2402.f1192 = false;
        return c0248M2402;
    }
}
