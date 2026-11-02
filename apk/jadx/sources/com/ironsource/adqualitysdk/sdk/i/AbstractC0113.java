package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ĭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0113 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031 f573;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f574;

    public AbstractC0113(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032) {
        this.f574 = abstractC1031;
        this.f573 = abstractC1032;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0113 abstractC0113 = (AbstractC0113) obj;
        AbstractC1031 abstractC1031 = this.f574;
        if (abstractC1031 == null ? abstractC0113.f574 != null : !abstractC1031.equals(abstractC0113.f574)) {
            return false;
        }
        AbstractC1031 abstractC1032 = this.f573;
        AbstractC1031 abstractC1033 = abstractC0113.f573;
        if (abstractC1032 != null) {
            return abstractC1032.equals(abstractC1033);
        }
        return abstractC1033 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f574;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        AbstractC1031 abstractC1032 = this.f573;
        return iHashCode + (abstractC1032 != null ? abstractC1032.hashCode() : 0);
    }

    public final String toString() {
        return this.f574 + " " + mo1898() + " " + this.f573;
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract String mo1898();
}
