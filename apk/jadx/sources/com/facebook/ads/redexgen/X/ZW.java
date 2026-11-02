package com.facebook.ads.redexgen.X;

import android.util.Base64;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.vorbis.VorbisComment;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ZW {
    public static byte[] A00;
    public static String[] A01 = {"CSNRKhbmsgdfQ7aSJvnwDgN2Z87LRzVR", "BGNWBKlJ4HuPsa2ZnSdmD0oh8EkwiDh8", "FsRU8HkAwVe7RCT94HEIDLk9huzVf", "JIDKT0Kle88LNybwjYJRV6JmiLTQ5sE4", "sKHcwWBr5rfr2dbZoykAG6aQt2aDb", "M", "i3aCrCY4btc3l2ekWM3kOdcVo1EcH", "WHExPvKTx7PFNdezHTj3QzMQhOYw1aTj"};

    static {
        A08();
    }

    public static int A00(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static long A01(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    public static Metadata A02(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] strArrA1P = N1.A1P(str, A07(0, 1, 116));
            int length = strArrA1P.length;
            String strA07 = A07(85, 10, 54);
            if (length != 2) {
                MV.A07(strA07, A07(1, 32, 117) + str);
            } else if (strArrA1P[0].equals(A07(63, 22, 7))) {
                try {
                    arrayList.add(PictureFrame.A00(new C1744Mk(Base64.decode(strArrA1P[1], 0))));
                } catch (RuntimeException e) {
                    if (A01[4].length() != 29) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[7] = "iTort3w6F8uQNOr7xrlLxkVs8SYtT5Z1";
                    strArr[3] = "SSTu6mrb48DcNiSCKnJ8tB3UoGhdW8fv";
                    MV.A0A(strA07, A07(33, 30, 81), e);
                }
            } else {
                arrayList.add(new VorbisComment(strArrA1P[0], strArrA1P[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static ZS A03(ZR zr) throws L9 {
        if (zr.A02(24) != 5653314) {
            throw L9.A01(A07(123, 55, 6) + zr.A01(), null);
        }
        int iA02 = zr.A02(16);
        int iA03 = zr.A02(24);
        long[] jArr = new long[iA03];
        boolean zA04 = zr.A04();
        if (zA04) {
            int iA04 = zr.A02(5) + 1;
            int i = 0;
            while (i < jArr.length) {
                int iA05 = zr.A02(A00(iA03 - i));
                for (int i2 = 0; i2 < iA05; i2++) {
                    int length = jArr.length;
                    if (A01[5].length() == 16) {
                        throw new RuntimeException();
                    }
                    A01[5] = "yNl2PawFN0E4cLaf5Q4KGEYaz";
                    if (i >= length) {
                        break;
                    }
                    jArr[i] = iA04;
                    i++;
                }
                iA04++;
            }
        } else {
            boolean zA05 = zr.A04();
            for (int i3 = 0; i3 < jArr.length; i3++) {
                if (!zA05) {
                    jArr[i3] = zr.A02(5) + 1;
                } else if (zr.A04()) {
                    jArr[i3] = zr.A02(5) + 1;
                } else {
                    jArr[i3] = 0;
                }
            }
        }
        int iA06 = zr.A02(4);
        if (iA06 > 2) {
            throw L9.A01(A07(313, 42, 115) + iA06, null);
        }
        if (iA06 == 1 || iA06 == 2) {
            zr.A03(32);
            zr.A03(32);
            int iA07 = zr.A02(4) + 1;
            zr.A03(1);
            zr.A03((int) (((long) iA07) * (iA06 == 1 ? iA02 != 0 ? A01(iA03, iA02) : 0L : ((long) iA03) * ((long) iA02))));
        }
        return new ZS(iA02, iA03, jArr, iA06, zA04);
    }

    public static ZT A04(C1744Mk c1744Mk) throws L9 {
        return A05(c1744Mk, true, true);
    }

    public static ZT A05(C1744Mk c1744Mk, boolean z, boolean z2) throws L9 {
        if (z) {
            A0C(3, c1744Mk, false);
        }
        String strA0W = c1744Mk.A0W((int) c1744Mk.A0O());
        int length = 7 + 4 + strA0W.length();
        long jA0O = c1744Mk.A0O();
        String[] strArr = new String[(int) jA0O];
        int length2 = length + 4;
        for (int i = 0; i < jA0O; i++) {
            strArr[i] = c1744Mk.A0W((int) c1744Mk.A0O());
            length2 = length2 + 4 + strArr[i].length();
        }
        if (z2 && (c1744Mk.A0I() & 1) == 0) {
            throw L9.A01(A07(283, 30, 21), null);
        }
        return new ZT(strA0W, strArr, length2 + 1);
    }

    public static ZV A06(C1744Mk c1744Mk) throws L9 {
        A0C(1, c1744Mk, false);
        int iA0F = c1744Mk.A0F();
        int iA0I = c1744Mk.A0I();
        int iA0F2 = c1744Mk.A0F();
        int iA0E = c1744Mk.A0E();
        if (iA0E <= 0) {
            iA0E = -1;
        }
        int iA0E2 = c1744Mk.A0E();
        if (iA0E2 <= 0) {
            iA0E2 = -1;
            if (A01[5].length() == 16) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[1] = "ePPv72s43IVhlXZ7r99oDj0FnR0cec3p";
            strArr[0] = "TAVSpPlR4HHANZfnut3JDDWfCxBKXdg5";
        }
        int iA0E3 = c1744Mk.A0E();
        if (iA0E3 <= 0) {
            iA0E3 = -1;
        }
        int iA0I2 = c1744Mk.A0I();
        return new ZV(iA0F, iA0I, iA0F2, iA0E, iA0E2, iA0E3, (int) Math.pow(2.0d, iA0I2 & 15), (int) Math.pow(2.0d, (iA0I2 & 240) >> 4), (c1744Mk.A0I() & 1) > 0, Arrays.copyOf(c1744Mk.A0l(), c1744Mk.A0A()));
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{Ascii.VT, 113, 86, 94, 91, 82, 83, Ascii.ETB, 67, 88, Ascii.ETB, 71, 86, 69, 68, 82, Ascii.ETB, 97, 88, 69, 85, 94, 68, Ascii.ETB, 84, 88, 90, 90, 82, 89, 67, Ascii.CR, Ascii.ETB, 85, 114, 122, 127, 118, 119, 51, 103, 124, 51, 99, 114, 97, 96, 118, 51, 101, 124, 97, 113, 122, 96, 51, 99, 122, 112, 103, 102, 97, 118, 8, 0, 17, 4, 1, 4, 17, 4, Ascii.SUB, 7, 9, 10, 6, Ascii.SO, Ascii.SUB, Ascii.NAK, Ascii.FF, 6, 17, Ascii.DLE, Ascii.ETB, 0, 34, Ascii.ESC, 6, Ascii.SYN, Ascii.GS, 7, 33, 0, Ascii.GS, Ascii.CAN, 103, 122, 114, 103, 97, 118, 103, 102, 34, 97, 106, 99, 112, 99, 97, 118, 103, 112, 113, 34, 37, 116, 109, 112, 96, 107, 113, 37, 33, 60, 52, 33, 39, 48, 33, 32, 100, 39, 43, 32, 33, 100, 38, 43, 43, 47, 100, 48, 43, 100, 55, 48, 37, 54, 48, 100, 51, 45, 48, 44, 100, Ascii.US, 116, 60, 113, 114, 104, 100, 116, 60, 112, 119, 104, 100, 116, 60, 112, 118, Ascii.EM, 100, 37, 48, 100, 62, 35, 43, 62, 56, 47, 62, 63, 123, 51, 62, 58, 63, 62, 41, 123, 47, 34, 43, 62, 123, 86, 92, 95, 95, 66, Ascii.DLE, 68, 73, SignedBytes.MAX_POWER_OF_TWO, 85, Ascii.DLE, 87, 66, 85, 81, 68, 85, 66, Ascii.DLE, 68, 88, 81, 94, Ascii.DLE, 1, Ascii.DLE, 94, 95, 68, Ascii.DLE, 84, 85, 83, 95, 84, 81, 82, 92, 85, 10, Ascii.DLE, 117, 97, 114, 126, 122, 125, 116, 51, 113, 122, 103, 51, 114, 117, 103, 118, 97, 51, 126, 124, 119, 118, 96, 51, 125, 124, 103, 51, 96, 118, 103, 51, 114, 96, 51, 118, 107, 99, 118, 112, 103, 118, 119, 49, 37, 54, 58, 62, 57, 48, 119, 53, 62, 35, 119, 50, 47, 39, 50, 52, 35, 50, 51, 119, 35, 56, 119, 53, 50, 119, 36, 50, 35, 93, 94, 94, 90, 68, 65, 17, 69, 72, 65, 84, 17, 86, 67, 84, 80, 69, 84, 67, 17, 69, 89, 80, 95, 17, 3, 17, 95, 94, 69, 17, 85, 84, 82, 94, 85, 80, 83, 93, 84, Ascii.VT, 17, 82, 94, 79, 79, 86, 81, 88, Ascii.US, 75, 70, 79, 90, Ascii.US, 80, 75, 87, 90, 77, Ascii.US, 75, 87, 94, 81, Ascii.US, Ascii.SI, Ascii.US, 81, 80, 75, Ascii.US, 76, 74, 79, 79, 80, 77, 75, 90, 91, 5, Ascii.US, 106, 118, 123, 121, 127, 114, 117, 118, 126, 127, 104, 58, 117, 124, 58, 110, 115, 119, 127, 58, 126, 117, 119, 123, 115, 116, 58, 110, 104, 123, 116, 105, 124, 117, 104, 119, 105, 58, 116, 117, 110, 58, 96, 127, 104, 117, 127, 126, 58, 117, 111, 110, 2, Ascii.NAK, 3, Ascii.EM, Ascii.DC4, 5, Ascii.NAK, 36, 9, 0, Ascii.NAK, 80, Ascii.ETB, 2, Ascii.NAK, 17, 4, Ascii.NAK, 2, 80, 4, Ascii.CAN, 17, Ascii.RS, 80, 66, 80, Ascii.EM, 3, 80, Ascii.RS, Ascii.US, 4, 80, Ascii.DC4, Ascii.NAK, 19, Ascii.US, Ascii.DC4, 17, Ascii.DC2, Ascii.FS, Ascii.NAK, 6, Ascii.GS, 82, 0, Ascii.ETB, 1, Ascii.ETB, 0, 4, Ascii.ETB, Ascii.SYN, 82, Ascii.DLE, Ascii.ESC, 6, 1, 82, Ascii.US, 7, 1, 6, 82, Ascii.DLE, Ascii.ETB, 82, 8, Ascii.ETB, 0, Ascii.GS, 82, 19, Ascii.DC4, 6, Ascii.ETB, 0, 82, Ascii.US, 19, 2, 2, Ascii.ESC, Ascii.FS, Ascii.NAK, 82, 17, Ascii.GS, 7, 2, Ascii.RS, Ascii.ESC, Ascii.FS, Ascii.NAK, 82, 1, 6, Ascii.ETB, 2, 1, 65, 90, 90, Ascii.NAK, 70, 93, 90, 71, 65, Ascii.NAK, 93, 80, 84, 81, 80, 71, Ascii.SI, Ascii.NAK};
    }

    public static void A09(int i, ZR zr) throws L9 {
        int iA02 = zr.A02(6) + 1;
        for (int i2 = 0; i2 < iA02; i2++) {
            int iA03 = zr.A02(16);
            if (iA03 != 0) {
                MV.A05(A07(85, 10, 54), A07(355, 41, 125) + iA03);
            } else {
                int iA04 = zr.A04() ? zr.A02(4) + 1 : 1;
                if (zr.A04()) {
                    int iA05 = zr.A02(8) + 1;
                    for (int i3 = 0; i3 < iA05; i3++) {
                        zr.A03(A00(i - 1));
                        zr.A03(A00(i - 1));
                    }
                }
                if (zr.A02(2) != 0) {
                    throw L9.A01(A07(491, 58, 48), null);
                }
                if (iA04 > 1) {
                    for (int i4 = 0; i4 < i; i4++) {
                        zr.A03(4);
                    }
                }
                for (int i5 = 0; i5 < iA04; i5++) {
                    zr.A03(8);
                    zr.A03(8);
                    zr.A03(8);
                    String[] strArr = A01;
                    if (strArr[1].charAt(20) != strArr[0].charAt(20)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A01;
                    strArr2[1] = "p1VKg473YIoEl67qOqhRDsbexTPOBoSx";
                    strArr2[0] = "wLMZnqvdTHQilTz4OPQyD0YtUnpClS8H";
                }
            }
        }
    }

    public static void A0A(ZR zr) throws L9 {
        int iA02 = zr.A02(6) + 1;
        for (int i = 0; i < iA02; i++) {
            int iA03 = zr.A02(16);
            switch (iA03) {
                case 0:
                    zr.A03(8);
                    zr.A03(16);
                    zr.A03(16);
                    zr.A03(6);
                    zr.A03(8);
                    int iA04 = zr.A02(4) + 1;
                    for (int i2 = 0; i2 < iA04; i2++) {
                        zr.A03(8);
                    }
                    break;
                case 1:
                    String[] strArr = A01;
                    if (strArr[7].charAt(12) != strArr[3].charAt(12)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A01;
                    strArr2[7] = "R9QSrAUJj5wzNqYOn0guqAltbWTaHU34";
                    strArr2[3] = "mkcGS6UH8ZuiN3MgqrVe1LrFKb74rQlB";
                    int iA05 = zr.A02(5);
                    int i3 = -1;
                    int[] iArr = new int[iA05];
                    for (int i4 = 0; i4 < iA05; i4++) {
                        iArr[i4] = zr.A02(4);
                        if (iArr[i4] > i3) {
                            i3 = iArr[i4];
                        }
                    }
                    int[] iArr2 = new int[i3 + 1];
                    for (int i5 = 0; i5 < iArr2.length; i5++) {
                        iArr2[i5] = zr.A02(3) + 1;
                        int iA06 = zr.A02(2);
                        if (iA06 > 0) {
                            zr.A03(8);
                        }
                        for (int i6 = 0; i6 < (1 << iA06); i6++) {
                            zr.A03(8);
                        }
                    }
                    zr.A03(2);
                    int iA07 = zr.A02(4);
                    int i7 = 0;
                    int i8 = 0;
                    for (int i9 = 0; i9 < iA05; i9++) {
                        i7 += iArr2[iArr[i9]];
                        while (i8 < i7) {
                            zr.A03(iA07);
                            i8++;
                        }
                    }
                    break;
                    break;
                default:
                    throw L9.A01(A07(199, 41, 114) + iA03, null);
            }
        }
    }

    public static void A0B(ZR zr) throws L9 {
        int iA02 = zr.A02(6) + 1;
        for (int i = 0; i < iA02; i++) {
            if (zr.A02(16) > 2) {
                throw L9.A01(A07(448, 43, 50), null);
            }
            zr.A03(24);
            zr.A03(24);
            zr.A03(24);
            int iA03 = zr.A02(6) + 1;
            if (A01[5].length() == 16) {
                throw new RuntimeException();
            }
            A01[4] = "4LakvCkGGTsKaO9zNFmvNb4OHtg8M";
            zr.A03(8);
            int[] iArr = new int[iA03];
            for (int i2 = 0; i2 < iA03; i2++) {
                int iA04 = 0;
                int iA05 = zr.A02(3);
                if (zr.A04()) {
                    iA04 = zr.A02(5);
                }
                iArr[i2] = (iA04 * 8) + iA05;
            }
            for (int i3 = 0; i3 < iA03; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        zr.A03(8);
                    }
                }
            }
        }
    }

    public static boolean A0C(int i, C1744Mk c1744Mk, boolean z) throws L9 {
        if (c1744Mk.A07() < 7) {
            if (z) {
                return false;
            }
            throw L9.A01(A07(549, 18, 119) + c1744Mk.A07(), null);
        }
        if (c1744Mk.A0I() != i) {
            if (z) {
                return false;
            }
            throw L9.A01(A07(178, 21, 25) + Integer.toHexString(i), null);
        }
        if (c1744Mk.A0I() == 118 && c1744Mk.A0I() == 111 && c1744Mk.A0I() == 114 && c1744Mk.A0I() == 98 && c1744Mk.A0I() == 105) {
            int iA0I = c1744Mk.A0I();
            String[] strArr = A01;
            if (strArr[2].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A01[4] = "Td5hkq7Sy845zGsmk1htgwwInW642";
            if (iA0I == 115) {
                if (A01[4].length() != 29) {
                    throw new RuntimeException();
                }
                A01[5] = "qjbyChnn8";
                return true;
            }
        }
        if (z) {
            return false;
        }
        throw L9.A01(A07(95, 28, 64), null);
    }

    public static ZU[] A0D(C1744Mk c1744Mk, int i) throws L9 {
        A0C(5, c1744Mk, false);
        int iA0I = c1744Mk.A0I() + 1;
        ZR zr = new ZR(c1744Mk.A0l());
        zr.A03(c1744Mk.A09() * 8);
        for (int i2 = 0; i2 < iA0I; i2++) {
            A03(zr);
        }
        int iA02 = zr.A02(6) + 1;
        for (int i3 = 0; i3 < iA02; i3++) {
            if (zr.A02(16) != 0) {
                throw L9.A01(A07(396, 52, 88), null);
            }
        }
        A0A(zr);
        A0B(zr);
        A09(i, zr);
        ZU[] zuArrA0E = A0E(zr);
        if (zr.A04()) {
            return zuArrA0E;
        }
        throw L9.A01(A07(240, 43, 81), null);
    }

    public static ZU[] A0E(ZR zr) {
        int iA02 = zr.A02(6) + 1;
        ZU[] zuArr = new ZU[iA02];
        for (int i = 0; i < iA02; i++) {
            zuArr[i] = new ZU(zr.A04(), zr.A02(16), zr.A02(16), zr.A02(8));
        }
        return zuArr;
    }
}
