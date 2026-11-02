package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ন, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0456 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031[] f2016;

    public C0456(ArrayList arrayList) {
        AbstractC1031[] abstractC1031Arr = new AbstractC1031[arrayList.size()];
        this.f2016 = abstractC1031Arr;
        arrayList.toArray(abstractC1031Arr);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return Arrays.equals(this.f2016, ((C0456) obj).f2016);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        return Arrays.hashCode(this.f2016);
    }

    public final String toString() {
        return AbstractC0897.m2299("mg==\n", "xzQ8NaxE/+w=\n", new StringBuilder().append(StringFog.decrypt("8Q==\n", "qmn8L4N8Q6M=\n")).append(AbstractC1031.m2419(this.f2016)));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC1031 abstractC1031 : this.f2016) {
            arrayList.add(abstractC1031.m2420(c0983, c0116).f1193);
        }
        return new C0248(arrayList);
    }
}
