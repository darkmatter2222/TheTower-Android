package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RU implements WB {
    public static byte[] A00;
    public static String[] A01 = {"1r6wgHYOB", "AVULDbYlNs0l2QHiZuOlUBlakjwR6sHi", "oPQAvjQgy", "hKS1W", "hqQdqbAYV", "98xG3lf1T92yQg", "F87JiG4ISjvld7dkZ7fuUjveYPqPk4To", "rkUIu0IJuzOr2WAiZbkW"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-100, -49, -49, -64, -56, -53, -49, -64, -65, 123, -49, -54, 123, -66, -51, -64, -68, -49, -64, 123, -65, -64, -66, -54, -65, -64, -51, 123, -63, -54, -51, 123, -48, -55, -50, -48, -53, -53, -54, -51, -49, -64, -65, 123, -88, -92, -88, -96, 123, -49, -44, -53, -64, -107, 123, -41, -26, -26, -30, -33, -39, -41, -22, -33, -27, -28, -91, -39, -37, -41, -93, -84, -90, -82, Ascii.NAK, 36, 36, 32, Ascii.GS, Ascii.ETB, Ascii.NAK, 40, Ascii.GS, 35, 34, -29, Ascii.ETB, Ascii.EM, Ascii.NAK, -31, -21, -28, -20, -57, -42, -42, -46, -49, -55, -57, -38, -49, -43, -44, -107, -54, -36, -56, -39, -37, -56, -39, -17, -2, -2, -6, -9, -15, -17, 2, -9, -3, -4, -67, -2, -11, 1, 6, Ascii.NAK, Ascii.NAK, 17, Ascii.SO, 8, 6, Ascii.EM, Ascii.SO, Ascii.DC4, 19, -44, Ascii.EM, Ascii.EM, Ascii.DC2, 17, -48, Ascii.GS, Ascii.DC2, 17, -31, -16, -16, -20, -23, -29, -31, -12, -23, -17, -18, -81, -8, -83, -19, -16, -76, -83, -29, -27, -31, -83, -74, -80, -72, -23, -8, -8, -12, -15, -21, -23, -4, -15, -9, -10, -73, 0, -75, -11, -8, -68, -75, -2, -4, -4, -60, -45, -45, -49, -52, -58, -60, -41, -52, -46, -47, -110, -37, -112, -44, -40, -52, -58, -50, -41, -52, -48, -56, -112, -41, -37, -106, -54, 0, Ascii.SI, Ascii.SI, Ascii.VT, 8, 2, 0, 19, 8, Ascii.SO, Ascii.CR, -50, Ascii.ETB, -52, Ascii.DC2, Ascii.DC4, 1, 17, 8, Ascii.SI, 59, 44, 63, 59, -10, Base64.padSymbol, 59, 59, -39, -54, -35, -39, -108, -35, -110, -54, -35, -44, -43, -47, -58, -34, -54, -41, -110, -56, -38, -54, -40, 40, Ascii.EM, 44, 40, -29, 44, -31, 39, 39, Ascii.NAK};
        if (A01[4].length() == 3) {
            throw new RuntimeException();
        }
        A01[5] = "LxaIdH5cBJxmS6v2";
    }

    @Override // com.facebook.ads.redexgen.X.WB
    public final InterfaceC1796Ok A5t(VC vc) {
        byte b;
        String str = vc.A0W;
        if (str != null) {
            switch (str.hashCode()) {
                case 1201784583:
                    if (str.equals(A00(249, 21, 16))) {
                        b = 0;
                        break;
                    }
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    return new C8k();
            }
        }
        throw new IllegalArgumentException(A00(0, 55, 6) + str);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f7 A[RETURN, SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.WB
    public final boolean ALg(VC vc) {
        String str = vc.A0W;
        if (!A00(241, 8, 114).equals(str)) {
            if (A01[7].length() == 27) {
                throw new RuntimeException();
            }
            A01[5] = "OkO6euc8ynjv";
            if (!A00(270, 10, 95).equals(str) && !A00(127, 20, 80).equals(str) && !A00(172, 21, 51).equals(str) && !A00(221, 20, 74).equals(str) && !A00(193, 28, 14).equals(str) && !A00(55, 19, 33).equals(str) && !A00(147, 25, 43).equals(str) && !A00(74, 19, 95).equals(str) && !A00(93, 19, 17).equals(str)) {
                String[] strArr = A01;
                if (strArr[6].charAt(4) != strArr[1].charAt(4)) {
                    String[] strArr2 = A01;
                    strArr2[6] = "l9GYIa3PxvQIRN8afan6ZDH1kHfjUleR";
                    strArr2[1] = "nG9OxD1qDrpF1v82myFhSfzbjwOpUtm8";
                    if (!A00(InterfaceC3669k1.d.b.j, 15, 57).equals(str)) {
                        if (A00(249, 21, 16).equals(str)) {
                            return false;
                        }
                    }
                } else if (!A00(InterfaceC3669k1.d.b.j, 15, 57).equals(str)) {
                    if (A00(249, 21, 16).equals(str)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
