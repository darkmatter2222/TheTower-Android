package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﱠ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0978 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3479;

    public C0978(C0773 c0773) {
        this.f3479 = c0773;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0095  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0773 c0773 = this.f3479;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c0773.getClass();
        switch (str.hashCode()) {
            case -2032180703:
                if (!str.equals(StringFog.decrypt("8rRP2NnDyg==\n", "tvEJmYyPnpA=\n"))) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1841345251:
                if (!str.equals(StringFog.decrypt("+9vOIe5H\n", "qIqbYLwCsnk=\n"))) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1372958932:
                if (!str.equals(StringFog.decrypt("2+wlGPiIfi7G6zAR\n", "kqJxXarbKmc=\n"))) {
                    b = -1;
                }
                break;
            case -1201514634:
                if (!str.equals(StringFog.decrypt("qpZT24XJNSY=\n", "/NMBj8yKdGo=\n"))) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -77725029:
                if (!str.equals(StringFog.decrypt("I5LYMmmvSH4q\n", "b9OWdjrsCS4=\n"))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 73622449:
                if (!str.equals(StringFog.decrypt("59UdZrE=\n", "qodYJeWhBkw=\n"))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 543046670:
                if (!str.equals(StringFog.decrypt("IcYt4f8DUbg=\n", "c4N6oK1HFPw=\n"))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1951953708:
                if (!str.equals(StringFog.decrypt("JOfxf+bz\n", "Zqa/MaOhvhQ=\n"))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return UnitDisplayType.INTERSTITIAL;
            case 1:
                return UnitDisplayType.LANDSCAPE;
            case 2:
                return UnitDisplayType.MRECT;
            case 3:
                return UnitDisplayType.BANNER;
            case 4:
                return UnitDisplayType.REWARDED;
            case 5:
                return UnitDisplayType.SQUARE;
            case 6:
                return UnitDisplayType.VERTICAL;
            case 7:
                return UnitDisplayType.DEFAULT;
            default:
                return null;
        }
    }
}
