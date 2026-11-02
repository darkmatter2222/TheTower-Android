package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.f5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2386f5 {
    public static byte[] A00;
    public static String[] A01 = {"k8frRPm7mgDqxAioixpogczqOVsCxRz8", "VyYaCRL1y3X", "xcDZJmUacSFiJANDAcoJ8UiTqUSchCBm", "q1LjJBebIK3uZB", "OZ3nRZor67qkEvoJ2248OadtkqMar1jr", "9EpE4gWNiaa9VWptaK6T5q1Hhg83q3wa", "tRUyTf0EhWGqzTGUgievnYWyHE", "mWi8o8YvCa"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{SignedBytes.MAX_POWER_OF_TWO, 87, 69, 83, SignedBytes.MAX_POWER_OF_TWO, 86, 87, 86, 109, 68, 91, 86, 87, 93};
        String[] strArr = A01;
        if (strArr[6].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A01[0] = "wdMA9wmxCDvCLZH0HoZEqH4eQGBlUk25";
    }

    public static void A02(C1618Hi c1618Hi, C13747g c13747g, InterfaceC2387f6 interfaceC2387f6, AtomicBoolean atomicBoolean, LG lg) {
        String strA08 = c13747g.A32().A0I().A08();
        if (TextUtils.isEmpty(strA08)) {
            interfaceC2387f6.AGw(lg, AdError.INTERNAL_ERROR);
            return;
        }
        C2746kz c2746kz = new C2746kz(c1618Hi);
        c2746kz.A0e(new C2892nO(c13747g.A37(), c1618Hi.A0A()));
        c2746kz.A0c(new C2744kx(strA08, AbstractC2435fs.A00(c13747g.A32().A0I()), AbstractC2435fs.A01(c13747g.A32().A0I()), c13747g.A1r(), A00(0, 14, 117)));
        c2746kz.A0X(new LH(atomicBoolean, interfaceC2387f6, lg), new C2739ks(c13747g.A1r(), A00(0, 14, 117)));
    }
}
