package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭜ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0945 extends AbstractC0113 {
    public C0945(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        super(abstractC1031, abstractC1032);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C0248 c0248M2420 = this.f574.m2420(c0983, c0116);
        C0248 c0248M2421 = this.f573.m2420(c0983, c0116);
        if ((c0248M2420.f1193 instanceof String) || (c0248M2421.f1193 instanceof String)) {
            return new C0248("" + c0248M2420.f1193 + c0248M2421.f1193);
        }
        Number numberM1986 = c0248M2420.m1986();
        Number numberM1987 = c0248M2421.m1986();
        if ((numberM1986 instanceof Double) || (numberM1987 instanceof Double)) {
            return new C0248(Double.valueOf(numberM1987.doubleValue() + numberM1986.doubleValue()));
        }
        if ((numberM1986 instanceof Long) || (numberM1987 instanceof Long)) {
            return new C0248(Long.valueOf(numberM1987.longValue() + numberM1986.longValue()));
        }
        return new C0248(Integer.valueOf(numberM1987.intValue() + numberM1986.intValue()));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0113
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1898() {
        return StringFog.decrypt("Yg==\n", "Sel0U3Q9t48=\n");
    }
}
