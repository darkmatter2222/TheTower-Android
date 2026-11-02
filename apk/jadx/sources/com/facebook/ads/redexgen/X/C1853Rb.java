package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1853Rb implements ZP {
    public static byte[] A0Y;
    public static String[] A0Z = {"9SuFUez5PaLoVpB9bApPkgwJIALbVXxB", "WnP4p2P3d4GjCnesSI4pEdpA9z2FpgBb", "FqyoJbhNEKbWYkuOxNvLVuwDDeYkeemR", "gfxw0ZtY8Un17pXHHWpTZUSfyFF3Yz", "sUnHKy7JKoFDN1jmpp", "sTSS3r2YgpKPlpnV6FGptzKl5TVzo2lo", "bSQQjejOVBGpBwfgiuD782ifo2xy8M", "S0rjmSH8elRPo8MiCELFBH3Nt2uU8uFt"};
    public int A00;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public long A08;

    @MetaExoPlayerCustomization
    public Uri A0A;
    public VC A0B;
    public VC A0C;
    public VC A0D;
    public InterfaceC1858Rg A0E;
    public VB A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public final C1867Rp A0T;
    public final InterfaceC1872Ru A0U;
    public final V7 A0V;
    public final V9 A0W = new V9();
    public int A01 = 1000;
    public int[] A0P = new int[this.A01];
    public long[] A0Q = new long[this.A01];
    public long[] A0R = new long[this.A01];
    public int[] A0N = new int[this.A01];
    public int[] A0O = new int[this.A01];
    public ZN[] A0S = new ZN[this.A01];
    public final VQ<VA> A0X = new VQ<>(new InterfaceC1732Ly() { // from class: com.facebook.ads.redexgen.X.Rc
        @Override // com.facebook.ads.redexgen.X.InterfaceC1732Ly
        public final void A3V(Object obj) {
            ((VA) obj).A01.AIp();
        }
    });
    public long A09 = Long.MIN_VALUE;
    public long A06 = Long.MIN_VALUE;
    public long A07 = Long.MIN_VALUE;
    public boolean A0L = true;
    public boolean A0M = true;

    static {
        A0E();
    }

    public C1853Rb(InterfaceC1987Wm interfaceC1987Wm, InterfaceC1872Ru interfaceC1872Ru, C1867Rp c1867Rp) {
        this.A0U = interfaceC1872Ru;
        this.A0T = c1867Rp;
        this.A0V = new V7(interfaceC1987Wm);
    }

    private int A00(int i) {
        int i2 = this.A04 + i;
        return i2 < this.A01 ? i2 : i2 - this.A01;
    }

    private int A01(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2 && this.A0R[i] <= j; i4++) {
            if (!z || (this.A0N[i] & 1) != 0) {
                i3 = i4;
                if (this.A0R[i] == j) {
                    break;
                }
            }
            i++;
            if (i == this.A01) {
                i = 0;
            }
        }
        return i3;
    }

    private int A02(long j) {
        int i = this.A02;
        int iA00 = A00(this.A02 - 1);
        while (true) {
            int i2 = this.A03;
            if (A0Z[4].length() != 18) {
                throw new RuntimeException();
            }
            A0Z[4] = "dolUKH4gThNCszSjox";
            if (i <= i2 || this.A0R[iA00] < j) {
                return i;
            }
            i--;
            iA00--;
            if (iA00 == -1) {
                iA00 = this.A01 - 1;
            }
        }
    }

    private synchronized int A03(C1800Oo c1800Oo, T2 t2, boolean z, boolean z2, V9 v9) {
        t2.A04 = false;
        if (!A0K()) {
            if (!z2 && !this.A0G) {
                if (this.A0D == null || (!z && this.A0D == this.A0B)) {
                    return -3;
                }
                A0H((VC) AbstractC1722Ln.A01(this.A0D), c1800Oo);
                return -5;
            }
            t2.A02(4);
            return -4;
        }
        VC vc = this.A0X.A01(A0O()).A00;
        if (z || vc != this.A0B) {
            A0H(vc, c1800Oo);
            return -5;
        }
        int iA00 = A00(this.A03);
        if (!A0L(iA00)) {
            t2.A04 = true;
            return -3;
        }
        t2.A02(this.A0N[iA00]);
        t2.A01 = this.A0R[iA00];
        if (t2.A01 < this.A09) {
            t2.A00(Integer.MIN_VALUE);
        }
        v9.A00 = this.A0O[iA00];
        v9.A01 = this.A0Q[iA00];
        v9.A02 = this.A0S[iA00];
        return -4;
    }

    private synchronized long A04() {
        if (this.A02 == 0) {
            return -1L;
        }
        return A06(this.A02);
    }

    private final synchronized long A05() {
        return Math.max(this.A06, A08(this.A03));
    }

    private long A06(int i) {
        this.A06 = Math.max(this.A06, A08(i));
        this.A02 -= i;
        this.A00 += i;
        this.A04 += i;
        if (this.A04 >= this.A01) {
            this.A04 -= this.A01;
        }
        this.A03 -= i;
        if (this.A03 < 0) {
            this.A03 = 0;
        }
        this.A0X.A04(this.A00);
        if (this.A02 != 0) {
            return this.A0Q[this.A04];
        }
        int i2 = (this.A04 == 0 ? this.A01 : this.A04) - 1;
        return this.A0Q[i2] + ((long) this.A0O[i2]);
    }

    private long A07(int i) {
        int iA0P = A0P() - i;
        boolean z = false;
        AbstractC1722Ln.A07(iA0P >= 0 && iA0P <= this.A02 - this.A03);
        this.A02 -= iA0P;
        this.A07 = Math.max(this.A06, A08(this.A02));
        if (iA0P == 0 && this.A0G) {
            z = true;
        }
        this.A0G = z;
        this.A0X.A03(i);
        if (A0Z[2].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A0Z;
        strArr[1] = "WhDqBbGJpUVteLYbNN2pGPdH9fo7UT1Z";
        strArr[5] = "Qpgc0TIFuwgBW8otUHgpzRVMIfcbDu1O";
        if (this.A02 == 0) {
            return 0L;
        }
        int iA00 = A00(this.A02 - 1);
        return this.A0Q[iA00] + ((long) this.A0O[iA00]);
    }

    private long A08(int i) {
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        long jMax = Long.MIN_VALUE;
        int iA00 = A00(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.A0R[iA00]);
            if ((this.A0N[iA00] & 1) != 0) {
                break;
            }
            iA00--;
            String[] strArr = A0Z;
            if (strArr[6].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A0Z[2] = "usCo8IkQcOtWzCeRf5569H09U9ARgSIq";
            if (iA00 == -1) {
                iA00 = this.A01 - 1;
                String[] strArr2 = A0Z;
                if (strArr2[6].length() == strArr2[3].length()) {
                    String[] strArr3 = A0Z;
                    strArr3[0] = "6fALZlBJzYUAMnzI8m0wk3vRuD20Qqhi";
                    strArr3[7] = "MCdHgjZSMyybecfiEYiH0gkFZTJrWOO9";
                }
            }
        }
        return jMax;
    }

    private synchronized long A09(long j, boolean z, boolean z2) {
        if (this.A02 != 0 && j >= this.A0R[this.A04]) {
            int iA01 = A01(this.A04, (!z2 || this.A03 == this.A02) ? this.A02 : this.A03 + 1, j, z);
            if (iA01 == -1) {
                return -1L;
            }
            return A06(iA01);
        }
        return -1L;
    }

    private final VC A0A(VC vc) {
        return (this.A08 == 0 || vc.A0M == Long.MAX_VALUE) ? vc : vc.A07().A0s(vc.A0M + this.A08).A14();
    }

    public static C1853Rb A0B(InterfaceC1987Wm interfaceC1987Wm, InterfaceC1872Ru interfaceC1872Ru, C1867Rp c1867Rp) {
        return new C1853Rb(interfaceC1987Wm, (InterfaceC1872Ru) AbstractC1722Ln.A01(interfaceC1872Ru), (C1867Rp) AbstractC1722Ln.A01(c1867Rp));
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Y, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 106);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0D() {
        if (this.A0E != null) {
            this.A0E.AIq(this.A0T);
            this.A0E = null;
            this.A0B = null;
        }
    }

    public static void A0E() {
        A0Y = new byte[]{-62, -23, -40, -27, -27, -36, -41, -36, -31, -38, -109, -24, -31, -40, -21, -29, -40, -42, -25, -40, -41, -109, -31, -30, -31, -96, -26, -20, -31, -42, -109, -26, -44, -32, -29, -33, -40, -109, -39, -30, -27, -109, -39, -30, -27, -32, -44, -25, -83, -109, 7, Ascii.NAK, 33, 36, 32, Ascii.EM, 5, 41, Ascii.EM, 41, Ascii.EM};
    }

    private synchronized void A0F() {
        this.A03 = 0;
        this.A0V.A0B();
    }

    private synchronized void A0G(long j, int i, long j2, int i2, ZN zn) {
        if (this.A02 > 0) {
            int iA00 = A00(this.A02 - 1);
            AbstractC1722Ln.A07(this.A0Q[iA00] + ((long) this.A0O[iA00]) <= j2);
        }
        this.A0G = (536870912 & i) != 0;
        this.A07 = Math.max(this.A07, j);
        int iA01 = A00(this.A02);
        this.A0R[iA01] = j;
        this.A0Q[iA01] = j2;
        this.A0O[iA01] = i2;
        this.A0N[iA01] = i;
        this.A0S[iA01] = zn;
        this.A0P[iA01] = this.A05;
        if (this.A0X.A06() || !this.A0X.A00().A00.equals(this.A0D)) {
            this.A0X.A05(A0P(), new VA((VC) AbstractC1722Ln.A01(this.A0D), this.A0U != null ? this.A0U.AIG(this.A0T, this.A0D) : InterfaceC1871Rt.A00));
        }
        this.A02++;
        if (this.A02 == this.A01) {
            int i3 = this.A01 + 1000;
            int[] iArr = new int[i3];
            long[] jArr = new long[i3];
            long[] jArr2 = new long[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            ZN[] znArr = new ZN[i3];
            int i4 = this.A01 - this.A04;
            System.arraycopy(this.A0Q, this.A04, jArr, 0, i4);
            System.arraycopy(this.A0R, this.A04, jArr2, 0, i4);
            System.arraycopy(this.A0N, this.A04, iArr2, 0, i4);
            System.arraycopy(this.A0O, this.A04, iArr3, 0, i4);
            System.arraycopy(this.A0S, this.A04, znArr, 0, i4);
            System.arraycopy(this.A0P, this.A04, iArr, 0, i4);
            int i5 = this.A04;
            System.arraycopy(this.A0Q, 0, jArr, i4, i5);
            System.arraycopy(this.A0R, 0, jArr2, i4, i5);
            System.arraycopy(this.A0N, 0, iArr2, i4, i5);
            System.arraycopy(this.A0O, 0, iArr3, i4, i5);
            System.arraycopy(this.A0S, 0, znArr, i4, i5);
            System.arraycopy(this.A0P, 0, iArr, i4, i5);
            this.A0Q = jArr;
            this.A0R = jArr2;
            this.A0N = iArr2;
            this.A0O = iArr3;
            this.A0S = znArr;
            this.A0P = iArr;
            this.A04 = 0;
            this.A01 = i3;
        }
    }

    private void A0H(VC vc, C1800Oo c1800Oo) {
        boolean z = this.A0B == null;
        DrmInitData drmInitData = z ? null : this.A0B.A0O;
        this.A0B = vc;
        DrmInitData drmInitData2 = vc.A0O;
        String[] strArr = A0Z;
        if (strArr[1].charAt(19) != strArr[5].charAt(19)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0Z;
        strArr2[0] = "HbiMpST0tqhR09QJOdPYbUVQsjPtPdov";
        strArr2[7] = "Qlot8tHVBiln5H0gJBF7F9JPhKcdWQqe";
        c1800Oo.A00 = this.A0U != null ? vc.A08(this.A0U.A87(vc)) : vc;
        c1800Oo.A01 = this.A0E;
        if (this.A0U == null) {
            return;
        }
        if ((z || !N1.A1E(drmInitData, drmInitData2)) && Looper.myLooper() != null) {
            InterfaceC1858Rg interfaceC1858Rg = this.A0E;
            this.A0E = this.A0U.A3Y(this.A0T, vc);
            c1800Oo.A01 = this.A0E;
            if (interfaceC1858Rg != null) {
                interfaceC1858Rg.AIq(this.A0T);
            }
        }
    }

    private final void A0J(boolean z) {
        this.A0V.A0A();
        this.A02 = 0;
        this.A00 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A0M = true;
        this.A09 = Long.MIN_VALUE;
        this.A06 = Long.MIN_VALUE;
        this.A07 = Long.MIN_VALUE;
        this.A0G = false;
        this.A0X.A02();
        if (z) {
            if (A0Z[4].length() != 18) {
                throw new RuntimeException();
            }
            A0Z[4] = "sqzZn8w9e9BdGX6uTk";
            this.A0C = null;
            this.A0D = null;
            this.A0L = true;
        }
    }

    private boolean A0K() {
        return this.A03 != this.A02;
    }

    private boolean A0L(int i) {
        return this.A0E == null || this.A0E.A9n() == 4 || ((this.A0N[i] & 1073741824) == 0 && this.A0E.AIE());
    }

    private synchronized boolean A0M(long j) {
        boolean z = true;
        if (this.A02 == 0) {
            if (j <= this.A06) {
                z = false;
            }
            return z;
        }
        if (A05() >= j) {
            return false;
        }
        A07(this.A00 + A02(j));
        return true;
    }

    private synchronized boolean A0N(VC vc) {
        this.A0L = false;
        if (N1.A1E(vc, this.A0D)) {
            return false;
        }
        if (this.A0X.A06() || !this.A0X.A00().A00.equals(vc)) {
            this.A0D = vc;
        } else {
            this.A0D = this.A0X.A00().A00;
        }
        this.A0J = L8.A0G(this.A0D.A0W, this.A0D.A0R);
        this.A0H = false;
        return true;
    }

    public final int A0O() {
        return this.A00 + this.A03;
    }

    public final int A0P() {
        return this.A00 + this.A02;
    }

    public final synchronized int A0Q(long j, boolean z) {
        int iA00 = A00(this.A03);
        if (A0K() && j >= this.A0R[iA00]) {
            if (j > this.A07 && z) {
                return this.A02 - this.A03;
            }
            int iA01 = A01(iA00, this.A02 - this.A03, j, true);
            if (iA01 == -1) {
                return 0;
            }
            return iA01;
        }
        return 0;
    }

    public final int A0R(C1800Oo c1800Oo, T2 t2, int i, boolean z) {
        int iA03 = A03(c1800Oo, t2, (i & 2) != 0, z, this.A0W);
        if (iA03 == -4 && !t2.A05()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z2) {
                    this.A0V.A0E(t2, this.A0W);
                } else {
                    V7 v7 = this.A0V;
                    if (A0Z[4].length() != 18) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0Z;
                    strArr[0] = "rRp7KszPCIiV4HBOEBmrHkgqycUSCs5l";
                    strArr[7] = "qRl4ES6PqkxlrpPTaqmIy64A96Rs88bh";
                    v7.A0F(t2, this.A0W);
                }
            }
            if (!z2) {
                this.A03++;
            }
        }
        return iA03;
    }

    public final synchronized long A0S() {
        return this.A02 == 0 ? Long.MIN_VALUE : this.A0R[this.A04];
    }

    public final synchronized long A0T() {
        return this.A07;
    }

    public final synchronized VC A0U() {
        return this.A0L ? null : this.A0D;
    }

    public final void A0V() {
        this.A0V.A0C(A04());
    }

    public final void A0W() throws IOException {
        if (this.A0E != null && this.A0E.A9n() == 1) {
            throw ((C1856Re) AbstractC1722Ln.A01(this.A0E.A8b()));
        }
    }

    public final void A0X() {
        A0V();
        A0D();
    }

    public final void A0Y() {
        A0J(true);
        A0D();
    }

    public final void A0Z() {
        A0J(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000c  */
    public final synchronized void A0a(int i) {
        boolean z;
        if (i >= 0) {
            if (this.A03 + i <= this.A02) {
                z = true;
            } else {
                z = false;
            }
            AbstractC1722Ln.A07(z);
            this.A03 += i;
        } else {
            z = false;
            AbstractC1722Ln.A07(z);
            this.A03 += i;
        }
        throw th;
    }

    public final void A0b(long j) {
        this.A09 = j;
    }

    public final void A0c(long j, boolean z, boolean z2) {
        this.A0V.A0C(A09(j, z, z2));
    }

    public final void A0d(VB vb) {
        this.A0F = vb;
    }

    public final synchronized boolean A0e() {
        return this.A0G;
    }

    public final synchronized boolean A0f(long j, boolean z) {
        A0F();
        int iA00 = A00(this.A03);
        if (!A0K() || j < this.A0R[iA00] || (j > this.A07 && !z)) {
            return false;
        }
        int iA01 = A01(iA00, this.A02 - this.A03, j, true);
        if (iA01 == -1) {
            return false;
        }
        this.A09 = j;
        this.A03 += iA01;
        return true;
    }

    public final synchronized boolean A0g(boolean z) {
        boolean z2 = true;
        if (A0K()) {
            if (this.A0X.A01(A0O()).A00 != this.A0B) {
                return true;
            }
            return A0L(A00(this.A03));
        }
        if (!z && !this.A0G && (this.A0D == null || this.A0D == this.A0B)) {
            z2 = false;
        }
        return z2;
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void A7E(VC vc) {
        VC vcA0A = A0A(vc);
        this.A0K = false;
        this.A0C = vc;
        boolean zA0N = A0N(vcA0A);
        if (this.A0F == null || !zA0N) {
            return;
        }
        this.A0F.AHV(vcA0A);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final /* synthetic */ int AK7(KR kr, int i, boolean z) {
        return ZM.A00(this, kr, i, z);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final int AK8(KR kr, int i, boolean z, int i2) throws IOException {
        return this.A0V.A08(kr, i, z);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final /* synthetic */ void AK9(C1744Mk c1744Mk, int i) {
        ZM.A01(this, c1744Mk, i);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void AKA(C1744Mk c1744Mk, int i, int i2) {
        this.A0V.A0D(c1744Mk, i);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void AKC(long j, int i, int i2, int i3, ZN zn) {
        int i4 = i;
        if (this.A0K) {
            A7E((VC) AbstractC1722Ln.A02(this.A0C));
        }
        boolean z = (i4 & 1) != 0;
        if (this.A0M) {
            if (!z) {
                return;
            } else {
                this.A0M = false;
            }
        }
        long j2 = j + this.A08;
        if (this.A0J) {
            if (j2 < this.A09) {
                return;
            }
            if ((i4 & 1) == 0) {
                if (!this.A0H) {
                    MV.A07(A0C(50, 11, 74), A0C(0, 50, 9) + this.A0D);
                    this.A0H = true;
                }
                i4 |= 1;
            }
        }
        if (this.A0I) {
            if (!z || !A0M(j2)) {
                return;
            } else {
                this.A0I = false;
            }
        }
        A0G(j2, i4, (this.A0V.A09() - ((long) i2)) - ((long) i3), i2, zn);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    @MetaExoPlayerCustomization
    public final void ALz(Uri uri) {
        this.A0A = uri;
    }
}
