package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1765Nf implements InterfaceC2043Yv {
    public static byte[] A0J;
    public static String[] A0K = {"956B0rVWYzAVb", "SbIZ0rKR7y0901w7FjKilC0lpDAn5Ge", "t8G", "vNF9lYBo1SJ7esJl3lcXtDT", "xg2v94Ydxs5", "Z3YFuJb7MJSE20", "zCvxtWnXSA9ynLiwgKA2Pux", "NjtG4AhR1Zqeb6h2S6Fu"};
    public static final InterfaceC2047Yz A0L;
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC2044Yw A03;
    public C1777Nr A04;
    public InterfaceC2262d3 A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public final int A09;
    public final int A0A;
    public final SparseArray<InterfaceC2262d3> A0B;
    public final SparseBooleanArray A0C;
    public final SparseBooleanArray A0D;
    public final SparseIntArray A0E;
    public final C1744Mk A0F;
    public final C2255cw A0G;
    public final InterfaceC2259d0 A0H;
    public final List<C1752Ms> A0I;

    static {
        A0G();
        A0L = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.Nl
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return C1765Nf.A0M();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
    }

    public C1765Nf() {
        this(0);
    }

    public C1765Nf(int i) {
        this(1, i, 112800);
    }

    public C1765Nf(int i, int i2, int i3) {
        this(i, new C1752Ms(0L), new OF(i2), i3);
    }

    public C1765Nf(int i, C1752Ms c1752Ms, InterfaceC2259d0 interfaceC2259d0, int i2) {
        this.A0H = (InterfaceC2259d0) AbstractC1722Ln.A01(interfaceC2259d0);
        this.A0A = i2;
        this.A09 = i;
        if (i == 1 || i == 2) {
            this.A0I = Collections.singletonList(c1752Ms);
        } else {
            this.A0I = new ArrayList();
            this.A0I.add(c1752Ms);
        }
        this.A0F = new C1744Mk(new byte[9400], 0);
        this.A0C = new SparseBooleanArray();
        this.A0D = new SparseBooleanArray();
        this.A0B = new SparseArray<>();
        this.A0E = new SparseIntArray();
        this.A0G = new C2255cw(i2);
        this.A03 = InterfaceC2044Yw.A00;
        this.A01 = -1;
        A0F();
    }

    private int A00() throws L9 {
        int iA09 = this.A0F.A09();
        int iA0A = this.A0F.A0A();
        int iA00 = AbstractC2263d4.A00(this.A0F.A0l(), iA09, iA0A);
        this.A0F.A0f(iA00);
        int i = iA00 + 188;
        if (i > iA0A) {
            this.A00 += iA00 - iA09;
            if (this.A09 == 2 && this.A00 > 376) {
                throw L9.A01(A0D(0, 58, 43), null);
            }
        } else {
            this.A00 = 0;
        }
        return i;
    }

    public static /* synthetic */ int A02(C1765Nf c1765Nf) {
        int i = c1765Nf.A02;
        c1765Nf.A02 = i + 1;
        return i;
    }

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
            if (A0K[1].length() != 31) {
                throw new RuntimeException();
            }
            A0K[0] = "6bR1fYVTQtlAc";
        }
        return new String(bArrCopyOfRange);
    }

    private void A0F() {
        this.A0C.clear();
        this.A0B.clear();
        SparseArray<InterfaceC2262d3> sparseArrayA5z = this.A0H.A5z();
        int size = sparseArrayA5z.size();
        for (int i = 0; i < size; i++) {
            this.A0B.put(sparseArrayA5z.keyAt(i), sparseArrayA5z.valueAt(i));
        }
        this.A0B.put(0, new C1782Nw(new C1767Nh(this)));
        this.A05 = null;
    }

    public static void A0G() {
        if (A0K[1].length() != 31) {
            throw new RuntimeException();
        }
        A0K[5] = "wl8EDwynIrkNhP";
        A0J = new byte[]{114, 80, 95, 95, 94, 69, 17, 87, 88, 95, 85, 17, 66, 72, 95, 82, 17, 83, 72, 69, 84, Ascii.US, 17, 124, 94, 66, 69, 17, 93, 88, 90, 84, 93, 72, 17, 95, 94, 69, 17, 80, 17, 101, 67, 80, 95, 66, 65, 94, 67, 69, 17, 98, 69, 67, 84, 80, 92, Ascii.US};
    }

    private void A0H(long j) {
        if (this.A06) {
            return;
        }
        this.A06 = true;
        if (this.A0G.A08() == -9223372036854775807L) {
            this.A03.AKP(new Q4(this.A0G.A08()));
        } else {
            this.A04 = new C1777Nr(this.A0G.A09(), this.A0G.A08(), j, this.A01, this.A0A);
            this.A03.AKP(this.A04.A09());
        }
    }

    private boolean A0I(int i) {
        return this.A09 == 2 || this.A08 || !this.A0D.get(i, false);
    }

    private boolean A0J(Q9 q9) throws IOException {
        byte[] bArrA0l = this.A0F.A0l();
        if (9400 - this.A0F.A09() < 188) {
            int iA07 = this.A0F.A07();
            if (iA07 > 0) {
                System.arraycopy(bArrA0l, this.A0F.A09(), bArrA0l, 0, iA07);
            }
            this.A0F.A0j(bArrA0l, iA07);
        }
        while (this.A0F.A07() < 188) {
            int iA0A = this.A0F.A0A();
            int i = q9.read(bArrA0l, iA0A, 9400 - iA0A);
            if (i == -1) {
                return false;
            }
            this.A0F.A0e(iA0A + i);
        }
        return true;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A0M() {
        return new InterfaceC2043Yv[]{new C1765Nf()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A03 = interfaceC2044Yw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        long jA90 = q9.A90();
        if (this.A08) {
            if (((jA90 == -1 || this.A09 == 2) ? false : true) && !this.A0G.A0A()) {
                return this.A0G.A07(q9, zh, this.A01);
            }
            A0H(jA90);
            if (this.A07) {
                this.A07 = false;
                AKO(0L, 0L);
                if (q9.A9Q() != 0) {
                    zh.A00 = 0L;
                    return 1;
                }
            }
            if (this.A04 != null && this.A04.A0B()) {
                return this.A04.A08(q9, zh);
            }
        }
        if (!A0J(q9)) {
            return -1;
        }
        int iA00 = A00();
        int iA0A = this.A0F.A0A();
        if (iA00 > iA0A) {
            return 0;
        }
        int iA0C = this.A0F.A0C();
        if ((8388608 & iA0C) != 0) {
            this.A0F.A0f(iA00);
            return 0;
        }
        int i = 4194304 & iA0C;
        if (A0K[2].length() == 32) {
            throw new RuntimeException();
        }
        A0K[2] = "UNKMKEU";
        int i2 = 0 | (i != 0 ? 1 : 0);
        int i3 = (2096896 & iA0C) >> 8;
        boolean z = (iA0C & 32) != 0;
        InterfaceC2262d3 interfaceC2262d3 = (iA0C & 16) != 0 ? this.A0B.get(i3) : null;
        if (interfaceC2262d3 == null) {
            this.A0F.A0f(iA00);
            return 0;
        }
        if (this.A09 != 2) {
            int i4 = iA0C & 15;
            int i5 = this.A0E.get(i3, i4 - 1);
            this.A0E.put(i3, i4);
            if (i5 == i4) {
                this.A0F.A0f(iA00);
                return 0;
            }
            if (i4 != ((i5 + 1) & 15)) {
                interfaceC2262d3.AKN();
            }
        }
        if (z) {
            int iA0I = this.A0F.A0I();
            i2 |= (this.A0F.A0I() & 64) != 0 ? 2 : 0;
            this.A0F.A0g(iA0I - 1);
        }
        boolean z2 = this.A08;
        if (A0I(i3)) {
            this.A0F.A0e(iA00);
            interfaceC2262d3.A5k(this.A0F, i2);
            this.A0F.A0e(iA0A);
        }
        if (this.A09 != 2 && !z2 && this.A08 && jA90 != -1) {
            this.A07 = true;
        }
        this.A0F.A0f(iA00);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        AbstractC1722Ln.A08(this.A09 != 2);
        int size = this.A0I.size();
        for (int i = 0; i < size; i++) {
            C1752Ms c1752Ms = this.A0I.get(i);
            boolean z = c1752Ms.A04() == -9223372036854775807L;
            if (!z) {
                long jA02 = c1752Ms.A02();
                z = (jA02 == -9223372036854775807L || jA02 == 0 || jA02 == j2) ? false : true;
            }
            if (z) {
                c1752Ms.A07(j2);
            }
        }
        if (j2 != 0 && this.A04 != null) {
            this.A04.A0A(j2);
        }
        this.A0F.A0d(0);
        this.A0E.clear();
        if (A0K[7].length() == 16) {
            throw new RuntimeException();
        }
        A0K[2] = "0BTDs03sCrjzNzUWiGLqTSnwhpE";
        for (int i2 = 0; i2 < this.A0B.size(); i2++) {
            this.A0B.valueAt(i2).AKN();
        }
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        byte[] bArrA0l = this.A0F.A0l();
        q9.AI6(bArrA0l, 0, 940);
        for (int i = 0; i < 188; i++) {
            boolean z = true;
            for (int i2 = 0; i2 < 5; i2++) {
                if (bArrA0l[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                }
            }
            if (z) {
                q9.ALL(i);
                if (A0K[1].length() != 31) {
                    throw new RuntimeException();
                }
                String[] strArr = A0K;
                strArr[6] = "svTVFQuQE62xyiOn9gZyCok";
                strArr[3] = "B1uo6M0MU71UFPAJDEbaWx6";
                return true;
            }
        }
        return false;
    }
}
