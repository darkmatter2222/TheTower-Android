package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ע, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0363 extends AbstractC0747 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0747 f1664;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC1031 f1665;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031 f1666;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f1667;

    public C0363(AbstractC1031 abstractC1031, AbstractC1031 abstractC1032, AbstractC1031 abstractC1033, AbstractC0747 abstractC0747) {
        this.f1667 = abstractC1031;
        this.f1666 = abstractC1032;
        this.f1665 = abstractC1033;
        this.f1664 = abstractC0747;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0363 c0363 = (C0363) obj;
        AbstractC1031 abstractC1031 = this.f1667;
        if (abstractC1031 == null ? c0363.f1667 != null : !abstractC1031.equals(c0363.f1667)) {
            return false;
        }
        AbstractC1031 abstractC1032 = this.f1666;
        if (abstractC1032 == null ? c0363.f1666 != null : !abstractC1032.equals(c0363.f1666)) {
            return false;
        }
        AbstractC1031 abstractC1033 = this.f1665;
        if (abstractC1033 == null ? c0363.f1665 != null : !abstractC1033.equals(c0363.f1665)) {
            return false;
        }
        AbstractC0747 abstractC0747 = this.f1664;
        AbstractC0747 abstractC0748 = c0363.f1664;
        if (abstractC0747 != null) {
            return abstractC0747.equals(abstractC0748);
        }
        return abstractC0748 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f1667;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        AbstractC1031 abstractC1032 = this.f1666;
        int iHashCode2 = (iHashCode + (abstractC1032 != null ? abstractC1032.hashCode() : 0)) * 31;
        AbstractC1031 abstractC1033 = this.f1665;
        int iHashCode3 = (iHashCode2 + (abstractC1033 != null ? abstractC1033.hashCode() : 0)) * 31;
        AbstractC0747 abstractC0747 = this.f1664;
        return iHashCode3 + (abstractC0747 != null ? abstractC0747.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("L0ILovs=\n", "SS15gtP5cyA=\n"));
        AbstractC1031 abstractC1031 = this.f1667;
        if (abstractC1031 != null) {
            sb.append(abstractC1031);
        }
        sb.append(StringFog.decrypt("UKo=\n", "a4pmlpE8rCg=\n"));
        sb.append(this.f1666);
        sb.append(StringFog.decrypt("WAc=\n", "Yydrw1uBWIA=\n"));
        AbstractC1031 abstractC1032 = this.f1665;
        if (abstractC1032 != null) {
            sb.append(abstractC1032);
        }
        sb.append(StringFog.decrypt("YlI=\n", "S3LjQlE29UE=\n"));
        sb.append(this.f1664);
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1891() {
        return this.f1664.mo1891();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1892(C0983 c0983) {
        return 0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1874(C0983 c0983, C0116 c0116) {
        AbstractC1031 abstractC1031 = this.f1667;
        if (abstractC1031 != null) {
            abstractC1031.m2420(c0983, c0116);
        }
        while (this.f1666.m2420(c0983, c0116).m1987()) {
            C0248 c0248M2261 = this.f1664.m2261(c0983, c0116);
            if (c0248M2261.f1191) {
                break;
            }
            if (c0248M2261.f1192) {
                return c0248M2261;
            }
            AbstractC1031 abstractC1032 = this.f1665;
            if (abstractC1032 != null) {
                abstractC1032.m2420(c0983, c0116);
            }
        }
        return new C0248(null);
    }
}
