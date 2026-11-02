package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.google.android.gms.ads.AdSize;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2026Yd {
    public static byte[] A00;
    public static String[] A01 = {"gWfa92piv5tZZ0UbViZnkD", "8BWlWUZHwy5zGo", "KOwBd1kGbsETwJOQr", "AjHDM0eUBZHm3mjlWcYFg", "OBBgCtWIEZkDrGCsZywbf0a3to7dIhbP", "7ThbdWcppwWq2UlElfMVB4JMD6", "kRYaGlULPZIUrEfdkh6Tyf7E4GahIHHj", "phVTJZlUn3P7Zs8mUd1"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;
    public static final int[] A07;

    static {
        A0B();
        A03 = new int[]{1, 2, 3, 6};
        A05 = new int[]{48000, 44100, 32000};
        A06 = new int[]{24000, 22050, 16000};
        A04 = new int[]{2, 1, 2, 3, 3, 4, 4, 5};
        A02 = new int[]{32, 40, 48, 56, 64, 80, 96, InterfaceC3669k1.d.b.j, 128, AdSize.WIDE_SKYSCRAPER_WIDTH, 192, 224, 256, 320, 384, 448, 512, 576, 640};
        A07 = new int[]{69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};
    }

    public static int A00(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= A05.length || i2 < 0 || i3 >= A07.length) {
            return -1;
        }
        int i4 = A05[i];
        if (A01[7].length() != 19) {
            throw new RuntimeException();
        }
        A01[7] = "5L7RX5JKrgrtk9KH87r";
        if (i4 == 44100) {
            return (A07[i3] + (i2 % 2)) * 2;
        }
        int i5 = A02[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    public static int A01(int i, int i2, int i3) {
        return (i * i2) / (i3 * 32);
    }

    public static int A02(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i = iPosition; i <= iLimit; i++) {
            if ((N1.A0F(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - iPosition;
            }
        }
        if (A01[7].length() != 19) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "eOMYxb0wLSmLQ0G7YxyDe";
        strArr[0] = "TTeIHa3Ep1TtA6CuQAEFem";
        return -1;
    }

    public static int A03(ByteBuffer byteBuffer) {
        if (!(((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10)) {
            return 1536;
        }
        byte b = byteBuffer.get(byteBuffer.position() + 4);
        if (A01[5].length() != 26) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "DXpfQrtLciruzIVFlvY53";
        strArr[0] = "RlE8CkfxogD2ABvML1zfIj";
        return A03[((b & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
    }

    public static int A04(ByteBuffer byteBuffer, int i) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + ((byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int A05(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 248) >> 3) > 10)) {
            return A00((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        int i = (bArr[2] & 7) << 8;
        byte b = bArr[3];
        if (A01[7].length() != 19) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[6] = "BDIPGES5Iy70rckzqUVITbYsi7nZbnMv";
        strArr[4] = "ZUuqCTmivk9PrDw5xwTjy4JM4X7ycwvf";
        return (((b & 255) | i) + 1) * 2;
    }

    public static int A06(byte[] bArr) {
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        int i = bArr[7] & 255;
        String[] strArr = A01;
        if (strArr[3].length() != strArr[0].length()) {
            A01[1] = "5vldxXbgycDySC";
            boolean z = i == 187;
            if (A01[5].length() == 26) {
                A01[5] = "0QS0ZKZc8ux9skKjaYGZGoWgg7";
                byte b = bArr[z ? '\t' : '\b'];
                if (A01[2].length() == 16) {
                    throw new RuntimeException();
                }
                A01[1] = "e9o9TbY2rszMey";
                return 40 << ((b >> 4) & 7);
            }
        }
        throw new RuntimeException();
    }

    public static VC A07(C1744Mk c1744Mk, String str, String str2, DrmInitData drmInitData) {
        C1743Mj c1743Mj = new C1743Mj();
        c1743Mj.A0C(c1744Mk);
        int i = A05[c1743Mj.A04(2)];
        c1743Mj.A09(8);
        int i2 = A04[c1743Mj.A04(3)];
        if (c1743Mj.A04(1) != 0) {
            i2++;
        }
        int i3 = A02[c1743Mj.A04(5)] * 1000;
        c1743Mj.A06();
        c1744Mk.A0f(c1743Mj.A02());
        return new C1689Ke().A0y(str).A11(A0A(0, 9, 52)).A0b(i2).A0m(i).A0u(drmInitData).A10(str2).A0a(i3).A0j(i3).A14();
    }

    public static VC A08(C1744Mk c1744Mk, String str, String str2, DrmInitData drmInitData) {
        C1743Mj c1743Mj = new C1743Mj();
        c1743Mj.A0C(c1744Mk);
        int iA04 = c1743Mj.A04(13) * 1000;
        c1743Mj.A09(3);
        int i = A05[c1743Mj.A04(2)];
        c1743Mj.A09(10);
        int i2 = A04[c1743Mj.A04(3)];
        if (c1743Mj.A04(1) != 0) {
            i2++;
        }
        c1743Mj.A09(3);
        if (A01[2].length() == 16) {
            throw new RuntimeException();
        }
        A01[2] = "kzS1gbjIKacu2hyxgl59K";
        int iA05 = c1743Mj.A04(4);
        c1743Mj.A09(1);
        if (iA05 > 0) {
            c1743Mj.A0A(6);
            if (c1743Mj.A04(1) != 0) {
                i2 += 2;
            }
            c1743Mj.A09(1);
        }
        String strA0A = A0A(9, 10, 11);
        if (c1743Mj.A01() > 7) {
            c1743Mj.A09(7);
            if (c1743Mj.A04(1) != 0) {
                strA0A = A0A(19, 14, 30);
            }
        }
        c1743Mj.A06();
        c1744Mk.A0f(c1743Mj.A02());
        return new C1689Ke().A0y(str).A11(strA0A).A0b(i2).A0m(i).A0u(drmInitData).A10(str2).A0j(iA04).A14();
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0238 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x023a  */
    /* JADX WARN: Code duplicated, block: B:140:0x028d  */
    /* JADX WARN: Code duplicated, block: B:143:0x0295  */
    /* JADX WARN: Code duplicated, block: B:160:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:163:0x0306  */
    /* JADX WARN: Code duplicated, block: B:165:0x0309  */
    /* JADX WARN: Code duplicated, block: B:167:0x030f  */
    /* JADX WARN: Code duplicated, block: B:224:0x0312 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:58:0x0116  */
    /* JADX WARN: Code duplicated, block: B:68:0x0160  */
    public static C2025Yc A09(C1743Mj c1743Mj) {
        String strA0A;
        int iA01;
        int iA00;
        int i;
        int i2;
        int i3;
        int i4;
        int iA04;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int iA03 = c1743Mj.A03();
        c1743Mj.A09(40);
        boolean z = c1743Mj.A04(5) > 10;
        c1743Mj.A08(iA03);
        int i13 = -1;
        if (!z) {
            strA0A = A0A(0, 9, 52);
            c1743Mj.A09(32);
            int iA05 = c1743Mj.A04(2);
            if (A01[1].length() != 14) {
                String[] strArr = A01;
                strArr[6] = "TJf1TqBSk5yCr5Bsr6bjmSUuZ0GrTmB0";
                strArr[4] = "CpaKJiVdHIrXrwpBXDl9ZQbkkWKOHOxl";
                if (iA05 == 3) {
                    strA0A = null;
                }
            } else {
                String[] strArr2 = A01;
                strArr2[3] = "KewUe4EeMrj1h5Hh1BX7K";
                strArr2[0] = "5UtVxNksJXP3adt6hUPeix";
                if (iA05 == 3) {
                    strA0A = null;
                }
            }
            int iA06 = c1743Mj.A04(6);
            iA01 = A02[iA06 / 2] * 1000;
            iA00 = A00(iA05, iA06);
            if (A01[5].length() == 26) {
                A01[2] = "";
                c1743Mj.A09(8);
                int iA07 = c1743Mj.A04(3);
                if ((iA07 & 1) == 0 || iA07 == 1) {
                    i = 2;
                } else {
                    i = 2;
                    c1743Mj.A09(2);
                }
                int i14 = iA07 & 4;
                if (A01[7].length() == 19) {
                    A01[2] = "kU8P9";
                    if (i14 != 0) {
                        c1743Mj.A09(i);
                    }
                    if (iA07 == i) {
                        c1743Mj.A09(i);
                    }
                    i2 = iA05 < A05.length ? A05[iA05] : -1;
                    i3 = 1536;
                    i4 = A04[iA07] + (c1743Mj.A0H() ? 1 : 0);
                    return new C2025Yc(strA0A, i13, i4, i2, iA00, i3, iA01);
                }
            }
            throw new RuntimeException();
        }
        c1743Mj.A09(16);
        switch (c1743Mj.A04(2)) {
            case 0:
                i13 = 0;
                break;
            case 1:
                i13 = 1;
                break;
            case 2:
                i13 = 2;
                break;
            default:
                i13 = -1;
                break;
        }
        c1743Mj.A09(3);
        iA00 = (c1743Mj.A04(11) + 1) * 2;
        int iA08 = c1743Mj.A04(2);
        if (iA08 == 3) {
            iA04 = 3;
            i2 = A06[c1743Mj.A04(2)];
            i5 = 6;
        } else {
            iA04 = c1743Mj.A04(2);
            i5 = A03[iA04];
            i2 = A05[iA08];
        }
        i3 = i5 * 256;
        iA01 = A01(iA00, i2, i5);
        int iA09 = c1743Mj.A04(3);
        boolean zA0H = c1743Mj.A0H();
        i4 = A04[iA09] + (zA0H ? 1 : 0);
        c1743Mj.A09(10);
        if (c1743Mj.A0H()) {
            c1743Mj.A09(8);
        }
        if (iA09 == 0) {
            c1743Mj.A09(5);
            if (c1743Mj.A0H()) {
                c1743Mj.A09(8);
            }
        }
        if (i13 == 1 && c1743Mj.A0H()) {
            c1743Mj.A09(16);
        }
        if (c1743Mj.A0H()) {
            if (iA09 > 2) {
                c1743Mj.A09(2);
            }
            if ((iA09 & 1) != 0 && iA09 > 2) {
                i9 = 6;
                if (A01[2].length() != 16) {
                    String[] strArr3 = A01;
                    strArr3[3] = "hQrdftsyInnC0FGW7zAFQ";
                    strArr3[0] = "vhmlqb0IOOCRRUvCvexDx7";
                    c1743Mj.A09(6);
                }
                throw new RuntimeException();
            }
            i9 = 6;
            if ((iA09 & 4) != 0) {
                c1743Mj.A09(i9);
            }
            if (zA0H && c1743Mj.A0H()) {
                c1743Mj.A09(5);
            }
            if (i13 == 0) {
                boolean zA0H2 = c1743Mj.A0H();
                String[] strArr4 = A01;
                if (strArr4[6].charAt(12) == strArr4[4].charAt(12)) {
                    String[] strArr5 = A01;
                    strArr5[3] = "1gCrStzIkzuvI4aF0le7J";
                    strArr5[0] = "Cgb10VsBqJmebNMa7oD03s";
                    if (zA0H2) {
                        i10 = 6;
                        c1743Mj.A09(6);
                    } else {
                        i10 = 6;
                    }
                } else if (zA0H2) {
                    i10 = 6;
                    c1743Mj.A09(6);
                } else {
                    i10 = 6;
                }
                if (iA09 == 0 && c1743Mj.A0H()) {
                    c1743Mj.A09(i10);
                }
                boolean zA0H3 = c1743Mj.A0H();
                if (A01[7].length() == 19) {
                    A01[7] = "01QpZ2YUOVRnDDZxQo4";
                    if (zA0H3) {
                        c1743Mj.A09(i10);
                    }
                    int iA010 = c1743Mj.A04(2);
                    if (iA010 == 1) {
                        c1743Mj.A09(5);
                    } else if (iA010 == 2) {
                        c1743Mj.A09(12);
                    } else if (iA010 == 3) {
                        int iA011 = c1743Mj.A04(5);
                        if (c1743Mj.A0H()) {
                            c1743Mj.A09(5);
                            if (c1743Mj.A0H()) {
                                i11 = 4;
                                c1743Mj.A09(4);
                            } else {
                                i11 = 4;
                            }
                            boolean zA0H4 = c1743Mj.A0H();
                            String[] strArr6 = A01;
                            if (strArr6[6].charAt(12) == strArr6[4].charAt(12)) {
                                String[] strArr7 = A01;
                                strArr7[6] = "eYTZ9FAJC6g3r5QlXUdHIVgwGuo33fxX";
                                strArr7[4] = "4WtQFZ4AOvjhrFiBGrnRSJrjKovPQlYh";
                                if (zA0H4) {
                                    c1743Mj.A09(i11);
                                }
                                if (c1743Mj.A0H()) {
                                    c1743Mj.A09(i11);
                                }
                                if (c1743Mj.A0H()) {
                                    c1743Mj.A09(i11);
                                }
                                boolean zA0H5 = c1743Mj.A0H();
                                if (A01[5].length() != 26) {
                                    throw new RuntimeException();
                                }
                                A01[7] = "cwN6x9xzqXnJ7GnDfdo";
                                if (zA0H5) {
                                    c1743Mj.A09(i11);
                                }
                                if (c1743Mj.A0H()) {
                                    c1743Mj.A09(i11);
                                }
                                if (c1743Mj.A0H()) {
                                    c1743Mj.A09(i11);
                                }
                                if (c1743Mj.A0H()) {
                                    if (c1743Mj.A0H()) {
                                        c1743Mj.A09(i11);
                                    }
                                    if (c1743Mj.A0H()) {
                                        c1743Mj.A09(i11);
                                    }
                                }
                            }
                        }
                        if (c1743Mj.A0H()) {
                            c1743Mj.A09(5);
                            if (c1743Mj.A0H()) {
                                c1743Mj.A09(7);
                                if (c1743Mj.A0H()) {
                                    c1743Mj.A09(8);
                                }
                            }
                        }
                        c1743Mj.A09((iA011 + 2) * 8);
                        c1743Mj.A06();
                    }
                    if (iA09 < 2) {
                        if (c1743Mj.A0H()) {
                            c1743Mj.A09(14);
                        }
                        if (iA09 == 0 && c1743Mj.A0H()) {
                            c1743Mj.A09(14);
                        }
                    }
                    boolean zA0H6 = c1743Mj.A0H();
                    String[] strArr8 = A01;
                    if (strArr8[3].length() != strArr8[0].length()) {
                        A01[2] = "MvqqTd6CmuSu7hX9DU0QYIvgEbloyqWM";
                        if (zA0H6) {
                            if (iA04 == 0) {
                                c1743Mj.A09(5);
                            } else {
                                for (i12 = 0; i12 < i5; i12++) {
                                    if (c1743Mj.A0H()) {
                                        c1743Mj.A09(5);
                                    }
                                }
                            }
                        }
                    } else if (zA0H6) {
                        if (iA04 == 0) {
                            c1743Mj.A09(5);
                        } else {
                            while (i12 < i5) {
                                if (c1743Mj.A0H()) {
                                    c1743Mj.A09(5);
                                }
                            }
                        }
                    }
                }
                throw new RuntimeException();
            }
        }
        if (c1743Mj.A0H()) {
            c1743Mj.A09(5);
            if (iA09 == 2) {
                c1743Mj.A09(4);
            }
            if (iA09 >= 6) {
                c1743Mj.A09(2);
            }
            if (c1743Mj.A0H()) {
                i8 = 8;
                c1743Mj.A09(8);
            } else {
                i8 = 8;
            }
            if (iA09 == 0 && c1743Mj.A0H()) {
                c1743Mj.A09(i8);
            }
            i6 = 3;
            if (iA08 < 3) {
                c1743Mj.A07();
            }
        } else {
            i6 = 3;
        }
        if (i13 == 0 && iA04 != i6) {
            c1743Mj.A07();
        }
        if (A01[1].length() != 14) {
            A01[1] = "Z9618LWPgCMtBu";
            if (i13 != 2) {
                i7 = 6;
            } else if (iA04 != i6 || c1743Mj.A0H()) {
                i7 = 6;
                c1743Mj.A09(6);
            } else {
                i7 = 6;
            }
        } else {
            A01[2] = "PiCuKe2A5ED2hDq";
            if (i13 != 2) {
                i7 = 6;
            } else if (iA04 != i6) {
                i7 = 6;
                c1743Mj.A09(6);
            } else {
                i7 = 6;
                c1743Mj.A09(6);
            }
        }
        strA0A = A0A(9, 10, 11);
        if (c1743Mj.A0H() && c1743Mj.A04(i7) == 1 && c1743Mj.A04(8) == 1) {
            if (A01[2].length() != 16) {
                A01[7] = "SwXJl1C3a17owwygpEy";
                strA0A = A0A(19, 14, 30);
            } else {
                strA0A = A0A(19, 14, 30);
            }
        }
        return new C2025Yc(strA0A, i13, i4, i2, iA00, i3, iA01);
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{41, Base64.padSymbol, 44, 33, 39, 103, 41, 43, 123, Ascii.SYN, 2, 19, Ascii.RS, Ascii.CAN, 88, Ascii.DC2, Ascii.SYN, Ascii.DC4, 68, 3, Ascii.ETB, 6, Ascii.VT, Ascii.CR, 77, 7, 3, 1, 81, 79, 8, Ascii.CR, 1};
    }
}
