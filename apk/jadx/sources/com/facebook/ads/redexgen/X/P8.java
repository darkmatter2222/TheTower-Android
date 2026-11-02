package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
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
@MetaExoPlayerCustomization
public final class P8 implements InterfaceC2043Yv {
    public static byte[] A0Z;
    public static String[] A0a = {"GbdB0HkZ", "0khtInAcKEtI2jqch13P0eYGNFqXZuOY", "LZWX5ClLrF9P4vMBJaR9y172g", "yBv7loQvMt4jjHqTPWAs07zunhXrUzkj", "CewtKKSLldVQCYe9w4B9cNh5nQWxLZ8o", "bQpieFUvbpbEZwzL6H6u2AIw", "W8JFvx0mOk1lNAB4BQZLslHI", "OaMox1WIHJ4zdqOFJIN2Y0e4jTlHiKgk"};
    public static final InterfaceC2047Yz A0b;
    public static final VC A0c;
    public static final byte[] A0d;
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

    @MetaExoPlayerCustomization
    public long A0A;
    public long A0B;
    public long A0C;
    public C1744Mk A0D;
    public InterfaceC2044Yw A0E;
    public C2131aw A0F;
    public boolean A0G;
    public boolean A0H;
    public ZP[] A0I;
    public ZP[] A0J;
    public final int A0K;
    public final SparseArray<C2131aw> A0L;
    public final C1744Mk A0M;
    public final C1744Mk A0N;
    public final C1744Mk A0O;
    public final C1744Mk A0P;
    public final C1744Mk A0Q;
    public final C1752Ms A0R;
    public final ZP A0S;
    public final C2060Zm A0T;
    public final C2145bA A0U;
    public final ArrayDeque<PF> A0V;
    public final ArrayDeque<C2130av> A0W;
    public final List<VC> A0X;
    public final byte[] A0Y;

