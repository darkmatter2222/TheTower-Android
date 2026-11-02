package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class PH implements InterfaceC2043Yv {
    public static byte[] A0K;
    public static String[] A0L = {"4htp9wQKuxyNfsHEw2q4xJVan2K9SWSs", "h9h3Y", "ncIzQl9bZGhwNHkiXwnd2dN9HoT0D8hr", "MIEY5GizladxFuO8LFxd2mtUm3BxYog0", "wIMYYD5Q8MSgCqvQWUWYRrzWdxQxZfjH", "a9VTiA7kgQO5OeM7micOduBr46AjVnKU", "QiXpONybhoHEJE7NKINdaAs10Y1JUUbc", "vjHJwK3zsTkkYShkelgOo6qgRdbbMVoF"};
    public static final InterfaceC2047Yz A0M;
    public static final InterfaceC2074a0 A0N;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public Metadata A06;
    public InterfaceC2044Yw A07;
    public ZP A08;
    public ZP A09;
    public PG A0A;
    public boolean A0B;
    public boolean A0C;
    public final int A0D;
    public final long A0E;
    public final C1744Mk A0F;
    public final Z6 A0G;
    public final Z8 A0H;
    public final Z9 A0I;
    public final ZP A0J;

    static {
        A0B();
        A0M = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.PJ
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return PH.A0G();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
        A0N = new InterfaceC2074a0() { // from class: com.facebook.ads.redexgen.X.PI
            @Override // com.facebook.ads.redexgen.X.InterfaceC2074a0
            public final boolean A6z(int i, int i2, int i3, int i4, int i5) {
                return PH.A0C(i, i2, i3, i4, i5);
            }
        };
    }

    @MetaExoPlayerCustomization
    public PH() {
        this(0);
    }

    @MetaExoPlayerCustomization
    public PH(int i) {
        this(i, -9223372036854775807L);
    }

    @MetaExoPlayerCustomization
    public PH(int i, long j) {
        this.A0D = (i & 2) != 0 ? i | 1 : i;
        this.A0E = j;
        this.A0F = new C1744Mk(10);
        this.A0I = new Z9();
        this.A0G = new Z6();
        this.A02 = -9223372036854775807L;
        this.A0H = new Z8();
        this.A0J = new QA();
        this.A08 = this.A0J;
    }

    public static int A00(C1744Mk c1744Mk, int i) {
        if (c1744Mk.A0A() >= i + 4) {
            c1744Mk.A0f(i);
            int iA0C = c1744Mk.A0C();
            if (iA0C == 1483304551 || iA0C == 1231971951) {
                return iA0C;
            }
        }
        if (c1744Mk.A0A() < 40) {
            return 0;
        }
        c1744Mk.A0f(36);
        return c1744Mk.A0C() == 1447187017 ? 1447187017 : 0;
    }

    @RequiresNonNull
    private int A01(Q9 q9) throws IOException {
        if (this.A01 == 0) {
            try {
                A0F(q9, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.A0A == null) {
            this.A0A = A07(q9);
            this.A07.AKP(this.A0A);
            ZP zp = this.A08;
            C1689Ke c1689KeA0v = new C1689Ke().A11(this.A0I.A06).A0h(4096).A0b(this.A0I.A01).A0m(this.A0I.A03).A0d(this.A0G.A00).A0e(this.A0G.A01).A0v((this.A0D & 8) != 0 ? null : this.A06);
            if (A0L[1].length() == 16) {
                throw new RuntimeException();
            }
            A0L[2] = "AwID86PoqVoKZrEjM8D15y2IWFfRJ8tJ";
            zp.A7E(c1689KeA0v.A14());
            this.A03 = q9.A9Q();
        } else if (this.A03 != 0) {
            long jA9Q = q9.A9Q();
            if (jA9Q < this.A03) {
                q9.ALL((int) (this.A03 - jA9Q));
            }
        }
        return A02(q9);
    }

    @RequiresNonNull
    private int A02(Q9 q9) throws IOException {
        if (this.A00 == 0) {
            q9.AK3();
            if (A0E(q9)) {
                return -1;
            }
            this.A0F.A0f(0);
            int iA0C = this.A0F.A0C();
            if (!A0D(iA0C, this.A01) || ZA.A00(iA0C) == -1) {
                q9.ALL(1);
                this.A01 = 0;
                return 0;
            }
            this.A0I.A00(iA0C);
            if (this.A02 == -9223372036854775807L) {
                this.A02 = this.A0A.A9u(q9.A9Q());
                if (this.A0E != -9223372036854775807L) {
                    this.A02 += this.A0E - this.A0A.A9u(0L);
                }
            }
            this.A00 = this.A0I.A02;
            if (this.A0A instanceof C8H) {
                C8H c8h = (C8H) this.A0A;
                c8h.A01(A03(this.A04 + ((long) this.A0I.A04)), q9.A9Q() + ((long) this.A0I.A02));
                if (this.A0C && c8h.A02(this.A05)) {
                    this.A0C = false;
                    if (A0L[1].length() == 16) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0L;
                    strArr[3] = "7FBOKtc0B68FoRi3EhAMNX51eyZxdGES";
                    strArr[4] = "Q4axqbsJAlQS6aydPlnbvav83iQxgkTX";
                    this.A08 = this.A09;
                }
            }
        }
        int iAK7 = this.A08.AK7(q9, this.A00, true);
        if (iAK7 == -1) {
            return -1;
        }
        this.A00 -= iAK7;
        if (this.A00 > 0) {
            return 0;
        }
        this.A08.AKC(A03(this.A04), 1, this.A0I.A02, 0, null);
        this.A04 += (long) this.A0I.A04;
        this.A00 = 0;
        return 0;
    }

    private long A03(long j) {
        return this.A02 + ((1000000 * j) / ((long) this.A0I.A03));
    }

    public static long A04(Metadata metadata) {
        if (metadata == null) {
            return -9223372036854775807L;
        }
        int iA02 = metadata.A02();
        for (int i = 0; i < iA02; i++) {
            Metadata.Entry entryA03 = metadata.A03(i);
            if ((entryA03 instanceof TextInformationFrame) && ((Id3Frame) ((TextInformationFrame) entryA03)).A00.equals(A09(24, 4, 31))) {
                return N1.A0O(Long.parseLong(((TextInformationFrame) entryA03).A02.get(0)));
            }
        }
        return -9223372036854775807L;
    }

    private C8I A05(Q9 q9, boolean z) throws IOException {
        q9.AI6(this.A0F.A0l(), 0, 4);
        this.A0F.A0f(0);
        this.A0I.A00(this.A0F.A0C());
        return new C8I(q9.A90(), q9.A9Q(), this.A0I, z);
    }

    public static C8G A06(Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int iA02 = metadata.A02();
        String[] strArr = A0L;
        if (strArr[3].charAt(27) == strArr[4].charAt(27)) {
            A0L[0] = "PL90Nzq4Cp6ail5aCSf1a0DTgrKn0Rhm";
            for (int i = 0; i < iA02; i++) {
                Metadata.Entry entryA03 = metadata.A03(i);
                String[] strArr2 = A0L;
                if (strArr2[5].charAt(10) != strArr2[6].charAt(10)) {
                    A0L[0] = "qoCxvN47s15e10JDePka34bnqGKOacbN";
                    if (entryA03 instanceof MlltFrame) {
                        return C8G.A01(j, (MlltFrame) entryA03, A04(metadata));
                    }
                }
            }
            return null;
        }
        throw new RuntimeException();
    }

    private PG A07(Q9 q9) throws IOException {
        long jA04;
        PG pgA08 = A08(q9);
        C8G c8gA06 = A06(this.A06, q9.A9Q());
        if (this.A0B) {
            return new C8F();
        }
        PG c8h = null;
        if ((this.A0D & 4) != 0) {
            long jA8K = -1;
            if (c8gA06 != null) {
                jA04 = c8gA06.A8U();
                jA8K = c8gA06.A8K();
            } else if (pgA08 != null) {
                jA04 = pgA08.A8U();
                jA8K = pgA08.A8K();
            } else {
                jA04 = A04(this.A06);
            }
            c8h = new C8H(jA04, q9.A9Q(), jA8K);
        } else if (c8gA06 != null) {
            c8h = c8gA06;
        } else if (pgA08 != null) {
            c8h = pgA08;
        }
        if (c8h == null || !(c8h.ABR() || (this.A0D & 1) == 0)) {
            return A05(q9, (this.A0D & 2) != 0);
        }
        return c8h;
    }

    private PG A08(Q9 q9) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(this.A0I.A02);
        q9.AI6(c1744Mk.A0l(), 0, this.A0I.A02);
        int i = 21;
        if ((this.A0I.A05 & 1) != 0) {
            if (this.A0I.A01 != 1) {
                i = 36;
            }
        } else if (this.A0I.A01 == 1) {
            i = 13;
        }
        int iA00 = A00(c1744Mk, i);
        if (iA00 != 1483304551 && iA00 != 1231971951) {
            if (iA00 != 1447187017) {
                q9.AK3();
                return null;
            }
            C8E c8eA00 = C8E.A00(q9.A90(), q9.A9Q(), this.A0I, c1744Mk);
            q9.ALL(this.A0I.A02);
            return c8eA00;
        }
        C8D c8dA01 = C8D.A01(q9.A90(), q9.A9Q(), this.A0I, c1744Mk);
        if (c8dA01 != null && !this.A0G.A03()) {
            q9.AK3();
            q9.A4X(i + 141);
            q9.AI6(this.A0F.A0l(), 0, 3);
            this.A0F.A0f(0);
            this.A0G.A04(this.A0F.A0K());
        }
        q9.ALL(this.A0I.A02);
        return (c8dA01 == null || c8dA01.ABR() || iA00 != 1231971951) ? c8dA01 : A05(q9, false);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
        }
        return new String(bArrCopyOfRange);
    }

    @EnsuresNonNull
    private void A0A() {
        AbstractC1722Ln.A02(this.A09);
    }

    public static void A0B() {
        A0K = new byte[]{-46, -28, -32, -15, -30, -25, -28, -29, -97, -13, -18, -18, -97, -20, -32, -19, -8, -97, -31, -8, -13, -28, -14, -83, -101, -109, -116, -107};
    }

    public static /* synthetic */ boolean A0C(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    public static boolean A0D(int i, long j) {
        return ((long) ((-128000) & i)) == ((-128000) & j);
    }

    private boolean A0E(Q9 q9) throws IOException {
        if (this.A0A != null) {
            long jA8K = this.A0A.A8K();
            if (jA8K != -1 && q9.A9L() > jA8K - 4) {
                return true;
            }
        }
        try {
            return !q9.AI7(this.A0F.A0l(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private boolean A0F(Q9 q9, boolean z) throws IOException {
        int i = 0;
        int i2 = 0;
        int iA9L = 0;
        int i3 = 0;
        int i4 = z ? 32768 : 131072;
        q9.AK3();
        if (q9.A9Q() == 0) {
            this.A06 = this.A0H.A00(q9, (this.A0D & 8) == 0 ? null : A0N);
            if (this.A06 != null) {
                this.A0G.A05(this.A06);
            }
            iA9L = (int) q9.A9L();
            if (!z) {
                q9.ALL(iA9L);
            }
        }
        while (true) {
            if (A0E(q9)) {
                if (i > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.A0F.A0f(0);
            int iA0C = this.A0F.A0C();
            if (i2 == 0 || A0D(iA0C, i2)) {
                int iA00 = ZA.A00(iA0C);
                if (A0L[7].charAt(2) == 'u') {
                    throw new RuntimeException();
                }
                String[] strArr = A0L;
                strArr[5] = "KgGD0rSdhSypmG7EMxnTmlmP8iEF2wAy";
                strArr[6] = "UrFKevQYk8rXLiwKBhRaZheAhX388l7i";
                if (iA00 != -1) {
                    i++;
                    if (i != 1) {
                        if (i == 4) {
                            break;
                        }
                    } else {
                        this.A0I.A00(iA0C);
                        i2 = iA0C;
                    }
                    q9.A4X(iA00 - 4);
                }
            }
            int i5 = i3 + 1;
            if (i3 == i4) {
                if (z) {
                    return false;
                }
                throw L9.A01(A09(0, 24, 87), null);
            }
            i = 0;
            i2 = 0;
            if (z) {
                q9.AK3();
                q9.A4X(iA9L + i5);
            } else {
                q9.ALL(1);
            }
            i3 = i5;
        }
        if (z) {
            q9.ALL(iA9L + i3);
        } else {
            q9.AK3();
        }
        this.A01 = i2;
        return true;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A0G() {
        return new InterfaceC2043Yv[]{new PH()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A07 = interfaceC2044Yw;
        this.A09 = this.A07.ALm(0, 1);
        this.A08 = this.A09;
        this.A07.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        A0A();
        int iA01 = A01(q9);
        if (iA01 == -1 && (this.A0A instanceof C8H)) {
            long jA03 = A03(this.A04);
            if (this.A0A.A8U() != jA03) {
                ((C8H) this.A0A).A00(jA03);
                this.A07.AKP(this.A0A);
            }
        }
        return iA01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        this.A01 = 0;
        this.A02 = -9223372036854775807L;
        this.A04 = 0L;
        this.A00 = 0;
        this.A05 = j2;
        if (!(this.A0A instanceof C8H) || ((C8H) this.A0A).A02(j2)) {
            return;
        }
        this.A0C = true;
        this.A08 = this.A0J;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return A0F(q9, true);
    }
}
