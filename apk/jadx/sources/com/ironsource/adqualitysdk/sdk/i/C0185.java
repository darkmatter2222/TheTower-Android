package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0185 extends AbstractC0457 {
    public C0185(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        super(abstractC1031, abstractC1032);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0457
    /* JADX INFO: renamed from: ﾒ */
    public final Number mo1919(Number number, Number number2) {
        if ((number instanceof Double) || (number2 instanceof Double)) {
            return Double.valueOf(number.doubleValue() % number2.doubleValue());
        }
        return ((number instanceof Long) || (number2 instanceof Long)) ? Long.valueOf(number.longValue() % number2.longValue()) : Integer.valueOf(number.intValue() % number2.intValue());
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0113
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1898() {
        return StringFog.decrypt("Qg==\n", "Z1gO41KNPp8=\n");
    }
}
