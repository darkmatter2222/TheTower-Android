package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P4 implements InterfaceC2043Yv, ZK {
    public static byte[] A0Q;
    public static String[] A0R = {"GHxW5YFrKGh", "uSGSN4tkLLszidFoEPshjRY3vkkEJ8hN", "tbL0t3QQNSHSE6ibZ", "", "dkwNaqabmSz", "3YXJR3ULqTV1r3nPDgNDtMgxaD2pvB9e", "370lXMO", "em8gR7TWdoaNIkYk8jGJpd2BIc1Lp0Zb"};
    public static final InterfaceC2047Yz A0S;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;

    @MetaExoPlayerCustomization
    public long A0A;
    public long A0B;

    @MetaExoPlayerCustomization
    public long A0C;
    public C1744Mk A0D;
    public InterfaceC2044Yw A0E;
    public MotionPhotoMetadata A0F;
    public C2135b0[] A0G;
    public long[][] A0H;
    public final int A0I;
    public final C1744Mk A0J;
    public final C1744Mk A0K;
    public final C1744Mk A0L;
    public final C1744Mk A0M;
    public final C2142b7 A0N;
    public final ArrayDeque<PF> A0O;
    public final List<Metadata.Entry> A0P;

    static {
        A0C();
        A0S = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.P5
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return P4.A0M();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
    }

    public P4() {
        this(0);
    }

    public P4(int i) {
        this.A0I = i;
        this.A04 = (i & 4) != 0 ? 3 : 0;
        this.A0N = new C2142b7();
        this.A0P = new ArrayList();
        this.A0J = new C1744Mk(16);
        this.A0O = new ArrayDeque<>();
        this.A0L = new C1744Mk(ZE.A03);
        this.A0K = new C1744Mk(4);
        this.A0M = new C1744Mk();
        this.A08 = -1;
        this.A0E = InterfaceC2044Yw.A00;
        this.A0G = new C2135b0[0];
    }

    public static int A00(int i) {
        switch (i) {
            case 1751476579:
                return 2;
            case 1903435808:
                return 1;
            default:
                return 0;
        }
    }

    private int A01(long j) {
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        int i = -1;
        long j3 = Long.MAX_VALUE;
        long j4 = Long.MAX_VALUE;
        boolean z2 = true;
        int i2 = -1;
        for (int i3 = 0; i3 < this.A0G.length; i3++) {
            C2135b0 c2135b0 = this.A0G[i3];
            int i4 = c2135b0.A00;
            if (i4 != c2135b0.A04.A01) {
                long j5 = c2135b0.A04.A06[i4];
                long j6 = ((long[][]) N1.A0f(this.A0H))[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= 262144;
                if ((!z3 && z) || (z3 == z && j7 < j2)) {
                    z = z3;
                    j2 = j7;
                    i = i3;
                    j3 = j6;
                }
                if (j6 < j4) {
                    j4 = j6;
                    z2 = z3;
                    i2 = i3;
                }
            }
        }
        return (j4 == Long.MAX_VALUE || !z2 || j3 < 10485760 + j4) ? i : i2;
    }

    public static int A02(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        int iA00 = A00(c1744Mk.A0C());
        if (iA00 != 0) {
            return iA00;
        }
        c1744Mk.A0g(4);
        while (c1744Mk.A07() > 0) {
            int iA01 = A00(c1744Mk.A0C());
            if (iA01 != 0) {
                return iA01;
            }
        }
        String[] strArr = A0R;
        if (strArr[4].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A0R[6] = "lrSt19Y";
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0154  */
    /* JADX WARN: Code duplicated, block: B:48:0x0167  */
    /* JADX WARN: Code duplicated, block: B:54:0x0185  */
    private int A03(Q9 q9, ZH zh) throws IOException {
        int i;
        long jA9Q = q9.A9Q();
        if (this.A08 == -1) {
            this.A08 = A01(jA9Q);
            if (this.A08 == -1) {
                return -1;
            }
        }
        C2135b0 c2135b0 = this.A0G[this.A08];
        ZP zp = c2135b0.A01;
        int i2 = c2135b0.A00;
        long j = c2135b0.A04.A06[i2];
        int i3 = c2135b0.A04.A05[i2];
        ZQ zq = c2135b0.A02;
        long j2 = (j - jA9Q) + ((long) this.A05);
        if (j2 < 0 || j2 >= 262144) {
            zh.A00 = j;
            return 1;
        }
        if (c2135b0.A03.A02 == 1) {
            j2 += 8;
            i3 -= 8;
        }
        q9.ALL((int) j2);
        if (c2135b0.A03.A01 != 0) {
            byte[] bArrA0l = this.A0K.A0l();
            bArrA0l[0] = 0;
            bArrA0l[1] = 0;
            bArrA0l[2] = 0;
            int i4 = c2135b0.A03.A01;
            int i5 = 4 - c2135b0.A03.A01;
            while (this.A06 < i3) {
                if (this.A07 == 0) {
                    q9.readFully(bArrA0l, i5, i4);
                    this.A05 += i4;
                    this.A0K.A0f(0);
                    int iA0C = this.A0K.A0C();
                    if (iA0C < 0) {
                        throw L9.A01(A09(48, 18, 101), null);
                    }
                    this.A07 = iA0C;
                    this.A0L.A0f(0);
                    zp.AK9(this.A0L, 4);
                    this.A06 += 4;
                    i3 += i5;
                } else {
                    int iAK7 = zp.AK7(q9, this.A07, false);
                    this.A05 += iAK7;
                    this.A06 += iAK7;
                    this.A07 -= iAK7;
                }
            }
        } else {
            if (A09(66, 9, 103).equals(c2135b0.A03.A07.A0W)) {
                if (this.A06 == 0) {
                    AbstractC2029Yg.A07(i3, this.A0M);
                    zp.AK9(this.A0M, 7);
                    this.A06 += 7;
                }
                i3 += 7;
            } else if (zq != null) {
                zq.A03(q9);
            }
            while (true) {
                int i6 = this.A06;
                if (A0R[7].charAt(17) == 'd') {
                    throw new RuntimeException();
                }
                A0R[2] = "lIEidRGLrYYCewxslfxaB2kGcOuN";
                if (i6 >= i3) {
                    break;
                }
                int iAK8 = zp.AK7(q9, i3 - this.A06, false);
                this.A05 += iAK8;
                this.A06 += iAK8;
                this.A07 -= iAK8;
            }
        }
        long j3 = c2135b0.A04.A07[i2];
        int i7 = c2135b0.A04.A04[i2];
        if (A0R[2].length() != 29) {
            A0R[6] = "xlC55Fs";
            if (zq != null) {
                i = 0;
                zq.A04(zp, j3, i7, i3, 0, null);
                if (i2 + 1 == c2135b0.A04.A01) {
                    zq.A05(zp, null);
                }
            } else {
                i = 0;
                zp.AKC(j3, i7, i3, 0, null);
            }
        } else {
            A0R[1] = "Af3l6AYWTr8JxVzA71Bdm6DDtYsEU63S";
            if (zq != null) {
                i = 0;
                zq.A04(zp, j3, i7, i3, 0, null);
                if (i2 + 1 == c2135b0.A04.A01) {
                    zq.A05(zp, null);
                }
            } else {
                i = 0;
                zp.AKC(j3, i7, i3, 0, null);
            }
        }
        c2135b0.A00++;
        this.A08 = -1;
        this.A05 = i;
        this.A06 = i;
        this.A07 = i;
        return i;
    }

    private int A04(Q9 q9, ZH zh) throws IOException {
        int iA07 = this.A0N.A07(q9, zh, this.A0P);
        if (iA07 == 1) {
            long j = zh.A00;
            if (A0R[5].charAt(5) == '1') {
                throw new RuntimeException();
            }
            A0R[2] = "RAGvnYtuo2L5dWyqulYytw1MjYByWy";
            if (j == 0) {
                A0A();
            }
        }
        return iA07;
    }

    public static int A05(C2148bD c2148bD, long j) {
        int iA00 = c2148bD.A00(j);
        return iA00 == -1 ? c2148bD.A01(j) : iA00;
    }

    public static long A06(C2148bD c2148bD, long j, long j2) {
        int iA05 = A05(c2148bD, j);
        return iA05 == -1 ? j2 : Math.min(c2148bD.A06[iA05], j2);
    }

    private final ZJ A07(long j, int i) {
        long jA06;
        long j2;
        int iA01;
        if (this.A0G.length == 0) {
            return new ZJ(ZL.A03);
        }
        long j3 = -9223372036854775807L;
        long jA07 = -1;
        if (A0R[2].length() == 29) {
            throw new RuntimeException();
        }
        A0R[1] = "2wij9I5ONyqOkJ800a4Tbh3cmUZEr69K";
        int i2 = i != -1 ? i : this.A03;
        if (i2 != -1) {
            C2148bD c2148bD = this.A0G[i2].A04;
            int iA05 = A05(c2148bD, j);
            if (iA05 == -1) {
                return new ZJ(ZL.A03);
            }
            j2 = c2148bD.A07[iA05];
            jA06 = c2148bD.A06[iA05];
            if (j2 < j && iA05 < c2148bD.A01 - 1 && (iA01 = c2148bD.A01(j)) != -1 && iA01 != iA05) {
                j3 = c2148bD.A07[iA01];
                jA07 = c2148bD.A06[iA01];
            }
        } else {
            jA06 = Long.MAX_VALUE;
            j2 = j;
        }
        if (i == -1) {
            for (int i3 = 0; i3 < this.A0G.length; i3++) {
                if (i3 != this.A03) {
                    C2148bD c2148bD2 = this.A0G[i3].A04;
                    jA06 = A06(c2148bD2, j2, jA06);
                    if (j3 != -9223372036854775807L) {
                        jA07 = A06(c2148bD2, j3, jA07);
                    }
                }
            }
        }
        ZL zl = new ZL(j2, jA06);
        return j3 == -9223372036854775807L ? new ZJ(zl) : new ZJ(zl, new ZL(j3, jA07));
    }

    public static /* synthetic */ C2145bA A08(C2145bA c2145bA) {
        return c2145bA;
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0A() {
        this.A04 = 0;
        this.A00 = 0;
    }

    private void A0B() {
        if (this.A02 != 2 || (this.A0I & 2) == 0) {
            return;
        }
        this.A0E.ALm(0, 4).A7E(new C1689Ke().A0v(this.A0F == null ? null : new Metadata(this.A0F)).A14());
        this.A0E.A6x();
        this.A0E.AKP(new Q4(-9223372036854775807L));
    }

    public static void A0C() {
        byte[] bArr = {36, 17, 10, 8, 69, Ascii.SYN, Ascii.FF, Ascii.US, 0, 69, 9, 0, Ascii.SYN, Ascii.SYN, 69, 17, Ascii.CR, 4, Ascii.VT, 69, Ascii.CR, 0, 4, 1, 0, Ascii.ETB, 69, 9, 0, Ascii.VT, 2, 17, Ascii.CR, 69, 77, Ascii.DLE, Ascii.VT, Ascii.SYN, Ascii.DLE, Ascii.NAK, Ascii.NAK, 10, Ascii.ETB, 17, 0, 1, 76, 75, 77, 106, 114, 101, 104, 109, 96, 36, 74, 69, 72, 36, 104, 97, 106, 99, 112, 108, 103, 115, 98, 111, 105, 41, 103, 101, 50, Ascii.SI, Ascii.ESC, 10, 7, 1, 65, Ascii.SUB, Ascii.FS, Ascii.ESC, Ascii.VT, 67, 6, 10};
        if (A0R[6].length() != 7) {
            throw new RuntimeException();
        }
        A0R[6] = "vp8cBxo";
        A0Q = bArr;
    }

    private void A0D(long j) throws L9 {
        while (!this.A0O.isEmpty()) {
            long j2 = this.A0O.peek().A00;
            if (A0R[5].charAt(5) == '1') {
                throw new RuntimeException();
            }
            A0R[6] = "rM8DkGU";
            if (j2 != j) {
                break;
            }
            PF pfPop = this.A0O.pop();
            if (((AbstractC2115ag) pfPop).A00 == 1836019574) {
                A0G(pfPop);
                this.A0O.clear();
                this.A04 = 2;
            } else {
                boolean zIsEmpty = this.A0O.isEmpty();
                if (A0R[5].charAt(5) != '1') {
                    A0R[2] = "NWJoc";
                    if (!zIsEmpty) {
                        this.A0O.peek().A04(pfPop);
                    }
                } else {
                    A0R[3] = "UbZz3qY";
                    if (!zIsEmpty) {
                        this.A0O.peek().A04(pfPop);
                    }
                }
            }
        }
        if (this.A04 != 2) {
            A0A();
        }
    }

    private void A0E(long j) {
        if (this.A01 == 1836086884) {
            this.A0F = new MotionPhotoMetadata(0L, j, -9223372036854775807L, j + ((long) this.A00), this.A09 - ((long) this.A00));
        }
    }

    private void A0F(Q9 q9) throws IOException {
        this.A0M.A0d(8);
        q9.AI6(this.A0M.A0l(), 0, 8);
        AbstractC2121am.A0Q(this.A0M);
        q9.ALL(this.A0M.A09());
        q9.AK3();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0068  */
    /* JADX WARN: Code duplicated, block: B:21:0x0089  */
    /* JADX WARN: Code duplicated, block: B:24:0x0098  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:41:0x010c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0132  */
    /* JADX WARN: Code duplicated, block: B:53:0x013b A[LOOP:1: B:49:0x0121->B:53:0x013b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x0145  */
    /* JADX WARN: Code duplicated, block: B:55:0x0150  */
    /* JADX WARN: Code duplicated, block: B:56:0x0155  */
    /* JADX WARN: Code duplicated, block: B:58:0x015a  */
    /* JADX WARN: Code duplicated, block: B:59:0x015e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0183  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:71:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0162 A[SYNTHETIC] */
    @MetaExoPlayerCustomization
    private void A0G(PF pf) throws L9 {
        boolean z;
        List<C2148bD> listA0O;
        int size;
        int i;
        C2148bD c2148bD;
        C2145bA c2145bA;
        long j;
        int i2;
        C1689Ke c1689KeA07;
        Metadata metadata;
        long j2;
        int i3;
        int i4;
        float f;
        int size2 = -1;
        long jMax = -9223372036854775807L;
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        ArrayList arrayList = new ArrayList();
        Metadata metadata2 = null;
        Metadata metadata3 = null;
        boolean z2 = this.A02 == 1;
        Z6 z6 = new Z6();
        PE peA03 = pf.A03(1969517665);
        if (peA03 != null) {
            Pair<Metadata, Metadata> pairA0A = AbstractC2121am.A0A(peA03);
            metadata2 = (Metadata) pairA0A.first;
            metadata3 = (Metadata) pairA0A.second;
            if (metadata2 != null) {
                z6.A05(metadata2);
            }
        }
        Metadata metadataA0F = null;
        PF pfA02 = pf.A02(1835365473);
        if (pfA02 == null) {
            if ((this.A0I & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            listA0O = AbstractC2121am.A0O(pf, z6, -9223372036854775807L, null, z, z2, new InterfaceC1998Wy() { // from class: com.facebook.ads.redexgen.X.P6
                @Override // com.facebook.ads.redexgen.X.InterfaceC1998Wy
                public final Object A4c(Object obj) {
                    return P4.A08((C2145bA) obj);
                }
            });
            size = listA0O.size();
            for (i = 0; i < size; i++) {
                c2148bD = listA0O.get(i);
                if (c2148bD.A01 == 0) {
                    c2145bA = c2148bD.A03;
                    C2135b0 c2135b0 = new C2135b0(c2145bA, c2148bD, this.A0E.ALm(i, c2145bA.A03));
                    if (c2145bA.A04 != -9223372036854775807L) {
                        j = c2145bA.A04;
                    } else {
                        j = c2148bD.A02;
                    }
                    jMax = Math.max(jMax, j);
                    if (1 == c2145bA.A03) {
                        j4 = j;
                    } else if (2 == c2145bA.A03) {
                        j3 = j;
                    }
                    if (A09(75, 13, 15).equals(c2145bA.A07.A0W)) {
                        i2 = c2148bD.A00 * 16;
                    } else {
                        i2 = c2148bD.A00 + 30;
                    }
                    c1689KeA07 = c2145bA.A07.A07();
                    c1689KeA07.A0h(i2);
                    if (c2145bA.A03 == 2) {
                        f = c2148bD.A01 / (j / 1000000.0f);
                        if (A0R[1].charAt(27) != 'E') {
                            c1689KeA07.A0X(f);
                        } else {
                            A0R[3] = "Esm8BwPLoJFU4IizEhRFCHpa38l5wWv2";
                            c1689KeA07.A0X(f);
                        }
                    }
                    if (jMax > 0) {
                        j2 = 0;
                        i3 = 0;
                        while (true) {
                            i4 = c2148bD.A01;
                            if (A0R[7].charAt(17) != 'd') {
                                A0R[1] = "2HULok8pK8e80mdeekQEDPpO0k8EG1Jm";
                                if (i3 < i4) {
                                    c1689KeA07.A0a((int) ((8000000 * j2) / jMax));
                                    break;
                                } else {
                                    j2 += (long) c2148bD.A05[i3];
                                    i3++;
                                }
                            }
                        }
                    }
                    AbstractC2132ax.A0D(c2145bA.A03, z6, c1689KeA07);
                    int i5 = c2145bA.A03;
                    Metadata[] metadataArr = new Metadata[2];
                    metadataArr[0] = metadata3;
                    if (this.A0P.isEmpty()) {
                        metadata = null;
                    } else {
                        metadata = new Metadata(this.A0P);
                    }
                    metadataArr[1] = metadata;
                    AbstractC2132ax.A0C(i5, metadata2, metadataA0F, c1689KeA07, metadataArr);
                    c2135b0.A01.A7E(c1689KeA07.A14());
                    if (c2145bA.A03 == 2) {
                        size2 = arrayList.size();
                    }
                    arrayList.add(c2135b0);
                }
            }
            this.A03 = size2;
            this.A0B = jMax;
            this.A0C = j3;
            this.A0A = j4;
            this.A0G = (C2135b0[]) arrayList.toArray(new C2135b0[0]);
            this.A0H = A0N(this.A0G);
            this.A0E.A6x();
            this.A0E.AKP(this);
            return;
        }
        metadataA0F = AbstractC2121am.A0F(pfA02);
        if (A0R[3].length() != 3) {
            A0R[7] = "amAXpRkv0F99gblZmCshCiTriude2aOX";
            if ((this.A0I & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            listA0O = AbstractC2121am.A0O(pf, z6, -9223372036854775807L, null, z, z2, new InterfaceC1998Wy() { // from class: com.facebook.ads.redexgen.X.P6
                @Override // com.facebook.ads.redexgen.X.InterfaceC1998Wy
                public final Object A4c(Object obj) {
                    return P4.A08((C2145bA) obj);
                }
            });
            size = listA0O.size();
            while (i < size) {
                c2148bD = listA0O.get(i);
                if (c2148bD.A01 == 0) {
                    c2145bA = c2148bD.A03;
                    C2135b0 c2135b1 = new C2135b0(c2145bA, c2148bD, this.A0E.ALm(i, c2145bA.A03));
                    if (c2145bA.A04 != -9223372036854775807L) {
                        j = c2145bA.A04;
                    } else {
                        j = c2148bD.A02;
                    }
                    jMax = Math.max(jMax, j);
                    if (1 == c2145bA.A03) {
                        j4 = j;
                    } else if (2 == c2145bA.A03) {
                        j3 = j;
                    }
                    if (A09(75, 13, 15).equals(c2145bA.A07.A0W)) {
                        i2 = c2148bD.A00 * 16;
                    } else {
                        i2 = c2148bD.A00 + 30;
                    }
                    c1689KeA07 = c2145bA.A07.A07();
                    c1689KeA07.A0h(i2);
                    if (c2145bA.A03 == 2 && j > 0 && c2148bD.A01 > 1) {
                        f = c2148bD.A01 / (j / 1000000.0f);
                        if (A0R[1].charAt(27) != 'E') {
                            c1689KeA07.A0X(f);
                        } else {
                            A0R[3] = "Esm8BwPLoJFU4IizEhRFCHpa38l5wWv2";
                            c1689KeA07.A0X(f);
                        }
                    }
                    if (jMax > 0 && c2148bD.A01 > 0 && c2148bD.A05.length == c2148bD.A01) {
                        j2 = 0;
                        i3 = 0;
                        while (true) {
                            i4 = c2148bD.A01;
                            if (A0R[7].charAt(17) != 'd') {
                                A0R[1] = "2HULok8pK8e80mdeekQEDPpO0k8EG1Jm";
                                if (i3 < i4) {
                                    c1689KeA07.A0a((int) ((8000000 * j2) / jMax));
                                    break;
                                } else {
                                    j2 += (long) c2148bD.A05[i3];
                                    i3++;
                                }
                            }
                        }
                    }
                    AbstractC2132ax.A0D(c2145bA.A03, z6, c1689KeA07);
                    int i6 = c2145bA.A03;
                    Metadata[] metadataArr2 = new Metadata[2];
                    metadataArr2[0] = metadata3;
                    if (this.A0P.isEmpty()) {
                        metadata = null;
                    } else {
                        metadata = new Metadata(this.A0P);
                    }
                    metadataArr2[1] = metadata;
                    AbstractC2132ax.A0C(i6, metadata2, metadataA0F, c1689KeA07, metadataArr2);
                    c2135b1.A01.A7E(c1689KeA07.A14());
                    if (c2145bA.A03 == 2 && size2 == -1) {
                        size2 = arrayList.size();
                    }
                    arrayList.add(c2135b1);
                }
            }
            this.A03 = size2;
            this.A0B = jMax;
            this.A0C = j3;
            this.A0A = j4;
            this.A0G = (C2135b0[]) arrayList.toArray(new C2135b0[0]);
            this.A0H = A0N(this.A0G);
            this.A0E.A6x();
            this.A0E.AKP(this);
            return;
        }
        throw new RuntimeException();
    }

    private void A0H(C2135b0 c2135b0, long j) {
        C2148bD c2148bD = c2135b0.A04;
        int iA00 = c2148bD.A00(j);
        if (iA00 == -1) {
            iA00 = c2148bD.A01(j);
        }
        c2135b0.A00 = iA00;
    }

    public static boolean A0I(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ac  */
    public static boolean A0J(int i) {
        if (i != 1835296868 && i != 1836476516) {
            String[] strArr = A0R;
            if (strArr[4].length() == strArr[0].length()) {
                A0R[2] = "yIz6Khugmmhf7TjFZ5bAbnjTIq";
                if (i != 1751411826 && i != 1937011556 && i != 1937011827 && i != 1937011571 && i != 1668576371 && i != 1701606260 && i != 1937011555) {
                    if (A0R[7].charAt(17) == 'd') {
                        throw new RuntimeException();
                    }
                    A0R[6] = "TRPmQPE";
                    if (i != 1937011578 && i != 1937013298 && i != 1937007471) {
                        if (A0R[6].length() == 7) {
                            String[] strArr2 = A0R;
                            strArr2[4] = "fPOyPkKYBV4";
                            strArr2[0] = "yzRcK4THGge";
                            if (i != 1668232756) {
                                String[] strArr3 = A0R;
                                if (strArr3[4].length() == strArr3[0].length()) {
                                    A0R[3] = "YFf7ARJTWowjFpKr6jGMAm1ls6qp7H";
                                    if (i != 1953196132) {
                                        if (i == 1718909296) {
                                        }
                                    }
                                } else if (i != 1953196132) {
                                    if (i == 1718909296 && i != 1969517665 && i != 1801812339 && i != 1768715124) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return true;
    }

    private boolean A0K(Q9 q9) throws IOException {
        PF pfPeek;
        if (this.A00 == 0) {
            if (!q9.AIe(this.A0J.A0l(), 0, 8, true)) {
                A0B();
                return false;
            }
            this.A00 = 8;
            this.A0J.A0f(0);
            this.A09 = this.A0J.A0Q();
            this.A01 = this.A0J.A0C();
        }
        if (this.A09 == 1) {
            q9.readFully(this.A0J.A0l(), 8, 8);
            this.A00 += 8;
            C1744Mk c1744Mk = this.A0J;
            if (A0R[5].charAt(5) == '1') {
                throw new RuntimeException();
            }
            A0R[1] = "lJfceHIzLNg02prOAeq7AYV4grHEkMdR";
            this.A09 = c1744Mk.A0R();
        } else if (this.A09 == 0) {
            long jA90 = q9.A90();
            if (jA90 == -1 && (pfPeek = this.A0O.peek()) != null) {
                jA90 = pfPeek.A00;
            }
            if (jA90 != -1) {
                this.A09 = (jA90 - q9.A9Q()) + ((long) this.A00);
            }
        }
        if (this.A09 < this.A00) {
            throw L9.A00(A09(0, 48, 4));
        }
        if (A0I(this.A01)) {
            long jA9Q = (q9.A9Q() + this.A09) - ((long) this.A00);
            if (this.A09 != this.A00 && this.A01 == 1835365473) {
                A0F(q9);
            }
            this.A0O.push(new PF(this.A01, jA9Q));
            if (this.A09 == this.A00) {
                A0D(jA9Q);
            } else {
                A0A();
            }
        } else if (A0J(this.A01)) {
            AbstractC1722Ln.A08(this.A00 == 8);
            AbstractC1722Ln.A08(this.A09 <= 2147483647L);
            C1744Mk c1744Mk2 = new C1744Mk((int) this.A09);
            System.arraycopy(this.A0J.A0l(), 0, c1744Mk2.A0l(), 0, 8);
            this.A0D = c1744Mk2;
            this.A04 = 1;
        } else {
            A0E(q9.A9Q() - ((long) this.A00));
            this.A0D = null;
            this.A04 = 1;
        }
        return true;
    }

    private boolean A0L(Q9 q9, ZH zh) throws IOException {
        long j = this.A09 - ((long) this.A00);
        long jA9Q = q9.A9Q() + j;
        boolean z = false;
        C1744Mk c1744Mk = this.A0D;
        if (c1744Mk != null) {
            q9.readFully(c1744Mk.A0l(), this.A00, (int) j);
            if (this.A01 == 1718909296) {
                this.A02 = A02(c1744Mk);
            } else if (!this.A0O.isEmpty()) {
                this.A0O.peek().A05(new PE(this.A01, c1744Mk));
            }
        } else if (j < 262144) {
            q9.ALL((int) j);
        } else {
            zh.A00 = q9.A9Q() + j;
            z = true;
        }
        A0D(jA9Q);
        return z && this.A04 != 2;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A0M() {
        return new InterfaceC2043Yv[]{new P4()};
    }

    public static long[][] A0N(C2135b0[] c2135b0Arr) {
        long[][] jArr = new long[c2135b0Arr.length][];
        int[] iArr = new int[c2135b0Arr.length];
        long[] jArr2 = new long[c2135b0Arr.length];
        boolean[] zArr = new boolean[c2135b0Arr.length];
        for (int i = 0; i < c2135b0Arr.length; i++) {
            jArr[i] = new long[c2135b0Arr[i].A04.A01];
            jArr2[i] = c2135b0Arr[i].A04.A07[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < c2135b0Arr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < c2135b0Arr.length; i4++) {
                if (!zArr[i4] && jArr2[i4] <= j2) {
                    i3 = i4;
                    j2 = jArr2[i4];
                }
            }
            int i5 = iArr[i3];
            jArr[i3][i5] = j;
            j += (long) c2135b0Arr[i3].A04.A05[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr[i3].length) {
                jArr2[i3] = c2135b0Arr[i3].A04.A07[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        return A07(j, -1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A0E = interfaceC2044Yw;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        while (true) {
            switch (this.A04) {
                case 0:
                    boolean zA0K = A0K(q9);
                    if (A0R[1].charAt(27) != 'E') {
                        throw new RuntimeException();
                    }
                    A0R[7] = "lknEHSqdxhfluWih1O1ZMljas1MMEpwr";
                    if (!zA0K) {
                        return -1;
                    }
                    break;
                case 1:
                    if (A0L(q9, zh)) {
                        return 1;
                    }
                    break;
                case 2:
                    return A03(q9, zh);
                case 3:
                    return A04(q9, zh);
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        this.A0O.clear();
        this.A00 = 0;
        this.A08 = -1;
        this.A05 = 0;
        this.A06 = 0;
        this.A07 = 0;
        if (j == 0) {
            if (this.A04 != 3) {
                A0A();
                return;
            } else {
                this.A0N.A08();
                this.A0P.clear();
                return;
            }
        }
        for (C2135b0 c2135b0 : this.A0G) {
            A0H(c2135b0, j2);
            if (c2135b0.A02 != null) {
                c2135b0.A02.A02();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2143b8.A02(q9, (this.A0I & 2) != 0);
    }
}
