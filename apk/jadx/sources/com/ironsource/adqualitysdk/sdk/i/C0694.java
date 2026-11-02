package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᚁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0694 extends AbstractC1061 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0747[] f2645;

    public C0694(ArrayList arrayList, byte b) {
        super(b);
        AbstractC0747[] abstractC0747Arr = new AbstractC0747[arrayList.size()];
        this.f2645 = abstractC0747Arr;
        arrayList.toArray(abstractC0747Arr);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return Arrays.equals(this.f2645, ((C0694) obj).f2645);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        return Arrays.hashCode(this.f2645);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("KeM=\n", "Uuk3D6Ng238=\n"));
        for (AbstractC0747 abstractC0747 : this.f2645) {
            byte b = this.f3787;
            for (int i = 0; i < b; i++) {
                sb.append("  ");
            }
            sb.append(abstractC0747.toString());
            sb.append("\n");
        }
        int i2 = this.f3787 - 1;
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
        sb.append(StringFog.decrypt("kQ==\n", "7GMUK/ybMGE=\n"));
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1891() {
        int iMo1891 = 2;
        for (AbstractC0747 abstractC0747 : this.f2645) {
            iMo1891 += abstractC0747.mo1891();
        }
        return iMo1891;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1892(C0983 c0983) {
        int iMo1891 = 1;
        for (int i = 0; i < c0983.f3490; i++) {
            iMo1891 += this.f2645[i].mo1891();
        }
        return iMo1891;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1874(C0983 c0983, C0116 c0116) {
        C0248 c0248 = new C0248(null);
        C0983 c0984 = new C0983(new HashMap(), c0983, false);
        int i = c0983.f3490;
        c0983.f3490 = 0;
        for (AbstractC0747 abstractC0747 : this.f2645) {
            c0248 = abstractC0747.m2261(c0984, c0116);
            if (c0248.f1192 || c0248.f1191 || c0248.f1190) {
                c0983.f3490 = i;
                return c0248;
            }
            c0983.f3490++;
        }
        c0983.f3490 = i;
        return c0248;
    }
}
