package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0228 extends AbstractC0747 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C3494s f1158;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0694 f1159;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0694 f1160;

    public C0228(C0694 c0694, C0694 c0695, C3494s c3494s) {
        this.f1160 = c0694;
        this.f1159 = c0695;
        this.f1158 = c3494s;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0228 c0228 = (C0228) obj;
        C0694 c0694 = this.f1160;
        if (c0694 == null ? c0228.f1160 != null : !c0694.equals(c0228.f1160)) {
            return false;
        }
        C0694 c0695 = this.f1159;
        if (c0695 == null ? c0228.f1159 != null : !c0695.equals(c0228.f1159)) {
            return false;
        }
        C3494s c3494s = this.f1158;
        C3494s c3494s2 = c0228.f1158;
        if (c3494s != null) {
            return c3494s.equals(c3494s2);
        }
        return c3494s2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        C0694 c0694 = this.f1160;
        int iHashCode = (c0694 != null ? Arrays.hashCode(c0694.f2645) : 0) * 31;
        C0694 c0695 = this.f1159;
        int iHashCode2 = (iHashCode + (c0695 != null ? Arrays.hashCode(c0695.f2645) : 0)) * 31;
        C3494s c3494s = this.f1158;
        return iHashCode2 + (c3494s != null ? c3494s.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("pzbQtw==\n", "00Spl6i07Ms=\n") + this.f1160 + StringFog.decrypt("7DfVsH8KcC4=\n", "zFS0xBxiUAY=\n") + this.f1158 + StringFog.decrypt("a2Q=\n", "QkSD+hx8Iks=\n") + this.f1159;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1891() {
        return (this.f1159.mo1891() + this.f1160.mo1891()) - 1;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1892(C0983 c0983) {
        if (c0983.f3491.contains(this)) {
            return this.f1160.mo1891() - 1;
        }
        return 0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1874(C0983 c0983, C0116 c0116) {
        try {
            C0694 c0694 = this.f1160;
            if (c0694 != null) {
                return c0694.m2261(new C0983(new HashMap(), c0983, false), c0116);
            }
        } catch (Throwable th) {
            if (this.f1159 != null) {
                c0983.f3491.add(this);
                HashMap map = new HashMap();
                C3494s c3494s = this.f1158;
                if (c3494s != null) {
                    map.put(AbstractC0736.m2259(c3494s.f380), th);
                }
                return this.f1159.m2261(new C0983(map, c0983, false), c0116);
            }
        }
        return new C0248(null);
    }
}
