package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3494s extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f380;

    public C3494s(String str) {
        this.f380 = AbstractC0736.m2259(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return this.f380.equals(((C3494s) obj).f380);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        String str = this.f380;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return this.f380;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C1014 c1014M2270;
        try {
            return new C0248(c0983.m2382(this.f380));
        } catch (Exception e) {
            String str = this.f380;
            if (str != null) {
                c1014M2270 = c0116.f655.m2270(str);
            } else {
                c0116.getClass();
                c1014M2270 = null;
            }
            if (c1014M2270 != null) {
                return new C0248(c1014M2270);
            }
            throw new C0548(c0116, c0983, AbstractC0897.m2299("pg==\n", "gXtVeFihnww=\n", new StringBuilder().append(StringFog.decrypt("zpv6Zukgjpbqhf1o72mFh6uM8HnpZZiT4obmKbw=\n", "i+mICZsA6+A=\n")).append(this)), e);
        }
    }
}
