package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.internal.Constants;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0698 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2648;

    public C0698(C0597 c0597) {
        this.f2648 = c0597;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0067  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2648;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c0597.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != -1372958932) {
            if (iHashCode != 433141802) {
                if (iHashCode != 543046670) {
                    if (iHashCode == 1951953708 && str.equals(StringFog.decrypt("ndwVtzJM\n", "351b+XceS8w=\n"))) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (str.equals(StringFog.decrypt("dvnT+4HduJs=\n", "JLyEutOZ/d8=\n"))) {
                    b = 3;
                } else {
                    b = -1;
                }
            } else if (!str.equals(StringFog.decrypt("7XMIiPQZSg==\n", "uD1DxrtOBJY=\n"))) {
                b = -1;
            }
        } else if (str.equals(StringFog.decrypt("TgzxBtgDUwJTC+QP\n", "B0KlQ4pQB0s=\n"))) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            return Constants.AdType.UNKNOWN;
        }
        if (b == 1) {
            return Constants.AdType.BANNER;
        }
        if (b == 2) {
            return Constants.AdType.INTERSTITIAL;
        }
        if (b != 3) {
            return null;
        }
        return Constants.AdType.REWARDED;
    }
}
