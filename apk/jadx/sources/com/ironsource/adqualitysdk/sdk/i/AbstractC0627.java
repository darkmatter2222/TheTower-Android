package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0627 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031 f2504;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f2505;

    public AbstractC0627(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        this.f2505 = abstractC1031;
        this.f2504 = abstractC1032;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0627 abstractC0627 = (AbstractC0627) obj;
        AbstractC1031 abstractC1031 = this.f2505;
        if (abstractC1031 == null ? abstractC0627.f2505 != null : !abstractC1031.equals(abstractC0627.f2505)) {
            return false;
        }
        AbstractC1031 abstractC1032 = this.f2504;
        AbstractC1031 abstractC1033 = abstractC0627.f2504;
        if (abstractC1032 != null) {
            return abstractC1032.equals(abstractC1033);
        }
        return abstractC1033 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public int hashCode() {
        AbstractC1031 abstractC1031 = this.f2505;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        AbstractC1031 abstractC1032 = this.f2504;
        return iHashCode + (abstractC1032 != null ? abstractC1032.hashCode() : 0);
    }

    public String toString() {
        return AbstractC0897.m2299("ew==\n", "JvHvrzlzDpc=\n", new StringBuilder().append(this.f2505.toString()).append(StringFog.decrypt("Ug==\n", "CZihrUS5pbY=\n")).append(this.f2504.toString()));
    }
}
