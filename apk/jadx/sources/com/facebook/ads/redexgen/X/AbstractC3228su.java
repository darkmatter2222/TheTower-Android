package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.su, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3228su {
    public static String[] A00 = {"Zuis3dFKWAyxoNTgkpIE", "xaeF0afSb05NpBFMZ5xygIdSc7B6iwCw", "tuXcYJ8v14ziTOmKAzHuhsdlRoVHn9j3", "t24s4vz84wAveoI9BHe2QhUA3xE4dBfz", "sxf", "FI50G0VJnQuwXuJuDwYc", "5PWp6wjoKKugmK0LDuyHf4PGYw4BDMr1", "wj6JTnHM3e62Gsc5OAfcHrHHUCE"};

    public static EnumC3232sy A00(LA la) {
        if (la.A3S()) {
            EnumC3232sy enumC3232sy = EnumC3232sy.A02;
            if (A00[1].charAt(6) != 'f') {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[3] = "tsfNGtRVOFLkJYhvis7QgxjEl1sSvMPv";
            strArr[2] = "t2hZdq9OrhuvmGB4XIpOOaypxtzR7Pvs";
            return enumC3232sy;
        }
        EnumC3232sy enumC3232sy2 = EnumC3232sy.A03;
        if (A00[7].length() != 27) {
            A00[4] = "F1XyKLOJKpSOH2buCniO7rGUMGJZoF";
            return enumC3232sy2;
        }
        String[] strArr2 = A00;
        strArr2[5] = "7lXEsjF1B1e2sZ4OSZaa";
        strArr2[0] = "uqPXzMY2O0is65aO24e9";
        return enumC3232sy2;
    }

    public static void A01(LA la, EnumC3229sv enumC3229sv, C1618Hi c1618Hi) {
        if (la.A3O()) {
            c1618Hi.A0F().ABu(enumC3229sv.name().toLowerCase(Locale.US));
        }
        if (la.A3S()) {
            c1618Hi.A0F().ABi(enumC3229sv.name().toLowerCase(Locale.US));
        }
    }

    public static void A02(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        c1618Hi.A0F().ABk(enumC3229sv.name().toLowerCase(Locale.US));
    }

    public static void A03(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        c1618Hi.A0F().ABw(enumC3229sv.name().toLowerCase(Locale.US));
    }

    public static void A04(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        c1618Hi.A0F().ACx(enumC3229sv.name().toLowerCase(Locale.US));
    }

    public static void A05(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        A02(c1618Hi, enumC3229sv);
    }

    public static void A06(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        A03(c1618Hi, enumC3229sv);
    }

    public static void A07(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        A04(c1618Hi, enumC3229sv);
    }

    public static void A08(C2892nO c2892nO, C1618Hi c1618Hi, InterfaceC3119r9 interfaceC3119r9, LA la, EnumC3229sv enumC3229sv) {
        if (c2892nO != null) {
            c2892nO.A04(EnumC2891nN.A0A, null);
        }
        if (la.A3O()) {
            c1618Hi.A0F().ABv(enumC3229sv.name().toLowerCase(Locale.US));
        }
        if (la.A3S()) {
            c1618Hi.A0F().ABj(enumC3229sv.name().toLowerCase(Locale.US));
        }
        if (!AbstractC2480gb.A00(c1618Hi.A02()).A0O(c1618Hi.A02(), true)) {
            if (TextUtils.isEmpty(la.A35().A00())) {
                return;
            }
            C3007pK.A0P(new C3007pK(), c1618Hi, AbstractC3011pP.A00(la.A35().A00()), la.A37());
        } else if (interfaceC3119r9 != null) {
            String strA37 = la.A37();
            if (A00[1].charAt(6) != 'f') {
                throw new RuntimeException();
            }
            A00[4] = "4g3IauLO4jVP";
            interfaceC3119r9.ABW(strA37, la.A35());
        }
    }
}
