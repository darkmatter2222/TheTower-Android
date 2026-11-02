package com.ironsource.adqualitysdk.sdk.i;

import java.math.BigDecimal;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᚆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0695 extends AbstractC0113 {
    public AbstractC0695(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        super(abstractC1031, abstractC1032);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        Object obj = this.f574.m2420(c0983, c0116).f1193;
        Object obj2 = this.f573.m2420(c0983, c0116).f1193;
        try {
            return new C0248(Boolean.valueOf(mo2251(new BigDecimal(obj.toString()).compareTo(new BigDecimal(obj2.toString())))));
        } catch (Exception unused) {
            return ((obj instanceof String) && (obj2 instanceof String)) ? new C0248(Boolean.valueOf(mo2107((String) obj, (String) obj2))) : new C0248(Boolean.valueOf(mo2106(obj, obj2)));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public abstract boolean mo2251(int i);

    /* JADX INFO: renamed from: ﾒ */
    public abstract boolean mo2106(Object obj, Object obj2);

    /* JADX INFO: renamed from: ﾒ */
    public abstract boolean mo2107(String str, String str2);
}
