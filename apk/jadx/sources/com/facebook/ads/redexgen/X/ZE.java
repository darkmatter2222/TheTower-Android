package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ZE {
    public static byte[] A00;
    public static int[] A01;
    public static String[] A02 = {"E8CajfwDhD", "EQtKN9SX4zpM2kSbONlt8LZVXteEKYQ", "2D5HKT57LN5Jolf1nNoffXshNRrbTf3F", "8leadM37EGflGTQHiOrXjBiISWrIioXY", "sxuJca5", "105kek2pY665JPRFla96Oyfq98SlzLnA", "k9Lj5", "T4fgDkmzG9EN0F0E9nL3rlTkDD8hN4iz"};
    public static final byte[] A03;
    public static final float[] A04;
    public static final Object A05;

    static {
        A0C();
        A03 = new byte[]{0, 0, 0, 1};
        A04 = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
        A05 = new Object();
        A01 = new int[10];
    }

    public static int A00(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    public static int A01(byte[] bArr, int i) {
        return bArr[i + 3] & Ascii.US;
    }

    public static int A02(byte[] bArr, int i) {
        int i2;
        synchronized (A05) {
            int iA03 = 0;
            int i3 = 0;
            while (iA03 < i) {
                iA03 = A03(bArr, iA03, i);
                if (iA03 < i) {
                    if (A01.length <= i3) {
                        A01 = Arrays.copyOf(A01, A01.length * 2);
                    }
                    A01[i3] = iA03;
                    iA03 += 3;
                    i3++;
                }
            }
            i2 = i - i3;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i3; i6++) {
                int i7 = A01[i6] - i4;
                System.arraycopy(bArr, i4, bArr, i5, i7);
                int i8 = i5 + i7;
                int i9 = i8 + 1;
                bArr[i8] = 0;
                i5 = i9 + 1;
                bArr[i9] = 0;
                i4 += i7 + 3;
            }
            System.arraycopy(bArr, i4, bArr, i5, i2 - i5);
        }
        return i2;
    }

    public static int A03(byte[] bArr, int i, int i2) {
        while (i < i2 - 2) {
            if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 3) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:80:0x010e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0148  */
    /* JADX WARN: Code duplicated, block: B:94:0x014e  */
    public static int A04(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z;
        boolean z2;
        int i3 = i2 - i;
        AbstractC1722Ln.A08(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            A0H(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            A0H(zArr);
            return i - 2;
        }
        String[] strArr = A02;
        if (strArr[5].charAt(5) != strArr[7].charAt(5)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "0sBcyUm";
        strArr2[6] = "ZIuDi";
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            A0H(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            if ((bArr[i5] & 254) == 0) {
                if (bArr[i5 - 2] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                    A0H(zArr);
                    return i5 - 2;
                }
                i5 -= 2;
            }
            i5 += 3;
        }
        if (i3 > 2) {
            if (bArr[i2 - 3] == 0) {
                int i6 = i2 - 2;
                String[] strArr3 = A02;
                if (strArr3[3].charAt(26) != strArr3[2].charAt(26)) {
                    String[] strArr4 = A02;
                    strArr4[3] = "glzWPxrnhUsXbDc0zUvrLDLb5wrz7IVT";
                    strArr4[2] = "KPjma6K8lVOKnTyM4CCTudac85rc61m9";
                    if (bArr[i6] == 0) {
                        if (bArr[i2 - 1] == 1) {
                            z = true;
                        }
                    }
                } else {
                    String[] strArr5 = A02;
                    strArr5[4] = "8I4k0TA";
                    strArr5[6] = "uzm09";
                    if (bArr[i6] == 0) {
                        if (bArr[i2 - 1] == 1) {
                            z = true;
                        }
                    }
                }
                z = false;
            } else {
                z = false;
            }
        } else if (i3 != 2) {
            z = zArr[1] && bArr[i2 + (-1)] == 1;
        } else if (zArr[2]) {
            byte b = bArr[i2 - 2];
            String[] strArr6 = A02;
            if (strArr6[4].length() != strArr6[6].length()) {
                A02[1] = "Kl6G5l6xPzefqTAV5gF7rPwtvyIYLCa";
                if (b == 0) {
                    if (bArr[i2 - 1] == 1) {
                        z = true;
                    }
                }
            } else if (b == 0) {
                if (bArr[i2 - 1] == 1) {
                    z = true;
                }
            }
            z = false;
        } else {
            z = false;
        }
        zArr[0] = z;
        if (i3 > 1) {
            z2 = bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 0;
        } else if (zArr[2]) {
            byte b2 = bArr[i2 - 1];
            String[] strArr7 = A02;
            if (strArr7[3].charAt(26) != strArr7[2].charAt(26)) {
                throw new RuntimeException();
            }
            A02[1] = "sRXjx2TU9B82AuEZJa2zMEyETsqTWrp";
            if (b2 == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        zArr[1] = z2;
        zArr[2] = bArr[i2 + (-1)] == 0;
        return i2;
    }

    public static ZB A05(byte[] bArr, int i, int i2) {
        return A06(bArr, i + 2, i2);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:50:0x0115  */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x027a, code lost:
    
        r5 = com.facebook.ads.redexgen.X.ZE.A02;
        r5[5] = "LnB6fkwUjXI7dPDlxvmHpOvZHsebsT9Y";
        r5[7] = "TusPJkxWxFRd0kWpiJOnbb3yvRlkAegK";
        r0 = r4.A05(8);
        r5 = r4.A05(8);
        r4.A07(8);
        r23 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0295, code lost:
    
        if (r6 == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0297, code lost:
    
        r24 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0299, code lost:
    
        r3 = com.facebook.ads.redexgen.X.ZE.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02aa, code lost:
    
        if (r3[5].charAt(5) == r3[7].charAt(5)) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02ae, code lost:
    
        r24 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02b1, code lost:
    
        com.facebook.ads.redexgen.X.ZE.A02[1] = "5ILJHWeYyXiRjEYn5cUcn2IWPPgFoha";
        r25 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01fc, code lost:
    
        if (r5 != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01fe, code lost:
    
        r4.A07(3);
        r6 = r4.A0A();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x020a, code lost:
    
        if (r4.A0A() == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0219, code lost:
    
        if (com.facebook.ads.redexgen.X.ZE.A02[1].length() == 31) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0229, code lost:
    
        if (r5 != false) goto L92;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.ZB A06(byte[] r23, int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZE.A06(byte[], int, int):com.facebook.ads.redexgen.X.ZB");
    }

    public static ZC A07(byte[] bArr, int i, int i2) {
        return A08(bArr, i + 1, i2);
    }

    public static ZC A08(byte[] bArr, int i, int i2) {
        ZG zg = new ZG(bArr, i, i2);
        int iA04 = zg.A04();
        int iA05 = zg.A04();
        zg.A06();
        return new ZC(iA04, iA05, zg.A0A());
    }

    public static ZD A09(byte[] bArr, int i, int i2) {
        return A0A(bArr, i + 1, i2);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0080  */
    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    /* JADX WARN: Code duplicated, block: B:30:0x0095 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0097  */
    /* JADX WARN: Code duplicated, block: B:34:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c8  */
    public static ZD A0A(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        ZG zg = new ZG(bArr, i, i2);
        int iA05 = zg.A05(8);
        int iA06 = zg.A05(8);
        int iA07 = zg.A05(8);
        int iA04 = zg.A04();
        int iA08 = 1;
        boolean zA0A = false;
        if (iA05 == 100 || iA05 == 110 || iA05 == 122 || iA05 == 244) {
            iA08 = zg.A04();
            if (A02[1].length() == 31) {
                A02[0] = "hDziK3eEhR";
                if (iA08 == 3) {
                    zA0A = zg.A0A();
                }
            } else if (iA08 == 3) {
                zA0A = zg.A0A();
            }
            zg.A04();
            zg.A04();
            zg.A06();
            if (zg.A0A()) {
                if (iA08 != 3) {
                    i3 = 8;
                } else {
                    i3 = 12;
                }
                for (i4 = 0; i4 < i3; i4++) {
                    if (zg.A0A()) {
                        if (i4 < 6) {
                            i5 = 16;
                        } else {
                            i5 = 64;
                        }
                        A0F(zg, i5);
                    }
                }
            }
        } else {
            String[] strArr = A02;
            if (strArr[5].charAt(5) != strArr[7].charAt(5)) {
                throw new RuntimeException();
            }
            A02[0] = "LXvopYEvbG";
            if (iA05 == 44 || iA05 == 83 || iA05 == 86 || iA05 == 118) {
                iA08 = zg.A04();
                if (A02[1].length() == 31) {
                    A02[0] = "hDziK3eEhR";
                    if (iA08 == 3) {
                        zA0A = zg.A0A();
                    }
                } else if (iA08 == 3) {
                    zA0A = zg.A0A();
                }
                zg.A04();
                zg.A04();
                zg.A06();
                if (zg.A0A()) {
                    if (iA08 != 3) {
                        i3 = 8;
                    } else {
                        i3 = 12;
                    }
                    while (i4 < i3) {
                        if (zg.A0A()) {
                            if (i4 < 6) {
                                i5 = 16;
                            } else {
                                i5 = 64;
                            }
                            A0F(zg, i5);
                        }
                    }
                }
            } else {
                if (A02[0].length() != 10) {
                    String[] strArr2 = A02;
                    strArr2[4] = "PYzCvpa";
                    strArr2[6] = "rBZkB";
                    if (iA05 != 128) {
                        if (iA05 == 138) {
                        }
                    }
                } else {
                    A02[1] = "KN0rusCOJ2J1ycrW6NAmGQu5n8nZjx6";
                    if (iA05 != 128) {
                        if (iA05 == 138) {
                        }
                    }
                }
                iA08 = zg.A04();
                if (A02[1].length() == 31) {
                    A02[0] = "hDziK3eEhR";
                    if (iA08 == 3) {
                        zA0A = zg.A0A();
                    }
                } else if (iA08 == 3) {
                    zA0A = zg.A0A();
                }
                zg.A04();
                zg.A04();
                zg.A06();
                if (zg.A0A()) {
                    if (iA08 != 3) {
                        i3 = 8;
                    } else {
                        i3 = 12;
                    }
                    while (i4 < i3) {
                        if (zg.A0A()) {
                            if (i4 < 6) {
                                i5 = 16;
                            } else {
                                i5 = 64;
                            }
                            A0F(zg, i5);
                        }
                    }
                }
            }
        }
        int iA09 = zg.A04() + 4;
        int iA010 = zg.A04();
        int iA011 = 0;
        boolean zA0A2 = false;
        if (iA010 == 0) {
            iA011 = zg.A04() + 4;
        } else if (iA010 == 1) {
            zA0A2 = zg.A0A();
            zg.A03();
            zg.A03();
            long jA04 = zg.A04();
            for (int i8 = 0; i8 < jA04; i8++) {
                zg.A04();
            }
        }
        int iA012 = zg.A04();
        zg.A06();
        int iA013 = zg.A04() + 1;
        int iA014 = zg.A04() + 1;
        boolean zA0A3 = zg.A0A();
        int i9 = (2 - (zA0A3 ? 1 : 0)) * iA014;
        if (!zA0A3) {
            zg.A06();
        }
        zg.A06();
        int i10 = iA013 * 16;
        int i11 = i9 * 16;
        if (zg.A0A()) {
            int iA015 = zg.A04();
            int iA016 = zg.A04();
            int iA017 = zg.A04();
            int iA018 = zg.A04();
            if (iA08 == 0) {
                i6 = 1;
                i7 = 2 - (zA0A3 ? 1 : 0);
            } else {
                i6 = iA08 == 3 ? 1 : 2;
                i7 = (2 - (zA0A3 ? 1 : 0)) * (iA08 == 1 ? 2 : 1);
                String[] strArr3 = A02;
                if (strArr3[4].length() != strArr3[6].length()) {
                    A02[1] = "7muiXN3iasoTgQlsvP8HAhyoOOk6yOK";
                }
            }
            i10 -= (iA015 + iA016) * i6;
            i11 -= (iA017 + iA018) * i7;
        }
        float f = 1.0f;
        if (zg.A0A() && zg.A0A()) {
            int iA019 = zg.A05(8);
            if (iA019 == 255) {
                int iA020 = zg.A05(16);
                int iA021 = zg.A05(16);
                if (iA020 != 0 && iA021 != 0) {
                    float f2 = iA020;
                    String[] strArr4 = A02;
                    if (strArr4[5].charAt(5) != strArr4[7].charAt(5)) {
                        f = f2 / iA021;
                    } else {
                        A02[0] = "9omZ4lZjXN";
                        f = f2 / iA021;
                    }
                }
            } else if (iA019 < A04.length) {
                f = A04[iA019];
                String[] strArr5 = A02;
                if (strArr5[3].charAt(26) != strArr5[2].charAt(26)) {
                    A02[0] = "zZe1IV3qEb";
                } else {
                    String[] strArr6 = A02;
                    strArr6[3] = "tTjOIpMEgSsIaFewdnBsuMFb8erIieJV";
                    strArr6[2] = "IiSoNyHEMRWko333z3d4JS2eN2rYMxak";
                }
            } else {
                MV.A07(A0B(0, 11, 73), A0B(11, 35, 93) + iA019);
            }
        }
        return new ZD(iA05, iA06, iA07, iA04, iA012, i10, i11, f, zA0A, zA0A3, iA09, iA010, iA011, zA0A2);
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A00 = new byte[]{Ascii.SI, 34, 45, Ascii.SYN, 47, 42, 53, Ascii.SYN, 53, 42, 45, 42, 67, 58, 77, 69, 58, 56, 73, 58, 57, -11, 54, 72, 69, 58, 56, 73, 52, 71, 54, 73, 62, 68, 52, 62, 57, 56, -11, 75, 54, 65, 74, 58, Ascii.SI, -11, 98, 85, 80, 81, 91, Ascii.ESC, 77, 98, 79, 73, 60, 55, 56, 66, 2, 59, 56, 73, 54};
    }

    public static void A0D(ZG zg) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (zg.A0A()) {
                    int iMin = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        zg.A03();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        zg.A03();
                    }
                } else {
                    zg.A04();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00ca  */
    public static void A0E(ZG zg) {
        int iA04;
        int iA05;
        int[] iArrCopyOf;
        int iA06 = zg.A04();
        int i = -1;
        int i2 = -1;
        int[] iArr = new int[0];
        int[] iArrCopyOf2 = new int[0];
        int i3 = 0;
        while (i3 < iA06) {
            if (i3 != 0 && zg.A0A()) {
                int i4 = i + i2;
                int iA07 = (1 - ((zg.A0A() ? 1 : 0) * 2)) * (zg.A04() + 1);
                boolean[] zArr = new boolean[i4 + 1];
                for (int i5 = 0; i5 <= i4; i5++) {
                    if (zg.A0A()) {
                        zArr[i5] = true;
                    } else {
                        zArr[i5] = zg.A0A();
                    }
                }
                iA04 = 0;
                int[] iArr2 = new int[i4 + 1];
                int[] iArr3 = new int[i4 + 1];
                for (int i6 = i2 - 1; i6 >= 0; i6--) {
                    int i7 = iArrCopyOf2[i6];
                    String[] strArr = A02;
                    if (strArr[4].length() == strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A02;
                    strArr2[5] = "DutyhkR4O49q5QQKI7mBYY0SB3lPmNK5";
                    strArr2[7] = "HFloFkMovTigp6SdvG9vRfUNWjHaIAAY";
                    int i8 = i7 + iA07;
                    if (i8 < 0 && zArr[i + i6]) {
                        iArr2[iA04] = i8;
                        iA04++;
                    }
                }
                if (iA07 < 0 && zArr[i4]) {
                    iArr2[iA04] = iA07;
                    iA04++;
                }
                for (int i9 = 0; i9 < i; i9++) {
                    int i10 = iArr[i9] + iA07;
                    if (i10 < 0 && zArr[i9]) {
                        iArr2[iA04] = i10;
                        iA04++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr2, iA04);
                iA05 = 0;
                for (int i11 = i - 1; i11 >= 0; i11--) {
                    int i12 = iArr[i11] + iA07;
                    if (i12 > 0) {
                        boolean z = zArr[i11];
                        if (A02[1].length() != 31) {
                            A02[0] = "1la1AZZVOB";
                            if (z) {
                                iArr3[iA05] = i12;
                                iA05++;
                            }
                        } else {
                            String[] strArr3 = A02;
                            strArr3[5] = "fCXtQkeRcHXWf8bPQ5fapKiqByyBFM1B";
                            strArr3[7] = "ERs88kiUDkdD78xUtdeItbYfYIX4CSk3";
                            if (z) {
                                iArr3[iA05] = i12;
                                iA05++;
                            }
                        }
                    }
                }
                if (iA07 > 0 && zArr[i4]) {
                    int i13 = iA05 + 1;
                    iArr3[iA05] = iA07;
                    if (A02[0].length() != 10) {
                        throw new RuntimeException();
                    }
                    A02[1] = "Empl1upPmwkgC7WYGxlnViFc70gKTMJ";
                    iA05 = i13;
                }
                for (int i14 = 0; i14 < i2; i14++) {
                    int i15 = iArrCopyOf2[i14] + iA07;
                    if (i15 > 0) {
                        int i16 = i + i14;
                        String[] strArr4 = A02;
                        if (strArr4[4].length() == strArr4[6].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr5 = A02;
                        strArr5[3] = "IKx9TOOB5vawzH28TLLZxdzgswrLs8dN";
                        strArr5[2] = "pP27QjKD2K6wRUFegclyGqhjBRroYUAm";
                        if (zArr[i16]) {
                            iArr3[iA05] = i15;
                            iA05++;
                        }
                    }
                }
                iArrCopyOf2 = Arrays.copyOf(iArr3, iA05);
            } else {
                iA04 = zg.A04();
                iA05 = zg.A04();
                iArrCopyOf = new int[iA04];
                for (int i17 = 0; i17 < iA04; i17++) {
                    iArrCopyOf[i17] = zg.A04() + 1;
                    zg.A06();
                }
                iArrCopyOf2 = new int[iA05];
                for (int i18 = 0; i18 < iA05; i18++) {
                    iArrCopyOf2[i18] = zg.A04() + 1;
                    zg.A06();
                }
            }
            i = iA04;
            i2 = iA05;
            iArr = iArrCopyOf;
            i3++;
        }
    }

    public static void A0F(ZG zg, int i) {
        int i2 = 8;
        int iA03 = 8;
        for (int i3 = 0; i3 < i; i3++) {
            if (iA03 != 0) {
                iA03 = ((zg.A03() + i2) + 256) % 256;
            }
            if (iA03 != 0) {
                i2 = iA03;
            }
            String[] strArr = A02;
            if (strArr[3].charAt(26) != strArr[2].charAt(26)) {
                throw new RuntimeException();
            }
            A02[0] = "oaBrsIgtIH";
        }
    }

    public static void A0G(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i = 0;
        for (int i2 = 0; i2 + 1 < iPosition; i2++) {
            int i3 = byteBuffer.get(i2) & 255;
            if (i == 3) {
                if (i3 == 1 && (byteBuffer.get(i2 + 1) & Ascii.US) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i2 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i3 == 0) {
                i++;
            }
            if (i3 != 0) {
                i = 0;
            }
        }
        byteBuffer.clear();
    }

    public static void A0H(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean A0I(String str, byte b) {
        if (A0B(46, 9, 116).equals(str) && (b & Ascii.US) == 6) {
            return true;
        }
        return A0B(55, 10, 91).equals(str) && ((b & 126) >> 1) == 39;
    }
}
