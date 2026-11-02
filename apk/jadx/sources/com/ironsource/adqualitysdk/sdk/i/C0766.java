package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0766 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2831;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f2832;

    public C0766(AbstractC1031 abstractC1031, String str) {
        this.f2832 = abstractC1031;
        this.f2831 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0766 c0766 = (C0766) obj;
        AbstractC1031 abstractC1031 = this.f2832;
        if (abstractC1031 == null ? c0766.f2832 != null : !abstractC1031.equals(c0766.f2832)) {
            return false;
        }
        String str = this.f2831;
        String str2 = c0766.f2831;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f2832;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        String str = this.f2831;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return this.f2832.toString() + StringFog.decrypt("Gg==\n", "NNfX5f1Fk9o=\n") + this.f2831;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C1014 c1014M2270;
        Object obj = this.f2832.m2420(c0983, c0116).f1193;
        if (!(obj instanceof C0116)) {
            try {
                return new C0248(obj.getClass().getDeclaredField(this.f2831).get(obj));
            } catch (IllegalAccessException | NoSuchFieldException e) {
                throw new C0548(c0116, c0983, AbstractC0897.m2299("dA==\n", "UwnzWJF/3JQ=\n", new StringBuilder().append(StringFog.decrypt("4EXIi9nNoCrEW8+F34SrO4VR04HHieU9xlTfl9jN4g==\n", "pTe65KvtxVw=\n")).append(this)), e);
            }
        }
        C0116 c0117 = (C0116) obj;
        String str = this.f2831;
        if (str != null) {
            c1014M2270 = c0117.f655.m2270(str);
        } else {
            c0117.getClass();
            c1014M2270 = null;
        }
        return new C0248(c1014M2270);
    }
}
