package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2439fw {
    public static byte[] A00;
    public static String[] A01 = {"kdNZsDbIr2FjUgQ6", "G4tbE8YXKkBHtbRzjHgF1iVs8BhQX3ki", "rgsd1nh14jUfY0oEDkCzVbJlkUwrdBXO", "6d8i19T6TQ9xRiUYh6SOmARBfT83lkdi", "2FsjHYpAfMpiihTdUse", "xtyrzkpFCSmXtl0pVvZtRxgukiiALNOU", "PnjWz3Ubzat8tEiN6RTB47L4MZQANY1H", "IONaBzwOxfylvpW8Ch"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[6].charAt(12) != strArr[5].charAt(12)) {
                break;
            }
            A01[2] = "wyIfRhN1EoOdsBbK5VRzuRP5Lc7uqmgb";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 100);
            if (A01[0].length() == 15) {
                break;
            }
            String[] strArr2 = A01;
            strArr2[3] = "fUzr4JaNgjTtoWHz8k6HkVts9HpSP1Qi";
            strArr2[1] = "zuQx1GaumRIGoFj6MrcQJkCLkICnzrhi";
            bArrCopyOfRange[i4] = b;
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A00 = new byte[]{-88, -30, -18, -25, -26, -31, -26, -20, -35, -22, -21, -20, -31, -20, -31, -39, -28};
    }

    public static void A02(C1618Hi c1618Hi, LA la, boolean z, InterfaceC2437fu interfaceC2437fu) {
        if (C2863mv.A2E(c1618Hi)) {
            interfaceC2437fu.AGL();
            return;
        }
        C2746kz c2746kz = new C2746kz(c1618Hi);
        C2418fb c2418fbA07 = la.A32().A0I().A07();
        c2746kz.A0e(new C2892nO(la.A37(), c1618Hi.A0A()));
        if (c2418fbA07 == null) {
            interfaceC2437fu.AGK(AdError.CACHE_ERROR);
            return;
        }
        if (c2418fbA07.A0d()) {
            interfaceC2437fu.AGL();
            if (A01[2].charAt(7) != '1') {
                throw new RuntimeException();
            }
            A01[0] = "84TqyqDRqUmJCVM8";
            return;
        }
        C2742kv c2742kv = new C2742kv(c2418fbA07.A0M(), la.A1r(), la.A1c());
        c2742kv.A04 = true;
        c2742kv.A03 = A00(0, 5, 22);
        switch (C2436ft.A00[c2418fbA07.A0G().ordinal()]) {
            case 1:
            case 2:
                c2746kz.A0Y(c2742kv);
                break;
        }
        c2746kz.A0c(new C2744kx(la.A35().A01(), -1, -1, la.A1r(), la.A1c()));
        c2746kz.A0c(new C2744kx(c2418fbA07.A0L(), -1, -1, la.A1r(), la.A1c()));
        AbstractC2434fr.A00(la, c2746kz, A00(5, 12, 20));
        c2746kz.A0X(new KS(c1618Hi, interfaceC2437fu, c2746kz, c2418fbA07, z), new C2739ks(la.A1r(), la.A1c()));
    }
}
