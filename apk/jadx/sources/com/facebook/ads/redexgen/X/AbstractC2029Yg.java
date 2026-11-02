package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.google.common.primitives.SignedBytes;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2029Yg {
    public static byte[] A00;
    public static String[] A01 = {"imRiVJMXc4SZWZ3QF4KZhVfgmTG74Bx6", "TKTPIiZZWa9SThJfc", "A7KzpJx3Wk4oG2yt7ajGdVAH98sppej4", "IOrzIYYjcAtAJh", "0UHCQx5ZqnE0yq", "IZiHjia3uwt4n4b3PzA3ciBQItqIkJHo", "fER0trA7btID3ir", "lpP13lDDXmkolxPGNEllOpMJaT"};
    public static final int[] A02;

    static {
        A06();
        A02 = new int[]{2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, 400, 400, 2048};
    }

    public static int A00(C1743Mj c1743Mj, int i) {
        int i2 = 0;
        while (true) {
            int iA04 = i2 + c1743Mj.A04(i);
            if (!c1743Mj.A0H()) {
                return iA04;
            }
            i2 = (iA04 + 1) << i;
        }
    }

    public static int A01(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return A04(new C1743Mj(bArr)).A03;
    }

    public static int A02(byte[] bArr, int i) {
        if (bArr.length < 7) {
            return -1;
        }
        int i2 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        int i3 = 2 + 2;
        if (i2 == 65535) {
            i2 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
            i3 += 3;
        }
        if (i == 44097) {
            i3 += 2;
        }
        int i4 = i2 + i3;
        if (A01[1].length() == 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[4] = "iVzOvX0cBgopOX";
        strArr[3] = "PteoiuDwHidTEn";
        return i4;
    }

    public static VC A03(C1744Mk c1744Mk, String str, String str2, DrmInitData drmInitData) {
        c1744Mk.A0g(1);
        return new C1689Ke().A0y(str).A11(A05(0, 9, 40)).A0b(2).A0m(((c1744Mk.A0I() & 32) >> 5) == 1 ? 48000 : 44100).A0u(drmInitData).A10(str2).A14();
    }

    public static C2028Yf A04(C1743Mj c1743Mj) {
        int iA04 = c1743Mj.A04(16);
        int iA05 = c1743Mj.A04(16);
        int i = 0 + 2 + 2;
        if (iA05 == 65535) {
            iA05 = c1743Mj.A04(24);
            i += 3;
        }
        int i2 = iA05 + i;
        String[] strArr = A01;
        if (strArr[4].length() == strArr[3].length()) {
            A01[0] = "Gg6kPH8l";
            if (iA04 == 44097) {
                i2 += 2;
            }
            int iA06 = c1743Mj.A04(2);
            if (iA06 == 3) {
                iA06 += A00(c1743Mj, 2);
            }
            int iA07 = c1743Mj.A04(10);
            if (c1743Mj.A0H()) {
                int iA08 = c1743Mj.A04(3);
                String[] strArr2 = A01;
                if (strArr2[2].charAt(7) == strArr2[5].charAt(7)) {
                    String[] strArr3 = A01;
                    strArr3[4] = "ayuLqZobphgEmr";
                    strArr3[3] = "NfuHHN0k5dTWhX";
                    if (iA08 > 0) {
                        c1743Mj.A09(2);
                    }
                }
            }
            int i3 = c1743Mj.A0H() ? 48000 : 44100;
            int iA09 = c1743Mj.A04(4);
            int i4 = 0;
            if (i3 != 44100 || iA09 != 13) {
                if (i3 == 48000 && iA09 < A02.length) {
                    i4 = A02[iA09];
                    switch (iA07 % 5) {
                        case 1:
                        case 3:
                            if (iA09 == 3 || iA09 == 8) {
                                i4++;
                            }
                            break;
                        case 2:
                            if (iA09 == 8 || iA09 == 11) {
                                i4++;
                                if (A01[6].length() == 11) {
                                    throw new RuntimeException();
                                }
                                A01[7] = "8s5sCt1xBK7Wlyo4Q9R6ORZ54V";
                            }
                            break;
                        case 4:
                            if (iA09 == 3 || iA09 == 8 || iA09 == 11) {
                                i4++;
                            }
                            break;
                    }
                }
            } else {
                i4 = A02[iA09];
            }
            return new C2028Yf(iA06, 2, i3, i2, i4);
        }
        throw new RuntimeException();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{-95, -75, -92, -87, -81, 111, -95, -93, 116};
    }

    public static void A07(int i, C1744Mk c1744Mk) {
        c1744Mk.A0d(7);
        byte[] bArrA0l = c1744Mk.A0l();
        bArrA0l[0] = -84;
        bArrA0l[1] = SignedBytes.MAX_POWER_OF_TWO;
        bArrA0l[2] = -1;
        bArrA0l[3] = -1;
        bArrA0l[4] = (byte) ((i >> 16) & 255);
        bArrA0l[5] = (byte) ((i >> 8) & 255);
        bArrA0l[6] = (byte) (i & 255);
    }
}
