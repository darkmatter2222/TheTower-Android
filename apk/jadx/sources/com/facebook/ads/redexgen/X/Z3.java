package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public abstract class Z3 {
    public static byte[] A00;
    public static String[] A01 = {"Ry3gMVv", "6xGVwR0oRwghdqwUuSJoM47l", "D1pq21csLFB6Zxw6b42SHHjLWqZULyC3", "CKhQuXQ7bHs2TpHHeYMVD7MNsf5fJ2Xc", "tQR", "IHkDg2mA5Zt9bZKJqvxsmCTyu5o5zDPj", "kf7riUET3ZKhKtoxlN7hgd2qiUxnIzwy", "is9Y"};

    static {
        A08();
    }

    public static int A00(Q9 q9) throws IOException {
        q9.AK3();
        C1744Mk c1744Mk = new C1744Mk(2);
        q9.AI6(c1744Mk.A0l(), 0, 2);
        int iA0M = c1744Mk.A0M();
        if ((iA0M >> 2) == 16382) {
            q9.AK3();
            return iA0M;
        }
        q9.AK3();
        throw L9.A01(A06(34, 42, 124), null);
    }

    public static Metadata A01(Q9 q9, boolean z) throws IOException {
        Metadata metadataA00 = new Z8().A00(q9, z ? null : C8V.A03);
        if (metadataA00 == null || metadataA00.A02() == 0) {
            return null;
        }
        return metadataA00;
    }

    public static Metadata A02(Q9 q9, boolean z) throws IOException {
        q9.AK3();
        long jA9L = q9.A9L();
        Metadata metadataA01 = A01(q9, z);
        q9.ALL((int) (q9.A9L() - jA9L));
        return metadataA01;
    }

    public static Z4 A03(C1744Mk c1744Mk) {
        c1744Mk.A0g(1);
        int iA0K = c1744Mk.A0K();
        long jA09 = ((long) c1744Mk.A09()) + ((long) iA0K);
        int i = iA0K / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jA0P = c1744Mk.A0P();
            if (A01[1].length() != 24) {
                throw new RuntimeException();
            }
            A01[7] = "kE7x";
            if (jA0P == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jA0P;
            jArrCopyOf2[i2] = c1744Mk.A0P();
            c1744Mk.A0g(2);
        }
        c1744Mk.A0g((int) (jA09 - ((long) c1744Mk.A09())));
        return new Z4(jArrCopyOf, jArrCopyOf2);
    }

    public static Z4 A04(Q9 q9, int i) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(i);
        q9.readFully(c1744Mk.A0l(), 0, i);
        return A03(c1744Mk);
    }

    public static Z5 A05(Q9 q9) throws IOException {
        byte[] bArr = new byte[38];
        q9.readFully(bArr, 0, 38);
        return new Z5(bArr, 4);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 92);
            String[] strArr = A01;
            if (strArr[3].charAt(0) == strArr[2].charAt(0)) {
                throw new RuntimeException();
            }
            A01[0] = "b2WW8XJ";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static List<String> A07(Q9 q9, int i) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(i);
        q9.readFully(c1744Mk.A0l(), 0, i);
        c1744Mk.A0g(4);
        return Arrays.asList(ZW.A05(c1744Mk, false, false).A02);
    }

    public static void A08() {
        A00 = new byte[]{Ascii.SO, 41, 33, 36, 45, 44, 104, 60, 39, 104, 58, 45, 41, 44, 104, Ascii.SO, 4, 9, Ascii.VT, 104, 59, 60, 58, 45, 41, 37, 104, 37, 41, 58, 35, 45, 58, 102, 102, 73, 82, 83, 84, 0, 70, 82, 65, 77, 69, 0, 68, 79, 69, 83, 0, 78, 79, 84, 0, 83, 84, 65, 82, 84, 0, 87, 73, 84, 72, 0, 83, 89, 78, 67, 0, 67, 79, 68, 69, Ascii.SO};
        if (A01[7].length() != 4) {
            throw new RuntimeException();
        }
        A01[4] = "K25";
    }

    public static void A09(Q9 q9) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(4);
        q9.readFully(c1744Mk.A0l(), 0, 4);
        if (c1744Mk.A0Q() != 1716281667) {
            throw L9.A01(A06(0, 34, 20), null);
        }
    }

    public static boolean A0A(Q9 q9) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(4);
        q9.AI6(c1744Mk.A0l(), 0, 4);
        return c1744Mk.A0Q() == 1716281667;
    }

    public static boolean A0B(Q9 q9, Z2 z2) throws IOException {
        q9.AK3();
        C1743Mj c1743Mj = new C1743Mj(new byte[4]);
        q9.AI6(c1743Mj.A00, 0, 4);
        boolean zA0H = c1743Mj.A0H();
        int iA04 = c1743Mj.A04(7);
        int iA05 = c1743Mj.A04(24) + 4;
        if (iA04 == 0) {
            z2.A00 = A05(q9);
        } else {
            Z5 z5 = z2.A00;
            if (z5 == null) {
                throw new IllegalArgumentException();
            }
            if (iA04 == 3) {
                z2.A00 = z5.A09(A04(q9, iA05));
            } else if (iA04 == 4) {
                z2.A00 = z5.A0B(A07(q9, iA05));
            } else if (iA04 == 6) {
                C1744Mk c1744Mk = new C1744Mk(iA05);
                q9.readFully(c1744Mk.A0l(), 0, iA05);
                c1744Mk.A0g(4);
                z2.A00 = z5.A0A(XR.A03(PictureFrame.A00(c1744Mk)));
            } else {
                q9.ALL(iA05);
            }
        }
        return zA0H;
    }
}
