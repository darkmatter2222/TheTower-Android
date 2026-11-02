package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1085 extends AbstractC0457 {
    public C1085(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        super(abstractC1031, abstractC1032);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0457
    /* JADX INFO: renamed from: ﾒ */
    public final Number mo1919(Number number, Number number2) {
        if ((number instanceof Double) || (number2 instanceof Double)) {
            return Double.valueOf(number2.doubleValue() * number.doubleValue());
        }
        if ((number instanceof Long) || (number2 instanceof Long)) {
            return Long.valueOf(number2.longValue() * number.longValue());
        }
        return Integer.valueOf(number2.intValue() * number.intValue());
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0113
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1898() {
        return StringFog.decrypt("Bg==\n", "LCVPgnlrxtE=\n");
    }
}
