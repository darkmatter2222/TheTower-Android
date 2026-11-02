package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P7 implements InterfaceC2043Yv {
    public static byte[] A0e;
    public static String[] A0f = {"sO39cWCOFCUi2", "3J13aAXeHBslCaHm4OiPxJcF4UiPBDWP", "7JGaZC3prhWZ5I2IpDwO5CcmXcw6ZOCb", "9P68A5ff2eKCf", "o9carFUVPOdFKZpiuc1", "inzJrXFaWAK4fUb0mTW", "qp89PgUGoSE", ""};
    public static final InterfaceC2047Yz A0g;
    public static final VC A0h;
    public static final byte[] A0i;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public SparseArray<C2128at> A0D;
    public C1744Mk A0E;
    public InterfaceC2044Yw A0F;
    public C2128at A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public ZP[] A0K;
    public ZP[] A0L;
    public final int A0M;
    public final DrmInitData A0N;
    public final C1744Mk A0O;
    public final C1744Mk A0P;
    public final C1744Mk A0Q;
    public final C1744Mk A0R;
    public final C1744Mk A0S;
    public final C1752Ms A0T;
    public final ZP A0U;
    public final C2060Zm A0V;
    public final C2145bA A0W;
    public final ArrayDeque<PF> A0X;
    public final ArrayDeque<C2127as> A0Y;
    public final List<VC> A0Z;
    public final boolean A0a;
    public final boolean A0b;
    public final boolean A0c;
    public final byte[] A0d;

    static {
        A0E();
        A0g = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.PB
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return P7.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
        A0i = new byte[]{-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
        A0h = new C1689Ke().A11(A0B(717, 18, 122)).A14();
    }

    public P7() {
        this(0);
    }

    public P7(int i) {
        this(i, null);
    }

    public P7(int i, C1752Ms c1752Ms) {
        this(i, c1752Ms, null, null);
    }

    public P7(int i, C1752Ms c1752Ms, C2145bA c2145bA, DrmInitData drmInitData) {
        this(i, c1752Ms, c2145bA, drmInitData, Collections.emptyList());
    }

    public P7(int i, C1752Ms c1752Ms, C2145bA c2145bA, DrmInitData drmInitData, List<VC> list) {
        this(i, c1752Ms, c2145bA, drmInitData, list, null, false, false, false);
    }

    public P7(int i, C1752Ms c1752Ms, C2145bA c2145bA, DrmInitData drmInitData, List<VC> list, ZP zp, boolean z, boolean z2, boolean z3) {
        this.A0A = -9223372036854775807L;
        this.A0M = (c2145bA != null ? 8 : 0) | i;
        this.A0T = c1752Ms;
        this.A0W = c2145bA;
        this.A0N = drmInitData;
        this.A0Z = Collections.unmodifiableList(list);
        this.A0U = zp;
        this.A0c = z;
        this.A0b = z2;
        this.A0a = z3;
        this.A0V = new C2060Zm();
        this.A0O = new C1744Mk(16);
        this.A0R = new C1744Mk(ZE.A03);
        this.A0Q = new C1744Mk(5);
        this.A0P = new C1744Mk();
        this.A0d = new byte[16];
        this.A0S = new C1744Mk(this.A0d);
        this.A0X = new ArrayDeque<>();
        this.A0Y = new ArrayDeque<>();
        this.A0D = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        A0C();
    }

    public static int A00(C2128at c2128at, int i, long j, int i2, C1744Mk c1744Mk, int i3) {
        int iA0C;
        int i4 = i3;
        long j2 = j;
        c1744Mk.A0f(8);
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        C2145bA c2145bA = c2128at.A05;
        C2147bC c2147bC = c2128at.A07;
        C2122an c2122an = c2147bC.A06;
        c2147bC.A0C[i] = c1744Mk.A0L();
        c2147bC.A0E[i] = c2147bC.A04;
        if ((iA02 & 1) != 0) {
            long[] jArr = c2147bC.A0E;
            jArr[i] = jArr[i] + ((long) c1744Mk.A0C());
        }
        boolean z = (iA02 & 4) != 0;
        int iA0L = c2122an.A01;
        if (z) {
            iA0L = c1744Mk.A0L();
        }
        boolean z2 = (iA02 & 256) != 0;
        boolean z3 = (iA02 & 512) != 0;
        boolean z4 = (iA02 & 1024) != 0;
        boolean z5 = (iA02 & 2048) != 0;
        long j3 = 0;
        if (c2145bA.A08 != null && c2145bA.A08.length == 1 && c2145bA.A08[0] == 0) {
            j3 = c2145bA.A09[0];
        }
        int[] iArr = c2147bC.A0B;
        long[] jArr2 = c2147bC.A0D;
        boolean[] zArr = c2147bC.A0G;
        boolean z6 = c2145bA.A03 == 2 && (i2 & 1) != 0;
        int i5 = i4 + c2147bC.A0C[i];
        long j4 = c2145bA.A06;
        if (i > 0) {
            j2 = c2147bC.A05;
        }
        while (i4 < i5) {
            int iA0L2 = z2 ? c1744Mk.A0L() : c2122an.A00;
            int iA0L3 = z3 ? c1744Mk.A0L() : c2122an.A03;
            if (i4 == 0 && z) {
                iA0C = iA0L;
            } else {
                iA0C = z4 ? c1744Mk.A0C() : c2122an.A01;
            }
            if (A0f[1].charAt(30) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[6] = "7ekXoexQQmy";
            strArr[5] = "InaD67iDP2cJ4lebIla";
            jArr2[i4] = N1.A0U((((long) (z5 ? c1744Mk.A0C() : 0)) + j2) - j3, 1000000L, j4);
            zArr[i4] = ((iA0C >> 16) & 1) == 0 && (!z6 || i4 == 0);
            iArr[i4] = iA0L3;
            j2 += (long) iA0L2;
            i4++;
        }
        c2147bC.A05 = j2;
        return i5;
    }

    public static long A01(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        return AbstractC2115ag.A03(c1744Mk.A0C()) == 0 ? c1744Mk.A0Q() : c1744Mk.A0R();
    }

    public static long A02(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        return AbstractC2115ag.A03(c1744Mk.A0C()) == 1 ? c1744Mk.A0R() : c1744Mk.A0Q();
    }

    public static Pair<Integer, C2122an> A03(C1744Mk c1744Mk) {
        c1744Mk.A0f(12);
        return Pair.create(Integer.valueOf(c1744Mk.A0C()), new C2122an(c1744Mk.A0L() - 1, c1744Mk.A0L(), c1744Mk.A0L(), c1744Mk.A0C()));
    }

    public static Pair<Long, QJ> A04(C1744Mk c1744Mk, long j) throws L9 {
        long jA0R;
        long jA0R2;
        c1744Mk.A0f(8);
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        c1744Mk.A0g(4);
        long jA0Q = c1744Mk.A0Q();
        if (iA03 == 0) {
            jA0R = c1744Mk.A0Q();
            jA0R2 = j + c1744Mk.A0Q();
        } else {
            jA0R = c1744Mk.A0R();
            jA0R2 = j + c1744Mk.A0R();
        }
        long jA0U = N1.A0U(jA0R, 1000000L, jA0Q);
        c1744Mk.A0g(2);
        int iA0M = c1744Mk.A0M();
        int[] iArr = new int[iA0M];
        long[] jArr = new long[iA0M];
        long[] jArr2 = new long[iA0M];
        long[] jArr3 = new long[iA0M];
        long jA0U2 = jA0U;
        for (int i = 0; i < iA0M; i++) {
            int iA0C = c1744Mk.A0C();
            if ((Integer.MIN_VALUE & iA0C) != 0) {
                throw new L9(A0B(634, 28, 9));
            }
            long jA0Q2 = c1744Mk.A0Q();
            iArr[i] = Integer.MAX_VALUE & iA0C;
            jArr[i] = jA0R2;
            jArr3[i] = jA0U2;
            jA0R += jA0Q2;
            jA0U2 = N1.A0U(jA0R, 1000000L, jA0Q);
            jArr2[i] = jA0U2 - jArr3[i];
            c1744Mk.A0g(4);
            jA0R2 += (long) iArr[i];
        }
        return Pair.create(Long.valueOf(jA0U), new QJ(iArr, jArr, jArr2, jArr3));
    }

    public static DrmInitData A05(List<PE> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PE pe = list.get(i);
            if (((AbstractC2115ag) pe).A00 == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = pe.A00.A00;
                UUID uuidA02 = AbstractC2138b3.A02(bArr);
                if (uuidA02 == null) {
                    String strA0B = A0B(128, 22, 124);
                    if (A0f[7].length() == 31) {
                        throw new RuntimeException();
                    }
                    A0f[1] = "lUOMyA0IdltJAYAt2Kxw3ZV9qw5fH3Ns";
                    MV.A07(strA0B, A0B(455, 42, 51));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA02, A0B(766, 9, 47), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private C2122an A06(SparseArray<C2122an> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (C2122an) AbstractC1722Ln.A01(sparseArray.get(i));
    }

    public static C2128at A07(SparseArray<C2128at> sparseArray) {
        C2128at c2128at = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            C2128at c2128atValueAt = sparseArray.valueAt(i);
            int i2 = c2128atValueAt.A02;
            int i3 = c2128atValueAt.A07.A01;
            if (A0f[2].charAt(15) == 'A') {
                throw new RuntimeException();
            }
            A0f[4] = "qad58z6";
            if (i2 != i3) {
                long j2 = c2128atValueAt.A07.A0E[c2128atValueAt.A02];
                if (j2 < j) {
                    c2128at = c2128atValueAt;
                    j = j2;
                }
            }
        }
        return c2128at;
    }

    public static C2128at A08(SparseArray<C2128at> sparseArray, int i, boolean z) {
        if (sparseArray.size() != 1 || z) {
            return sparseArray.get(i);
        }
        C2128at c2128atValueAt = sparseArray.valueAt(0);
        if (A0f[4].length() == 12) {
            throw new RuntimeException();
        }
        A0f[7] = "YVo7s93wer1GpxY";
        return c2128atValueAt;
    }

    public static C2128at A09(C1744Mk c1744Mk, SparseArray<C2128at> sparseArray, boolean z) {
        c1744Mk.A0f(8);
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        C2128at c2128atA08 = A08(sparseArray, c1744Mk.A0C(), z);
        if (c2128atA08 == null) {
            String[] strArr = A0f;
            if (strArr[6].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A0f[4] = "fC";
            return null;
        }
        int i = iA02 & 1;
        if (A0f[2].charAt(15) == 'A') {
            throw new RuntimeException();
        }
        A0f[2] = "nHd2GKC6avBKXDLVsIU0TahN3dA1C9n2";
        if (i != 0) {
            long jA0R = c1744Mk.A0R();
            c2128atA08.A07.A04 = jA0R;
            c2128atA08.A07.A03 = jA0R;
        }
        C2122an c2122an = c2128atA08.A04;
        c2128atA08.A07.A06 = new C2122an((iA02 & 2) != 0 ? c1744Mk.A0L() - 1 : c2122an.A02, (iA02 & 8) != 0 ? c1744Mk.A0L() : c2122an.A00, (iA02 & 16) != 0 ? c1744Mk.A0L() : c2122an.A03, (iA02 & 32) != 0 ? c1744Mk.A0L() : c2122an.A01);
        return c2128atA08;
    }

    private final C2145bA A0A(C2145bA c2145bA) {
        return c2145bA;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 90);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0C() {
        this.A02 = 0;
        this.A00 = 0;
    }

    private void A0D() {
        if (this.A0L == null) {
            this.A0L = new ZP[2];
            int i = 0;
            if (this.A0U != null) {
                this.A0L[0] = this.A0U;
                i = 0 + 1;
            }
            if ((this.A0M & 4) != 0) {
                this.A0L[i] = this.A0F.ALm(this.A0D.size(), 5);
                i++;
            }
            this.A0L = (ZP[]) Arrays.copyOf(this.A0L, i);
            for (ZP zp : this.A0L) {
                zp.A7E(A0h);
            }
        }
        if (this.A0K == null) {
            this.A0K = new ZP[this.A0Z.size()];
            for (int i2 = 0; i2 < this.A0K.length; i2++) {
                ZP zpALm = this.A0F.ALm(this.A0D.size() + 1 + i2, 3);
                zpALm.A7E(this.A0Z.get(i2));
                this.A0K[i2] = zpALm;
            }
        }
    }

    public static void A0E() {
        A0e = new byte[]{-51, -63, -89, -38, -43, -45, -122, -39, -49, -32, -53, -122, -46, -53, -39, -39, -122, -38, -50, -57, -44, -122, -50, -53, -57, -54, -53, -40, -122, -46, -53, -44, -51, -38, -50, -122, -114, -37, -44, -39, -37, -42, -42, -43, -40, -38, -53, -54, -113, -108, -40, 1, 7, 5, Ascii.FF, -77, -10, 2, 8, 1, 7, -77, -4, 1, -77, 6, -11, -6, 3, -77, -76, -48, -77, -60, -77, -69, 8, 1, 6, 8, 3, 3, 2, 5, 7, -8, -9, -68, -63, -49, -8, -2, -4, 3, -86, -19, -7, -1, -8, -2, -86, -13, -8, -86, -3, -15, -6, -18, -86, -85, -57, -86, -69, -86, -78, -1, -8, -3, -1, -6, -6, -7, -4, -2, -17, -18, -77, -72, Ascii.FS, 72, 55, Base64.padSymbol, 67, 59, 68, 74, 59, 58, 35, 70, 10, Ascii.ESC, 78, 74, 72, 55, 57, 74, 69, 72, -32, -2, 5, 6, 9, 0, 5, -2, -73, 5, -4, -2, -8, Ascii.VT, 0, Ascii.CR, -4, -73, 6, -3, -3, 10, -4, Ascii.VT, -73, Ascii.VT, 6, -73, 10, -8, 4, 7, 3, -4, -73, -5, -8, Ascii.VT, -8, -59, -71, -34, -26, -47, -36, -39, -44, -112, -66, -79, -68, -112, -36, -43, -34, -41, -28, -40, -46, -21, -25, -20, -90, -25, -6, -11, -13, -90, -22, -21, -20, -17, -12, -21, -7, -90, -21, -2, -6, -21, -12, -22, -21, -22, -90, -25, -6, -11, -13, -90, -7, -17, 0, -21, -90, -82, -5, -12, -7, -5, -10, -10, -11, -8, -6, -21, -22, -81, -76, 36, Base64.padSymbol, 57, 62, -8, 57, 76, 71, 69, -8, 79, 65, 76, SignedBytes.MAX_POWER_OF_TWO, -8, 68, Base64.padSymbol, 70, 63, 76, SignedBytes.MAX_POWER_OF_TWO, -8, Ascii.SYN, -8, 10, 9, Ascii.FF, Ascii.SI, Ascii.FF, Ascii.DLE, Ascii.VT, Ascii.SO, Ascii.FF, Ascii.SI, -8, 0, 77, 70, 75, 77, 72, 72, 71, 74, 76, Base64.padSymbol, 60, 1, 6, 32, 57, 66, 59, 72, 60, -12, 65, Base64.padSymbol, 71, 65, 53, 72, 55, 60, Ascii.SO, -12, -6, 17, 17, Ascii.RS, Ascii.DLE, Ascii.US, -53, Ascii.US, Ascii.SUB, -53, Ascii.DLE, Ascii.EM, Ascii.SO, Ascii.GS, 36, Ascii.ESC, Ascii.US, Ascii.DC4, Ascii.SUB, Ascii.EM, -53, Ascii.SI, Ascii.FF, Ascii.US, Ascii.FF, -53, 34, Ascii.FF, Ascii.RS, -53, Ascii.EM, Ascii.DLE, Ascii.DC2, Ascii.FF, Ascii.US, Ascii.DC4, 33, Ascii.DLE, -39, -19, 4, 4, 17, 3, Ascii.DC2, -66, Ascii.DC2, Ascii.CR, -66, 3, Ascii.FF, 2, -66, Ascii.CR, 4, -66, Ascii.VT, 2, -1, Ascii.DC2, -66, Ascii.NAK, -1, 17, -66, Ascii.FF, 3, 5, -1, Ascii.DC2, 7, Ascii.DC4, 3, -52, -73, -34, -51, -38, -38, -47, -52, -47, -42, -49, -120, -68, -38, -55, -53, -45, -83, -42, -53, -38, -31, -40, -36, -47, -41, -42, -86, -41, -32, -120, -40, -55, -38, -55, -43, -51, -36, -51, -38, -37, -120, -47, -37, -120, -35, -42, -37, -35, -40, -40, -41, -38, -36, -51, -52, -106, -32, -8, -10, -3, -3, -14, -15, -83, -3, 0, 0, -11, -83, -18, 1, -4, -6, -83, -75, -13, -18, -10, -7, -14, -15, -83, 1, -4, -83, -14, 5, 1, -1, -18, -16, 1, -83, 2, 2, -10, -15, -74, -13, Ascii.VT, 9, Ascii.DLE, Ascii.DLE, 9, Ascii.SO, 7, -64, 1, Ascii.DC4, Ascii.SI, Ascii.CR, -64, Ascii.ETB, 9, Ascii.DC4, 8, -64, Ascii.FF, 5, Ascii.SO, 7, Ascii.DC4, 8, -64, -34, -64, -46, -47, -44, -41, -44, -40, -45, -42, -44, -41, -64, -56, Ascii.NAK, Ascii.SO, 19, Ascii.NAK, Ascii.DLE, Ascii.DLE, Ascii.SI, Ascii.DC2, Ascii.DC4, 5, 4, -55, -50, -27, -3, -5, 2, 2, -5, 0, -7, -78, 7, 0, 5, 7, 2, 2, 1, 4, 6, -9, -10, -78, -9, -1, 5, -7, -78, 8, -9, 4, 5, -5, 1, 0, -52, -78, -37, -12, -21, -2, -10, -21, -23, -6, -21, -22, -90, -13, -11, -11, -4, -90, -24, -11, -2, -76, -5, Ascii.DC4, Ascii.VT, Ascii.RS, Ascii.SYN, Ascii.VT, 9, Ascii.SUB, Ascii.VT, 10, -58, Ascii.EM, 7, Ascii.SI, Ascii.NAK, -58, Ascii.VT, Ascii.DC4, Ascii.SUB, Ascii.CAN, Ascii.US, -58, 9, Ascii.NAK, Ascii.ESC, Ascii.DC4, Ascii.SUB, -32, -58, -72, -47, -53, -60, -47, -57, -49, -56, -57, -125, -52, -47, -57, -52, -43, -56, -58, -41, -125, -43, -56, -55, -56, -43, -56, -47, -58, -56, -28, -17, 0, -9, -17, -16, -6, -13, -82, -6, -13, -4, -11, 2, -10, -82, -14, -13, 1, -15, 0, -9, -2, 2, -9, -3, -4, -82, -9, -4, -82, 1, -11, -2, -14, -82, -12, -3, 3, -4, -14, -82, -74, 3, -4, 1, 3, -2, -2, -3, 0, 2, -13, -14, -73, 53, 68, 68, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, 55, 53, 72, Base64.padSymbol, 67, 66, 3, 76, 1, 57, 65, 71, 59, 6, Ascii.NAK, Ascii.NAK, 17, Ascii.SO, 8, 6, Ascii.EM, Ascii.SO, Ascii.DC4, 19, -44, Ascii.GS, -46, Ascii.DC2, Ascii.NAK, -39, -46, Ascii.ESC, Ascii.EM, Ascii.EM, -6, -19, -24, -23, -13, -77, -20, -23, -6, -25, -1, -14, -19, -18, -8, -72, -10, -7, -67};
    }

    private void A0F(long j) {
        while (!this.A0Y.isEmpty()) {
            C2127as c2127asRemoveFirst = this.A0Y.removeFirst();
            this.A03 -= c2127asRemoveFirst.A00;
            long jA05 = j + c2127asRemoveFirst.A01;
            if (this.A0T != null) {
                jA05 = this.A0T.A05(jA05);
            }
            for (ZP zp : this.A0L) {
                zp.AKC(jA05, 1, c2127asRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0G(long j) throws L9 {
        while (!this.A0X.isEmpty() && this.A0X.peek().A00 == j) {
            A0P(this.A0X.pop());
        }
        A0C();
    }

    public static void A0H(C1744Mk c1744Mk, int i, C2147bC c2147bC) throws L9 {
        c1744Mk.A0f(i + 8);
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        if ((iA02 & 1) != 0) {
            throw new L9(A0B(399, 56, 14));
        }
        boolean z = (iA02 & 2) != 0;
        int iA0L = c1744Mk.A0L();
        if (iA0L != c2147bC.A00) {
            throw new L9(A0B(308, 17, 122) + iA0L + A0B(0, 2, 71) + c2147bC.A00);
        }
        Arrays.fill(c2147bC.A0F, 0, iA0L, z);
        c2147bC.A02(c1744Mk.A07());
        c2147bC.A04(c1744Mk);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0164  */
    private void A0I(C1744Mk c1744Mk, Uri uri) {
        String str;
        String str2;
        long jA05;
        long jA0U;
        long jA0Q;
        if (this.A0L == null || this.A0L.length == 0) {
            return;
        }
        c1744Mk.A0f(8);
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        long jA0U2 = -9223372036854775807L;
        switch (iA03) {
            case 0:
                str = (String) AbstractC1722Ln.A01(c1744Mk.A0U());
                str2 = (String) AbstractC1722Ln.A01(c1744Mk.A0U());
                long jA0Q2 = c1744Mk.A0Q();
                jA0U2 = N1.A0U(c1744Mk.A0Q(), 1000000L, jA0Q2);
                jA05 = this.A0C != -9223372036854775807L ? this.A0C + jA0U2 : -9223372036854775807L;
                jA0U = N1.A0U(c1744Mk.A0Q(), 1000L, jA0Q2);
                jA0Q = c1744Mk.A0Q();
                break;
            case 1:
                long jA0Q3 = c1744Mk.A0Q();
                jA05 = N1.A0U(c1744Mk.A0R(), 1000000L, jA0Q3);
                jA0U = N1.A0U(c1744Mk.A0Q(), 1000L, jA0Q3);
                jA0Q = c1744Mk.A0Q();
                str = (String) AbstractC1722Ln.A01(c1744Mk.A0U());
                str2 = (String) AbstractC1722Ln.A01(c1744Mk.A0U());
                break;
            default:
                MV.A07(A0B(128, 22, 124), A0B(550, 35, 56) + iA03);
                return;
        }
        byte[] bArr = new byte[c1744Mk.A07()];
        c1744Mk.A0k(bArr, 0, c1744Mk.A07());
        int i = 0;
        C1744Mk c1744Mk2 = new C1744Mk(this.A0V.A01(new EventMessage(str, str2, jA0U, jA0Q, bArr)));
        int iA07 = c1744Mk2.A07();
        ZP[] zpArr = this.A0L;
        int length = zpArr.length;
        int i2 = 0;
        while (i2 < length) {
            ZP zp = zpArr[i2];
            c1744Mk2.A0f(i);
            zp.ALz(uri);
            zp.AK9(c1744Mk2, iA07);
            i2++;
            i = 0;
        }
        if (jA05 == -9223372036854775807L) {
            this.A0Y.addLast(new C2127as(jA0U2, iA07));
            this.A03 += iA07;
            return;
        }
        C1752Ms c1752Ms = this.A0T;
        if (A0f[1].charAt(30) == 'd') {
            throw new RuntimeException();
        }
        String[] strArr = A0f;
        strArr[6] = "uaMSplb4u0m";
        strArr[5] = "HaGtuqQyLFEkuZ0tf4T";
        if (c1752Ms != null) {
            jA05 = this.A0T.A05(jA05);
        }
        if (this.A0b) {
            long j = this.A0A;
            String[] strArr2 = A0f;
            if (strArr2[3].length() != strArr2[0].length()) {
                A0f[4] = "tNv1kdHelC6xYU53lDYUVckkyBjgFP";
                if (j != -9223372036854775807L) {
                    jA05 = this.A0A;
                }
            } else {
                String[] strArr3 = A0f;
                strArr3[3] = "xakMNbTBAGyrm";
                strArr3[0] = "M4LbGO3NwDTbj";
                if (j != -9223372036854775807L) {
                    jA05 = this.A0A;
                }
            }
        }
        for (ZP zp2 : this.A0L) {
            zp2.AKC(jA05, 1, iA07, 0, null);
        }
    }

    public static void A0J(C1744Mk c1744Mk, C1744Mk c1744Mk2, String str, C2147bC c2147bC) throws L9 {
        c1744Mk.A0f(8);
        int iA0C = c1744Mk.A0C();
        if (c1744Mk.A0C() != 1936025959) {
            return;
        }
        if (AbstractC2115ag.A03(iA0C) == 1) {
            c1744Mk.A0g(4);
        }
        if (c1744Mk.A0C() != 1) {
            throw new L9(A0B(50, 39, 57));
        }
        c1744Mk2.A0f(8);
        int iA0C2 = c1744Mk2.A0C();
        if (c1744Mk2.A0C() != 1936025959) {
            return;
        }
        int iA03 = AbstractC2115ag.A03(iA0C2);
        if (iA03 == 1) {
            if (c1744Mk2.A0Q() == 0) {
                throw new L9(A0B(662, 55, 52));
            }
        } else if (iA03 >= 2) {
            c1744Mk2.A0g(4);
        }
        if (c1744Mk2.A0Q() != 1) {
            throw new L9(A0B(89, 39, 48));
        }
        c1744Mk2.A0g(1);
        int iA0I = c1744Mk2.A0I();
        int i = (iA0I & 240) >> 4;
        int i2 = iA0I & 15;
        boolean z = c1744Mk2.A0I() == 1;
        if (z) {
            int iA0I2 = c1744Mk2.A0I();
            byte[] bArr = new byte[16];
            c1744Mk2.A0k(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (iA0I2 == 0) {
                int iA0I3 = c1744Mk2.A0I();
                bArr2 = new byte[iA0I3];
                c1744Mk2.A0k(bArr2, 0, iA0I3);
                if (A0f[1].charAt(30) == 'd') {
                    throw new RuntimeException();
                }
                A0f[4] = "YdJdxJABJdh7NTrpeOaKq84AE";
            }
            c2147bC.A08 = true;
            c2147bC.A07 = new C2146bB(z, str, iA0I2, bArr, i, i2, bArr2);
        }
    }

    public static void A0K(C1744Mk c1744Mk, C2147bC c2147bC) throws L9 {
        c1744Mk.A0f(8);
        int iA0C = c1744Mk.A0C();
        if ((AbstractC2115ag.A02(iA0C) & 1) == 1) {
            c1744Mk.A0g(8);
        }
        int iA0L = c1744Mk.A0L();
        if (iA0L != 1) {
            throw new L9(A0B(605, 29, 76) + iA0L);
        }
        c2147bC.A03 += AbstractC2115ag.A03(iA0C) == 0 ? c1744Mk.A0Q() : c1744Mk.A0R();
    }

    public static void A0L(C1744Mk c1744Mk, C2147bC c2147bC) throws L9 {
        A0H(c1744Mk, 0, c2147bC);
    }

    public static void A0M(C1744Mk c1744Mk, C2147bC c2147bC, byte[] bArr) throws L9 {
        c1744Mk.A0f(8);
        c1744Mk.A0k(bArr, 0, 16);
        if (Arrays.equals(bArr, A0i)) {
            A0H(c1744Mk, 16, c2147bC);
        }
    }

    private void A0N(Q9 q9) throws IOException {
        int i = ((int) this.A07) - this.A00;
        if (this.A0E != null) {
            q9.readFully(this.A0E.A00, 8, i);
            A0V(new PE(this.A01, this.A0E), q9);
        } else {
            q9.ALL(i);
        }
        A0G(q9.A9Q());
    }

    private void A0O(Q9 q9) throws IOException {
        C2128at c2128atValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            C2147bC c2147bC = this.A0D.valueAt(i).A07;
            if (c2147bC.A0A && c2147bC.A03 < j) {
                j = c2147bC.A03;
                c2128atValueAt = this.A0D.valueAt(i);
            }
        }
        if (c2128atValueAt == null) {
            this.A02 = 3;
            return;
        }
        int iA9Q = (int) (j - q9.A9Q());
        if (A0f[7].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0f;
        strArr[6] = "WaEfqTf7lJ3";
        strArr[5] = "i667FprRZ32RzmMbwXp";
        if (iA9Q < 0) {
            throw new L9(A0B(325, 39, 81));
        }
        q9.ALL(iA9Q);
        c2128atValueAt.A07.A05(q9);
    }

    private void A0P(PF pf) throws L9 {
        if (((AbstractC2115ag) pf).A00 == 1836019574) {
            A0R(pf);
        } else if (((AbstractC2115ag) pf).A00 == 1836019558) {
            A0Q(pf);
        } else {
            if (this.A0X.isEmpty()) {
                return;
            }
            this.A0X.peek().A04(pf);
        }
    }

    private void A0Q(PF pf) throws L9 {
        A0S(pf, this.A0D, this.A0M, this.A0d, this.A0c);
        DrmInitData drmInitDataA05 = this.A0N != null ? null : A05(pf.A02);
        if (drmInitDataA05 != null) {
            int size = this.A0D.size();
            for (int i = 0; i < size; i++) {
                this.A0D.valueAt(i).A07(drmInitDataA05);
            }
        }
        if (this.A0B != -9223372036854775807L) {
            int size2 = this.A0D.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.A0D.valueAt(i2).A06(this.A0B);
            }
            this.A0B = -9223372036854775807L;
        }
    }

    private void A0R(PF pf) throws L9 {
        AbstractC1722Ln.A0A(this.A0W == null, A0B(585, 20, 44));
        DrmInitData drmInitDataA05 = A05(pf.A02);
        PF pf2 = (PF) AbstractC1722Ln.A01(pf.A02(1836475768));
        SparseArray<C2122an> sparseArray = new SparseArray<>();
        long jA01 = -9223372036854775807L;
        int size = pf2.A02.size();
        for (int i = 0; i < size; i++) {
            PE pe = pf2.A02.get(i);
            if (((AbstractC2115ag) pe).A00 == 1953654136) {
                Pair<Integer, C2122an> pairA03 = A03(pe.A00);
                sparseArray.put(((Integer) pairA03.first).intValue(), (C2122an) pairA03.second);
            } else {
                int i2 = ((AbstractC2115ag) pe).A00;
                if (A0f[7].length() == 31) {
                    throw new RuntimeException();
                }
                String[] strArr = A0f;
                strArr[6] = "fQX4JDEh8CS";
                strArr[5] = "Ov1Rr2UIae6mGCP9QAH";
                if (i2 == 1835362404) {
                    jA01 = A01(pe.A00);
                }
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = pf.A01.size();
        for (int i3 = 0; i3 < size2; i3++) {
            PF pf3 = pf.A01.get(i3);
            if (((AbstractC2115ag) pf3).A00 == 1953653099) {
                C2145bA c2145bAA0A = A0A(AbstractC2121am.A0J(pf3, pf.A03(1836476516), jA01, drmInitDataA05, (this.A0M & 16) != 0, false));
                if (c2145bAA0A != null) {
                    sparseArray2.put(c2145bAA0A.A00, c2145bAA0A);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.A0D.size() != 0) {
            AbstractC1722Ln.A08(this.A0D.size() == size3);
            for (int i4 = 0; i4 < size3; i4++) {
                C2145bA c2145bA = (C2145bA) sparseArray2.valueAt(i4);
                this.A0D.get(c2145bA.A00).A08(c2145bA, A06(sparseArray, c2145bA.A00));
            }
            return;
        }
        for (int i5 = 0; i5 < size3; i5++) {
            C2145bA c2145bA2 = (C2145bA) sparseArray2.valueAt(i5);
            C2128at c2128at = new C2128at(this.A0F.ALm(i5, c2145bA2.A03));
            c2128at.A08(c2145bA2, A06(sparseArray, c2145bA2.A00));
            this.A0D.put(c2145bA2.A00, c2128at);
            this.A08 = Math.max(this.A08, c2145bA2.A04);
        }
        A0D();
        this.A0F.A6x();
    }

    public static void A0S(PF pf, SparseArray<C2128at> sparseArray, int i, byte[] bArr, boolean z) throws L9 {
        int size = pf.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            PF pf2 = pf.A01.get(i2);
            if (((AbstractC2115ag) pf2).A00 == 1953653094) {
                A0T(pf2, sparseArray, i, bArr, size > 1 && z);
            }
        }
    }

    public static void A0T(PF pf, SparseArray<C2128at> sparseArray, int i, byte[] bArr, boolean z) throws L9 {
        C2128at c2128atA09 = A09(pf.A03(1952868452).A00, sparseArray, z);
        if (c2128atA09 == null) {
            return;
        }
        C2147bC c2147bC = c2128atA09.A07;
        long jA02 = c2147bC.A05;
        c2128atA09.A05();
        if (pf.A03(1952867444) != null) {
            int i2 = i & 2;
            if (A0f[1].charAt(30) == 'd') {
                throw new RuntimeException();
            }
            A0f[1] = "uRSWbeSjKMEIQgyI5DdsOQiwalwAUF0L";
            if (i2 == 0) {
                PE peA03 = pf.A03(1952867444);
                if (A0f[1].charAt(30) == 'd') {
                    throw new RuntimeException();
                }
                A0f[7] = "f0B6k98tpHqAKr9nqIJq26FbSaXaG";
                jA02 = A02(peA03.A00);
            }
        }
        A0U(pf, c2128atA09, jA02, i);
        C2146bB c2146bBA00 = c2128atA09.A05.A00(c2147bC.A06.A02);
        PE peA04 = pf.A03(1935763834);
        if (peA04 != null) {
            A0W(c2146bBA00, peA04.A00, c2147bC);
        }
        PE peA05 = pf.A03(1935763823);
        if (peA05 != null) {
            A0K(peA05.A00, c2147bC);
        }
        PE peA06 = pf.A03(1936027235);
        if (peA06 != null) {
            A0L(peA06.A00, c2147bC);
        }
        PE peA07 = pf.A03(1935828848);
        PE peA08 = pf.A03(1936158820);
        if (peA07 != null && peA08 != null) {
            A0J(peA07.A00, peA08.A00, c2146bBA00 != null ? c2146bBA00.A02 : null, c2147bC);
        }
        int size = pf.A02.size();
        for (int i3 = 0; i3 < size; i3++) {
            PE pe = pf.A02.get(i3);
            if (((AbstractC2115ag) pe).A00 == 1970628964) {
                A0M(pe.A00, c2147bC, bArr);
            }
        }
    }

    public static void A0U(PF pf, C2128at c2128at, long j, int i) {
        int i2 = 0;
        int i3 = 0;
        List<PE> list = pf.A02;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            PE pe = list.get(i4);
            if (((AbstractC2115ag) pe).A00 == 1953658222) {
                C1744Mk c1744Mk = pe.A00;
                c1744Mk.A0f(12);
                int iA0L = c1744Mk.A0L();
                if (iA0L > 0) {
                    i3 += iA0L;
                    i2++;
                }
            }
        }
        c2128at.A02 = 0;
        c2128at.A00 = 0;
        c2128at.A01 = 0;
        c2128at.A07.A03(i2, i3);
        int i5 = 0;
        int iA00 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            PE pe2 = list.get(i6);
            if (((AbstractC2115ag) pe2).A00 == 1953658222) {
                iA00 = A00(c2128at, i5, j, i, pe2.A00, iA00);
                i5++;
            }
        }
    }

    private void A0V(PE pe, Q9 q9) throws L9 {
        if (!this.A0X.isEmpty()) {
            this.A0X.peek().A05(pe);
            return;
        }
        if (((AbstractC2115ag) pe).A00 == 1936286840) {
            Pair<Long, QJ> pairA04 = A04(pe.A00, q9.A9Q());
            this.A0C = ((Long) pairA04.first).longValue();
            this.A0F.AKP((ZK) pairA04.second);
            this.A0H = true;
            return;
        }
        if (((AbstractC2115ag) pe).A00 == 1701671783) {
            Uri uriAA2 = q9.AA2();
            if (A0f[1].charAt(30) == 'd') {
                throw new RuntimeException();
            }
            A0f[2] = "EoUeegSjtsb9A8KxNI9aHg5JKd4u1HQf";
            if (uriAA2 != null) {
                A0I(pe.A00, uriAA2);
            }
        }
    }

    public static void A0W(C2146bB c2146bB, C1744Mk c1744Mk, C2147bC c2147bC) throws L9 {
        int i = c2146bB.A00;
        c1744Mk.A0f(8);
        if ((AbstractC2115ag.A02(c1744Mk.A0C()) & 1) == 1) {
            c1744Mk.A0g(8);
        }
        int iA0I = c1744Mk.A0I();
        int iA0L = c1744Mk.A0L();
        if (iA0L != c2147bC.A00) {
            throw new L9(A0B(308, 17, 122) + iA0L + A0B(0, 2, 71) + c2147bC.A00);
        }
        int i2 = 0;
        if (iA0I == 0) {
            boolean[] zArr = c2147bC.A0F;
            for (int i3 = 0; i3 < iA0L; i3++) {
                int iA0I2 = c1744Mk.A0I();
                i2 += iA0I2;
                zArr[i3] = iA0I2 > i;
            }
        } else {
            i2 = 0 + (iA0I * iA0L);
            Arrays.fill(c2147bC.A0F, 0, iA0L, iA0I > i);
        }
        c2147bC.A02(i2);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:28:0x006c A[RETURN, SYNTHETIC] */
    public static boolean A0X(int i) {
        if (i != 1836019574 && i != 1953653099 && i != 1835297121 && i != 1835626086 && i != 1937007212) {
            String[] strArr = A0f;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0f[4] = "qWu6Abm6zk5quImHXptRALDqTyy37";
            if (i != 1836019558 && i != 1953653094) {
                String[] strArr2 = A0f;
                if (strArr2[3].length() != strArr2[0].length()) {
                    String[] strArr3 = A0f;
                    strArr3[6] = "OYxmD55PyL2";
                    strArr3[5] = "3gtT7uOFI9qfp6Jo1gk";
                    if (i != 1836475768) {
                        if (i == 1701082227) {
                            return false;
                        }
                    }
                } else {
                    A0f[7] = "87MBvorHkhCKG";
                    if (i != 1836475768) {
                        if (i == 1701082227) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean A0Y(int i) {
        if (i != 1751411826) {
            String[] strArr = A0f;
            if (strArr[6].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "K2";
            if (i != 1835296868 && i != 1836476516 && i != 1936286840 && i != 1937011556 && i != 1952867444 && i != 1952868452 && i != 1953196132 && i != 1953654136 && i != 1953658222 && i != 1886614376 && i != 1935763834 && i != 1935763823 && i != 1936027235 && i != 1970628964 && i != 1935828848) {
                if (A0f[4].length() == 12) {
                    throw new RuntimeException();
                }
                A0f[2] = "DRbPOE4BxMlpEg4M5HTO53suvI6PJn0X";
                if (i != 1936158820 && i != 1701606260 && i != 1835362404) {
                    if (A0f[1].charAt(30) == 'd') {
                        throw new RuntimeException();
                    }
                    A0f[4] = "xNtFSaBpX";
                    if (i != 1701671783) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0164, code lost:
    
        if (r2 <= 2147483647L) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0166, code lost:
    
        r10.A0E = null;
        r10.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0174, code lost:
    
        if (r2 <= 2147483647L) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a6, code lost:
    
        throw new com.facebook.ads.redexgen.X.L9(A0B(497, 53, 70));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0Z(com.facebook.ads.redexgen.X.Q9 r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P7.A0Z(com.facebook.ads.redexgen.X.Q9):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean A0a(Q9 q9) throws IOException {
        int iAK7;
        int i = 4;
        int i2 = 1;
        int i3 = 0;
        if (this.A02 == 3) {
            C2128at c2128at = this.A0G;
            String[] strArr = A0f;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "59HqU3sUJrIiXa";
            if (c2128at == null) {
                C2128at c2128atA07 = A07(this.A0D);
                if (c2128atA07 == null) {
                    int iA9Q = (int) (this.A09 - q9.A9Q());
                    if (iA9Q < 0) {
                        throw new L9(A0B(364, 35, 68));
                    }
                    q9.ALL(iA9Q);
                    A0C();
                    return false;
                }
                int iA9Q2 = (int) (c2128atA07.A07.A0E[c2128atA07.A02] - q9.A9Q());
                if (iA9Q2 < 0) {
                    MV.A07(A0B(128, 22, 124), A0B(150, 40, 61));
                    iA9Q2 = 0;
                }
                q9.ALL(iA9Q2);
                this.A0G = c2128atA07;
            }
            this.A06 = this.A0G.A07.A0B[this.A0G.A01];
            if (this.A0G.A01 < this.A0G.A03) {
                q9.ALL(this.A06);
                this.A0G.A02();
                if (!this.A0G.A09()) {
                    this.A0G = null;
                }
                this.A02 = 3;
                return true;
            }
            if (this.A0G.A05.A02 == 1) {
                this.A06 -= 8;
                q9.ALL(8);
            }
            this.A04 = this.A0G.A04();
            this.A06 += this.A04;
            this.A02 = 4;
            this.A05 = 0;
        }
        C2147bC c2147bC = this.A0G.A07;
        C2145bA c2145bA = this.A0G.A05;
        ZP zp = this.A0G.A06;
        int i4 = this.A0G.A01;
        long jA00 = c2147bC.A00(i4);
        if (this.A0T != null) {
            jA00 = this.A0T.A05(jA00);
        }
        if (c2145bA.A01 != 0) {
            byte[] bArr = this.A0Q.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i5 = c2145bA.A01 + 1;
            int i6 = 4 - c2145bA.A01;
            while (this.A04 < this.A06) {
                if (this.A05 == 0) {
                    q9.readFully(bArr, i6, i5);
                    this.A0Q.A0f(i3);
                    int iA0C = this.A0Q.A0C();
                    if (iA0C < i2) {
                        throw new L9(A0B(190, 18, 22));
                    }
                    this.A05 = iA0C - 1;
                    this.A0R.A0f(i3);
                    zp.AK9(this.A0R, i);
                    zp.AK9(this.A0Q, i2);
                    this.A0J = this.A0K.length > 0 && ZE.A0I(c2145bA.A07.A0W, bArr[i]);
                    this.A04 += 5;
                    this.A06 += i6;
                    i2 = 1;
                } else {
                    if (this.A0J) {
                        this.A0P.A0d(this.A05);
                        q9.readFully(this.A0P.A00, i3, this.A05);
                        zp.AK9(this.A0P, this.A05);
                        iAK7 = this.A05;
                        int iA02 = ZE.A02(this.A0P.A00, this.A0P.A0A());
                        this.A0P.A0f(A0B(756, 10, 42).equals(c2145bA.A07.A0W) ? 1 : 0);
                        this.A0P.A0e(iA02);
                        AbstractC2175be.A03(jA00, this.A0P, this.A0K);
                    } else {
                        iAK7 = zp.AK7(q9, this.A05, false);
                    }
                    this.A04 += iAK7;
                    this.A05 -= iAK7;
                    i = 4;
                    i2 = 1;
                    i3 = 0;
                }
            }
        } else {
            if (this.A0I) {
                AbstractC2029Yg.A07(this.A06, this.A0S);
                int iA0A = this.A0S.A0A();
                zp.AK9(this.A0S, iA0A);
                this.A06 += iA0A;
                this.A04 += iA0A;
                this.A0I = false;
            }
            while (this.A04 < this.A06) {
                this.A04 += zp.AK7(q9, this.A06 - this.A04, false);
            }
        }
        boolean z = c2147bC.A0G[i4];
        ZN zn = null;
        C2146bB c2146bBA00 = this.A0G.A00();
        ?? r11 = z;
        if (c2146bBA00 != null) {
            int i7 = (z ? 1 : 0) | 1073741824;
            zn = c2146bBA00.A01;
            r11 = i7;
        }
        int i8 = r11;
        if (this.A0G != null && this.A0G.A05 != null && this.A0G.A05.A07 != null && this.A0G.A05.A07.A0W == A0B(735, 21, 75)) {
            i8 = r11;
            i8 = r11;
            i8 = r11;
            i8 = (r11 == true ? 1 : 0) | true;
        }
        i8 = r11;
        i8 = r11;
        i8 = r11;
        i8 = r11;
        i8 = r11;
        i8 = r11;
        long j = jA00;
        zp.AKC(jA00, i8, this.A06, 0, zn);
        this.A0A = j;
        A0F(j);
        if (!this.A0G.A09()) {
            this.A0G = null;
        }
        this.A02 = 3;
        return true;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A0b() {
        return new InterfaceC2043Yv[]{new P7()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A0F = interfaceC2044Yw;
        if (this.A0W != null) {
            C2128at c2128at = new C2128at(interfaceC2044Yw.ALm(0, this.A0W.A03));
            c2128at.A08(this.A0W, new C2122an(0, 0, 0, 0));
            this.A0D.put(0, c2128at);
            A0D();
            this.A0F.A6x();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (!A0Z(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0N(q9);
                    break;
                case 2:
                    A0O(q9);
                    break;
                default:
                    if (A0a(q9)) {
                        return 0;
                    }
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            this.A0D.valueAt(i).A05();
        }
        this.A0Y.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0X.clear();
        this.A0I = false;
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2143b8.A01(q9);
    }
}