    static {
        A0D();
        A0b = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.P9
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return P8.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
        A0d = new byte[]{-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
        A0c = new C1689Ke().A11(A0A(839, 18, 51)).A14();
    }

    public P8() {
        this(0);
    }

    public P8(int i) {
        this(i, null);
    }

    public P8(int i, C1752Ms c1752Ms) {
        this(i, c1752Ms, null, Collections.emptyList());
    }

    public P8(int i, C1752Ms c1752Ms, C2145bA c2145bA, List<VC> list) {
        this(i, c1752Ms, c2145bA, list, null);
    }

    @MetaExoPlayerCustomization
    public P8(int i, C1752Ms c1752Ms, C2145bA c2145bA, List<VC> list, ZP zp) {
        this.A0A = -9223372036854775807L;
        this.A0K = i;
        this.A0R = c1752Ms;
        this.A0U = c2145bA;
        this.A0X = Collections.unmodifiableList(list);
        this.A0S = zp;
        this.A0T = new C2060Zm();
        this.A0M = new C1744Mk(16);
        this.A0P = new C1744Mk(ZE.A03);
        this.A0O = new C1744Mk(5);
        this.A0N = new C1744Mk();
        this.A0Y = new byte[16];
        this.A0Q = new C1744Mk(this.A0Y);
        this.A0V = new ArrayDeque<>();
        this.A0W = new ArrayDeque<>();
        this.A0L = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        this.A0E = InterfaceC2044Yw.A00;
        this.A0J = new ZP[0];
        this.A0I = new ZP[0];
    }

    public static int A00(int i) throws L9 {
        if (i >= 0) {
            return i;
        }
        throw L9.A01(A0A(700, 27, 16) + i, null);
    }

    public static int A01(C2131aw c2131aw, int i, int i2, C1744Mk c1744Mk, int i3) throws L9 {
        int iA0C;
        int i4 = i3;
        c1744Mk.A0f(8);
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        C2145bA c2145bA = c2131aw.A05.A03;
        C2147bC c2147bC = c2131aw.A09;
        C2122an c2122an = (C2122an) N1.A0f(c2147bC.A06);
        c2147bC.A0C[i] = c1744Mk.A0L();
        c2147bC.A0E[i] = c2147bC.A04;
        if ((iA02 & 1) != 0) {
            long[] jArr = c2147bC.A0E;
            jArr[i] = jArr[i] + ((long) c1744Mk.A0C());
        }
        boolean z = (iA02 & 4) != 0;
        int iA0C2 = c2122an.A01;
        if (z) {
            iA0C2 = c1744Mk.A0C();
        }
        boolean z2 = (iA02 & 256) != 0;
        boolean z3 = (iA02 & 512) != 0;
        boolean z4 = (iA02 & 1024) != 0;
        boolean z5 = (iA02 & 2048) != 0;
        boolean zA0a = A0a(c2145bA);
        String[] strArr = A0a;
        if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0a;
        strArr2[5] = "JgC1EGm7Fx9eG8uVateG9Vvp";
        strArr2[0] = "3mrAxl40";
        long j = zA0a ? ((long[]) N1.A0f(c2145bA.A09))[0] : 0L;
        int[] iArr = c2147bC.A0B;
        long[] jArr2 = c2147bC.A0D;
        boolean[] zArr = c2147bC.A0G;
        boolean z6 = c2145bA.A03 == 2 && (i2 & 1) != 0;
        int i5 = i4 + c2147bC.A0C[i];
        long j2 = c2145bA.A06;
        long j3 = c2147bC.A05;
        String[] strArr3 = A0a;
        if (strArr3[5].length() == strArr3[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr4 = A0a;
        strArr4[6] = "rkmmpZ5z24oQPil7tGTxxVdu";
        strArr4[2] = "cA6mphhzChqnYQJizy41QJzcg";
        while (i4 < i5) {
            int iA00 = A00(z2 ? c1744Mk.A0C() : c2122an.A00);
            int iA01 = A00(z3 ? c1744Mk.A0C() : c2122an.A03);
            if (z4) {
                iA0C = c1744Mk.A0C();
            } else {
                iA0C = (i4 == 0 && z) ? iA0C2 : c2122an.A01;
            }
            if (A0a[7].charAt(1) == 'U') {
                throw new RuntimeException();
            }
            String[] strArr5 = A0a;
            strArr5[6] = "Qlew9HE5j9b6KQPLMXRjUeH0";
            strArr5[2] = "OAcLMggQZDA2D6HaTGYPNrVeb";
            jArr2[i4] = N1.A0U((((long) (z5 ? c1744Mk.A0C() : 0)) + j3) - j, 1000000L, j2);
            if (!c2147bC.A09) {
                jArr2[i4] = jArr2[i4] + c2131aw.A05.A02;
            }
            iArr[i4] = iA01;
            zArr[i4] = ((iA0C >> 16) & 1) == 0 && (!z6 || i4 == 0);
            j3 += (long) iA00;
            i4++;
        }
        c2147bC.A05 = j3;
        return i5;
    }

    public static long A02(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        return AbstractC2115ag.A03(c1744Mk.A0C()) == 0 ? c1744Mk.A0Q() : c1744Mk.A0R();
    }

    public static long A03(C1744Mk c1744Mk) {
        c1744Mk.A0f(8);
        return AbstractC2115ag.A03(c1744Mk.A0C()) == 1 ? c1744Mk.A0R() : c1744Mk.A0Q();
    }

    public static Pair<Integer, C2122an> A04(C1744Mk c1744Mk) {
        c1744Mk.A0f(12);
        return Pair.create(Integer.valueOf(c1744Mk.A0C()), new C2122an(c1744Mk.A0C() - 1, c1744Mk.A0C(), c1744Mk.A0C(), c1744Mk.A0C()));
    }

    public static Pair<Long, QJ> A05(C1744Mk c1744Mk, long j) throws L9 {
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
                throw L9.A01(A0A(756, 28, 51), null);
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

    public static DrmInitData A06(List<PE> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PE pe = list.get(i);
            if (((AbstractC2115ag) pe).A00 == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrA0l = pe.A00.A0l();
                UUID uuidA02 = AbstractC2138b3.A02(bArrA0l);
                if (uuidA02 == null) {
                    MV.A07(A0A(204, 22, 5), A0A(550, 42, 72));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA02, A0A(897, 9, 123), bArrA0l));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private C2122an A07(SparseArray<C2122an> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (C2122an) AbstractC1722Ln.A01(sparseArray.get(i));
    }

    public static C2131aw A08(SparseArray<C2131aw> sparseArray) {
        C2131aw c2131aw = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            C2131aw c2131awValueAt = sparseArray.valueAt(i);
            if ((c2131awValueAt.A06 || c2131awValueAt.A01 != c2131awValueAt.A05.A01) && (!c2131awValueAt.A06 || c2131awValueAt.A02 != c2131awValueAt.A09.A01)) {
                long jA05 = c2131awValueAt.A05();
                if (jA05 < j) {
                    c2131aw = c2131awValueAt;
                    j = jA05;
                }
            }
        }
        return c2131aw;
    }

    public static C2131aw A09(C1744Mk c1744Mk, SparseArray<C2131aw> sparseArray, boolean z) {
        c1744Mk.A0f(8);
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        C2131aw c2131awValueAt = z ? sparseArray.valueAt(0) : sparseArray.get(c1744Mk.A0C());
        if (c2131awValueAt == null) {
            return null;
        }
        if ((iA02 & 1) != 0) {
            long jA0R = c1744Mk.A0R();
            c2131awValueAt.A09.A04 = jA0R;
            c2131awValueAt.A09.A03 = jA0R;
        }
        C2122an c2122an = c2131awValueAt.A04;
        int iA0C = (iA02 & 2) != 0 ? c1744Mk.A0C() - 1 : c2122an.A02;
        int i = iA02 & 8;
        String[] strArr = A0a;
        if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
            throw new RuntimeException();
        }
        A0a[7] = "4ZukhBKNeObmYvJktZy4oUTI1PsvK2IF";
        c2131awValueAt.A09.A06 = new C2122an(iA0C, i != 0 ? c1744Mk.A0C() : c2122an.A00, (iA02 & 16) != 0 ? c1744Mk.A0C() : c2122an.A03, (iA02 & 32) != 0 ? c1744Mk.A0C() : c2122an.A01);
        return c2131awValueAt;
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0a;
            if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            A0a[7] = "WWc1YgBpXnsK2CwFuCjgo1uYONcck7eP";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
            i4++;
        }
    }

    private void A0B() {
        this.A02 = 0;
        this.A00 = 0;
    }

    private void A0C() {
        int i = 100;
        this.A0J = new ZP[2];
        int i2 = 0;
        if (this.A0S != null) {
            this.A0J[0] = this.A0S;
            i2 = 0 + 1;
        }
        if ((this.A0K & 4) != 0) {
            this.A0J[i2] = this.A0E.ALm(100, 5);
            i2++;
            i = 100 + 1;
        }
        this.A0J = (ZP[]) N1.A1I(this.A0J, i2);
        for (ZP zp : this.A0J) {
            zp.A7E(A0c);
        }
        this.A0I = new ZP[this.A0X.size()];
        int i3 = 0;
        while (i3 < this.A0I.length) {
            ZP zpALm = this.A0E.ALm(i, 3);
            zpALm.A7E(this.A0X.get(i3));
            this.A0I[i3] = zpALm;
            i3++;
            i++;
        }
    }

    public static void A0D() {
        A0Z = new byte[]{71, Ascii.SO, Ascii.DC4, 71, 3, Ascii.SO, 1, 1, 2, Ascii.NAK, 2, 9, 19, 71, 1, Ascii.NAK, 8, 10, 71, 1, Ascii.NAK, 6, 0, 10, 2, 9, 19, 71, Ascii.DC4, 6, 10, Ascii.ETB, Ascii.VT, 2, 71, 4, 8, Ascii.DC2, 9, 19, 33, 104, 114, 33, 102, 115, 100, 96, 117, 100, 115, 33, 117, 105, 96, 111, 33, 103, 115, 96, 102, 108, 100, 111, 117, 33, 114, 96, 108, 113, 109, 100, 33, 98, 110, 116, 111, 117, 17, 36, 63, Base64.padSymbol, 112, 35, 57, 42, 53, 112, 60, 53, 35, 35, 112, 36, 56, 49, 62, 112, 56, 53, 49, 52, 53, 34, 112, 60, 53, 62, 55, 36, 56, 112, 120, 37, 62, 35, 37, 32, 32, 63, 34, 36, 53, 52, 121, 126, 119, 92, 70, SignedBytes.MAX_POWER_OF_TWO, 75, Ascii.DC2, 81, 93, 71, 92, 70, Ascii.DC2, 91, 92, Ascii.DC2, 65, 80, 85, 66, Ascii.DC2, 19, Ascii.SI, Ascii.DC2, 3, Ascii.DC2, Ascii.SUB, 71, 92, 65, 71, 66, 66, 93, SignedBytes.MAX_POWER_OF_TWO, 70, 87, 86, Ascii.ESC, Ascii.FS, 59, Ascii.DLE, 10, Ascii.FF, 7, 94, Ascii.GS, 17, Ascii.VT, Ascii.DLE, 10, 94, Ascii.ETB, Ascii.DLE, 94, Ascii.CR, Ascii.EM, Ascii.SO, Ascii.SUB, 94, 95, 67, 94, 79, 94, 86, Ascii.VT, Ascii.DLE, Ascii.CR, Ascii.VT, Ascii.SO, Ascii.SO, 17, Ascii.FF, 10, Ascii.ESC, Ascii.SUB, 87, 80, 73, 125, 110, 104, 98, 106, 97, 123, 106, 107, 66, 127, 59, 74, 119, 123, 125, 110, 108, 123, 96, 125, 125, 83, 90, 91, 70, 93, 90, 83, Ascii.DC4, 90, 81, 83, 85, SignedBytes.MAX_POWER_OF_TWO, 93, 66, 81, Ascii.DC4, 91, 82, 82, 71, 81, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC4, SignedBytes.MAX_POWER_OF_TWO, 91, Ascii.DC4, 71, 85, 89, 68, 88, 81, Ascii.DC4, 80, 85, SignedBytes.MAX_POWER_OF_TWO, 85, Ascii.SUB, 10, 45, 53, 34, 47, 42, 39, 99, Ascii.CR, 2, Ascii.SI, 99, 47, 38, 45, 36, 55, 43, 8, 33, 37, 34, 100, 37, 48, 43, 41, 100, 32, 33, 34, 45, 42, 33, 55, 100, 33, 60, 48, 33, 42, 32, 33, 32, 100, 37, 48, 43, 41, 100, 55, 45, 62, 33, 100, 108, 49, 42, 55, 49, 52, 52, 43, 54, 48, 33, 32, 109, 106, 125, 84, 80, 87, 17, 80, 69, 94, 92, 17, 70, 88, 69, 89, 17, 93, 84, 95, 86, 69, 89, 17, Ascii.SI, 17, 3, 0, 5, 6, 5, 9, 2, 7, 5, 6, 17, Ascii.EM, 68, 95, 66, 68, 65, 65, 94, 67, 69, 84, 85, Ascii.CAN, Ascii.US, 46, 7, 7, Ascii.DC2, 4, Ascii.NAK, 65, Ascii.NAK, Ascii.SO, 65, 4, Ascii.SI, 2, 19, Ascii.CAN, 17, Ascii.NAK, 8, Ascii.SO, Ascii.SI, 65, 5, 0, Ascii.NAK, 0, 65, Ascii.SYN, 0, Ascii.DC2, 65, Ascii.SI, 4, 6, 0, Ascii.NAK, 8, Ascii.ETB, 4, 79, 39, Ascii.SO, Ascii.SO, Ascii.ESC, Ascii.CR, Ascii.FS, 72, Ascii.FS, 7, 72, Ascii.CR, 6, Ascii.FF, 72, 7, Ascii.SO, 72, 5, Ascii.FF, 9, Ascii.FS, 72, Ascii.US, 9, Ascii.ESC, 72, 6, Ascii.CR, Ascii.SI, 9, Ascii.FS, 1, Ascii.RS, Ascii.CR, 70, 121, SignedBytes.MAX_POWER_OF_TWO, 83, 68, 68, 95, 82, 95, 88, 81, Ascii.SYN, 98, 68, 87, 85, 93, 115, 88, 85, 68, 79, 70, 66, 95, 89, 88, 116, 89, 78, Ascii.SYN, 70, 87, 68, 87, 91, 83, 66, 83, 68, 69, Ascii.SYN, 95, 69, Ascii.SYN, 67, 88, 69, 67, 70, 70, 89, 68, 66, 83, 82, Ascii.CAN, 7, 53, Base64.padSymbol, 46, 116, 39, 53, 57, 36, 56, 49, 116, 55, 59, 33, 58, 32, 116, 7, 49, 58, 55, 116, 39, 53, 57, 36, 56, 49, 116, 55, 59, 33, 58, 32, 116, 17, 41, 43, 50, 50, 39, 38, 98, 50, 49, 49, 42, 98, 35, 54, 45, 47, 98, 106, 36, 35, 43, 46, 39, 38, 98, 54, 45, 98, 39, 58, 54, 48, 35, 33, 54, 98, 55, 55, 43, 38, 107, 121, 65, 67, 90, 90, 67, 68, 77, 10, 75, 94, 69, 71, 10, 93, 67, 94, 66, 10, 70, 79, 68, 77, 94, 66, 10, Ascii.DC4, 10, Ascii.CAN, Ascii.ESC, Ascii.RS, Ascii.GS, Ascii.RS, Ascii.DC2, Ascii.EM, Ascii.FS, Ascii.RS, Ascii.GS, 10, 2, 95, 68, 89, 95, 90, 90, 69, 88, 94, 79, 78, 3, 4, 7, 63, Base64.padSymbol, 36, 36, Base64.padSymbol, 58, 51, 116, 33, 58, 39, 33, 36, 36, 59, 38, 32, 49, 48, 116, 49, 57, 39, 51, 116, 34, 49, 38, 39, Base64.padSymbol, 59, 58, 110, 116, 125, 70, 77, 80, 88, 77, 75, 92, 77, 76, 8, 69, 71, 71, 94, 8, 74, 71, 80, 6, 79, 116, 127, 98, 106, 127, 121, 110, 127, 126, 58, 116, 127, 125, 123, 110, 115, 108, 127, 58, 108, 123, 118, 111, 127, 32, 58, Ascii.DC2, 41, 34, 63, 55, 34, 36, 51, 34, 35, 103, 52, 38, 46, 40, 103, 34, 41, 51, 53, 62, 103, 36, 40, 50, 41, 51, 125, 103, 108, 87, 81, 88, 87, 93, 85, 92, 93, Ascii.EM, 80, 87, 93, 80, 75, 92, 90, 77, Ascii.EM, 75, 92, 95, 92, 75, 92, 87, 90, 92, 69, 114, 97, 122, 114, 113, 127, 118, 51, 127, 118, 125, 116, 103, 123, 51, 119, 118, 96, 112, 97, 122, 99, 103, 122, 124, 125, 51, 122, 125, 51, 96, 116, 99, 119, 51, 117, 124, 102, 125, 119, 51, 59, 102, 125, 96, 102, 99, 99, 124, 97, 103, 118, 119, 58, 88, 73, 73, 85, 80, 90, 88, 77, 80, 86, 87, Ascii.SYN, 65, Ascii.DC4, 92, 84, 74, 94, 85, 68, 68, 88, 93, 87, 85, SignedBytes.MAX_POWER_OF_TWO, 93, 91, 90, Ascii.ESC, 76, Ascii.EM, 89, 68, 0, Ascii.EM, 66, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 68, 80, 65, 76, 74, 10, 68, 70, 17, Ascii.NAK, 10, 7, 6, Ascii.FF, 76, Ascii.VT, 6, Ascii.NAK, 0, 7, Ascii.CAN, Ascii.NAK, Ascii.DC4, Ascii.RS, 94, Ascii.FS, 1, 69};
    }

    private void A0E(long j) {
        while (!this.A0W.isEmpty()) {
            ArrayDeque<C2130av> arrayDeque = this.A0W;
            String[] strArr = A0a;
            if (strArr[6].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A0a[7] = "vcbZdm4BuCEyLByA0jHTn0KQDqKFQQC3";
            C2130av c2130avRemoveFirst = arrayDeque.removeFirst();
            this.A03 -= c2130avRemoveFirst.A00;
            long jA05 = c2130avRemoveFirst.A01;
            if (c2130avRemoveFirst.A02) {
                jA05 += j;
            }
            if (this.A0R != null) {
                jA05 = this.A0R.A05(jA05);
            }
            for (ZP zp : this.A0J) {
                zp.AKC(jA05, 1, c2130avRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0F(long j) throws L9 {
        while (!this.A0V.isEmpty() && this.A0V.peek().A00 == j) {
            A0N(this.A0V.pop());
        }
        A0B();
    }

    public static void A0G(C1744Mk c1744Mk, int i, C2147bC c2147bC) throws L9 {
        c1744Mk.A0f(i + 8);
        int iA02 = AbstractC2115ag.A02(c1744Mk.A0C());
        if ((iA02 & 1) != 0) {
            throw L9.A00(A0A(458, 56, 60));
        }
        int i2 = iA02 & 2;
        String[] strArr = A0a;
        if (strArr[6].length() != strArr[2].length()) {
            A0a[4] = "FJEFL3FZhdpiCewiJuk3IXLikQFq3Ola";
            boolean z = i2 != 0;
            int iA0L = c1744Mk.A0L();
            if (iA0L != 0) {
                if (iA0L != c2147bC.A00) {
                    throw L9.A01(A0A(532, 18, 94) + iA0L + A0A(0, 40, 109) + c2147bC.A00, null);
                }
                Arrays.fill(c2147bC.A0F, 0, iA0L, z);
                c2147bC.A02(c1744Mk.A07());
                c2147bC.A04(c1744Mk);
                return;
            }
            boolean[] zArr = c2147bC.A0F;
            String[] strArr2 = A0a;
            if (strArr2[1].charAt(14) == strArr2[3].charAt(14)) {
                A0a[4] = "7rjC7fsI9KwJCJwQh2i0OD7KPvouRdkX";
                Arrays.fill(zArr, 0, c2147bC.A00, false);
                return;
            }
        }
        throw new RuntimeException();
    }

    @MetaExoPlayerCustomization
    private void A0H(C1744Mk c1744Mk, Uri uri) {
        String str;
        String str2;
        long jA05;
        long jA0U;
        long jA0Q;
        if (this.A0J.length == 0) {
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
                long jA0R = c1744Mk.A0R();
                String[] strArr = A0a;
                if (strArr[5].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                A0a[7] = "AYhjOe4t3139O6NlaflP6PY1FLDI2Tzg";
                jA05 = N1.A0U(jA0R, 1000000L, jA0Q3);
                jA0U = N1.A0U(c1744Mk.A0Q(), 1000L, jA0Q3);
                jA0Q = c1744Mk.A0Q();
                str = (String) AbstractC1722Ln.A01(c1744Mk.A0U());
                str2 = (String) AbstractC1722Ln.A01(c1744Mk.A0U());
                break;
                break;
            default:
                MV.A07(A0A(204, 22, 5), A0A(645, 35, 94) + iA03);
                return;
        }
        byte[] bArr = new byte[c1744Mk.A07()];
        c1744Mk.A0k(bArr, 0, c1744Mk.A07());
        int i = 0;
        C1744Mk c1744Mk2 = new C1744Mk(this.A0T.A01(new EventMessage(str, str2, jA0U, jA0Q, bArr)));
        int iA07 = c1744Mk2.A07();
        ZP[] zpArr = this.A0J;
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
            this.A0W.addLast(new C2130av(jA0U2, true, iA07));
            this.A03 += iA07;
            return;
        }
        if (!this.A0W.isEmpty()) {
            this.A0W.addLast(new C2130av(jA05, false, iA07));
            this.A03 += iA07;
            return;
        }
        if (this.A0R != null) {
            jA05 = this.A0R.A05(jA05);
        }
        if (this.A0A != -9223372036854775807L && !XL.A03(XQ.A1U)) {
            jA05 = this.A0A;
        }
        for (ZP zp2 : this.A0J) {
            zp2.AKC(jA05, 1, iA07, 0, null);
        }
    }

    public static void A0I(C1744Mk c1744Mk, C2147bC c2147bC) throws L9 {
        c1744Mk.A0f(8);
        int iA0C = c1744Mk.A0C();
        if ((AbstractC2115ag.A02(iA0C) & 1) == 1) {
            c1744Mk.A0g(8);
        }
        int iA0L = c1744Mk.A0L();
        if (iA0L != 1) {
            throw L9.A01(A0A(727, 29, 77) + iA0L, null);
        }
        int iA03 = AbstractC2115ag.A03(iA0C);
        long j = c2147bC.A03;
        String[] strArr = A0a;
        if (strArr[6].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0a;
        strArr2[1] = "biHc1fQLnkoiM6qypOiDjo78xZay44TQ";
        strArr2[3] = "W1tS84fj2Nf0NuqlaagjTD68W6cPz2g7";
        c2147bC.A03 = j + (iA03 == 0 ? c1744Mk.A0Q() : c1744Mk.A0R());
    }

    public static void A0J(C1744Mk c1744Mk, C2147bC c2147bC) throws L9 {
        A0G(c1744Mk, 0, c2147bC);
    }

    public static void A0K(C1744Mk c1744Mk, C2147bC c2147bC, byte[] bArr) throws L9 {
        c1744Mk.A0f(8);
        c1744Mk.A0k(bArr, 0, 16);
        if (Arrays.equals(bArr, A0d)) {
            A0G(c1744Mk, 16, c2147bC);
        }
    }

    @MetaExoPlayerCustomization
    private void A0L(Q9 q9) throws IOException {
        int i = ((int) this.A07) - this.A00;
        C1744Mk c1744Mk = this.A0D;
        if (c1744Mk != null) {
            q9.readFully(c1744Mk.A0l(), 8, i);
            A0U(new PE(this.A01, c1744Mk), q9.A9Q(), q9.AA2());
        } else {
            q9.ALL(i);
        }
        A0F(q9.A9Q());
    }

    private void A0M(Q9 q9) throws IOException {
        C2131aw c2131awValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            C2131aw c2131awValueAt2 = this.A0L.valueAt(i);
            String[] strArr = A0a;
            if (strArr[6].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0a;
            strArr2[6] = "B45CYyguc15qhZ5veptBY4BW";
            strArr2[2] = "KOlmrZMESYKxeHHZ758A2mBdi";
            C2147bC c2147bC = c2131awValueAt2.A09;
            if (c2147bC.A0A && c2147bC.A03 < j) {
                j = c2147bC.A03;
                c2131awValueAt = this.A0L.valueAt(i);
            }
        }
        if (c2131awValueAt == null) {
            this.A02 = 3;
            return;
        }
        int iA9Q = (int) (j - q9.A9Q());
        if (iA9Q < 0) {
            throw L9.A01(A0A(384, 39, kotlin.fh.h1), null);
        }
        q9.ALL(iA9Q);
        c2131awValueAt.A09.A05(q9);
    }

    private void A0N(PF pf) throws L9 {
        if (((AbstractC2115ag) pf).A00 == 1836019574) {
            A0P(pf);
        } else if (((AbstractC2115ag) pf).A00 == 1836019558) {
            A0O(pf);
        } else {
            if (this.A0V.isEmpty()) {
                return;
            }
            this.A0V.peek().A04(pf);
        }
    }

    private void A0O(PF pf) throws L9 {
        A0Q(pf, this.A0L, this.A0U != null, this.A0K, this.A0Y);
        DrmInitData drmInitDataA06 = A06(pf.A02);
        if (drmInitDataA06 != null) {
            SparseArray<C2131aw> sparseArray = this.A0L;
            String[] strArr = A0a;
            if (strArr[1].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            A0a[7] = "hcRTGMudGFHKKfZtNWKhzz7c0k3YpzB8";
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                this.A0L.valueAt(i).A0B(drmInitDataA06);
            }
        }
        if (this.A0B != -9223372036854775807L) {
            int size2 = this.A0L.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.A0L.valueAt(i2).A0A(this.A0B);
            }
            this.A0B = -9223372036854775807L;
        }
    }

    private void A0P(PF pf) throws L9 {
        AbstractC1722Ln.A0A(this.A0U == null, A0A(680, 20, 34));
        DrmInitData drmInitDataA06 = A06(pf.A02);
        PF pf2 = (PF) AbstractC1722Ln.A01(pf.A02(1836475768));
        SparseArray<C2122an> sparseArray = new SparseArray<>();
        long jA02 = -9223372036854775807L;
        int size = pf2.A02.size();
        for (int i = 0; i < size; i++) {
            PE pe = pf2.A02.get(i);
            if (((AbstractC2115ag) pe).A00 == 1953654136) {
                Pair<Integer, C2122an> pairA04 = A04(pe.A00);
                sparseArray.put(((Integer) pairA04.first).intValue(), (C2122an) pairA04.second);
            } else if (((AbstractC2115ag) pe).A00 == 1835362404) {
                jA02 = A02(pe.A00);
            }
        }
        List<C2148bD> listA0O = AbstractC2121am.A0O(pf, new Z6(), jA02, drmInitDataA06, (this.A0K & 16) != 0, false, new InterfaceC1998Wy() { // from class: com.facebook.ads.redexgen.X.PA
            @Override // com.facebook.ads.redexgen.X.InterfaceC1998Wy
            public final Object A4c(Object obj) {
                return this.A00.A0c((C2145bA) obj);
            }
        });
        int size2 = listA0O.size();
        if (this.A0L.size() != 0) {
            AbstractC1722Ln.A08(this.A0L.size() == size2);
            for (int i2 = 0; i2 < size2; i2++) {
                C2148bD c2148bD = listA0O.get(i2);
                C2145bA c2145bA = c2148bD.A03;
                this.A0L.get(c2145bA.A00).A0C(c2148bD, A07(sparseArray, c2145bA.A00));
            }
            return;
        }
        for (int i3 = 0; i3 < size2; i3++) {
            C2148bD c2148bD2 = listA0O.get(i3);
            C2145bA c2145bA2 = c2148bD2.A03;
            this.A0L.put(c2145bA2.A00, new C2131aw(this.A0E.ALm(i3, c2145bA2.A03), c2148bD2, A07(sparseArray, c2145bA2.A00)));
            this.A08 = Math.max(this.A08, c2145bA2.A04);
        }
        InterfaceC2044Yw interfaceC2044Yw = this.A0E;
        if (A0a[7].charAt(1) == 'U') {
            throw new RuntimeException();
        }
        String[] strArr = A0a;
        strArr[5] = "OrhQxg08UushiYwVaqK9LvBW";
        strArr[0] = "cRCSDWIC";
        interfaceC2044Yw.A6x();
    }

    public static void A0Q(PF pf, SparseArray<C2131aw> sparseArray, boolean z, int i, byte[] bArr) throws L9 {
        int size = pf.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            PF pf2 = pf.A01.get(i2);
            if (((AbstractC2115ag) pf2).A00 == 1953653094) {
                A0R(pf2, sparseArray, z, i, bArr);
            }
        }
    }

    public static void A0R(PF pf, SparseArray<C2131aw> sparseArray, boolean z, int i, byte[] bArr) throws L9 {
        C2131aw c2131awA09 = A09(((PE) AbstractC1722Ln.A01(pf.A03(1952868452))).A00, sparseArray, z);
        if (c2131awA09 == null) {
            return;
        }
        C2147bC c2147bC = c2131awA09.A09;
        long j = c2147bC.A05;
        boolean z2 = c2147bC.A09;
        c2131awA09.A08();
        c2131awA09.A06 = true;
        PE peA03 = pf.A03(1952867444);
        if (peA03 == null || (i & 2) != 0) {
            c2147bC.A05 = j;
            c2147bC.A09 = z2;
        } else {
            c2147bC.A05 = A03(peA03.A00);
            c2147bC.A09 = true;
        }
        A0S(pf, c2131awA09, i);
        C2146bB c2146bBA00 = c2131awA09.A05.A03.A00(((C2122an) AbstractC1722Ln.A01(c2147bC.A06)).A02);
        PE peA04 = pf.A03(1935763834);
        if (peA04 != null) {
            A0V((C2146bB) AbstractC1722Ln.A01(c2146bBA00), peA04.A00, c2147bC);
        }
        PE peA05 = pf.A03(1935763823);
        if (peA05 != null) {
            A0I(peA05.A00, c2147bC);
        }
        PE peA06 = pf.A03(1936027235);
        if (peA06 != null) {
            A0J(peA06.A00, c2147bC);
        }
        A0T(pf, c2146bBA00 != null ? c2146bBA00.A02 : null, c2147bC);
        int size = pf.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            PE pe = pf.A02.get(i2);
            if (((AbstractC2115ag) pe).A00 == 1970628964) {
                A0K(pe.A00, c2147bC, bArr);
            }
        }
    }

    public static void A0S(PF pf, C2131aw c2131aw, int i) throws L9 {
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
        c2131aw.A02 = 0;
        c2131aw.A00 = 0;
        c2131aw.A01 = 0;
        c2131aw.A09.A03(i2, i3);
        int i5 = 0;
        int iA01 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            PE pe2 = list.get(i6);
            if (((AbstractC2115ag) pe2).A00 == 1953658222) {
                iA01 = A01(c2131aw, i5, i, pe2.A00, iA01);
                i5++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:55:0x011c  */
    public static void A0T(PF pf, String str, C2147bC c2147bC) throws L9 {
        C1744Mk c1744Mk = null;
        C1744Mk c1744Mk2 = null;
        for (int i = 0; i < pf.A02.size(); i++) {
            PE pe = pf.A02.get(i);
            C1744Mk c1744Mk3 = pe.A00;
            if (((AbstractC2115ag) pe).A00 == 1935828848) {
                c1744Mk3.A0f(12);
                if (c1744Mk3.A0C() == 1936025959) {
                    c1744Mk = c1744Mk3;
                }
            } else if (((AbstractC2115ag) pe).A00 == 1936158820) {
                c1744Mk3.A0f(12);
                if (c1744Mk3.A0C() == 1936025959) {
                    c1744Mk2 = c1744Mk3;
                }
            }
        }
        if (c1744Mk == null || c1744Mk2 == null) {
            return;
        }
        c1744Mk.A0f(8);
        int iA03 = AbstractC2115ag.A03(c1744Mk.A0C());
        if (A0a[4].charAt(12) != 'C') {
            throw new RuntimeException();
        }
        String[] strArr = A0a;
        strArr[1] = "5R7Ccfe8FbRHKeqeCIffVYYlw43uoBMQ";
        strArr[3] = "xPpemHklMEjsRkqDLSx71WJyeIfI1FmL";
        c1744Mk.A0g(4);
        if (iA03 == 1) {
            c1744Mk.A0g(4);
        }
        if (c1744Mk.A0C() != 1) {
            throw L9.A00(A0A(126, 39, 56));
        }
        c1744Mk2.A0f(8);
        int iA04 = AbstractC2115ag.A03(c1744Mk2.A0C());
        String[] strArr2 = A0a;
        if (strArr2[1].charAt(14) != strArr2[3].charAt(14)) {
            c1744Mk2.A0g(4);
            if (iA04 == 1) {
                if (c1744Mk2.A0Q() == 0) {
                    throw L9.A00(A0A(784, 55, 25));
                }
            } else if (iA04 >= 2) {
                c1744Mk2.A0g(4);
            }
        } else {
            A0a[4] = "bK6bPeMytAh5CyAIRjPW32w9gwSfGqw8";
            c1744Mk2.A0g(4);
            if (iA04 == 1) {
                if (c1744Mk2.A0Q() == 0) {
                    throw L9.A00(A0A(784, 55, 25));
                }
            } else if (iA04 >= 2) {
                c1744Mk2.A0g(4);
            }
        }
        if (c1744Mk2.A0Q() != 1) {
            throw L9.A00(A0A(165, 39, 116));
        }
        c1744Mk2.A0g(1);
        int iA0I = c1744Mk2.A0I();
        int i2 = (iA0I & 240) >> 4;
        int i3 = iA0I & 15;
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
            }
            c2147bC.A08 = true;
            c2147bC.A07 = new C2146bB(z, str, iA0I2, bArr, i2, i3, bArr2);
        }
    }

    @MetaExoPlayerCustomization
    private void A0U(PE pe, long j, Uri uri) throws L9 {
        if (!this.A0V.isEmpty()) {
            this.A0V.peek().A05(pe);
            return;
        }
        if (((AbstractC2115ag) pe).A00 == 1936286840) {
            Pair<Long, QJ> pairA05 = A05(pe.A00, j);
            this.A0C = ((Long) pairA05.first).longValue();
            this.A0E.AKP((ZK) pairA05.second);
            this.A0G = true;
            return;
        }
        int i = ((AbstractC2115ag) pe).A00;
        if (A0a[7].charAt(1) == 'U') {
            throw new RuntimeException();
        }
        String[] strArr = A0a;
        strArr[6] = "spdRTJ9gc0V8C8dawfdzzmzq";
        strArr[2] = "7no20bYvIU1AJm1N2ikVgT8N4";
        if (i != 1701671783 || uri == null) {
            return;
        }
        A0H(pe.A00, uri);
    }

    public static void A0V(C2146bB c2146bB, C1744Mk c1744Mk, C2147bC c2147bC) throws L9 {
        int i = c2146bB.A00;
        c1744Mk.A0f(8);
        if ((AbstractC2115ag.A02(c1744Mk.A0C()) & 1) == 1) {
            c1744Mk.A0g(8);
        }
        int iA0I = c1744Mk.A0I();
        int iA0L = c1744Mk.A0L();
        if (iA0L > c2147bC.A00) {
            throw L9.A01(A0A(514, 18, 94) + iA0L + A0A(40, 38, 11) + c2147bC.A00, null);
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
            boolean z = iA0I > i;
            i2 = 0 + (iA0I * iA0L);
            if (A0a[4].charAt(12) != 'C') {
                throw new RuntimeException();
            }
            A0a[7] = "3oPC3Onuzz53KD8lbAoghObbXCXpgcj5";
            Arrays.fill(c2147bC.A0F, 0, iA0L, z);
        }
        Arrays.fill(c2147bC.A0F, iA0L, c2147bC.A00, false);
        if (i2 > 0) {
            c2147bC.A02(i2);
        }
    }

    public static boolean A0W(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    public static boolean A0X(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00e6 A[PHI: r7
  0x00e6: PHI (r7v6 long) = (r7v3 long), (r7v8 long) binds: [B:44:0x0125, B:32:0x00e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:40:0x0111  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0146, code lost:
    
        if (r9 == 1835295092) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0148, code lost:
    
        r11.A0F = r7;
        r11.A09 = r11.A07 + r2;
        r11.A02 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0152, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x015b, code lost:
    
        if (r9 == 1835295092) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015e, code lost:
    
        r3 = r11.A01;
        r2 = com.facebook.ads.redexgen.X.P8.A0a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0170, code lost:
    
        if (r2[5].length() == r2[0].length()) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0172, code lost:
    
        com.facebook.ads.redexgen.X.P8.A0a[4] = "0S8elcTiMKARCn8aCrl6ynMdGK5dBFmZ";
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x017d, code lost:
    
        if (A0W(r3) == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x017f, code lost:
    
        r5 = (r12.A9Q() + r11.A07) - 8;
        r11.A0V.push(new com.facebook.ads.redexgen.X.PF(r11.A01, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x019c, code lost:
    
        if (r11.A07 != r11.A00) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x019e, code lost:
    
        A0F(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a1, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01a2, code lost:
    
        A0B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01af, code lost:
    
        if (A0X(r11.A01) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01b3, code lost:
    
        if (r11.A00 != 8) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01b9, code lost:
    
        if (r11.A07 > 2147483647L) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01bb, code lost:
    
        r2 = new com.facebook.ads.redexgen.X.C1744Mk((int) r11.A07);
        java.lang.System.arraycopy(r11.A0M.A0l(), 0, r2.A0l(), 0, 8);
        r11.A0D = r2;
        r11.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01d9, code lost:
    
        if (r11.A07 > 2147483647L) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01db, code lost:
    
        r11.A0D = r7;
        r11.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ee, code lost:
    
        throw com.facebook.ads.redexgen.X.L9.A00(A0A(335, 49, 59));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01fd, code lost:
    
        throw com.facebook.ads.redexgen.X.L9.A00(A0A(284, 51, 78));
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x020c, code lost:
    
        throw com.facebook.ads.redexgen.X.L9.A00(A0A(592, 53, 32));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0Y(com.facebook.ads.redexgen.X.Q9 r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P8.A0Y(com.facebook.ads.redexgen.X.Q9):boolean");
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x024f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x025e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x0292 A[EDGE_INSN: B:109:0x0292->B:79:0x0292 BREAK  A[LOOP:1: B:74:0x0264->B:78:0x0283], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00de  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:38:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:41:0x0119  */
    /* JADX WARN: Code duplicated, block: B:45:0x014e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0158  */
    /* JADX WARN: Code duplicated, block: B:51:0x0172  */
    /* JADX WARN: Code duplicated, block: B:55:0x0186  */
    /* JADX WARN: Code duplicated, block: B:61:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:64:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:66:0x0209  */
    /* JADX WARN: Code duplicated, block: B:68:0x023e  */
    /* JADX WARN: Code duplicated, block: B:69:0x0245  */
    /* JADX WARN: Code duplicated, block: B:74:0x0264 A[LOOP:1: B:74:0x0264->B:78:0x0283, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:76:0x027a  */
    /* JADX WARN: Code duplicated, block: B:78:0x0283 A[LOOP:1: B:74:0x0264->B:78:0x0283, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:83:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:90:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:93:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:96:0x0303 A[DONT_INVERT] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @MetaExoPlayerCustomization
    private boolean A0Z(Q9 q9) throws IOException {
        int i;
        int i2;
        C2145bA c2145bA;
        ZP zp;
        long jA06;
        int i3;
        int i4;
        String[] strArr;
        int iA02;
        ZN zn;
        C2146bB c2146bBA07;
        String[] strArr2;
        byte[] bArrA0l;
        int i5;
        int i6;
        int iA0C;
        boolean z;
        int iAK7;
        int iA03;
        C1744Mk c1744Mk;
        String str;
        int i7;
        C2131aw c2131awA08 = this.A0F;
        Throwable th = null;
        if (c2131awA08 != null) {
            i = 4;
            i2 = 1;
            if (this.A02 == 3) {
                this.A06 = c2131awA08.A03();
                if (c2131awA08.A01 < c2131awA08.A03) {
                    q9.ALL(this.A06);
                    c2131awA08.A09();
                    if (!c2131awA08.A0D()) {
                        this.A0F = null;
                    }
                    this.A02 = 3;
                    return true;
                }
                if (c2131awA08.A05.A03.A02 == 1) {
                    this.A06 -= 8;
                    q9.ALL(8);
                }
                if (A0A(878, 9, 47).equals(c2131awA08.A05.A03.A07.A0W)) {
                    this.A04 = c2131awA08.A04(this.A06, 7);
                    AbstractC2029Yg.A07(this.A06, this.A0Q);
                    c2131awA08.A08.AK9(this.A0Q, 7);
                    this.A04 += 7;
                } else {
                    this.A04 = c2131awA08.A04(this.A06, 0);
                }
                this.A06 += this.A04;
                this.A02 = 4;
                this.A05 = 0;
            }
            c2145bA = c2131awA08.A05.A03;
            zp = c2131awA08.A08;
            jA06 = c2131awA08.A06();
            if (this.A0R != null) {
                jA06 = this.A0R.A05(jA06);
            }
            if (c2145bA.A01 != 0) {
                bArrA0l = this.A0O.A0l();
                bArrA0l[0] = 0;
                bArrA0l[1] = 0;
                bArrA0l[2] = 0;
                i5 = c2145bA.A01 + 1;
                i6 = 4 - c2145bA.A01;
                while (this.A04 < this.A06) {
                    if (this.A05 == 0) {
                        q9.readFully(bArrA0l, i6, i5);
                        this.A0O.A0f(0);
                        iA0C = this.A0O.A0C();
                        if (iA0C >= i2) {
                            throw L9.A01(A0A(266, 18, 73), th);
                        }
                        this.A05 = iA0C - 1;
                        this.A0P.A0f(0);
                        zp.AK9(this.A0P, i);
                        zp.AK9(this.A0O, i2);
                        if (this.A0I.length > 0 || !ZE.A0I(c2145bA.A07.A0W, bArrA0l[i])) {
                            z = false;
                        } else {
                            z = true;
                        }
                        this.A0H = z;
                        this.A04 += 5;
                        this.A06 += i6;
                        i2 = 1;
                    } else {
                        if (this.A0H) {
                            this.A0N.A0d(this.A05);
                            q9.readFully(this.A0N.A0l(), 0, this.A05);
                            zp.AK9(this.A0N, this.A05);
                            iAK7 = this.A05;
                            iA03 = ZE.A02(this.A0N.A0l(), this.A0N.A0A());
                            c1744Mk = this.A0N;
                            str = c2145bA.A07.A0W;
                            if (A0a[7].charAt(1) != 'U') {
                                A0a[7] = "BpOg6eE3mtuwVwvHkFgZW8n8uz2LcabH";
                                c1744Mk.A0f(A0A(887, 10, 105).equals(str) ? 1 : 0);
                                this.A0N.A0e(iA03);
                                AbstractC2037Yp.A03(jA06, this.A0N, this.A0I);
                            }
                        } else {
                            iAK7 = zp.AK7(q9, this.A05, false);
                        }
                        this.A04 += iAK7;
                        this.A05 -= iAK7;
                        th = null;
                        i = 4;
                        i2 = 1;
                    }
                }
            } else {
                while (true) {
                    i3 = this.A04;
                    i4 = this.A06;
                    strArr = A0a;
                    if (strArr[5].length() != strArr[0].length()) {
                        throw new RuntimeException();
                    }
                    A0a[4] = "c8mxoZGd2Q8WC0fMuOea3yATryiSNNCo";
                    if (i3 < i4) {
                        break;
                    }
                    this.A04 += zp.AK7(q9, this.A06 - this.A04, false);
                }
            }
            iA02 = c2131awA08.A02();
            zn = null;
            c2146bBA07 = c2131awA08.A07();
            strArr2 = A0a;
            if (strArr2[5].length() != strArr2[0].length()) {
                String[] strArr3 = A0a;
                strArr3[6] = "Rct8B2KWH9iZIjLt1wKnyeW1";
                strArr3[2] = "QpJHT92kfcsQmPwd7DmOpd4Tp";
                if (c2146bBA07 != null) {
                    zn = c2146bBA07.A01;
                }
            } else if (c2146bBA07 != null) {
                zn = c2146bBA07.A01;
            }
            if (!XL.A03(XQ.A1y) && this.A0F != null) {
                if (A0A(857, 21, 62).equals(this.A0F.A05.A03.A07.A0W)) {
                    iA02 |= 1;
                }
            }
            long j = jA06;
            zp.AKC(jA06, iA02, this.A06, 0, zn);
            this.A0A = j;
            A0E(j);
            if (!c2131awA08.A0D()) {
                this.A0F = null;
            }
            this.A02 = 3;
            return true;
        }
        c2131awA08 = A08(this.A0L);
        if (c2131awA08 != null) {
            long jA05 = c2131awA08.A05();
            long jA9Q = q9.A9Q();
            String[] strArr4 = A0a;
            if (strArr4[6].length() != strArr4[2].length()) {
                String[] strArr5 = A0a;
                strArr5[1] = "ck8pvSJlCkvJrLqWxYmfaiz8TCj7tpNF";
                strArr5[3] = "E9UekiAKQoUHx9qLxlyNsjycirdUZqSs";
                i7 = (int) (jA05 - jA9Q);
                if (i7 < 0) {
                    MV.A07(A0A(204, 22, 5), A0A(226, 40, 62));
                    i7 = 0;
                }
            } else {
                A0a[4] = "KCf4uJTxOH1eCu7heXEVBWSuh06XRuT6";
                i7 = (int) (jA05 - jA9Q);
                if (i7 < 0) {
                    MV.A07(A0A(204, 22, 5), A0A(226, 40, 62));
                    i7 = 0;
                }
            }
            q9.ALL(i7);
            this.A0F = c2131awA08;
            i = 4;
            i2 = 1;
            if (this.A02 == 3) {
                this.A06 = c2131awA08.A03();
                if (c2131awA08.A01 < c2131awA08.A03) {
                    q9.ALL(this.A06);
                    c2131awA08.A09();
                    if (!c2131awA08.A0D()) {
                        this.A0F = null;
                    }
                    this.A02 = 3;
                    return true;
                }
                if (c2131awA08.A05.A03.A02 == 1) {
                    this.A06 -= 8;
                    q9.ALL(8);
                }
                if (A0A(878, 9, 47).equals(c2131awA08.A05.A03.A07.A0W)) {
                    this.A04 = c2131awA08.A04(this.A06, 7);
                    AbstractC2029Yg.A07(this.A06, this.A0Q);
                    c2131awA08.A08.AK9(this.A0Q, 7);
                    this.A04 += 7;
                } else {
                    this.A04 = c2131awA08.A04(this.A06, 0);
                }
                this.A06 += this.A04;
                this.A02 = 4;
                this.A05 = 0;
            }
            c2145bA = c2131awA08.A05.A03;
            zp = c2131awA08.A08;
            jA06 = c2131awA08.A06();
            if (this.A0R != null) {
                jA06 = this.A0R.A05(jA06);
            }
            if (c2145bA.A01 != 0) {
                bArrA0l = this.A0O.A0l();
                bArrA0l[0] = 0;
                bArrA0l[1] = 0;
                bArrA0l[2] = 0;
                i5 = c2145bA.A01 + 1;
                i6 = 4 - c2145bA.A01;
                while (this.A04 < this.A06) {
                    if (this.A05 == 0) {
                        q9.readFully(bArrA0l, i6, i5);
                        this.A0O.A0f(0);
                        iA0C = this.A0O.A0C();
                        if (iA0C >= i2) {
                            throw L9.A01(A0A(266, 18, 73), th);
                        }
                        this.A05 = iA0C - 1;
                        this.A0P.A0f(0);
                        zp.AK9(this.A0P, i);
                        zp.AK9(this.A0O, i2);
                        if (this.A0I.length > 0) {
                            z = false;
                        } else {
                            z = false;
                        }
                        this.A0H = z;
                        this.A04 += 5;
                        this.A06 += i6;
                        i2 = 1;
                    } else {
                        if (this.A0H) {
                            this.A0N.A0d(this.A05);
                            q9.readFully(this.A0N.A0l(), 0, this.A05);
                            zp.AK9(this.A0N, this.A05);
                            iAK7 = this.A05;
                            iA03 = ZE.A02(this.A0N.A0l(), this.A0N.A0A());
                            c1744Mk = this.A0N;
                            str = c2145bA.A07.A0W;
                            if (A0a[7].charAt(1) != 'U') {
                                A0a[7] = "BpOg6eE3mtuwVwvHkFgZW8n8uz2LcabH";
                                c1744Mk.A0f(A0A(887, 10, 105).equals(str) ? 1 : 0);
                                this.A0N.A0e(iA03);
                                AbstractC2037Yp.A03(jA06, this.A0N, this.A0I);
                            }
                        } else {
                            iAK7 = zp.AK7(q9, this.A05, false);
                        }
                        this.A04 += iAK7;
                        this.A05 -= iAK7;
                        th = null;
                        i = 4;
                        i2 = 1;
                    }
                }
            } else {
                while (true) {
                    i3 = this.A04;
                    i4 = this.A06;
                    strArr = A0a;
                    if (strArr[5].length() != strArr[0].length()) {
                        throw new RuntimeException();
                    }
                    A0a[4] = "c8mxoZGd2Q8WC0fMuOea3yATryiSNNCo";
                    if (i3 < i4) {
                        break;
                        break;
                    }
                    this.A04 += zp.AK7(q9, this.A06 - this.A04, false);
                }
            }
            iA02 = c2131awA08.A02();
            zn = null;
            c2146bBA07 = c2131awA08.A07();
            strArr2 = A0a;
            if (strArr2[5].length() != strArr2[0].length()) {
                String[] strArr6 = A0a;
                strArr6[6] = "Rct8B2KWH9iZIjLt1wKnyeW1";
                strArr6[2] = "QpJHT92kfcsQmPwd7DmOpd4Tp";
                if (c2146bBA07 != null) {
                    zn = c2146bBA07.A01;
                }
            } else if (c2146bBA07 != null) {
                zn = c2146bBA07.A01;
            }
            if (!XL.A03(XQ.A1y)) {
                if (A0A(857, 21, 62).equals(this.A0F.A05.A03.A07.A0W)) {
                    iA02 |= 1;
                }
            }
            long j2 = jA06;
            zp.AKC(jA06, iA02, this.A06, 0, zn);
            this.A0A = j2;
            A0E(j2);
            if (!c2131awA08.A0D()) {
                this.A0F = null;
            }
            this.A02 = 3;
            return true;
        }
        long jA9Q2 = this.A09 - q9.A9Q();
        if (A0a[7].charAt(1) != 'U') {
            String[] strArr7 = A0a;
            strArr7[1] = "6YThtj0zjkxnACqh02LZm3kmqJKQwVS0";
            strArr7[3] = "IzKrSJZrM0xZqnqBypiUQofEhtOGu3XM";
            int i8 = (int) jA9Q2;
            if (i8 < 0) {
                throw L9.A01(A0A(TypedValues.CycleType.TYPE_WAVE_PERIOD, 35, 98), null);
            }
            q9.ALL(i8);
            String[] strArr8 = A0a;
            if (strArr8[1].charAt(14) != strArr8[3].charAt(14)) {
                A0a[4] = "q4QQK27ktJIkCUU447hWnpzQVULcn1JV";
                A0B();
                return false;
            }
            String[] strArr9 = A0a;
            strArr9[5] = "eWTPrtqpTIMIPxnWkrJxSQQe";
            strArr9[0] = "DV2oCwUs";
            A0B();
            return false;
        }
        throw new RuntimeException();
    }

    public static boolean A0a(C2145bA c2145bA) {
        if (c2145bA.A08 == null || c2145bA.A08.length != 1 || c2145bA.A09 == null) {
            return false;
        }
        if (c2145bA.A08[0] == 0) {
            return true;
        }
        long j = c2145bA.A08[0] + c2145bA.A09[0];
        long j2 = c2145bA.A05;
        if (A0a[7].charAt(1) == 'U') {
            throw new RuntimeException();
        }
        A0a[4] = "0Q88ZbcvQEIxCc32UKwkG70cQi1Rc0cj";
        return N1.A0U(j, 1000000L, j2) >= c2145bA.A04;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A0b() {
        return new InterfaceC2043Yv[]{new P7()};
    }

    public final C2145bA A0c(C2145bA c2145bA) {
        return c2145bA;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A0E = interfaceC2044Yw;
        A0B();
        A0C();
        if (this.A0U != null) {
            this.A0L.put(0, new C2131aw(interfaceC2044Yw.ALm(0, this.A0U.A03), new C2148bD(this.A0U, new long[0], new int[0], 0, new long[0], new int[0], 0L), new C2122an(0, 0, 0, 0)));
            this.A0E.A6x();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (!A0Y(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0L(q9);
                    break;
                case 2:
                    A0M(q9);
                    break;
                default:
                    if (A0Z(q9)) {
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
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            this.A0L.valueAt(i).A08();
        }
        this.A0W.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0V.clear();
        A0B();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2143b8.A01(q9);
    }
}
