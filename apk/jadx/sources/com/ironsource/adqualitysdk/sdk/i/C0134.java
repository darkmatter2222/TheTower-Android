package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.ads.AdUnit;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ř, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0134 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1099 f818;

    public C0134(C1099 c1099) {
        this.f818 = c1099;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0051  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1099 c1099 = this.f818;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c1099.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != -2102692847) {
            if (iHashCode != -1357644918) {
                if (iHashCode != 235669401 || !str.equals(StringFog.decrypt("aAQlcpv6audgFj9uneZ79nYVNHqH8Hz9\n", "KUB6Mcm/K7M=\n"))) {
                    b = -1;
                }
            } else if (str.equals(StringFog.decrypt("DjjbL0pNdroGKsEzTFFnqxAqzShdRw==\n", "T3yEbBgIN+4=\n"))) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (str.equals(StringFog.decrypt("E+McEVgkkCob8QYNXjiBOw3jCgFaLZAn\n", "UqdDUgph0X4=\n"))) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            return AdUnit.AdCreativeType.AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN;
        }
        if (b == 1) {
            return AdUnit.AdCreativeType.AD_CREATIVE_TYPE_VIDEO;
        }
        if (b != 2) {
            return null;
        }
        return AdUnit.AdCreativeType.AD_CREATIVE_TYPE_DISPLAY;
    }
}
