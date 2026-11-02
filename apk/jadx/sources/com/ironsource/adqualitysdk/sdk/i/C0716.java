package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0716 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2677;

    public C0716(String str) {
        this.f2677 = AbstractC0736.m2259(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        String str = this.f2677;
        String str2 = ((C0716) obj).f2677;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        String str = this.f2677;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return this.f2677;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        AbstractC0276 abstractC0276 = c0116.f652;
        String str = this.f2677;
        return new C0248(abstractC0276.m2029(str.substring(0, str.length() - StringFog.decrypt("AFoBSPGo\n", "LjltKYLbg1A=\n").length()), true));
    }
}
