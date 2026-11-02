package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0725 extends AbstractC1031 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC1031 f2697;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031 f2698;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f2699;

    public C0725(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032, AbstractC1031 abstractC1033) {
        this.f2699 = abstractC1031;
        this.f2698 = abstractC1032;
        this.f2697 = abstractC1033;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0725 c0725 = (C0725) obj;
        AbstractC1031 abstractC1031 = this.f2699;
        if (abstractC1031 == null ? c0725.f2699 != null : !abstractC1031.equals(c0725.f2699)) {
            return false;
        }
        AbstractC1031 abstractC1032 = this.f2698;
        if (abstractC1032 == null ? c0725.f2698 != null : !abstractC1032.equals(c0725.f2698)) {
            return false;
        }
        AbstractC1031 abstractC1033 = this.f2697;
        AbstractC1031 abstractC1034 = c0725.f2697;
        if (abstractC1033 != null) {
            return abstractC1033.equals(abstractC1034);
        }
        return abstractC1034 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f2699;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        AbstractC1031 abstractC1032 = this.f2698;
        int iHashCode2 = (iHashCode + (abstractC1032 != null ? abstractC1032.hashCode() : 0)) * 31;
        AbstractC1031 abstractC1033 = this.f2697;
        return iHashCode2 + (abstractC1033 != null ? abstractC1033.hashCode() : 0);
    }

    public final String toString() {
        return this.f2699 + StringFog.decrypt("pyWF\n", "hxql63kyQRU=\n") + this.f2698 + StringFog.decrypt("QKd/\n", "YJ1fHZwAxrc=\n") + this.f2697;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        return this.f2699.m2420(c0983, c0116).m1987() ? this.f2698.m2420(c0983, c0116) : this.f2697.m2420(c0983, c0116);
    }
}
