package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.ads.AdUnit;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0179 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1099 f1048;

    public C0179(C1099 c1099) {
        this.f1048 = c1099;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0051  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1099 c1099 = this.f1048;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c1099.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != 556003820) {
            if (iHashCode != 556062505) {
                if (iHashCode == 1382961856 && str.equals(StringFog.decrypt("hnsIf54KDKGXYANrjx0YoYl0GX2IFg==\n", "xz9XMt9YR/Q=\n"))) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (str.equals(StringFog.decrypt("AakOdbzf7tAQsgVhrcj6zA6gDnKuwus=\n", "QO1ROP2NpYU=\n"))) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (!str.equals(StringFog.decrypt("WNuCSLae8LVJwIlcp4nkqVfSgk2jgfc=\n", "GZ/dBffMu+A=\n"))) {
            b = -1;
        }
        if (b == 0) {
            return AdUnit.AdMarkupType.AD_MARKUP_TYPE_INM_HTML;
        }
        if (b == 1) {
            return AdUnit.AdMarkupType.AD_MARKUP_TYPE_INM_JSON;
        }
        if (b != 2) {
            return null;
        }
        return AdUnit.AdMarkupType.AD_MARKUP_TYPE_UNKNOWN;
    }
}
