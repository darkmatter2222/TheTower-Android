package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3495t extends AbstractC0747 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList f381;

    public C3495t(ArrayList arrayList) {
        this.f381 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return this.f381.equals(((C3495t) obj).f381);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        return this.f381.hashCode() + (C3495t.class.hashCode() * 31);
    }

    public final String toString() {
        return AbstractC0897.m2299("jQ==\n", "tkdyvvOld2w=\n", new StringBuilder().append(StringFog.decrypt("0lKDcg==\n", "pDPxUtVLjHQ=\n")).append(TextUtils.join(StringFog.decrypt("At0=\n", "Lv3Z5+hcFLE=\n"), this.f381)));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0248 mo1874(C0983 c0983, C0116 c0116) {
        List listAsList;
        for (AbstractC1031 abstractC1031 : this.f381) {
            C3494s c3494s = abstractC1031 instanceof C3494s ? (C3494s) abstractC1031 : abstractC1031 instanceof C0454 ? ((C0454) abstractC1031).f2015 : null;
            if (c3494s != null && (listAsList = Arrays.asList(c3494s.f380)) != null) {
                Iterator it = listAsList.iterator();
                while (it.hasNext()) {
                    c0983.f3498.put((String) it.next(), null);
                }
            }
            abstractC1031.mo1873(c0983, c0116);
        }
        return new C0248(null);
    }
}
