package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2138b3 {
    public static byte[] A00;
    public static String[] A01 = {"bWm4MdcTIwBOXnaA6gk00N", "2egpmu6QICmDaEoNAGV4KoEhrE", "VtNQfL8fGYouF2P2CY5m8Tg7KTaoXEyS", "IqrQCDQ5grOO7J3jMUqBT8WUSgZM", "ViQjihdRfJv4dSHacOdgHgP3pHJs", "AeQb7kz", "g7oQuvQq3H7nw7Ugglblr7aD13p3MdPF", "WiM2hEomy3K"};

    static {
        A03();
    }

    public static C2137b2 A00(byte[] bArr) {
        C1744Mk c1744Mk = new C1744Mk(bArr);
        if (c1744Mk.A0A() < 32) {
            return null;
        }
        c1744Mk.A0f(0);
        if (c1744Mk.A0C() != c1744Mk.A07() + 4 || c1744Mk.A0C() != 1886614376) {
            return null;
        }
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        if (iA03 > 1) {
            MV.A07(A01(0, 12, 81), A01(12, 26, 47) + iA03);
            return null;
        }
        UUID uuid = new UUID(c1744Mk.A0P(), c1744Mk.A0P());
        if (iA03 == 1) {
            int iA0L = c1744Mk.A0L() * 16;
            if (A01[4].length() != 28) {
                throw new RuntimeException();
            }
            A01[4] = "8kunImGG1Wvt4Tl8nInnCvkZmBXs";
            c1744Mk.A0g(iA0L);
        }
        int iA0L2 = c1744Mk.A0L();
        if (iA0L2 != c1744Mk.A07()) {
            return null;
        }
        byte[] bArr2 = new byte[iA0L2];
        c1744Mk.A0k(bArr2, 0, iA0L2);
        return new C2137b2(uuid, iA03, bArr2);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static UUID A02(byte[] bArr) {
        C2137b2 c2137b2A00 = A00(bArr);
        if (c2137b2A00 == null) {
            return null;
        }
        return c2137b2A00.A01;
    }

    public static void A03() {
        A00 = new byte[]{-69, -34, -34, -45, -84, -33, -38, -40, -64, -33, -44, -41, -98, -73, -68, -66, -71, -71, -72, -69, -67, -82, -83, 105, -71, -68, -68, -79, 105, -65, -82, -69, -68, -78, -72, -73, -125, 105};
    }
}
