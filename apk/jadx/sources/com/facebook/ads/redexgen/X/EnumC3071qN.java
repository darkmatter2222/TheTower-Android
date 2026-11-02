package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum EnumC3071qN {
    A03,
    A04;

    public static byte[] A00;
    public static String[] A01 = {"hc6LTHWh34", "SocWGKvTrb27mU7I6HYZWtCOqe8vN7We", "SUbP7E1EvcCOTKHRfbpGBIuCA1WKWIWl", "9BnvDMswfYYU8yfKe5BUnKeiNTL", "L0vmRAARTPtPdmY", "U1b0Njqb3LWazyJmLiNcKHMDagE8OpYs", "PuJNFUDLlE3IV59JGDcXhgchNVuNoa4b", "exdb2ky9NstGP6elq11NgBzvOAGjRaxw"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[1].charAt(25) == strArr[6].charAt(25)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[2] = "hPRl6mewzDLtDRePFgVGGzDpOousDsET";
            strArr2[7] = "1PTlaN9o47ZvO5QWBq3tjVop340dHI6h";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 123);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{81, 80, 83, 84, SignedBytes.MAX_POWER_OF_TWO, 89, 65, Ascii.DC4, 7, Ascii.RS, Ascii.RS, Ascii.CR, 1, 17, 0, Ascii.ETB, Ascii.ETB, Ascii.FS};
    }
}
