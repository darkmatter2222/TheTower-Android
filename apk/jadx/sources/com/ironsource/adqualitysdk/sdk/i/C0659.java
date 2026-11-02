package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᕽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public class C0659 extends AbstractC0747 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f2538;

    public C0659(AbstractC1031 abstractC1031) {
        this.f2538 = abstractC1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC1031 abstractC1031 = this.f2538;
        AbstractC1031 abstractC1032 = ((C0659) obj).f2538;
        if (abstractC1031 != null) {
            return abstractC1031.equals(abstractC1032);
        }
        return abstractC1032 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f2538;
        if (abstractC1031 != null) {
            return abstractC1031.hashCode();
        }
        return 0;
    }

    public String toString() {
        return this.f2538 != null ? AbstractC0897.m2299("7A==\n", "1zbahqQUis4=\n", new StringBuilder().append(this.f2538)) : StringFog.decrypt("Gg==\n", "Ib2xC7nQLe4=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public C0248 mo1874(C0983 c0983, C0116 c0116) {
        AbstractC1031 abstractC1031 = this.f2538;
        return abstractC1031 != null ? abstractC1031.m2420(c0983, c0116) : new C0248(null);
    }
}
