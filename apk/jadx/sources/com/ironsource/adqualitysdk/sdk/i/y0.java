package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 extends AbstractC0747 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0747 f400;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f401;

    public y0(AbstractC1031 abstractC1031, AbstractC0747 abstractC0747) {
        this.f401 = abstractC1031;
        this.f400 = abstractC0747;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        AbstractC1031 abstractC1031 = this.f401;
        if (abstractC1031 == null ? y0Var.f401 != null : !abstractC1031.equals(y0Var.f401)) {
            return false;
        }
        AbstractC0747 abstractC0747 = this.f400;
        AbstractC0747 abstractC0748 = y0Var.f400;
        if (abstractC0747 != null) {
            return abstractC0747.equals(abstractC0748);
        }
        return abstractC0748 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f401;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        AbstractC0747 abstractC0747 = this.f400;
        return iHashCode + (abstractC0747 != null ? abstractC0747.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("rEScihHZsg==\n", "2yz15nT5mjE=\n") + this.f401 + StringFog.decrypt("0XE=\n", "+FEvYubmVlg=\n") + this.f400;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int mo1891() {
        return this.f400.mo1891();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int mo1892(C0983 c0983) {
        return 0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1874(C0983 c0983, C0116 c0116) {
        while (this.f401.m2420(c0983, c0116).m1987()) {
            C0248 c0248M2261 = this.f400.m2261(c0983, c0116);
            if (c0248M2261.f1191) {
                break;
            }
            if (c0248M2261.f1192) {
                return c0248M2261;
            }
        }
        return new C0248(null);
    }
}
