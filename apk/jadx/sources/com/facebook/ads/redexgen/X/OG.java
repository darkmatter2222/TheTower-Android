package com.facebook.ads.redexgen.X;

import androidx.core.app.FrameMetricsAggregator;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.firebase.database.core.ValidationPath;
import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OG implements InterfaceC2240ch {
    public static byte[] A0L;
    public static String[] A0M = {"XIIjnjdFYQVCtdrlkJcHdDoR80m8cVgP", "owkmjBi7RD4T7wEJ0Z5qsPBdy5XBWaNI", "YqHCOvd4KSZAhVJGzYGAlRF6PfNfNDl", "8HrS9oH6Bl73q9G4lty2QskZuMTT9Ad3", "1vrRnJ4yUoJNeCsTOs", "OYApvTmLFEs5ZQUBeKfBNMkvy33UT6TX", "MdWN3vRrL4V6R5Sljp5k7gd7NnBuAkyJ", "tIqEUkhIdE6CbQpVMZy02iy0diDP43UJ"};
    public static final byte[] A0N;
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
    public ZP A0A;
    public ZP A0B;
    public ZP A0C;
    public String A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public final C1743Mj A0H;
    public final C1744Mk A0I;
    public final String A0J;
    public final boolean A0K;

    static {
        A09();
        A0N = new byte[]{73, 68, 51};
    }

    public OG(boolean z) {
        this(z, null);
    }

    public OG(boolean z, String str) {
        this.A0H = new C1743Mj(new byte[7]);
        this.A0I = new C1744Mk(Arrays.copyOf(A0N, 10));
        A06();
        this.A03 = -1;
        this.A02 = -1;
        this.A08 = -9223372036854775807L;
        this.A09 = -9223372036854775807L;
        this.A0K = z;
        this.A0J = str;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
        }
        return new String(bArrCopyOfRange);
    }

    @EnsuresNonNull
    private void A01() {
        AbstractC1722Ln.A01(this.A0C);
    }

    @RequiresNonNull
    private void A02() throws L9 {
        this.A0H.A08(0);
        if (this.A0G) {
            C1743Mj c1743Mj = this.A0H;
            String[] strArr = A0M;
            if (strArr[5].charAt(29) == strArr[7].charAt(29)) {
                throw new RuntimeException();
            }
            A0M[6] = "RDW6QgyzfrheMO4rLZgltkW7TYCvHjcm";
            c1743Mj.A09(10);
        } else {
            int iA04 = this.A0H.A04(2) + 1;
            if (iA04 != 2) {
                MV.A07(A00(22, 10, 51), A00(32, 28, 11) + iA04 + A00(0, 22, 54));
                iA04 = 2;
            }
            this.A0H.A09(5);
            byte[] bArrA07 = YZ.A07(iA04, this.A02, this.A0H.A04(3));
            YY yyA03 = YZ.A03(bArrA07);
            VC vcA14 = new C1689Ke().A0y(this.A0D).A11(A00(75, 15, 103)).A0w(yyA03.A02).A0b(yyA03.A00).A0m(yyA03.A01).A12(Collections.singletonList(bArrA07)).A10(this.A0J).A14();
            this.A08 = 1024000000 / ((long) vcA14.A0G);
            this.A0C.A7E(vcA14);
            this.A0G = true;
        }
        this.A0H.A09(4);
        int iA05 = (this.A0H.A04(13) - 2) - 5;
        if (A0M[1].charAt(9) == 'V') {
            throw new RuntimeException();
        }
        String[] strArr2 = A0M;
        strArr2[2] = "Cp9dS5j7gr5WjG7WGJY3hKVlRVfN3sn";
        strArr2[4] = "YMSmvOKMelhUdRuYh2";
        if (this.A0F) {
            iA05 -= 2;
        }
        A0D(this.A0C, this.A08, 0, iA05);
    }

    @RequiresNonNull
    private void A03() {
        this.A0B.AK9(this.A0I, 10);
        this.A0I.A0f(6);
        A0D(this.A0B, 0L, 10, this.A0I.A0H() + 10);
    }

    private void A04() {
        this.A0E = false;
        A06();
    }

    private void A05() {
        this.A06 = 1;
        this.A00 = 0;
    }

    private void A06() {
        this.A06 = 0;
        this.A00 = 0;
        this.A04 = 256;
    }

    private void A07() {
        this.A06 = 3;
        this.A00 = 0;
    }

    private void A08() {
        this.A06 = 2;
        this.A00 = A0N.length;
        this.A05 = 0;
        this.A0I.A0f(0);
    }

    public static void A09() {
        A0L = new byte[]{36, 40, 106, 125, 124, 40, 105, 123, 123, 125, 101, 97, 102, 111, 40, 73, 73, 75, 40, 68, 75, 38, 76, 105, 121, 126, 95, 104, 108, 105, 104, 127, 113, 80, 65, 80, 86, 65, 80, 81, Ascii.NAK, 84, SignedBytes.MAX_POWER_OF_TWO, 81, 92, 90, Ascii.NAK, 90, 87, 95, 80, 86, 65, Ascii.NAK, 65, 76, 69, 80, Ascii.SI, Ascii.NAK, 76, 93, 93, 65, 68, 78, 76, 89, 68, 66, 67, 2, 68, 73, Ascii.RS, 56, 44, Base64.padSymbol, 48, 54, 118, 52, 41, 109, 56, 116, 53, 56, 45, 52};
        if (A0M[0].charAt(23) != 'R') {
            throw new RuntimeException();
        }
        A0M[3] = "sAkikvs1jZ7mk1hfs4I9QLiXXK3MQFMn";
    }

    private void A0A(C1744Mk c1744Mk) {
        if (c1744Mk.A07() == 0) {
            return;
        }
        this.A0H.A00[0] = c1744Mk.A0l()[c1744Mk.A09()];
        this.A0H.A08(2);
        int iA04 = this.A0H.A04(4);
        if (this.A02 != -1 && iA04 != this.A02) {
            A04();
            return;
        }
        if (!this.A0E) {
            this.A0E = true;
            this.A03 = this.A01;
            this.A02 = iA04;
        }
        A07();
    }

    private void A0B(C1744Mk c1744Mk) {
        byte[] bArrA0l = c1744Mk.A0l();
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        while (iA09 < iA0A) {
            int i = iA09 + 1;
            int i2 = bArrA0l[iA09] & 255;
            if (this.A04 == 512 && A0E((byte) -1, (byte) i2) && (this.A0E || A0G(c1744Mk, i - 2))) {
                this.A01 = (i2 & 8) >> 3;
                this.A0F = (i2 & 1) == 0;
                if (this.A0E) {
                    A07();
                } else {
                    A05();
                }
                c1744Mk.A0f(i);
                return;
            }
            switch (this.A04 | i2) {
                case 329:
                    this.A04 = ValidationPath.MAX_PATH_LENGTH_BYTES;
                    iA09 = i;
                    break;
                case FrameMetricsAggregator.EVERY_DURATION /* 511 */:
                    this.A04 = 512;
                    iA09 = i;
                    break;
                case 836:
                    this.A04 = 1024;
                    iA09 = i;
                    break;
                case 1075:
                    A08();
                    c1744Mk.A0f(i);
                    break;
                default:
                    if (this.A04 != 256) {
                        this.A04 = 256;
                        iA09 = i - 1;
                    } else {
                        iA09 = i;
                    }
                    break;
            }
            return;
        }
        c1744Mk.A0f(iA09);
    }

    @RequiresNonNull
    private void A0C(C1744Mk c1744Mk) {
        int iMin = Math.min(c1744Mk.A07(), this.A05 - this.A00);
        this.A0A.AK9(c1744Mk, iMin);
        this.A00 += iMin;
        if (this.A00 == this.A05) {
            if (this.A09 != -9223372036854775807L) {
                this.A0A.AKC(this.A09, 1, this.A05, 0, null);
                this.A09 += this.A07;
            }
            A06();
        }
    }

    private void A0D(ZP zp, long j, int i, int i2) {
        this.A06 = 4;
        this.A00 = i;
        this.A0A = zp;
        this.A07 = j;
        this.A05 = i2;
    }

    private boolean A0E(byte b, byte b2) {
        return A0F(((b & 255) << 8) | (b2 & 255));
    }

    public static boolean A0F(int i) {
        return (65526 & i) == 65520;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0070 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:30:0x009f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ab A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e1  */
    private boolean A0G(C1744Mk c1744Mk, int i) {
        C1743Mj c1743Mj;
        int iA04;
        byte[] bArrA0l;
        int iA0A;
        int i2;
        c1744Mk.A0f(i + 1);
        if (!A0I(c1744Mk, this.A0H.A00, 1)) {
            return false;
        }
        this.A0H.A08(4);
        int iA05 = this.A0H.A04(1);
        if (this.A03 != -1 && iA05 != this.A03) {
            return false;
        }
        if (this.A02 == -1) {
            if (!A0I(c1744Mk, this.A0H.A00, 4)) {
                return true;
            }
            c1743Mj = this.A0H;
            if (A0M[0].charAt(23) == 'R') {
                A0M[0] = "xIlePV9u2bkVOsPsBAT9xhdRhvUovSnl";
                c1743Mj.A08(14);
                iA04 = this.A0H.A04(13);
                if (iA04 < 7) {
                    return false;
                }
                bArrA0l = c1744Mk.A0l();
                iA0A = c1744Mk.A0A();
                i2 = i + iA04;
                if (i2 >= iA0A) {
                    return true;
                }
                if (bArrA0l[i2] == -1) {
                    if (i2 + 1 == iA0A) {
                        return true;
                    }
                    return !A0E((byte) -1, bArrA0l[i2 + 1]) && ((bArrA0l[i2 + 1] & 8) >> 3) == iA05;
                }
                if (bArrA0l[i2] != 73) {
                    return false;
                }
                if (i2 + 1 == iA0A) {
                    return true;
                }
                if (bArrA0l[i2 + 1] != 68) {
                    return false;
                }
                return i2 + 2 != iA0A || bArrA0l[i2 + 2] == 51;
            }
        } else {
            if (!A0I(c1744Mk, this.A0H.A00, 1)) {
                return true;
            }
            this.A0H.A08(2);
            if (this.A0H.A04(4) != this.A02) {
                return false;
            }
            int i3 = i + 2;
            String[] strArr = A0M;
            if (strArr[2].length() != strArr[4].length()) {
                A0M[1] = "UtL0d5mYq2CM2rOORq8wXJPW7dFlMw0F";
                c1744Mk.A0f(i3);
                if (!A0I(c1744Mk, this.A0H.A00, 4)) {
                    return true;
                }
                c1743Mj = this.A0H;
                if (A0M[0].charAt(23) == 'R') {
                    A0M[0] = "xIlePV9u2bkVOsPsBAT9xhdRhvUovSnl";
                    c1743Mj.A08(14);
                    iA04 = this.A0H.A04(13);
                    if (iA04 < 7) {
                        return false;
                    }
                    bArrA0l = c1744Mk.A0l();
                    iA0A = c1744Mk.A0A();
                    i2 = i + iA04;
                    if (i2 >= iA0A) {
                        return true;
                    }
                    if (bArrA0l[i2] == -1) {
                        if (i2 + 1 == iA0A) {
                            return true;
                        }
                        if (A0E((byte) -1, bArrA0l[i2 + 1])) {
                        }
                    }
                    if (bArrA0l[i2] != 73) {
                        return false;
                    }
                    if (i2 + 1 == iA0A) {
                        return true;
                    }
                    if (bArrA0l[i2 + 1] != 68) {
                        return false;
                    }
                    if (i2 + 2 != iA0A) {
                        return true;
                    }
                }
            }
        }
        throw new RuntimeException();
    }

    private boolean A0H(C1744Mk c1744Mk, byte[] bArr, int i) {
        int iMin = Math.min(c1744Mk.A07(), i - this.A00);
        c1744Mk.A0k(bArr, this.A00, iMin);
        this.A00 += iMin;
        return this.A00 == i;
    }

    private boolean A0I(C1744Mk c1744Mk, byte[] bArr, int i) {
        if (c1744Mk.A07() < i) {
            return false;
        }
        c1744Mk.A0k(bArr, 0, i);
        return true;
    }

    public final long A0J() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) throws L9 {
        A01();
        while (c1744Mk.A07() > 0) {
            switch (this.A06) {
                case 0:
                    A0B(c1744Mk);
                    break;
                case 1:
                    A0A(c1744Mk);
                    break;
                case 2:
                    if (A0H(c1744Mk, this.A0I.A0l(), 10)) {
                        A03();
                    }
                    break;
                case 3:
                    if (A0H(c1744Mk, this.A0H.A00, this.A0F ? 7 : 5)) {
                        A02();
                    }
                    break;
                case 4:
                    A0C(c1744Mk);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A0D = c2261d2.A04();
        this.A0C = interfaceC2044Yw.ALm(c2261d2.A03(), 1);
        this.A0A = this.A0C;
        if (!this.A0K) {
            this.A0B = new QA();
            return;
        }
        c2261d2.A05();
        this.A0B = interfaceC2044Yw.ALm(c2261d2.A03(), 5);
        this.A0B.A7E(new C1689Ke().A0y(c2261d2.A04()).A11(A00(60, 15, 19)).A14());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A09 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A09 = -9223372036854775807L;
        A04();
    }
}
