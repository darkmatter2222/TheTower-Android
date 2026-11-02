package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MdtaMetadataEntry;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.demandOnly.e;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.am, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public abstract class AbstractC2121am {
    public static byte[] A00;
    public static String[] A01 = {"WouLADTbRBl5g5wHsyKoW814q8FsVw3u", "GMk", "C3NujB9Ldz00Bwj3cyq4S4IS2oxu64Ei", "WVtuG4yx95rlTOcNAZ52XHOp2OeNsFdy", "Lrxo22", "Yg6ao1hv68HXCXuOa76ikt7PfuXXmQjb", "ZO030w", "7Xo05YW8vTwyfPygL6chko6rbGomDMfX"};
    public static final byte[] A02;

    @MetaExoPlayerCustomization
    public static final int[] A03;

    static {
        A0P();
        A03 = new int[]{-3374493, -128628077, -2011932550, 38936541};
        A02 = N1.A1G(A0M(351, 8, 66));
    }

    public static float A00(C1744Mk c1744Mk, int i) {
        c1744Mk.A0f(i + 8);
        return c1744Mk.A0L() / c1744Mk.A0L();
    }

    public static int A01(int i) {
        if (i == 1936684398) {
            String[] strArr = A01;
            if (strArr[2].charAt(17) != strArr[5].charAt(17)) {
                A01[7] = "r6VY3GajZmUVQmoIixELkCPPvL23ZIon";
                return 1;
            }
        } else {
            if (i == 1986618469) {
                return 2;
            }
            if (i == 1952807028) {
                return 3;
            }
            String[] strArr2 = A01;
            if (strArr2[2].charAt(17) != strArr2[5].charAt(17)) {
                String[] strArr3 = A01;
                strArr3[2] = "R5xWUxHrBsQvt6Ep6qgFf8TgnPan7eNn";
                strArr3[5] = "IHPbobl29fB80e33uRQdDHlzAgkzsvNF";
                if (i == 1935832172) {
                    return 3;
                }
                String[] strArr4 = A01;
                if (strArr4[2].charAt(17) != strArr4[5].charAt(17)) {
                    A01[1] = "ERU";
                    if (i == 1937072756) {
                        return 3;
                    }
                } else if (i == 1937072756) {
                    return 3;
                }
                if (i == 1668047728) {
                    return 3;
                }
                return i == 1835365473 ? 5 : -1;
            }
        }
        throw new RuntimeException();
    }

    public static int A02(C1744Mk c1744Mk) {
        int iA0I = c1744Mk.A0I();
        int i = iA0I & 127;
        for (int i2 = 1; i2 < 4 && (iA0I & 128) == 128; i2++) {
            iA0I = c1744Mk.A0I();
            i = (i << 7) | (iA0I & 127);
        }
        return i;
    }

    public static int A03(C1744Mk c1744Mk) {
        c1744Mk.A0f(16);
        return c1744Mk.A0C();
    }

    public static int A04(C1744Mk c1744Mk, int i, int i2, int i3) throws L9 {
        int iA09 = c1744Mk.A09();
        AbstractC2045Yx.A01(iA09 >= i2, null);
        while (iA09 - i2 < i3) {
            c1744Mk.A0f(iA09);
            String[] strArr = A01;
            if (strArr[2].charAt(17) == strArr[5].charAt(17)) {
                throw new RuntimeException();
            }
            A01[1] = "Eq6";
            int iA0C = c1744Mk.A0C();
            AbstractC2045Yx.A01(iA0C > 0, A0M(1090, 30, 71));
            if (c1744Mk.A0C() == i) {
                return iA09;
            }
            iA09 += iA0C;
        }
        if (A01[1].length() != 3) {
            return -1;
        }
        String[] strArr2 = A01;
        strArr2[4] = "xsACpp";
        strArr2[6] = "b3zLD1";
        return -1;
    }

    public static long A05(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        c1744Mk.A0g(AbstractC2115ag.A03(c1744Mk.A0C()) != 0 ? 16 : 8);
        return c1744Mk.A0Q();
    }

    public static Pair<Long, String> A06(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        c1744Mk.A0g(iA03 == 0 ? 8 : 16);
        long jA0Q = c1744Mk.A0Q();
        c1744Mk.A0g(iA03 == 0 ? 4 : 8);
        int iA0M = c1744Mk.A0M();
        return Pair.create(Long.valueOf(jA0Q), A0M(0, 0, 21) + ((char) (((iA0M >> 10) & 31) + 96)) + ((char) (((iA0M >> 5) & 31) + 96)) + ((char) ((iA0M & 31) + 96)));
    }

    public static Pair<Integer, C2146bB> A07(C1744Mk c1744Mk, int i, int i2) throws L9 {
        int i3 = i + 8;
        int i4 = -1;
        int i5 = 0;
        String strA0W = null;
        Integer numValueOf = null;
        while (i3 - i < i2) {
            c1744Mk.A0f(i3);
            int iA0C = c1744Mk.A0C();
            int iA0C2 = c1744Mk.A0C();
            if (iA0C2 == 1718775137) {
                numValueOf = Integer.valueOf(c1744Mk.A0C());
            } else if (iA0C2 == 1935894637) {
                if (A01[1].length() != 3) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[3] = "WAFmEa1A8Ad2aH42oaDaZXEDlUM0azbf";
                strArr[0] = "WBvdHgVJgrWudD93dPfPHrAt9UQXj2zQ";
                c1744Mk.A0g(4);
                strA0W = c1744Mk.A0W(4);
            } else if (iA0C2 == 1935894633) {
                i4 = i3;
                i5 = iA0C;
            }
            i3 += iA0C;
        }
        if (!A0M(1082, 4, 30).equals(strA0W) && !A0M(1074, 4, 14).equals(strA0W) && !A0M(1086, 4, 92).equals(strA0W) && !A0M(1078, 4, 8).equals(strA0W)) {
            return null;
        }
        AbstractC2045Yx.A01(numValueOf != null, A0M(1120, 22, 88));
        AbstractC2045Yx.A01(i4 != -1, A0M(1142, 22, 13));
        C2146bB c2146bBA0K = A0K(c1744Mk, i4, i5, strA0W);
        AbstractC2045Yx.A01(c2146bBA0K != null, A0M(e.a.j, 22, 76));
        return Pair.create(numValueOf, (C2146bB) N1.A0f(c2146bBA0K));
    }

    public static Pair<Integer, C2146bB> A08(C1744Mk c1744Mk, int i, int i2) throws L9 {
        Pair<Integer, C2146bB> pairA07;
        int iA09 = c1744Mk.A09();
        while (iA09 - i < i2) {
            c1744Mk.A0f(iA09);
            int iA0C = c1744Mk.A0C();
            AbstractC2045Yx.A01(iA0C > 0, A0M(1090, 30, 71));
            if (c1744Mk.A0C() == 1936289382 && (pairA07 = A07(c1744Mk, iA09, iA0C)) != null) {
                return pairA07;
            }
            iA09 += iA0C;
        }
        return null;
    }

    public static Pair<long[], long[]> A09(PF pf) {
        PE peA03 = pf.A03(1701606260);
        if (peA03 == null) {
            return null;
        }
        C1744Mk c1744Mk = peA03.A00;
        c1744Mk.A0f(8);
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        int iA0L = c1744Mk.A0L();
        long[] jArr = new long[iA0L];
        String[] strArr = A01;
        if (strArr[2].charAt(17) == strArr[5].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[3] = "WeEg0ghuVecZrpZDHTwmbfFZ6yrEYkHG";
        strArr2[0] = "WuCxZnTDktUwvIVUFGWyBLBLH10b6kIo";
        long[] jArr2 = new long[iA0L];
        for (int i = 0; i < iA0L; i++) {
            jArr[i] = iA03 == 1 ? c1744Mk.A0R() : c1744Mk.A0Q();
            jArr2[i] = iA03 == 1 ? c1744Mk.A0P() : c1744Mk.A0C();
            if (c1744Mk.A0b() != 1) {
                throw new IllegalArgumentException(A0M(540, 23, 80));
            }
            c1744Mk.A0g(2);
        }
        return Pair.create(jArr, jArr2);
    }

    public static Pair<Metadata, Metadata> A0A(PE pe) {
        C1744Mk c1744Mk = pe.A00;
        c1744Mk.A0f(8);
        Metadata metadataA0E = null;
        Metadata metadataA0D = null;
        while (c1744Mk.A07() >= 8) {
            int iA09 = c1744Mk.A09();
            int iA0C = c1744Mk.A0C();
            int iA0C2 = c1744Mk.A0C();
            if (iA0C2 == 1835365473) {
                c1744Mk.A0f(iA09);
                metadataA0E = A0E(c1744Mk, iA09 + iA0C);
            } else if (iA0C2 == 1936553057) {
                c1744Mk.A0f(iA09);
                metadataA0D = A0D(c1744Mk, iA09 + iA0C);
            }
            c1744Mk.A0f(iA09 + iA0C);
        }
        Pair<Metadata, Metadata> pairCreate = Pair.create(metadataA0E, metadataA0D);
        if (A01[1].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "XcbSpEcbQBALh5ZDtWGaCidjgtjxLP7Z";
        strArr[5] = "cmSZK8Dp0z0EqXoyhrjLuIFj1VnYbekm";
        return pairCreate;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x016d A[PHI: r0 r1
  0x016d: PHI (r0v44 int) = (r0v20 int), (r0v46 int) binds: [B:67:0x01be, B:45:0x016b] A[DONT_GENERATE, DONT_INLINE]
  0x016d: PHI (r1v18 boolean) = (r1v7 boolean), (r1v20 boolean) binds: [B:67:0x01be, B:45:0x016b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x01c1  */
    public static ColorInfo A0B(C1744Mk c1744Mk) {
        boolean zA0H;
        int i;
        boolean z;
        KP kp = new KP();
        C1743Mj c1743Mj = new C1743Mj(c1744Mk.A0l());
        c1743Mj.A08(c1744Mk.A09() * 8);
        c1743Mj.A0A(1);
        c1743Mj.A04(3);
        c1743Mj.A09(6);
        c1743Mj.A0H();
        c1743Mj.A0H();
        c1743Mj.A09(13);
        c1743Mj.A07();
        int iA04 = c1743Mj.A04(4);
        String strA0M = A0M(178, 11, 23);
        if (iA04 != 1) {
            MV.A06(strA0M, A0M(593, 22, 24) + iA04);
            return kp.A03();
        }
        if (c1743Mj.A0H()) {
            MV.A06(strA0M, A0M(563, 30, 96));
            ColorInfo colorInfoA03 = kp.A03();
            String[] strArr = A01;
            if (strArr[3].charAt(0) != strArr[0].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[2] = "4UJYkfTsMaYiVTQXoMU2kZLOInrm0Iwu";
            strArr2[5] = "YfUXxdoFaSX5MTFKbB15ydi2A69p7nt5";
            return colorInfoA03;
        }
        boolean zA0H2 = c1743Mj.A0H();
        c1743Mj.A07();
        if (zA0H2 && c1743Mj.A04(8) > 127) {
            MV.A06(strA0M, A0M(189, 18, 15));
            return kp.A03();
        }
        int iA05 = c1743Mj.A04(3);
        c1743Mj.A07();
        if (c1743Mj.A0H()) {
            MV.A06(strA0M, A0M(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 40, 7));
            return kp.A03();
        }
        if (c1743Mj.A0H()) {
            MV.A06(strA0M, A0M(655, 36, 47));
            return kp.A03();
        }
        if (c1743Mj.A0H()) {
            MV.A06(strA0M, A0M(494, 46, 88));
            return kp.A03();
        }
        int iA06 = c1743Mj.A04(5);
        for (int i2 = 0; i2 <= iA06; i2++) {
            c1743Mj.A09(12);
            if (c1743Mj.A04(5) > 7) {
                c1743Mj.A07();
            }
        }
        int iA07 = c1743Mj.A04(4);
        int iA08 = c1743Mj.A04(4);
        c1743Mj.A09(iA07 + 1);
        c1743Mj.A09(iA08 + 1);
        if (c1743Mj.A0H()) {
            c1743Mj.A09(7);
        }
        c1743Mj.A09(7);
        String[] strArr3 = A01;
        if (strArr3[4].length() != strArr3[6].length()) {
            A01[1] = "YOm";
            zA0H = c1743Mj.A0H();
            i = 1;
            if (zA0H) {
                c1743Mj.A09(i);
            }
        } else {
            A01[7] = "nR5TiHDoUh6rDh5934rJks1wtLY6MfKx";
            zA0H = c1743Mj.A0H();
            i = 2;
            if (zA0H) {
                c1743Mj.A09(i);
            }
        }
        if ((c1743Mj.A0H() ? 2 : c1743Mj.A04(1)) > 0 && !c1743Mj.A0H()) {
            c1743Mj.A09(1);
        }
        if (zA0H) {
            c1743Mj.A09(3);
        }
        c1743Mj.A09(3);
        boolean zA0H3 = c1743Mj.A0H();
        if (iA05 == i && zA0H3) {
            c1743Mj.A07();
        }
        if (iA05 != 1) {
            boolean zA0H4 = c1743Mj.A0H();
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            A01[7] = "zwe3pIkVBBVeV8lpBC4YkgWiUY0HQWgC";
            if (zA0H4) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (c1743Mj.A0H()) {
            int iA09 = c1743Mj.A04(8);
            int iA010 = c1743Mj.A04(8);
            KP kpA00 = kp.A01(ColorInfo.A00(iA09)).A00(((z || iA09 != 1 || iA010 != 13 || c1743Mj.A04(8) != 0) ? c1743Mj.A04(1) : 1) != 1 ? 2 : 1);
            String[] strArr4 = A01;
            if (strArr4[4].length() != strArr4[6].length()) {
                throw new RuntimeException();
            }
            A01[7] = "tXtYnKCjcZ2j07uAw4QdkWwdMeParkK3";
            kpA00.A02(ColorInfo.A01(iA010));
        }
        return kp.A03();
    }

    public static Metadata A0C(C1744Mk c1744Mk, int i) {
        c1744Mk.A0g(8);
        ArrayList arrayList = new ArrayList();
        while (c1744Mk.A09() < i) {
            Id3Frame id3FrameA04 = AbstractC2132ax.A04(c1744Mk);
            if (id3FrameA04 != null) {
                arrayList.add(id3FrameA04);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Metadata A0D(C1744Mk c1744Mk, int i) {
        c1744Mk.A0g(12);
        while (c1744Mk.A09() < i) {
            int iA09 = c1744Mk.A09();
            int iA0C = c1744Mk.A0C();
            if (c1744Mk.A0C() == 1935766900) {
                if (iA0C < 14) {
                    return null;
                }
                c1744Mk.A0g(5);
                int iA0I = c1744Mk.A0I();
                if (iA0I != 12 && iA0I != 13) {
                    return null;
                }
                float f = iA0I == 12 ? 240.0f : 120.0f;
                c1744Mk.A0g(1);
                return new Metadata(new SmtaMetadataEntry(f, c1744Mk.A0I()));
            }
            c1744Mk.A0f(iA09 + iA0C);
        }
        return null;
    }

    public static Metadata A0E(C1744Mk c1744Mk, int i) {
        c1744Mk.A0g(8);
        A0Q(c1744Mk);
        while (c1744Mk.A09() < i) {
            int iA09 = c1744Mk.A09();
            int iA0C = c1744Mk.A0C();
            if (c1744Mk.A0C() == 1768715124) {
                c1744Mk.A0f(iA09);
                return A0C(c1744Mk, iA09 + iA0C);
            }
            c1744Mk.A0f(iA09 + iA0C);
        }
        return null;
    }

    public static Metadata A0F(PF pf) {
        PE peA03 = pf.A03(1751411826);
        PE peA04 = pf.A03(1801812339);
        PE peA05 = pf.A03(1768715124);
        if (peA03 == null || peA04 == null || peA05 == null || A03(peA03.A00) != 1835299937) {
            return null;
        }
        C1744Mk c1744Mk = peA04.A00;
        c1744Mk.A0f(12);
        int iA0C = c1744Mk.A0C();
        String[] strArr = new String[iA0C];
        for (int i = 0; i < iA0C; i++) {
            int iA0C2 = c1744Mk.A0C();
            c1744Mk.A0g(4);
            strArr[i] = c1744Mk.A0W(iA0C2 - 8);
        }
        C1744Mk c1744Mk2 = peA05.A00;
        c1744Mk2.A0f(8);
        ArrayList arrayList = new ArrayList();
        while (true) {
            int iA07 = c1744Mk2.A07();
            String[] strArr2 = A01;
            if (strArr2[3].charAt(0) != strArr2[0].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr3 = A01;
            strArr3[3] = "W6whw8KCI5GVkcQmUBH1LClL3nJKWtM6";
            strArr3[0] = "Wth3VAdKagh3f4d85VOett7mvpgjX203";
            if (iA07 <= 8) {
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new Metadata(arrayList);
            }
            int iA09 = c1744Mk2.A09();
            int iA0C3 = c1744Mk2.A0C();
            int iA0C4 = c1744Mk2.A0C() - 1;
            if (iA0C4 < 0 || iA0C4 >= strArr.length) {
                MV.A07(A0M(178, 11, 23), A0M(359, 41, 125) + iA0C4);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryA09 = AbstractC2132ax.A09(c1744Mk2, iA09 + iA0C3, strArr[iA0C4]);
                if (mdtaMetadataEntryA09 != null) {
                    arrayList.add(mdtaMetadataEntryA09);
                }
            }
            c1744Mk2.A0f(iA09 + iA0C3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x006a  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:38:0x010b  */
    /* JADX WARN: Code duplicated, block: B:39:0x010d  */
    public static C2117ai A0G(C1744Mk c1744Mk, int i) {
        long jA0Q;
        long jA0Q2;
        c1744Mk.A0f(i + 8 + 4);
        c1744Mk.A0g(1);
        A02(c1744Mk);
        c1744Mk.A0g(2);
        int iA0I = c1744Mk.A0I();
        if ((iA0I & 128) != 0) {
            c1744Mk.A0g(2);
        }
        int i2 = iA0I & 64;
        if (A01[1].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "W1gdzr7RracSqvuSMjmB55Y1kGxj1GCP";
        strArr[0] = "WHJEB58yopvh0NgzKkAcEtIqQhlpsFde";
        if (i2 != 0) {
            c1744Mk.A0g(c1744Mk.A0I());
        }
        int i3 = iA0I & 32;
        String[] strArr2 = A01;
        if (strArr2[2].charAt(17) != strArr2[5].charAt(17)) {
            String[] strArr3 = A01;
            strArr3[4] = "jwHKq4";
            strArr3[6] = "QSWgcx";
            if (i3 != 0) {
                c1744Mk.A0g(2);
            }
        } else if (i3 != 0) {
            c1744Mk.A0g(2);
        }
        c1744Mk.A0g(1);
        A02(c1744Mk);
        String strA05 = L8.A05(c1744Mk.A0I());
        if (!A0M(947, 10, 59).equals(strA05)) {
            String[] strArr4 = A01;
            if (strArr4[4].length() == strArr4[6].length()) {
                String[] strArr5 = A01;
                strArr5[2] = "xYZjPX0YhfsdmbjjhGhamFcVb3rDth8t";
                strArr5[5] = "x2GsbM9p3ZdJcUOEkPFozk1Y66buufrn";
                if (!A0M(989, 13, 6).equals(strA05)) {
                    if (!A0M(1002, 16, 103).equals(strA05)) {
                        c1744Mk.A0g(4);
                        jA0Q = c1744Mk.A0Q();
                        jA0Q2 = c1744Mk.A0Q();
                        c1744Mk.A0g(1);
                        int iA02 = A02(c1744Mk);
                        byte[] bArr = new byte[iA02];
                        c1744Mk.A0k(bArr, 0, iA02);
                        if (jA0Q2 <= 0) {
                            jA0Q2 = -1;
                        }
                        if (jA0Q <= 0) {
                            jA0Q = -1;
                        }
                        return new C2117ai(strA05, bArr, jA0Q2, jA0Q);
                    }
                }
            } else if (!A0M(989, 13, 6).equals(strA05)) {
                if (!A0M(1002, 16, 103).equals(strA05)) {
                    c1744Mk.A0g(4);
                    jA0Q = c1744Mk.A0Q();
                    jA0Q2 = c1744Mk.A0Q();
                    c1744Mk.A0g(1);
                    int iA03 = A02(c1744Mk);
                    byte[] bArr2 = new byte[iA03];
                    c1744Mk.A0k(bArr2, 0, iA03);
                    if (jA0Q2 <= 0) {
                        jA0Q2 = -1;
                    }
                    if (jA0Q <= 0) {
                        jA0Q = -1;
                    }
                    return new C2117ai(strA05, bArr2, jA0Q2, jA0Q);
                }
            }
        }
        return new C2117ai(strA05, null, -1L, -1L);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0179  */
    /* JADX WARN: Code duplicated, block: B:102:0x0189  */
    /* JADX WARN: Code duplicated, block: B:103:0x018e  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c8  */
    public static C2119ak A0H(C1744Mk c1744Mk, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws L9 {
        c1744Mk.A0f(12);
        int iA0C = c1744Mk.A0C();
        C2119ak c2119ak = new C2119ak(iA0C);
        for (int i3 = 0; i3 < iA0C; i3++) {
            int iA09 = c1744Mk.A09();
            int iA0C2 = c1744Mk.A0C();
            AbstractC2045Yx.A01(iA0C2 > 0, A0M(1090, 30, 71));
            int iA0C3 = c1744Mk.A0C();
            if (iA0C3 != 1635148593 && iA0C3 != 1635148595 && iA0C3 != 1701733238) {
                String[] strArr = A01;
                if (strArr[3].charAt(0) == strArr[0].charAt(0)) {
                    String[] strArr2 = A01;
                    strArr2[4] = "8W98LQ";
                    strArr2[6] = "cMLNsA";
                    if (iA0C3 != 1831958048) {
                        String[] strArr3 = A01;
                        if (strArr3[2].charAt(17) != strArr3[5].charAt(17)) {
                            String[] strArr4 = A01;
                            strArr4[3] = "WH5Sf6L7Mgfl0EfT16ALTTBbyQq1uPuf";
                            strArr4[0] = "WxiKHLXaY3s8hh6MaycBW9ZqRCqkMeC7";
                            if (iA0C3 == 1836070006 || iA0C3 == 1752589105 || iA0C3 == 1751479857 || iA0C3 == 1932670515 || iA0C3 == 1211250227 || iA0C3 == 1987063864 || iA0C3 == 1987063865 || iA0C3 == 1635135537 || iA0C3 == 1685479798 || iA0C3 == 1685479729 || iA0C3 == 1685481573 || iA0C3 == 1685481521) {
                                A0R(c1744Mk, iA0C3, iA09, iA0C2, i, i2, drmInitData, c2119ak, i3);
                            } else if (iA0C3 == 1836069985 || iA0C3 == 1701733217 || iA0C3 == 1633889587 || iA0C3 == 1700998451 || iA0C3 == 1633889588 || iA0C3 == 1835823201 || iA0C3 == 1685353315 || iA0C3 == 1685353317 || iA0C3 == 1685353320) {
                                if (A01[1].length() != 3) {
                                    A0T(c1744Mk, iA0C3, iA09, iA0C2, i, str, z, drmInitData, c2119ak, i3);
                                } else {
                                    A01[1] = "14Z";
                                    A0T(c1744Mk, iA0C3, iA09, iA0C2, i, str, z, drmInitData, c2119ak, i3);
                                }
                            } else if (A01[1].length() == 3) {
                                A01[7] = "gUkPGA6NNTJN6XgBKM15kOxkv7RlAYRp";
                                if (iA0C3 == 1685353324 || iA0C3 == 1685353336 || iA0C3 == 1935764850 || iA0C3 == 1935767394 || iA0C3 == 1819304813 || iA0C3 == 1936684916 || iA0C3 == 1953984371 || iA0C3 == 778924082 || iA0C3 == 778924083 || iA0C3 == 1835557169 || iA0C3 == 1835560241 || iA0C3 == 1634492771 || iA0C3 == 1634492791 || iA0C3 == 1970037111 || iA0C3 == 1332770163 || iA0C3 == 1716281667) {
                                    if (A01[1].length() != 3) {
                                        A0T(c1744Mk, iA0C3, iA09, iA0C2, i, str, z, drmInitData, c2119ak, i3);
                                    } else {
                                        A01[1] = "14Z";
                                        A0T(c1744Mk, iA0C3, iA09, iA0C2, i, str, z, drmInitData, c2119ak, i3);
                                    }
                                } else if (iA0C3 != 1414810956) {
                                    String[] strArr5 = A01;
                                    if (strArr5[2].charAt(17) != strArr5[5].charAt(17)) {
                                        A01[7] = "hUtMndgVazsSelVCIE05k09ZDnc2gLfj";
                                        if (iA0C3 == 1954034535 || iA0C3 == 2004251764) {
                                            iA09 = iA09;
                                            iA0C2 = iA0C2;
                                            A0S(c1744Mk, iA0C3, iA09, iA0C2, i, str, c2119ak);
                                        } else {
                                            String[] strArr6 = A01;
                                            if (strArr6[2].charAt(17) != strArr6[5].charAt(17)) {
                                                String[] strArr7 = A01;
                                                strArr7[3] = "W2BVnGy7G6pauXvdZavifyyUYHTRkraH";
                                                strArr7[0] = "WQr0eM6Jd7jmlGhD91Om6FQn9Nhx2btK";
                                                if (iA0C3 == 1937010800 || iA0C3 == 1664495672) {
                                                    iA09 = iA09;
                                                    iA0C2 = iA0C2;
                                                    A0S(c1744Mk, iA0C3, iA09, iA0C2, i, str, c2119ak);
                                                } else {
                                                    String[] strArr8 = A01;
                                                    if (strArr8[3].charAt(0) == strArr8[0].charAt(0)) {
                                                        String[] strArr9 = A01;
                                                        strArr9[4] = "o0Xshv";
                                                        strArr9[6] = "ZeJJ7B";
                                                        if (iA0C3 == 1835365492) {
                                                            A0U(c1744Mk, iA0C3, iA09, i, c2119ak);
                                                        } else if (iA0C3 == 1667329389) {
                                                            c2119ak.A02 = new C1689Ke().A0g(i).A11(A0M(IronSourceError.ERROR_NT_INSTANCE_LOAD_EMPTY_ADAPTER, 27, 94)).A14();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    iA09 = iA09;
                                    iA0C2 = iA0C2;
                                    A0S(c1744Mk, iA0C3, iA09, iA0C2, i, str, c2119ak);
                                }
                            }
                        }
                    } else {
                        A0R(c1744Mk, iA0C3, iA09, iA0C2, i, i2, drmInitData, c2119ak, i3);
                    }
                }
                throw new RuntimeException();
            }
            A0R(c1744Mk, iA0C3, iA09, iA0C2, i, i2, drmInitData, c2119ak, i3);
            c1744Mk.A0f(iA09 + iA0C2);
        }
        return c2119ak;
    }

    public static C2120al A0I(C1744Mk c1744Mk) {
        long jA0Q;
        int i;
        c1744Mk.A0f(8);
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        c1744Mk.A0g(iA03 == 0 ? 8 : 16);
        int iA0C = c1744Mk.A0C();
        c1744Mk.A0g(4);
        boolean z = true;
        int iA09 = c1744Mk.A09();
        int i2 = iA03 == 0 ? 4 : 8;
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = c1744Mk.A0l()[iA09 + i3];
            if (A01[7].charAt(20) != 'k') {
                throw new RuntimeException();
            }
            A01[7] = "oLrIzloc2hYanTGtS7YtknJwhZrQTqpe";
            if (b != -1) {
                z = false;
                break;
            }
        }
        if (z) {
            c1744Mk.A0g(i2);
            jA0Q = -9223372036854775807L;
        } else {
            jA0Q = iA03 == 0 ? c1744Mk.A0Q() : c1744Mk.A0R();
            if (jA0Q == 0) {
                jA0Q = -9223372036854775807L;
            }
        }
        c1744Mk.A0g(16);
        int iA0C2 = c1744Mk.A0C();
        int iA0C3 = c1744Mk.A0C();
        c1744Mk.A0g(4);
        int iA0C4 = c1744Mk.A0C();
        int iA0C5 = c1744Mk.A0C();
        if (iA0C2 == 0 && iA0C3 == 65536 && iA0C4 == (-65536) && iA0C5 == 0) {
            i = 90;
        } else if (iA0C2 == 0 && iA0C3 == (-65536) && iA0C4 == 65536 && iA0C5 == 0) {
            i = 270;
        } else {
            i = (iA0C2 == (-65536) && iA0C3 == 0 && iA0C4 == 0 && iA0C5 == (-65536)) ? 180 : 0;
        }
        return new C2120al(iA0C, jA0Q, i);
    }

    @MetaExoPlayerCustomization
    public static C2145bA A0J(PF pf, PE pe, long j, DrmInitData drmInitData, boolean z, boolean z2) throws L9 {
        Pair<long[], long[]> pairA09;
        long j2 = j;
        PF pf2 = (PF) AbstractC1722Ln.A01(pf.A02(1835297121));
        int iA01 = A01(A03(((PE) AbstractC1722Ln.A01(pf2.A03(1751411826))).A00));
        if (iA01 == -1) {
            return null;
        }
        C2120al c2120alA0I = A0I(((PE) AbstractC1722Ln.A01(pf.A03(1953196132))).A00);
        if (j2 == -9223372036854775807L) {
            j2 = c2120alA0I.A02;
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "xTME0L";
            strArr[6] = "2a08Z0";
        }
        long jA05 = A05(pe.A00);
        long jA0U = j2 == -9223372036854775807L ? -9223372036854775807L : N1.A0U(j2, 1000000L, jA05);
        PF pf3 = (PF) AbstractC1722Ln.A01(((PF) AbstractC1722Ln.A01(pf2.A02(1835626086))).A02(1937007212));
        Pair<Long, String> pairA06 = A06(((PE) AbstractC1722Ln.A01(pf2.A03(1835296868))).A00);
        PE peA03 = pf3.A03(1937011556);
        if (peA03 == null) {
            throw L9.A01(A0M(288, 63, 2), null);
        }
        C2119ak c2119akA0H = A0H(peA03.A00, c2120alA0I.A00, c2120alA0I.A01, (String) pairA06.second, drmInitData, z2);
        long[] jArr = null;
        long[] jArr2 = null;
        if (!z) {
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            A01[7] = "1jkQAV9F2Faz7Lw0QBj6kQN0MLyuueWG";
            PF pfA02 = pf.A02(1701082227);
            if (pfA02 != null && (pairA09 = A09(pfA02)) != null) {
                jArr = (long[]) pairA09.first;
                jArr2 = (long[]) pairA09.second;
            }
        }
        if (c2119akA0H.A02 == null) {
            return null;
        }
        return new C2145bA(c2120alA0I.A00, iA01, ((Long) pairA06.first).longValue(), jA05, jA0U, c2119akA0H.A02, c2119akA0H.A01, c2119akA0H.A03, c2119akA0H.A00, jArr, jArr2);
    }

    public static C2146bB A0K(C1744Mk c1744Mk, int i, int i2, String str) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            c1744Mk.A0f(i3);
            int iA0C = c1744Mk.A0C();
            if (c1744Mk.A0C() == 1952804451) {
                int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
                c1744Mk.A0g(1);
                int i4 = 0;
                int i5 = 0;
                if (iA03 == 0) {
                    c1744Mk.A0g(1);
                } else {
                    int iA0I = c1744Mk.A0I();
                    i4 = (iA0I & 240) >> 4;
                    i5 = iA0I & 15;
                }
                int iA0I2 = c1744Mk.A0I();
                String[] strArr = A01;
                if (strArr[2].charAt(17) == strArr[5].charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[3] = "WR5yQE07EPwXeStrRv7wUYRzVgUyk0tI";
                strArr2[0] = "WlSh861620yb3Z9O8L0R1EJEh8XVCL9Y";
                boolean z = iA0I2 == 1;
                int iA0I3 = c1744Mk.A0I();
                byte[] bArr = new byte[16];
                c1744Mk.A0k(bArr, 0, bArr.length);
                byte[] bArr2 = null;
                if (z && iA0I3 == 0) {
                    int iA0I4 = c1744Mk.A0I();
                    bArr2 = new byte[iA0I4];
                    c1744Mk.A0k(bArr2, 0, iA0I4);
                }
                return new C2146bB(z, str, iA0I3, bArr, i4, i5, bArr2);
            }
            i3 += iA0C;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x042a  */
    /* JADX WARN: Code duplicated, block: B:140:0x043e  */
    /* JADX WARN: Code duplicated, block: B:145:0x0455  */
    /* JADX WARN: Code duplicated, block: B:147:0x045e  */
    /* JADX WARN: Code duplicated, block: B:161:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:181:0x0553  */
    /* JADX WARN: Code duplicated, block: B:49:0x0179  */
    /* JADX WARN: Code duplicated, block: B:52:0x018d  */
    @MetaExoPlayerCustomization
    public static C2148bD A0L(C2145bA c2145bA, PF pf, Z6 z6) throws L9 {
        InterfaceC2118aj pc;
        boolean z;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        String strA0M;
        long j;
        C2145bA c2145bA2;
        boolean z2;
        String[] strArr;
        PE peA03 = pf.A03(1937011578);
        if (peA03 != null) {
            pc = new PD(peA03, c2145bA.A07);
        } else {
            PE peA04 = pf.A03(1937013298);
            if (peA04 == null) {
                throw L9.A01(A0M(400, 42, 25), null);
            }
            pc = new PC(peA04);
        }
        int iA9Y = pc.A9Y();
        if (iA9Y == 0) {
            return new C2148bD(c2145bA, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        boolean z3 = false;
        PE peA05 = pf.A03(1937007471);
        String[] strArr2 = A01;
        if (strArr2[4].length() == strArr2[6].length()) {
            String[] strArr3 = A01;
            strArr3[4] = "acd6Re";
            strArr3[6] = "giJikF";
            if (peA05 == null) {
                z3 = true;
                peA05 = (PE) AbstractC1722Ln.A01(pf.A03(1668232756));
            } else {
                String[] strArr4 = A01;
                if (strArr4[3].charAt(0) != strArr4[0].charAt(0)) {
                    A01[7] = "aJYPh09h6r3fNySwgjeXkeykr4Yh5Ev0";
                } else {
                    String[] strArr5 = A01;
                    strArr5[3] = "WnwoC1cOipD89cI3pZ3LLz3xjUGSopBK";
                    strArr5[0] = "WpsAhLVzabZQFmfOBPicQbJgwF4BMwum";
                }
            }
            C1744Mk c1744Mk = peA05.A00;
            C1744Mk c1744Mk2 = ((PE) AbstractC1722Ln.A01(pf.A03(1937011555))).A00;
            C1744Mk c1744Mk3 = ((PE) AbstractC1722Ln.A01(pf.A03(1937011827))).A00;
            PE peA06 = pf.A03(1937011571);
            C1744Mk c1744Mk4 = peA06 != null ? peA06.A00 : null;
            PE peA07 = pf.A03(1668576371);
            C1744Mk c1744Mk5 = peA07 != null ? peA07.A00 : null;
            C2116ah c2116ah = new C2116ah(c1744Mk2, c1744Mk, z3);
            c1744Mk3.A0f(12);
            int iA0L = c1744Mk3.A0L() - 1;
            int iA0L2 = c1744Mk3.A0L();
            int iA0L3 = c1744Mk3.A0L();
            int iA0L4 = 0;
            int iA0L5 = 0;
            int iA0C = 0;
            if (c1744Mk5 != null) {
                c1744Mk5.A0f(12);
                iA0L5 = c1744Mk5.A0L();
            }
            int iA0L6 = -1;
            int iA0L7 = 0;
            if (c1744Mk4 != null) {
                c1744Mk4.A0f(12);
                iA0L7 = c1744Mk4.A0L();
                if (iA0L7 > 0) {
                    iA0L6 = c1744Mk4.A0L() - 1;
                } else {
                    c1744Mk4 = null;
                }
            }
            int iA8l = pc.A8l();
            String str = c2145bA.A07.A0W;
            if (iA8l == -1) {
                z = false;
            } else if (!A0M(967, 9, 38).equals(str) && !A0M(897, 15, 80).equals(str)) {
                String strA0M2 = A0M(882, 15, 6);
                String[] strArr6 = A01;
                if (strArr6[4].length() != strArr6[6].length()) {
                    throw new RuntimeException();
                }
                String[] strArr7 = A01;
                strArr7[3] = "WniFRR4zQHvRCxNWaBtqQFRiaQwJFVIF";
                strArr7[0] = "W5AV9Rd10firRyVnlNtuef3kFPsuDGre";
                if (!strA0M2.equals(str)) {
                    z = false;
                } else if (iA0L != 0) {
                    z = false;
                } else {
                    z = false;
                }
            } else if (iA0L != 0 && iA0L5 == 0 && iA0L7 == 0) {
                z = true;
            } else {
                z = false;
            }
            int i = 0;
            long j2 = 0;
            if (z) {
                long[] jArr = new long[c2116ah.A05];
                int[] iArr = new int[c2116ah.A05];
                while (c2116ah.A02()) {
                    jArr[c2116ah.A00] = c2116ah.A02;
                    iArr[c2116ah.A00] = c2116ah.A01;
                }
                C2124ap c2124apA00 = AbstractC2125aq.A00(iA8l, jArr, iArr, iA0L3);
                jArrCopyOf = c2124apA00.A04;
                iArrCopyOf = c2124apA00.A03;
                i = c2124apA00.A00;
                jArrCopyOf2 = c2124apA00.A05;
                iArrCopyOf2 = c2124apA00.A02;
                j = c2124apA00.A01;
                c2145bA2 = c2145bA;
            } else {
                jArrCopyOf = new long[iA9Y];
                iArrCopyOf = new int[iA9Y];
                jArrCopyOf2 = new long[iA9Y];
                iArrCopyOf2 = new int[iA9Y];
                long j3 = 0;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    strA0M = A0M(178, 11, 23);
                    if (i3 >= iA9Y) {
                        i3 = iA9Y;
                        break;
                    }
                    boolean zA02 = true;
                    while (i2 == 0) {
                        zA02 = c2116ah.A02();
                        if (!zA02) {
                            break;
                        }
                        j3 = c2116ah.A02;
                        i2 = c2116ah.A01;
                    }
                    if (!zA02) {
                        MV.A07(strA0M, A0M(442, 28, 25));
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i3);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i3);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i3);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i3);
                        break;
                    }
                    if (c1744Mk5 != null) {
                        while (iA0L4 == 0 && iA0L5 > 0) {
                            iA0L4 = c1744Mk5.A0L();
                            iA0C = c1744Mk5.A0C();
                            iA0L5--;
                        }
                        iA0L4--;
                    }
                    jArrCopyOf[i3] = j3;
                    iArrCopyOf[i3] = pc.AIf();
                    if (iArrCopyOf[i3] > i) {
                        i = iArrCopyOf[i3];
                    }
                    long j4 = j2 + ((long) iA0C);
                    String[] strArr8 = A01;
                    if (strArr8[2].charAt(17) != strArr8[5].charAt(17)) {
                        String[] strArr9 = A01;
                        strArr9[2] = "kenJKBSODEWajqjRkQGsJli4RRbqAKbN";
                        strArr9[5] = "gINrJp4J5bcoL2mQYNShQcOK3s8R8DIB";
                        jArrCopyOf2[i3] = j4;
                        iArrCopyOf2[i3] = c1744Mk4 == null ? 1 : 0;
                        if (i3 == iA0L6) {
                            iArrCopyOf2[i3] = 1;
                            iA0L7--;
                            if (iA0L7 > 0) {
                                iA0L6 = ((C1744Mk) AbstractC1722Ln.A01(c1744Mk4)).A0L() - 1;
                            }
                        }
                        j2 += (long) iA0L3;
                        iA0L2--;
                        if (iA0L2 == 0 && iA0L > 0) {
                            iA0L2 = c1744Mk3.A0L();
                            iA0L3 = c1744Mk3.A0C();
                            iA0L--;
                        }
                        j3 += (long) iArrCopyOf[i3];
                        i2--;
                        i3++;
                    }
                }
                j = j2 + ((long) iA0C);
                boolean z4 = true;
                if (c1744Mk5 != null) {
                    while (iA0L5 > 0) {
                        if (c1744Mk5.A0L() != 0) {
                            z4 = false;
                            break;
                        }
                        c1744Mk5.A0C();
                        iA0L5--;
                    }
                }
                if (iA0L7 == 0 && iA0L2 == 0 && i2 == 0 && iA0L == 0 && iA0L4 == 0 && z4) {
                    c2145bA2 = c2145bA;
                } else {
                    c2145bA2 = c2145bA;
                    MV.A07(strA0M, A0M(InterfaceC3669k1.c.b.h, 32, 99) + c2145bA2.A00 + A0M(144, 34, 52) + iA0L7 + A0M(14, 35, 18) + iA0L2 + A0M(85, 26, 125) + i2 + A0M(111, 33, 70) + iA0L + A0M(49, 36, 121) + iA0L4 + (!z4 ? A0M(0, 14, 58) : A0M(0, 0, 21)));
                }
                iA9Y = i3;
            }
            long jA0U = N1.A0U(j, 1000000L, c2145bA2.A06);
            if (c2145bA2.A08 == null) {
                N1.A13(jArrCopyOf2, 1000000L, c2145bA2.A06);
                return new C2148bD(c2145bA, jArrCopyOf, iArrCopyOf, i, jArrCopyOf2, iArrCopyOf2, jA0U);
            }
            if (c2145bA2.A08.length == 1 && c2145bA2.A03 == 1 && jArrCopyOf2.length >= 2) {
                long j5 = ((long[]) AbstractC1722Ln.A01(c2145bA2.A09))[0];
                long jA0U2 = j5 + N1.A0U(c2145bA2.A08[0], c2145bA2.A06, c2145bA2.A05);
                if (A0V(jArrCopyOf2, j, j5, jA0U2)) {
                    long jA0U3 = N1.A0U(j5 - jArrCopyOf2[0], c2145bA2.A07.A0G, c2145bA2.A06);
                    long jA0U4 = N1.A0U(j - jA0U2, c2145bA2.A07.A0G, c2145bA2.A06);
                    if (jA0U3 != 0 || jA0U4 != 0) {
                        String[] strArr10 = A01;
                        if (strArr10[4].length() == strArr10[6].length()) {
                            String[] strArr11 = A01;
                            strArr11[2] = "Hik1iXvfs1LPy2KbW4ubRxWemgMnRYNE";
                            strArr11[5] = "Tg1KHdpyORnIPRkxrd7HH1fP4A0NbMNX";
                            if (jA0U3 <= 2147483647L) {
                                strArr = A01;
                                if (strArr[4].length() != strArr[6].length()) {
                                    throw new RuntimeException();
                                }
                                A01[7] = "x3iRsFcv6O4Gb8xjCXBtkuyfz9dQ4V3e";
                                if (jA0U4 <= 2147483647L) {
                                    z6.A00 = (int) jA0U3;
                                    z6.A01 = (int) jA0U4;
                                    N1.A13(jArrCopyOf2, 1000000L, c2145bA2.A06);
                                    return new C2148bD(c2145bA, jArrCopyOf, iArrCopyOf, i, jArrCopyOf2, iArrCopyOf2, N1.A0U(c2145bA2.A08[0], 1000000L, c2145bA2.A05));
                                }
                            }
                        } else if (jA0U3 <= 2147483647L) {
                            strArr = A01;
                            if (strArr[4].length() != strArr[6].length()) {
                                throw new RuntimeException();
                            }
                            A01[7] = "x3iRsFcv6O4Gb8xjCXBtkuyfz9dQ4V3e";
                            if (jA0U4 <= 2147483647L) {
                                z6.A00 = (int) jA0U3;
                                z6.A01 = (int) jA0U4;
                                N1.A13(jArrCopyOf2, 1000000L, c2145bA2.A06);
                                return new C2148bD(c2145bA, jArrCopyOf, iArrCopyOf, i, jArrCopyOf2, iArrCopyOf2, N1.A0U(c2145bA2.A08[0], 1000000L, c2145bA2.A05));
                            }
                        }
                    }
                }
            }
            if (c2145bA2.A08.length == 1 && c2145bA2.A08[0] == 0) {
                long j6 = ((long[]) AbstractC1722Ln.A01(c2145bA2.A09))[0];
                for (int i4 = 0; i4 < jArrCopyOf2.length; i4++) {
                    jArrCopyOf2[i4] = N1.A0U(jArrCopyOf2[i4] - j6, 1000000L, c2145bA2.A06);
                }
                return new C2148bD(c2145bA, jArrCopyOf, iArrCopyOf, i, jArrCopyOf2, iArrCopyOf2, N1.A0U(j - j6, 1000000L, c2145bA2.A06));
            }
            int i5 = c2145bA2.A03;
            String[] strArr12 = A01;
            if (strArr12[2].charAt(17) != strArr12[5].charAt(17)) {
                A01[1] = "KHJ";
                if (i5 == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (i5 == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i6 = 0;
            int i7 = 0;
            boolean z5 = false;
            int[] iArr2 = new int[c2145bA2.A08.length];
            int[] iArr3 = new int[c2145bA2.A08.length];
            long[] jArr2 = (long[]) AbstractC1722Ln.A01(c2145bA2.A09);
            for (int i8 = 0; i8 < c2145bA2.A08.length; i8++) {
                long j7 = jArr2[i8];
                if (j7 != -1) {
                    long jA0U5 = N1.A0U(c2145bA2.A08[i8], c2145bA2.A06, c2145bA2.A05);
                    iArr2[i8] = N1.A0L(jArrCopyOf2, j7, true, true);
                    iArr3[i8] = N1.A0K(jArrCopyOf2, j7 + jA0U5, z2, false);
                    while (iArr2[i8] < iArr3[i8] && (iArrCopyOf2[iArr2[i8]] & 1) == 0) {
                        iArr2[i8] = iArr2[i8] + 1;
                    }
                    i6 += iArr3[i8] - iArr2[i8];
                    z5 |= i7 != iArr2[i8];
                    i7 = iArr3[i8];
                }
            }
            boolean z7 = z5 | (i6 != iA9Y);
            long[] jArr3 = z7 ? new long[i6] : jArrCopyOf;
            int[] iArr4 = z7 ? new int[i6] : iArrCopyOf;
            if (z7) {
                i = 0;
            }
            int[] iArr5 = z7 ? new int[i6] : iArrCopyOf2;
            long[] jArr4 = new long[i6];
            long j8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i10 < c2145bA2.A08.length) {
                long j9 = c2145bA2.A09[i10];
                int i11 = iArr2[i10];
                int i12 = iArr3[i10];
                if (z7) {
                    int i13 = i12 - i11;
                    System.arraycopy(jArrCopyOf, i11, jArr3, i9, i13);
                    System.arraycopy(iArrCopyOf, i11, iArr4, i9, i13);
                    System.arraycopy(iArrCopyOf2, i11, iArr5, i9, i13);
                } else if (A01[1].length() != 3) {
                    String[] strArr13 = A01;
                    strArr13[3] = "WLtmSpKml2RnWXzYwEjTMvZ4vu0LkA63";
                    strArr13[0] = "WKxH4ugZxqBDjB1qVUlF9exvED5IHwCq";
                } else {
                    A01[1] = "wKq";
                }
                while (i11 < i12) {
                    jArr4[i9] = N1.A0U(j8, 1000000L, c2145bA2.A05) + N1.A0U(Math.max(0L, jArrCopyOf2[i11] - j9), 1000000L, c2145bA2.A06);
                    if (z7) {
                        int i14 = iArr4[i9];
                        String[] strArr14 = A01;
                        if (strArr14[2].charAt(17) != strArr14[5].charAt(17)) {
                            String[] strArr15 = A01;
                            strArr15[2] = "uKAbynIWXm0VrLaf4oD02U8OQInfZRcW";
                            strArr15[5] = "93qEkNtCJDvZjTIakDclzXV2O0lAvy10";
                            if (i14 > i) {
                                i = iArrCopyOf[i11];
                            }
                        }
                    }
                    i9++;
                    i11++;
                }
                j8 += c2145bA2.A08[i10];
                i10++;
                if (A01[7].charAt(20) != 'k') {
                    String[] strArr16 = A01;
                    strArr16[3] = "WjpjVdBCDnnd6bE32gSezSufCqYDNplr";
                    strArr16[0] = "W9l6Wyk7YTCpraNc2oc22qbyUoLK82yN";
                } else {
                    String[] strArr17 = A01;
                    strArr17[4] = "XIyZPx";
                    strArr17[6] = "LMnLrk";
                }
            }
            return new C2148bD(c2145bA, jArr3, iArr4, i, jArr4, iArr5, N1.A0U(j8, 1000000L, c2145bA2.A05));
        }
        throw new RuntimeException();
    }

    public static String A0M(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 82);
        }
        return new String(bArrCopyOfRange);
    }

    public static ByteBuffer A0N() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    public static List<C2148bD> A0O(PF pf, Z6 z6, long j, DrmInitData drmInitData, boolean z, boolean z2, InterfaceC1998Wy<C2145bA, C2145bA> interfaceC1998Wy) throws L9 {
        C2145bA c2145bAA4c;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < pf.A01.size(); i++) {
            PF pf2 = pf.A01.get(i);
            if (((AbstractC2115ag) pf2).A00 == 1953653099 && (c2145bAA4c = interfaceC1998Wy.A4c(A0J(pf2, (PE) AbstractC1722Ln.A01(pf.A03(1836476516)), j, drmInitData, z, z2))) != null) {
                arrayList.add(A0L(c2145bAA4c, (PF) AbstractC1722Ln.A01(((PF) AbstractC1722Ln.A01(((PF) AbstractC1722Ln.A01(pf2.A02(1835297121))).A02(1835626086))).A02(1937007212)), z6));
            }
        }
        return arrayList;
    }

    public static void A0P() {
        A00 = new byte[]{68, 72, Ascii.VT, Ascii.FS, Ascii.FS, Ascii.ESC, 72, 1, 6, Ascii.RS, 9, 4, 1, Ascii.FF, 108, 96, 50, 37, 45, 33, 41, 46, 41, 46, 39, 19, 33, 45, 48, 44, 37, 51, 1, 52, Ascii.DC4, 41, 45, 37, 51, 52, 33, 45, 48, 4, 37, 44, 52, 33, 96, 7, Ascii.VT, 89, 78, 70, 74, 66, 69, 66, 69, 76, 120, 74, 70, 91, 71, 78, 88, 106, 95, 127, 66, 70, 78, 88, 95, 74, 70, 91, 100, 77, 77, 88, 78, 95, Ascii.VT, 3, Ascii.SI, 93, 74, 66, 78, 70, 65, 70, 65, 72, 124, 78, 66, 95, 67, 74, 92, 102, 65, 108, 71, 90, 65, 68, Ascii.SI, 56, 52, 102, 113, 121, 117, 125, 122, 125, 122, 115, SignedBytes.MAX_POWER_OF_TWO, 125, 121, 113, 103, 96, 117, 121, 100, 80, 113, 120, 96, 117, 87, 124, 117, 122, 115, 113, 103, 52, 92, 70, Ascii.DC4, 3, Ascii.VT, 7, Ascii.SI, 8, Ascii.SI, 8, 1, 53, Ascii.US, 8, 5, Ascii.SO, Ascii.DC4, 9, 8, Ascii.SI, Ascii.FS, 7, Ascii.DC2, Ascii.SI, 9, 8, 53, 7, Ascii.VT, Ascii.SYN, 10, 3, Ascii.NAK, 70, 4, 49, 42, 40, Ascii.NAK, 36, 55, 54, 32, 55, 54, Ascii.CAN, 37, 62, 56, 46, 46, 52, 43, 56, 125, 50, 63, 40, 2, 46, 52, 39, 56, 120, 95, 82, 94, 95, 66, 88, 66, 69, 84, 95, 69, 17, 66, 69, 83, 93, 17, 83, 94, 73, 17, 87, 94, 67, 17, 69, 67, 80, 82, 90, 17, 92, 123, 99, 116, 121, 124, 113, 53, 102, 116, 120, 101, 121, 112, 53, 103, 116, 97, 112, 53, 115, 122, 103, 53, 81, 122, 121, 119, 108, 53, 65, 103, 96, 112, 93, 81, 53, 88, 89, 69, 53, 102, 97, 103, 112, 116, 120, 47, 53, Ascii.GS, 49, 60, 54, 63, 34, Base64.padSymbol, 53, 52, 112, 35, 49, Base64.padSymbol, 32, 60, 53, 112, 36, 49, 50, 60, 53, 112, 120, 35, 36, 50, 60, 121, 112, Base64.padSymbol, 57, 35, 35, 57, 62, 55, 112, 35, 49, Base64.padSymbol, 32, 60, 53, 112, 52, 53, 35, 51, 34, 57, 32, 36, 57, 63, 62, 112, 120, 35, 36, 35, 52, 121, 95, 96, 101, 99, 88, 117, 113, 116, 124, 68, 70, 95, 95, 74, 75, Ascii.SI, 66, 74, 91, 78, 75, 78, 91, 78, Ascii.SI, 88, 70, 91, 71, Ascii.SI, 90, 65, 68, 65, SignedBytes.MAX_POWER_OF_TWO, 88, 65, Ascii.SI, 68, 74, 86, Ascii.SI, 70, 65, 75, 74, 87, Ascii.NAK, Ascii.SI, Ascii.US, 57, 42, 40, 32, 107, 35, 42, 56, 107, 37, 36, 107, 56, 42, 38, 59, 39, 46, 107, 63, 42, 41, 39, 46, 107, 56, 34, 49, 46, 107, 34, 37, 45, 36, 57, 38, 42, 63, 34, 36, 37, Ascii.RS, 37, 46, 51, 59, 46, 40, 63, 46, 47, 107, 46, 37, 47, 107, 36, 45, 107, 40, 35, 62, 37, 32, 107, 47, 42, 63, 42, 78, 117, 104, 110, 107, 107, 116, 105, 111, 126, 127, 59, 120, 116, 119, 116, 105, 59, 111, 98, 107, 126, 33, 59, 95, 100, 121, 127, 122, 122, 101, 120, 126, 111, 110, 42, 99, 100, 99, 126, 99, 107, 102, 85, 110, 99, 121, 122, 102, 107, 115, 85, 110, 111, 102, 107, 115, 85, 122, 120, 111, 121, 111, 100, 126, 85, 108, 102, 107, 109, 87, 108, 113, 119, 114, 114, 109, 112, 118, 103, 102, 34, 111, 103, 102, 107, 99, 34, 112, 99, 118, 103, 44, 103, 92, 65, 71, 66, 66, 93, SignedBytes.MAX_POWER_OF_TWO, 70, 87, 86, Ascii.DC2, 93, 80, 71, 109, 87, 74, 70, 87, 92, 65, 91, 93, 92, 109, 84, 94, 83, 85, Ascii.US, 36, 57, 63, 58, 58, 37, 56, 62, 47, 46, 106, 37, 40, 63, Ascii.NAK, 62, 51, 58, 47, 112, 106, 0, 59, 38, 32, 37, 37, 58, 39, 33, 48, 49, 117, 39, 48, 49, 32, 54, 48, 49, 10, 38, 33, 60, 57, 57, 10, 37, 60, 54, 33, 32, 39, 48, 10, Base64.padSymbol, 48, 52, 49, 48, 39, 40, 19, Ascii.SO, 8, Ascii.CR, Ascii.CR, Ascii.DC2, Ascii.SI, 9, Ascii.CAN, Ascii.EM, 93, 9, Ascii.DC4, Ascii.DLE, Ascii.DC4, 19, Ascii.SUB, 34, Ascii.DC4, 19, Ascii.ESC, Ascii.DC2, 34, Ascii.CR, Ascii.SI, Ascii.CAN, Ascii.SO, Ascii.CAN, 19, 9, 34, Ascii.ESC, 17, Ascii.FS, Ascii.SUB, 70, 87, 87, 75, 78, 68, 70, 83, 78, 72, 73, 8, 83, 83, 74, 75, Ascii.FF, 95, 74, 75, 109, 124, 124, 96, 101, 111, 109, 120, 101, 99, 98, 35, 116, 33, 111, 109, 97, 105, 126, 109, 33, 97, 99, 120, 101, 99, 98, 36, 53, 53, 41, 44, 38, 36, 49, 44, 42, 43, 106, Base64.padSymbol, 104, 40, 53, 113, 104, 38, 32, 36, 104, 115, 117, 125, 32, 49, 49, 45, 40, 34, 32, 53, 40, 46, 47, 110, 57, 108, 44, 49, 117, 108, 55, 53, 53, Ascii.CAN, 9, 9, Ascii.NAK, Ascii.DLE, Ascii.SUB, Ascii.CAN, Ascii.CR, Ascii.DLE, Ascii.SYN, Ascii.ETB, 86, 1, 84, 8, Ascii.FF, Ascii.DLE, Ascii.SUB, Ascii.DC2, Ascii.CR, Ascii.DLE, Ascii.DC4, Ascii.FS, 84, Ascii.CR, 1, 74, Ascii.RS, 97, 117, 100, 105, 111, 47, 51, 103, 112, 112, 77, 89, 72, 69, 67, 3, 77, 79, Ascii.US, 50, 38, 55, 58, 60, 124, 50, 48, 103, 51, 39, 54, 59, Base64.padSymbol, 125, 51, 62, 51, 49, 36, 48, 33, 44, 42, 106, 36, 40, 55, 104, 50, 39, 74, 94, 79, 66, 68, 4, 78, 74, 72, Ascii.CAN, 110, 122, 107, 102, 96, 32, 105, 99, 110, 108, 53, 33, 48, Base64.padSymbol, 59, 123, 51, 99, 101, 101, 121, 53, 56, 53, 35, 99, 119, 102, 107, 109, 45, 101, 53, 51, 51, 47, 111, 110, 99, 117, 66, 86, 71, 74, 76, Ascii.FF, 78, 75, 66, Ascii.DC2, 88, 76, 93, 80, 86, Ascii.SYN, 84, 81, 84, 8, 57, 45, 60, 49, 55, 119, 53, 40, 108, 57, 117, 52, 57, 44, 53, 8, Ascii.FS, Ascii.CR, 0, 6, 70, 4, Ascii.EM, Ascii.FF, Ascii.SO, 58, 46, 63, 50, 52, 116, 52, 43, 46, 40, Ascii.NAK, 1, Ascii.DLE, Ascii.GS, Ascii.ESC, 91, 6, Ascii.NAK, 3, 9, Ascii.GS, Ascii.FF, 1, 7, 71, Ascii.FS, Ascii.SUB, Ascii.GS, Ascii.CR, 69, 0, Ascii.FF, 53, 33, 48, Base64.padSymbol, 59, 123, 34, 58, 48, 122, 48, 
        32, 39, 84, SignedBytes.MAX_POWER_OF_TWO, 81, 92, 90, Ascii.SUB, 67, 91, 81, Ascii.ESC, 81, 65, 70, Ascii.ESC, 93, 81, 72, 92, 77, SignedBytes.MAX_POWER_OF_TWO, 70, 6, 95, 71, 77, 7, 77, 93, 90, 7, 65, 77, Ascii.DC2, 89, 91, 70, 79, SignedBytes.MAX_POWER_OF_TWO, 69, 76, Ascii.DC4, 69, 75, 91, 71, 83, 66, 79, 73, 9, 80, 72, 66, 8, 66, 82, 85, 8, 83, 78, 66, Ascii.GS, 86, 84, 73, SignedBytes.MAX_POWER_OF_TWO, 79, 74, 67, Ascii.ESC, 86, Ascii.DC4, 63, 62, 63, 109, 57, 56, 57, 41, 47, 41, 34, 47, 109, 107, 96, 125, 118, 125, 124, 121, 113, 84, 97, 122, 120, 70, 124, 111, 112, 53, 120, 96, 102, 97, 53, 119, 112, 53, 101, 122, 102, 124, 97, 124, 99, 112, 108, 120, 103, 107, 42, 107, 126, 101, 103, 42, 99, 121, 42, 103, 107, 100, 110, 107, 126, 101, 120, 115, 44, 60, 55, 54, 127, 62, 43, 48, 50, 127, 54, 44, 127, 50, 62, 49, 59, 62, 43, 48, 45, 38, 106, 123, 112, 125, 62, 127, 106, 113, 115, 62, 119, 109, 62, 115, 127, 112, 122, 127, 106, 113, 108, 103, 76, 83, 94, 95, 85, Ascii.NAK, 9, 93, 74, 74, 38, 57, 52, 53, 63, 127, 49, 38, 96, 97, 124, 99, 110, 111, 101, 37, 107, 124, 105, 83, 76, 65, SignedBytes.MAX_POWER_OF_TWO, 74, 10, 65, 74, 73, 71, 92, 8, 83, 76, 86, 76, 74, 75, 41, 54, 59, 58, 48, 112, 55, 58, 41, 60, 54, 41, 36, 37, 47, 111, 45, 48, 37, 39, 7, Ascii.CAN, Ascii.NAK, Ascii.DC4, Ascii.RS, 94, 9, 92, 7, Ascii.US, Ascii.NAK, 95, Ascii.RS, Ascii.US, 67, 95, 7, 1, 73, 97, 126, 115, 114, 120, 56, 111, 58, 97, 121, 115, 57, 120, 121, 37, 57, 97, 103, 46};
        if (A01[1].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "YHpxcEezyIbk6ar2MuZd0BLdeeshQf0w";
        strArr[5] = "Dv9oA4Exk3sh0R2AQFMUOP841JkccEpr";
    }

    public static void A0Q(C1744Mk c1744Mk) {
        int iA09 = c1744Mk.A09();
        c1744Mk.A0g(4);
        if (c1744Mk.A0C() != 1751411826) {
            iA09 += 4;
        }
        c1744Mk.A0f(iA09);
    }

    /* JADX WARN: Code duplicated, block: B:167:0x0468 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:168:0x0469  */
    /* JADX WARN: Code duplicated, block: B:174:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:176:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:178:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:181:0x04df  */
    /* JADX WARN: Code duplicated, block: B:184:0x04ff  */
    /* JADX WARN: Code duplicated, block: B:187:0x0509  */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x02f3, code lost:
    
        if (r8 != null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02f5, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02f6, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2045Yx.A01(r1, null);
        r8 = A0M(1186, 10, 104);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0306, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x030b, code lost:
    
        if (r4 != 1702061171) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x030d, code lost:
    
        if (r8 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x030f, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0310, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2045Yx.A01(r1, null);
        r17 = A0G(r34, r2);
        r8 = r17.A02;
        r0 = r17.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0320, code lost:
    
        if (r0 == null) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0322, code lost:
    
        r34 = com.facebook.ads.redexgen.X.AbstractC14149l.A04(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0328, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x032a, code lost:
    
        r15 = com.facebook.ads.redexgen.X.AbstractC2121am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x033f, code lost:
    
        if (r15[2].charAt(17) == r15[5].charAt(17)) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0341, code lost:
    
        r15 = com.facebook.ads.redexgen.X.AbstractC2121am.A01;
        r15[4] = "MYNaPU";
        r15[6] = "liPs3C";
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x034d, code lost:
    
        if (r4 != 1885434736) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x034f, code lost:
    
        r27 = A00(r34, r2);
        r31 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x035a, code lost:
    
        if (r4 != 1937126244) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x035c, code lost:
    
        r30 = A0W(r34, r2, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0365, code lost:
    
        if (r4 != 1936995172) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0367, code lost:
    
        r4 = r34.A0I();
        r2 = com.facebook.ads.redexgen.X.AbstractC2121am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x037c, code lost:
    
        if (r2[4].length() == r2[6].length()) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0383, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0384, code lost:
    
        r2 = com.facebook.ads.redexgen.X.AbstractC2121am.A01;
        r2[4] = "Z3c7vm";
        r2[6] = "kikOnx";
        r34.A0g(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0393, code lost:
    
        if (r4 != 0) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0399, code lost:
    
        switch(r34.A0I()) {
            case 0: goto L134;
            case 1: goto L133;
            case 2: goto L132;
            case 3: goto L131;
            default: goto L218;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x039e, code lost:
    
        r14 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03a1, code lost:
    
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03a4, code lost:
    
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x03a7, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03ad, code lost:
    
        if (r4 != 1668246642) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03b0, code lost:
    
        if (r11 != (-1)) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03b2, code lost:
    
        if (r6 != (-1)) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03b4, code lost:
    
        if (r10 != (-1)) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03b6, code lost:
    
        r3 = r34.A0C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03bd, code lost:
    
        if (r3 == 1852009592) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03c2, code lost:
    
        if (r3 != 1852009571) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03c4, code lost:
    
        r1 = r34.A0M();
        r4 = r34.A0M();
        r6 = 2;
        r34.A0g(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x03d2, code lost:
    
        if (r9 != 19) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03da, code lost:
    
        if ((r34.A0I() & 128) == 0) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x03dc, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03dd, code lost:
    
        r11 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r1);
        r2 = com.facebook.ads.redexgen.X.AbstractC2121am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03f3, code lost:
    
        if (r2[2].charAt(17) == r2[5].charAt(17)) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03f5, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2121am.A01[7] = "Ehd1WWhYCDskII0cUGaskzUQattaSnoL";
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x03fc, code lost:
    
        if (r3 == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03fe, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x03ff, code lost:
    
        r10 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0405, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0407, code lost:
    
        com.facebook.ads.redexgen.X.MV.A07(A0M(178, 11, 23), A0M(470, 24, 73) + com.facebook.ads.redexgen.X.AbstractC2115ag.A04(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x045e, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013f, code lost:
    
        if (r4 != 1685480259) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0144, code lost:
    
        if (r4 != 1685485123) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0179, code lost:
    
        if (r4 != 1685480259) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x018d, code lost:
    
        if (r4 != 1987076931) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x018f, code lost:
    
        if (r8 != null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0191, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0192, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2045Yx.A01(r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x019b, code lost:
    
        if (r33 != 1987063864) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x019d, code lost:
    
        r8 = A0M(1253, 19, 35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a7, code lost:
    
        r34.A0f(r2 + 12);
        r34.A0g(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01b6, code lost:
    
        if ((r34.A0I() & 1) == 0) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01b8, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b9, code lost:
    
        r1 = r34.A0I();
        r0 = r34.A0I();
        r11 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01c5, code lost:
    
        if (r2 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01c7, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01c8, code lost:
    
        r10 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ce, code lost:
    
        r6 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d0, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01d2, code lost:
    
        r8 = A0M(1272, 19, 69);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01dd, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e2, code lost:
    
        if (r4 != 1635135811) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e4, code lost:
    
        if (r8 != null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e6, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e7, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2045Yx.A01(r1, null);
        r8 = A0M(1196, 10, 2);
        r34.A0f(r2 + 8);
        r0 = A0B(r34);
        r11 = r0.A02;
        r6 = r0.A01;
        r10 = r0.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0205, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020a, code lost:
    
        if (r4 != 1668050025) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x020c, code lost:
    
        if (r5 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x020e, code lost:
    
        r5 = A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0212, code lost:
    
        r5.position(21);
        r5.putShort(r34.A0b());
        r5.putShort(r34.A0b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x022a, code lost:
    
        if (r4 != 1835295606) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x022c, code lost:
    
        if (r5 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x022e, code lost:
    
        r5 = A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0232, code lost:
    
        r25 = r34.A0b();
        r24 = r34.A0b();
        r23 = r34.A0b();
        r22 = r34.A0b();
        r21 = r34.A0b();
        r20 = r34.A0b();
        r19 = r34.A0b();
        r18 = r34.A0b();
        r3 = r34.A0Q();
        r1 = r34.A0Q();
        r5.position(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0270, code lost:
    
        if (com.facebook.ads.redexgen.X.AbstractC2121am.A01[7].charAt(20) == 'k') goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0272, code lost:
    
        r5.putShort(r21);
        r5.putShort(r20);
        r5.putShort(r25);
        r5.putShort(r24);
        r5.putShort(r23);
        r5.putShort(r22);
        r5.putShort(r19);
        r5.putShort(r18);
        r5.putShort((short) (r3 / 10000));
        r5.putShort((short) (r1 / 10000));
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02aa, code lost:
    
        r16 = com.facebook.ads.redexgen.X.AbstractC2121am.A01;
        r16[2] = "OIBSeKh0vAOazctQ1gwVNM1Ma4jwlY1K";
        r16[5] = "4qfKNy2j4WK5HQFh3lvPc0nG0u0ezDC6";
        r5.putShort(r21);
        r5.putShort(r20);
        r5.putShort(r25);
        r5.putShort(r24);
        r5.putShort(r23);
        r5.putShort(r22);
        r5.putShort(r19);
        r5.putShort(r18);
        r5.putShort((short) (r3 / 10000));
        r5.putShort((short) (r1 / 10000));
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02f1, code lost:
    
        if (r4 != 1681012275) goto L104;
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0R(com.facebook.ads.redexgen.X.C1744Mk r34, int r35, int r36, int r37, int r38, int r39, com.facebook.ads.androidx.media3.common.DrmInitData r40, com.facebook.ads.redexgen.X.C2119ak r41, int r42) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 1304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2121am.A0R(com.facebook.ads.redexgen.X.Mk, int, int, int, int, int, com.facebook.ads.androidx.media3.common.DrmInitData, com.facebook.ads.redexgen.X.ak, int):void");
    }

    public static void A0S(C1744Mk c1744Mk, int i, int i2, int i3, int i4, String str, C2119ak c2119ak) {
        String strA0M;
        c1744Mk.A0f(i2 + 8 + 8);
        AbstractC14149l abstractC14149lA04 = null;
        long j = Long.MAX_VALUE;
        if (i == 1414810956) {
            strA0M = A0M(691, 20, 117);
        } else if (i == 1954034535) {
            strA0M = A0M(784, 28, 43);
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            c1744Mk.A0k(bArr, 0, i5);
            abstractC14149lA04 = AbstractC14149l.A04(bArr);
        } else if (i == 2004251764) {
            strA0M = A0M(763, 21, 19);
        } else if (i == 1937010800) {
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            A01[7] = "utlRWadfmFD1wdS2ToASk83ihDfKj10a";
            strA0M = A0M(691, 20, 117);
            j = 0;
        } else {
            if (i != 1664495672) {
                throw new IllegalStateException();
            }
            strA0M = A0M(738, 25, 23);
            c2119ak.A01 = 1;
        }
        c2119ak.A02 = new C1689Ke().A0g(i4).A11(strA0M).A10(str).A0s(j).A12(abstractC14149lA04).A14();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x025e  */
    /* JADX WARN: Code duplicated, block: B:105:0x028d  */
    /* JADX WARN: Code duplicated, block: B:108:0x029e  */
    /* JADX WARN: Code duplicated, block: B:110:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:113:0x02be  */
    /* JADX WARN: Code duplicated, block: B:115:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:120:0x02de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:124:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:126:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:128:0x030b  */
    /* JADX WARN: Code duplicated, block: B:130:0x031b  */
    /* JADX WARN: Code duplicated, block: B:132:0x032c  */
    /* JADX WARN: Code duplicated, block: B:135:0x033b  */
    /* JADX WARN: Code duplicated, block: B:140:0x0363  */
    /* JADX WARN: Code duplicated, block: B:144:0x037e  */
    /* JADX WARN: Code duplicated, block: B:146:0x0383  */
    /* JADX WARN: Code duplicated, block: B:147:0x0394  */
    /* JADX WARN: Code duplicated, block: B:149:0x0399  */
    /* JADX WARN: Code duplicated, block: B:150:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:152:0x03af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:153:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:154:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:158:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:175:0x0498  */
    /* JADX WARN: Code duplicated, block: B:191:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x02d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x02d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x02d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:85:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:86:0x0204  */
    /* JADX WARN: Code duplicated, block: B:88:0x021a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0220  */
    /* JADX WARN: Code duplicated, block: B:92:0x022e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0239  */
    /* JADX WARN: Code duplicated, block: B:95:0x023e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0249  */
    /* JADX WARN: Code duplicated, block: B:98:0x024e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0259  */
    public static void A0T(C1744Mk c1744Mk, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, C2119ak c2119ak, int i5) throws L9 {
        int iA0M;
        int iA0J;
        String[] strArr;
        List<byte[]> listA04;
        String[] strArr2;
        int iA0C;
        boolean z2;
        int iA0C2;
        int iA04;
        String[] strArr3;
        byte[] bArr;
        DrmInitData drmInitDataA01 = drmInitData;
        int iIntValue = i;
        c1744Mk.A0f(i2 + 8 + 8);
        int iA0M2 = 0;
        if (z) {
            iA0M2 = c1744Mk.A0M();
            c1744Mk.A0g(6);
        } else {
            c1744Mk.A0g(8);
        }
        int iA0C3 = 0;
        int i6 = -1;
        String str2 = null;
        C2117ai c2117aiA0G = null;
        if (iA0M2 == 0 || iA0M2 == 1) {
            iA0M = c1744Mk.A0M();
            c1744Mk.A0g(6);
            iA0J = c1744Mk.A0J();
            c1744Mk.A0f(c1744Mk.A09() - 4);
            iA0C3 = c1744Mk.A0C();
            if (iA0M2 == 1) {
                c1744Mk.A0g(16);
            }
        } else {
            if (iA0M2 != 2) {
                return;
            }
            c1744Mk.A0g(16);
            iA0J = (int) Math.round(c1744Mk.A06());
            iA0M = c1744Mk.A0L();
            c1744Mk.A0g(20);
        }
        int iA09 = c1744Mk.A09();
        if (iIntValue == 1701733217) {
            Pair<Integer, C2146bB> pairA08 = A08(c1744Mk, i2, i3);
            if (pairA08 != null) {
                iIntValue = ((Integer) pairA08.first).intValue();
                drmInitDataA01 = drmInitDataA01 == null ? null : drmInitDataA01.A01(((C2146bB) pairA08.second).A02);
                c2119ak.A03[i5] = (C2146bB) pairA08.second;
            }
            c1744Mk.A0f(iA09);
        }
        String strA0M = null;
        if (iIntValue != 1633889587) {
            if (iIntValue == 1700998451) {
                strA0M = A0M(862, 10, 121);
                String[] strArr4 = A01;
                if (strArr4[2].charAt(17) != strArr4[5].charAt(17)) {
                    String[] strArr5 = A01;
                    strArr5[4] = "JvFIRI";
                    strArr5[6] = "dNfqqI";
                }
            } else if (iIntValue == 1633889588) {
                strA0M = A0M(831, 9, 1);
            } else if (iIntValue == 1685353315) {
                strA0M = A0M(989, 13, 6);
            } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
                strA0M = A0M(1002, 16, 103);
            } else if (iIntValue == 1685353317) {
                strA0M = A0M(1018, 28, 123);
            } else if (iIntValue == 1685353336) {
                strA0M = A0M(1046, 28, 116);
            } else {
                String[] strArr6 = A01;
                if (strArr6[3].charAt(0) != strArr6[0].charAt(0)) {
                    throw new RuntimeException();
                }
                String[] strArr7 = A01;
                strArr7[4] = "Pz2AY2";
                strArr7[6] = "gL2h9X";
                if (iIntValue == 1935764850) {
                    strA0M = A0M(812, 10, 82);
                } else if (iIntValue == 1935767394) {
                    strA0M = A0M(850, 12, 23);
                } else if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    strA0M = A0M(967, 9, 38);
                    i6 = 2;
                } else if (iIntValue == 1953984371) {
                    strA0M = A0M(967, 9, 38);
                    i6 = 268435456;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    strA0M = A0M(947, 10, 59);
                } else if (iIntValue == 1835557169) {
                    strA0M = A0M(912, 10, InterfaceC3669k1.d.b.k);
                } else {
                    String[] strArr8 = A01;
                    if (strArr8[4].length() == strArr8[6].length()) {
                        String[] strArr9 = A01;
                        strArr9[3] = "WnZFoumyL51jK4RXeYaSck1EVGRjl7vU";
                        strArr9[0] = "WeLyXVrOxTeX6ubhyxalo6cX80JwyUYR";
                        if (iIntValue == 1835560241) {
                            strA0M = A0M(922, 10, kotlin.fh.h1);
                        } else if (iIntValue == 1634492771) {
                            strA0M = A0M(840, 10, 0);
                        } else if (iIntValue == 1634492791) {
                            strA0M = A0M(882, 15, 6);
                        } else {
                            strArr = A01;
                            if (strArr[3].charAt(0) != strArr[0].charAt(0)) {
                                throw new RuntimeException();
                            }
                            String[] strArr10 = A01;
                            strArr10[4] = "lYzBFO";
                            strArr10[6] = "aUwq0M";
                            if (iIntValue == 1970037111) {
                                strA0M = A0M(897, 15, 80);
                            } else if (iIntValue == 1332770163) {
                                strA0M = A0M(957, 10, 9);
                            } else if (iIntValue == 1716281667) {
                                strA0M = A0M(872, 10, 93);
                            } else if (iIntValue == 1835823201) {
                                strA0M = A0M(976, 13, 58);
                            }
                        }
                    } else if (iIntValue == 1835560241) {
                        strA0M = A0M(922, 10, kotlin.fh.h1);
                    } else if (iIntValue == 1634492771) {
                        strA0M = A0M(840, 10, 0);
                    } else if (iIntValue == 1634492791) {
                        strA0M = A0M(882, 15, 6);
                    } else {
                        strArr = A01;
                        if (strArr[3].charAt(0) != strArr[0].charAt(0)) {
                            throw new RuntimeException();
                        }
                        String[] strArr11 = A01;
                        strArr11[4] = "lYzBFO";
                        strArr11[6] = "aUwq0M";
                        if (iIntValue == 1970037111) {
                            strA0M = A0M(897, 15, 80);
                        } else if (iIntValue == 1332770163) {
                            strA0M = A0M(957, 10, 9);
                        } else if (iIntValue == 1716281667) {
                            strA0M = A0M(872, 10, 93);
                        } else if (iIntValue == 1835823201) {
                            strA0M = A0M(976, 13, 58);
                        }
                    }
                }
            }
            listA04 = null;
            strArr2 = A01;
            if (strArr2[2].charAt(17) != strArr2[5].charAt(17)) {
                A01[1] = "NAD";
                while (iA09 - i2 < i3) {
                    c1744Mk.A0f(iA09);
                    iA0C = c1744Mk.A0C();
                    if (iA0C > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    AbstractC2045Yx.A01(z2, A0M(1090, 30, 71));
                    iA0C2 = c1744Mk.A0C();
                    if (iA0C2 == 1835557187) {
                        int i7 = iA0C - 13;
                        byte[] bArr2 = new byte[i7];
                        c1744Mk.A0f(13 + iA09);
                        c1744Mk.A0k(bArr2, 0, i7);
                        listA04 = AbstractC14149l.A04(bArr2);
                    } else if (iA0C2 != 1702061171) {
                        if (iA0C2 == 1702061171) {
                            iA04 = iA09;
                        } else {
                            iA04 = A04(c1744Mk, 1702061171, iA09, iA0C);
                        }
                        strArr3 = A01;
                        if (strArr3[4].length() != strArr3[6].length()) {
                            A01[1] = "5S7";
                            if (iA04 != -1) {
                                c2117aiA0G = A0G(c1744Mk, iA04);
                                strA0M = c2117aiA0G.A02;
                                bArr = c2117aiA0G.A03;
                                if (bArr == null) {
                                    if (A0M(932, 15, 10).equals(strA0M)) {
                                        YY yyA03 = YZ.A03(bArr);
                                        iA0J = yyA03.A01;
                                        iA0M = yyA03.A00;
                                        str2 = yyA03.A02;
                                    }
                                    listA04 = AbstractC14149l.A04(bArr);
                                }
                            }
                        } else {
                            String[] strArr12 = A01;
                            strArr12[2] = "6SrnwqJQ551uf53t0wwsJgD5cpVZFSmf";
                            strArr12[5] = "kRH3LPit3IYWAxJdaVx0rjgRIdHpkAhU";
                            if (iA04 != -1) {
                                c2117aiA0G = A0G(c1744Mk, iA04);
                                strA0M = c2117aiA0G.A02;
                                bArr = c2117aiA0G.A03;
                                if (bArr == null) {
                                    if (A0M(932, 15, 10).equals(strA0M)) {
                                        YY yyA04 = YZ.A03(bArr);
                                        iA0J = yyA04.A01;
                                        iA0M = yyA04.A00;
                                        str2 = yyA04.A02;
                                    }
                                    listA04 = AbstractC14149l.A04(bArr);
                                }
                            }
                        }
                    } else {
                        if (iA0C2 == 1702061171) {
                            iA04 = iA09;
                        } else {
                            iA04 = A04(c1744Mk, 1702061171, iA09, iA0C);
                        }
                        strArr3 = A01;
                        if (strArr3[4].length() != strArr3[6].length()) {
                            A01[1] = "5S7";
                            if (iA04 != -1) {
                                c2117aiA0G = A0G(c1744Mk, iA04);
                                strA0M = c2117aiA0G.A02;
                                bArr = c2117aiA0G.A03;
                                if (bArr == null) {
                                    if (A0M(932, 15, 10).equals(strA0M)) {
                                        YY yyA05 = YZ.A03(bArr);
                                        iA0J = yyA05.A01;
                                        iA0M = yyA05.A00;
                                        str2 = yyA05.A02;
                                    }
                                    listA04 = AbstractC14149l.A04(bArr);
                                }
                            }
                        } else {
                            String[] strArr13 = A01;
                            strArr13[2] = "6SrnwqJQ551uf53t0wwsJgD5cpVZFSmf";
                            strArr13[5] = "kRH3LPit3IYWAxJdaVx0rjgRIdHpkAhU";
                            if (iA04 != -1) {
                                c2117aiA0G = A0G(c1744Mk, iA04);
                                strA0M = c2117aiA0G.A02;
                                bArr = c2117aiA0G.A03;
                                if (bArr == null) {
                                    if (A0M(932, 15, 10).equals(strA0M)) {
                                        YY yyA06 = YZ.A03(bArr);
                                        iA0J = yyA06.A01;
                                        iA0M = yyA06.A00;
                                        str2 = yyA06.A02;
                                    }
                                    listA04 = AbstractC14149l.A04(bArr);
                                }
                            }
                        }
                    }
                    iA09 += iA0C;
                }
                if (c2119ak.A02 == null) {
                    return;
                } else {
                    return;
                }
            }
        } else if (A01[7].charAt(20) == 'k') {
            A01[7] = "xcD2xkLRH5aOhLNr7gfYkXsGrRDKsvUQ";
            strA0M = A0M(822, 9, 126);
            listA04 = null;
            strArr2 = A01;
            if (strArr2[2].charAt(17) != strArr2[5].charAt(17)) {
                A01[1] = "NAD";
                while (iA09 - i2 < i3) {
                    c1744Mk.A0f(iA09);
                    iA0C = c1744Mk.A0C();
                    if (iA0C > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    AbstractC2045Yx.A01(z2, A0M(1090, 30, 71));
                    iA0C2 = c1744Mk.A0C();
                    if (iA0C2 == 1835557187) {
                        int i8 = iA0C - 13;
                        byte[] bArr3 = new byte[i8];
                        c1744Mk.A0f(13 + iA09);
                        c1744Mk.A0k(bArr3, 0, i8);
                        listA04 = AbstractC14149l.A04(bArr3);
                    } else if (iA0C2 != 1702061171 || (z && iA0C2 == 2002876005)) {
                        if (iA0C2 == 1702061171) {
                            iA04 = iA09;
                        } else {
                            iA04 = A04(c1744Mk, 1702061171, iA09, iA0C);
                        }
                        strArr3 = A01;
                        if (strArr3[4].length() != strArr3[6].length()) {
                            A01[1] = "5S7";
                            if (iA04 != -1) {
                                c2117aiA0G = A0G(c1744Mk, iA04);
                                strA0M = c2117aiA0G.A02;
                                bArr = c2117aiA0G.A03;
                                if (bArr == null) {
                                    if (A0M(932, 15, 10).equals(strA0M)) {
                                        YY yyA07 = YZ.A03(bArr);
                                        iA0J = yyA07.A01;
                                        iA0M = yyA07.A00;
                                        str2 = yyA07.A02;
                                    }
                                    listA04 = AbstractC14149l.A04(bArr);
                                }
                            }
                        } else {
                            String[] strArr14 = A01;
                            strArr14[2] = "6SrnwqJQ551uf53t0wwsJgD5cpVZFSmf";
                            strArr14[5] = "kRH3LPit3IYWAxJdaVx0rjgRIdHpkAhU";
                            if (iA04 != -1) {
                                c2117aiA0G = A0G(c1744Mk, iA04);
                                strA0M = c2117aiA0G.A02;
                                bArr = c2117aiA0G.A03;
                                if (bArr == null) {
                                    if (A0M(932, 15, 10).equals(strA0M)) {
                                        YY yyA08 = YZ.A03(bArr);
                                        iA0J = yyA08.A01;
                                        iA0M = yyA08.A00;
                                        str2 = yyA08.A02;
                                    }
                                    listA04 = AbstractC14149l.A04(bArr);
                                }
                            }
                        }
                    } else {
                        String[] strArr15 = A01;
                        if (strArr15[4].length() != strArr15[6].length()) {
                            String[] strArr16 = A01;
                            strArr16[2] = "wD07h9QOB40aTH69m0uK8A4yWF5lVusg";
                            strArr16[5] = "lPNLY2CpMbzvEmOcbNLa7aAXCys35F8j";
                            if (iA0C2 == 1684103987) {
                                c1744Mk.A0f(iA09 + 8);
                                c2119ak.A02 = AbstractC2026Yd.A07(c1744Mk, Integer.toString(i4), str, drmInitDataA01);
                            } else if (iA0C2 == 1684366131) {
                                c1744Mk.A0f(iA09 + 8);
                                c2119ak.A02 = AbstractC2026Yd.A08(c1744Mk, Integer.toString(i4), str, drmInitDataA01);
                            } else if (iA0C2 == 1684103988) {
                                c1744Mk.A0f(iA09 + 8);
                                c2119ak.A02 = AbstractC2029Yg.A03(c1744Mk, Integer.toString(i4), str, drmInitDataA01);
                            } else if (iA0C2 == 1684892784) {
                                if (iA0C3 > 0) {
                                    throw L9.A01(A0M(239, 49, 71) + iA0C3, null);
                                }
                                iA0M = 2;
                                iA0J = iA0C3;
                            } else if (iA0C2 != 1684305011 || iA0C2 == 1969517683) {
                                c2119ak.A02 = new C1689Ke().A0g(i4).A11(strA0M).A0b(iA0M).A0m(iA0J).A0u(drmInitDataA01).A10(str).A14();
                            } else if (iA0C2 == 1682927731) {
                                int i9 = iA0C - 8;
                                byte[] bArr4 = A02;
                                if (A01[7].charAt(20) == 'k') {
                                    String[] strArr17 = A01;
                                    strArr17[3] = "W1xDlthp1fCA8M7J8o58qSG3WOrM6VQM";
                                    strArr17[0] = "WKZAwTWyJOcO5qG2e7FNTtVi0zBZEkdp";
                                    byte[] bArrCopyOf = Arrays.copyOf(bArr4, A02.length + i9);
                                    c1744Mk.A0f(iA09 + 8);
                                    c1744Mk.A0k(bArrCopyOf, A02.length, i9);
                                    listA04 = ZF.A06(bArrCopyOf);
                                }
                            } else if (iA0C2 == 1684425825) {
                                int i10 = iA0C - 12;
                                byte[] bArr5 = new byte[i10 + 4];
                                bArr5[0] = 102;
                                bArr5[1] = 76;
                                bArr5[2] = 97;
                                bArr5[3] = 67;
                                c1744Mk.A0f(iA09 + 12);
                                c1744Mk.A0k(bArr5, 4, i10);
                                listA04 = AbstractC14149l.A04(bArr5);
                            } else if (iA0C2 == 1634492771) {
                                int i11 = iA0C - 12;
                                byte[] bArr6 = new byte[i11];
                                c1744Mk.A0f(iA09 + 12);
                                c1744Mk.A0k(bArr6, 0, i11);
                                Pair<Integer, Integer> pairA00 = Lv.A00(bArr6);
                                iA0J = ((Integer) pairA00.first).intValue();
                                iA0M = ((Integer) pairA00.second).intValue();
                                listA04 = AbstractC14149l.A04(bArr6);
                                if (A01[1].length() != 3) {
                                    throw new RuntimeException();
                                }
                                A01[7] = "vGPm6m37Be3d35i4e2QJkRkwB3oEgwpb";
                            } else {
                                continue;
                            }
                        } else {
                            A01[7] = "K61RrrwcjH5RmwbQ9j3akW8qWEpjBRL4";
                            if (iA0C2 == 1684103987) {
                                c1744Mk.A0f(iA09 + 8);
                                c2119ak.A02 = AbstractC2026Yd.A07(c1744Mk, Integer.toString(i4), str, drmInitDataA01);
                            } else if (iA0C2 == 1684366131) {
                                c1744Mk.A0f(iA09 + 8);
                                c2119ak.A02 = AbstractC2026Yd.A08(c1744Mk, Integer.toString(i4), str, drmInitDataA01);
                            } else if (iA0C2 == 1684103988) {
                                c1744Mk.A0f(iA09 + 8);
                                c2119ak.A02 = AbstractC2029Yg.A03(c1744Mk, Integer.toString(i4), str, drmInitDataA01);
                            } else if (iA0C2 == 1684892784) {
                                if (iA0C3 > 0) {
                                    throw L9.A01(A0M(239, 49, 71) + iA0C3, null);
                                }
                                iA0M = 2;
                                iA0J = iA0C3;
                            } else if (iA0C2 != 1684305011) {
                                c2119ak.A02 = new C1689Ke().A0g(i4).A11(strA0M).A0b(iA0M).A0m(iA0J).A0u(drmInitDataA01).A10(str).A14();
                            } else {
                                c2119ak.A02 = new C1689Ke().A0g(i4).A11(strA0M).A0b(iA0M).A0m(iA0J).A0u(drmInitDataA01).A10(str).A14();
                            }
                        }
                    }
                    iA09 += iA0C;
                }
                if (c2119ak.A02 == null || strA0M == null) {
                    return;
                }
                C1689Ke c1689KeA10 = new C1689Ke().A0g(i4).A11(strA0M).A0w(str2).A0b(iA0M).A0m(iA0J).A0i(i6).A12(listA04).A0u(drmInitDataA01).A10(str);
                if (c2117aiA0G != null) {
                    c1689KeA10.A0a(AnonymousClass19.A03(c2117aiA0G.A00)).A0j(AnonymousClass19.A03(c2117aiA0G.A01));
                }
                c2119ak.A02 = c1689KeA10.A14();
                return;
            }
        }
        throw new RuntimeException();
    }

    public static void A0U(C1744Mk c1744Mk, int i, int i2, int i3, C2119ak c2119ak) {
        c1744Mk.A0f(i2 + 8 + 8);
        if (i == 1835365492) {
            c1744Mk.A0U();
            String strA0U = c1744Mk.A0U();
            if (strA0U != null) {
                c2119ak.A02 = new C1689Ke().A0g(i3).A11(strA0U).A14();
            }
        }
    }

    public static boolean A0V(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[N1.A07(4, 0, length)] && jArr[N1.A07(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    public static byte[] A0W(C1744Mk c1744Mk, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            c1744Mk.A0f(i3);
            int iA0C = c1744Mk.A0C();
            if (c1744Mk.A0C() == 1886547818) {
                return Arrays.copyOfRange(c1744Mk.A0l(), i3, i3 + iA0C);
            }
            i3 += iA0C;
        }
        return null;
    }
}
