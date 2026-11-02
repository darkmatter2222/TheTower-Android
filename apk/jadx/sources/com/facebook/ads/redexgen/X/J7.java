package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J7 extends AbstractC2620iw implements InterfaceC2632j8 {
    public static byte[] A0F;
    public static String[] A0G = {"VKH6HNPW", "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY", "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W", "8EarDdUd0wjX", "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku", "k0c9canuweazyFazM74f3pFcokchiBr", "yJQv9VjGutzUoxdr6", "vBYUiSK7FkagYmvZS"};
    public int A00;
    public int A01;
    public int A02;
    public LinearLayoutManager$SavedState A03;
    public AbstractC2604ig A04;
    public boolean A05;
    public int A06;
    public C2601ib A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final C2599iZ A0D;
    public final C2600ia A0E;

    static {
        A0h();
    }

    public J7(Context context) {
        this(context, 1, false);
    }

    public J7(Context context, int i, boolean z) {
        this.A0A = false;
        this.A05 = false;
        this.A0C = false;
        this.A0B = true;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A03 = null;
        this.A0D = new C2599iZ(this);
        this.A0E = new C2600ia();
        this.A06 = 2;
        A3F(i);
        A0t(z);
        A2q(true);
    }

    private final int A0I(int i, C2628j4 c2628j4, C2635jB c2635jB) {
        if (A1T() == 0 || i == 0) {
            return 0;
        }
        this.A07.A0B = true;
        A3E();
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        A0k(i2, iAbs, true, c2635jB);
        int iA0L = this.A07.A07 + A0L(c2628j4, this.A07, c2635jB, false);
        if (iA0L < 0) {
            return 0;
        }
        int i3 = iAbs > iA0L ? i2 * iA0L : i;
        this.A04.A0K(-i3);
        this.A07.A04 = i3;
        return i3;
    }

    private int A0J(int i, C2628j4 c2628j4, C2635jB c2635jB, boolean z) {
        int iA07 = this.A04.A07() - i;
        if (iA07 <= 0) {
            return 0;
        }
        int i2 = -A0I(-iA07, c2628j4, c2635jB);
        int i3 = i + i2;
        if (z) {
            int iA08 = this.A04.A07();
            if (A0G[0].length() == 7) {
                throw new RuntimeException();
            }
            A0G[0] = "DiKLRwr5Jced9h1IWYQQBSe";
            int i4 = iA08 - i3;
            if (i4 > 0) {
                this.A04.A0K(i4);
                return i4 + i2;
            }
        }
        return i2;
    }

    private int A0K(int i, C2628j4 c2628j4, C2635jB c2635jB, boolean z) {
        int iA0B;
        int iA0B2 = i - this.A04.A0B();
        if (iA0B2 <= 0) {
            return 0;
        }
        int i2 = -A0I(iA0B2, c2628j4, c2635jB);
        int i3 = i + i2;
        if (!z || (iA0B = i3 - this.A04.A0B()) <= 0) {
            return i2;
        }
        this.A04.A0K(-iA0B);
        return i2 - iA0B;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    /* JADX WARN: Code duplicated, block: B:41:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0033 A[EDGE_INSN: B:47:0x0033->B:16:0x0033 BREAK  A[LOOP:0: B:9:0x001d->B:48:0x001d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x001d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x001d A[SYNTHETIC] */
    private final int A0L(C2628j4 c2628j4, C2601ib c2601ib, C2635jB c2635jB, boolean z) {
        boolean z2;
        int i = c2601ib.A00;
        if (c2601ib.A07 != Integer.MIN_VALUE) {
            if (c2601ib.A00 < 0) {
                c2601ib.A07 += c2601ib.A00;
            }
            A0q(c2628j4, c2601ib);
        }
        int i2 = c2601ib.A00 + c2601ib.A02;
        C2600ia c2600ia = this.A0E;
        while (true) {
            if ((!c2601ib.A09 && i2 <= 0) || !c2601ib.A05(c2635jB)) {
                break;
            }
            c2600ia.A00();
            A3I(c2628j4, c2635jB, c2601ib, c2600ia);
            if (c2600ia.A01) {
                break;
            }
            c2601ib.A06 += c2600ia.A00 * c2601ib.A05;
            if (!c2600ia.A03 || this.A07.A08 != null || !c2635jB.A07()) {
                c2601ib.A00 -= c2600ia.A00;
                i2 -= c2600ia.A00;
            }
            if (c2601ib.A07 != Integer.MIN_VALUE) {
                c2601ib.A07 += c2600ia.A00;
                if (c2601ib.A00 < 0) {
                    int i3 = c2601ib.A07;
                    int i4 = c2601ib.A00;
                    if (A0G[0].length() != 7) {
                        A0G[5] = "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf";
                        c2601ib.A07 = i3 + i4;
                    }
                }
                A0q(c2628j4, c2601ib);
                if (z) {
                    z2 = c2600ia.A02;
                    if (A0G[0].length() != 7) {
                        A0G[1] = "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov";
                        if (z2) {
                            break;
                        }
                    }
                }
            } else if (z) {
                z2 = c2600ia.A02;
                if (A0G[0].length() != 7) {
                    A0G[1] = "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov";
                    if (z2) {
                        break;
                        break;
                    }
                }
            }
            throw new RuntimeException();
        }
        return i - c2601ib.A00;
    }

    private int A0M(C2635jB c2635jB) {
        if (A1T() != 0) {
            A3E();
            return AbstractC2639jF.A00(c2635jB, this.A04, A0d(!this.A0B, true), A0c(!this.A0B, true), this, this.A0B);
        }
        if (A0G[5].length() != 31) {
            throw new RuntimeException();
        }
        A0G[5] = "JS1EmTokFkofHdCiZDqGUekHou375gK";
        return 0;
    }

    private int A0N(C2635jB c2635jB) {
        if (A1T() == 0) {
            return 0;
        }
        A3E();
        return AbstractC2639jF.A02(c2635jB, this.A04, A0d(!this.A0B, true), A0c(!this.A0B, true), this, this.A0B, this.A05);
    }

    private int A0O(C2635jB c2635jB) {
        if (A1T() != 0) {
            A3E();
            return AbstractC2639jF.A01(c2635jB, this.A04, A0d(!this.A0B, true), A0c(!this.A0B, true), this, this.A0B);
        }
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[2] = "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA";
        strArr2[4] = "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs";
        return 0;
    }

    private final int A0P(C2635jB c2635jB) {
        if (c2635jB.A06()) {
            return this.A04.A0C();
        }
        return 0;
    }

    private View A0Q() {
        return A0U(0, A1T());
    }

    private View A0R() {
        return A0U(A1T() - 1, -1);
    }

    private View A0S() {
        return A20(this.A05 ? 0 : A1T() - 1);
    }

    private View A0T() {
        return A20(this.A05 ? A1T() - 1 : 0);
    }

    private final View A0U(int i, int i2) {
        byte b;
        int i3;
        int i4;
        A3E();
        if (i2 > i) {
            b = 1;
        } else {
            b = i2 < i ? (byte) -1 : (byte) 0;
        }
        if (b == 0) {
            View viewA20 = A20(i);
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[5] = "tEP4S10y6AtQbDA9ff3H424KLTnX0k7";
            return viewA20;
        }
        if (this.A04.A0G(A20(i)) < this.A04.A0B()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return this.A00 == 0 ? super.A04.A00(i, i2, i3, i4) : super.A05.A00(i, i2, i3, i4);
    }

    private final View A0V(int i, int i2, boolean z, boolean z2) {
        A3E();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        int i5 = this.A00;
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg";
        strArr[4] = "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl";
        return i5 == 0 ? super.A04.A00(i, i2, i3, i4) : super.A05.A00(i, i2, i3, i4);
    }

    private View A0W(C2628j4 c2628j4, C2635jB c2635jB) {
        return A3D(c2628j4, c2635jB, 0, A1T(), c2635jB.A03());
    }

    private View A0X(C2628j4 c2628j4, C2635jB c2635jB) {
        return A3D(c2628j4, c2635jB, A1T() - 1, -1, c2635jB.A03());
    }

    private View A0Y(C2628j4 c2628j4, C2635jB c2635jB) {
        return this.A05 ? A0Q() : A0R();
    }

    private View A0Z(C2628j4 c2628j4, C2635jB c2635jB) {
        return this.A05 ? A0R() : A0Q();
    }

    private View A0a(C2628j4 c2628j4, C2635jB c2635jB) {
        return this.A05 ? A0W(c2628j4, c2635jB) : A0X(c2628j4, c2635jB);
    }

    private View A0b(C2628j4 c2628j4, C2635jB c2635jB) {
        return this.A05 ? A0X(c2628j4, c2635jB) : A0W(c2628j4, c2635jB);
    }

    private View A0c(boolean z, boolean z2) {
        return this.A05 ? A0V(0, A1T(), z, z2) : A0V(A1T() - 1, -1, z, z2);
    }

    private View A0d(boolean z, boolean z2) {
        return this.A05 ? A0V(A1T() - 1, -1, z, z2) : A0V(0, A1T(), z, z2);
    }

    private final C2601ib A0e() {
        return new C2601ib();
    }

    public static String A0f(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0g() {
        if (this.A00 == 1 || !A3K()) {
            this.A05 = this.A0A;
            return;
        }
        boolean z = !this.A0A;
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[6] = "rvopS3hSB7itRsuyG";
        strArr2[7] = "9RTUShXs4ZXrU4n03";
        this.A05 = z;
    }

    public static void A0h() {
        A0F = new byte[]{Ascii.RS, Ascii.EM, 1, Ascii.SYN, Ascii.ESC, Ascii.RS, 19, 87, Ascii.CAN, 5, Ascii.RS, Ascii.DC2, Ascii.EM, 3, Ascii.SYN, 3, Ascii.RS, Ascii.CAN, Ascii.EM, 77};
    }

    private void A0i(int i, int i2) {
        this.A07.A00 = this.A04.A07() - i2;
        this.A07.A03 = this.A05 ? -1 : 1;
        this.A07.A01 = i;
        this.A07.A05 = 1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0j(int i, int i2) {
        this.A07.A00 = i2 - this.A04.A0B();
        this.A07.A01 = i;
        this.A07.A03 = this.A05 ? 1 : -1;
        this.A07.A05 = -1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0k(int i, int i2, boolean z, C2635jB c2635jB) {
        int iA0B;
        this.A07.A09 = A0u();
        this.A07.A02 = A0P(c2635jB);
        this.A07.A05 = i;
        if (i == 1) {
            this.A07.A02 += this.A04.A08();
            View viewA0S = A0S();
            this.A07.A03 = this.A05 ? -1 : 1;
            this.A07.A01 = A1o(viewA0S) + this.A07.A03;
            this.A07.A06 = this.A04.A0D(viewA0S);
            iA0B = this.A04.A0D(viewA0S) - this.A04.A07();
        } else {
            View viewA0T = A0T();
            this.A07.A02 += this.A04.A0B();
            this.A07.A03 = this.A05 ? 1 : -1;
            this.A07.A01 = A1o(viewA0T) + this.A07.A03;
            this.A07.A06 = this.A04.A0G(viewA0T);
            iA0B = (-this.A04.A0G(viewA0T)) + this.A04.A0B();
        }
        this.A07.A00 = i2;
        if (z) {
            this.A07.A00 -= iA0B;
        }
        this.A07.A07 = iA0B;
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        A0G[1] = "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz";
    }

    private void A0l(C2599iZ c2599iZ) {
        A0i(c2599iZ.A01, c2599iZ.A00);
    }

    private void A0m(C2599iZ c2599iZ) {
        A0j(c2599iZ.A01, c2599iZ.A00);
    }

    private void A0n(C2628j4 c2628j4, int i) {
        int iA1T = A1T();
        if (i < 0) {
            return;
        }
        int iA06 = this.A04.A06() - i;
        if (this.A05) {
            for (int i2 = 0; i2 < iA1T; i2++) {
                View viewA20 = A20(i2);
                if (this.A04.A0G(viewA20) < iA06 || this.A04.A0I(viewA20) < iA06) {
                    A0p(c2628j4, 0, i2);
                    return;
                }
            }
            return;
        }
        for (int i3 = iA1T - 1; i3 >= 0; i3--) {
            View viewA21 = A20(i3);
            if (this.A04.A0G(viewA21) < iA06 || this.A04.A0I(viewA21) < iA06) {
                A0p(c2628j4, iA1T - 1, i3);
                return;
            }
        }
    }

    private void A0o(C2628j4 c2628j4, int i) {
        if (i < 0) {
            return;
        }
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[0] = "66";
        int iA1T = A1T();
        if (!this.A05) {
            for (int i2 = 0; i2 < iA1T; i2++) {
                View viewA20 = A20(i2);
                int iA0D = this.A04.A0D(viewA20);
                if (A0G[3].length() == 28) {
                    throw new RuntimeException();
                }
                A0G[1] = "ET87P0AumYMcjI6vylu4qFXoEmTHeXod";
                if (iA0D > i || this.A04.A0H(viewA20) > i) {
                    A0p(c2628j4, 0, i2);
                    return;
                }
            }
            return;
        }
        for (int i3 = iA1T - 1; i3 >= 0; i3--) {
            View viewA21 = A20(i3);
            if (this.A04.A0D(viewA21) <= i) {
                AbstractC2604ig abstractC2604ig = this.A04;
                String[] strArr2 = A0G;
                if (strArr2[6].length() == strArr2[7].length()) {
                    A0G[3] = "uDZbJl3GZvnd0";
                    if (abstractC2604ig.A0H(viewA21) <= i) {
                    }
                } else if (abstractC2604ig.A0H(viewA21) <= i) {
                }
            }
            A0p(c2628j4, iA1T - 1, i3);
            return;
        }
    }

    private void A0p(C2628j4 c2628j4, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                A2H(i, c2628j4);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                A2H(i3, c2628j4);
            }
        }
    }

    private void A0q(C2628j4 c2628j4, C2601ib c2601ib) {
        if (!c2601ib.A0B || c2601ib.A09) {
            return;
        }
        int i = c2601ib.A05;
        String[] strArr = A0G;
        if (strArr[6].length() == strArr[7].length()) {
            String[] strArr2 = A0G;
            strArr2[2] = "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK";
            strArr2[4] = "3weclwG7n9RXAySrMV3Jn51LrKgutG4n";
            if (i != -1) {
                A0o(c2628j4, c2601ib.A07);
                return;
            }
            int i2 = c2601ib.A07;
            if (A0G[1].charAt(30) == 'o') {
                A0G[3] = "CiNTyTfZO3PW6tP";
                A0n(c2628j4, i2);
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A0r(C2628j4 c2628j4, C2635jB c2635jB, int i, int i2) {
        if (!c2635jB.A08() || A1T() == 0 || c2635jB.A07() || !A2x()) {
            return;
        }
        int iA0E = 0;
        int iA0E2 = 0;
        List<AbstractC2638jE> listA0K = c2628j4.A0K();
        int size = listA0K.size();
        int iA1o = A1o(A20(0));
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC2638jE abstractC2638jE = listA0K.get(i3);
            if (!abstractC2638jE.A0n()) {
                if (((abstractC2638jE.A0T() < iA1o) != this.A05 ? (byte) -1 : (byte) 1) == -1) {
                    iA0E += this.A04.A0E(abstractC2638jE.A0H);
                } else {
                    iA0E2 += this.A04.A0E(abstractC2638jE.A0H);
                }
            }
        }
        this.A07.A08 = listA0K;
        if (iA0E > 0) {
            A0j(A1o(A0T()), i);
            this.A07.A02 = iA0E;
            this.A07.A00 = 0;
            this.A07.A04();
            A0L(c2628j4, this.A07, c2635jB, false);
        }
        if (iA0E2 > 0) {
            A0i(A1o(A0S()), i2);
            this.A07.A02 = iA0E2;
            this.A07.A00 = 0;
            this.A07.A04();
            A0L(c2628j4, this.A07, c2635jB, false);
        }
        this.A07.A08 = null;
    }

    private void A0s(C2628j4 c2628j4, C2635jB c2635jB, C2599iZ c2599iZ) {
        if (A0w(c2635jB, c2599iZ)) {
            return;
        }
        boolean zA0v = A0v(c2628j4, c2635jB, c2599iZ);
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[3] = "XDJ2jDWhUW9a7iN";
        if (zA0v) {
            return;
        }
        c2599iZ.A02();
        c2599iZ.A01 = this.A0C ? c2635jB.A03() - 1 : 0;
    }

    private final void A0t(boolean z) {
        A2p(null);
        if (z == this.A0A) {
            return;
        }
        this.A0A = z;
        A28();
    }

    private final boolean A0u() {
        return this.A04.A09() == 0 && this.A04.A06() == 0;
    }

    private boolean A0v(C2628j4 c2628j4, C2635jB c2635jB, C2599iZ c2599iZ) {
        if (A1T() == 0) {
            return false;
        }
        View viewA1y = A1y();
        if (viewA1y != null && c2599iZ.A06(viewA1y, c2635jB)) {
            c2599iZ.A05(viewA1y);
            return true;
        }
        if (this.A08 != this.A0C) {
            return false;
        }
        View viewA0a = c2599iZ.A02 ? A0a(c2628j4, c2635jB) : A0b(c2628j4, c2635jB);
        if (viewA0a == null) {
            return false;
        }
        c2599iZ.A04(viewA0a);
        if (!c2635jB.A07() && A2x()) {
            if (this.A04.A0G(viewA0a) >= this.A04.A07() || this.A04.A0D(viewA0a) < this.A04.A0B()) {
                c2599iZ.A00 = c2599iZ.A02 ? this.A04.A07() : this.A04.A0B();
            }
        }
        return true;
    }

    private boolean A0w(C2635jB c2635jB, C2599iZ c2599iZ) {
        int iA0G;
        if (c2635jB.A07() || this.A01 == -1) {
            return false;
        }
        if (this.A01 < 0 || this.A01 >= c2635jB.A03()) {
            this.A01 = -1;
            this.A02 = Integer.MIN_VALUE;
            return false;
        }
        c2599iZ.A01 = this.A01;
        if (this.A03 != null && this.A03.A01()) {
            c2599iZ.A02 = this.A03.A02;
            if (c2599iZ.A02) {
                c2599iZ.A00 = this.A04.A07() - this.A03.A00;
            } else {
                c2599iZ.A00 = this.A04.A0B() + this.A03.A00;
            }
            return true;
        }
        if (this.A02 != Integer.MIN_VALUE) {
            c2599iZ.A02 = this.A05;
            if (this.A05) {
                c2599iZ.A00 = this.A04.A07() - this.A02;
            } else {
                c2599iZ.A00 = this.A04.A0B() + this.A02;
            }
            return true;
        }
        View viewA1z = A1z(this.A01);
        if (viewA1z == null) {
            if (A1T() > 0) {
                boolean z = this.A01 < A1o(A20(0));
                boolean z2 = this.A05;
                if (A0G[1].charAt(30) != 'o') {
                    throw new RuntimeException();
                }
                String[] strArr = A0G;
                strArr[2] = "1tNDA9T9nSDYektAgKE77gOe81bMFJSk";
                strArr[4] = "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm";
                c2599iZ.A02 = z == z2;
            }
            c2599iZ.A02();
        } else {
            if (this.A04.A0E(viewA1z) > this.A04.A0C()) {
                c2599iZ.A02();
                return true;
            }
            if (this.A04.A0G(viewA1z) - this.A04.A0B() < 0) {
                c2599iZ.A00 = this.A04.A0B();
                c2599iZ.A02 = false;
                return true;
            }
            if (this.A04.A07() - this.A04.A0D(viewA1z) < 0) {
                c2599iZ.A00 = this.A04.A07();
                c2599iZ.A02 = true;
                return true;
            }
            if (c2599iZ.A02) {
                int iA0D = this.A04.A0D(viewA1z);
                AbstractC2604ig abstractC2604ig = this.A04;
                String[] strArr2 = A0G;
                if (strArr2[2].charAt(4) == strArr2[4].charAt(4)) {
                    throw new RuntimeException();
                }
                A0G[3] = "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu";
                iA0G = iA0D + abstractC2604ig.A05();
            } else {
                iA0G = this.A04.A0G(viewA1z);
            }
            c2599iZ.A00 = iA0G;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public int A1g(int i, C2628j4 c2628j4, C2635jB c2635jB) {
        if (this.A00 == 1) {
            return 0;
        }
        return A0I(i, c2628j4, c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public int A1h(int i, C2628j4 c2628j4, C2635jB c2635jB) {
        if (this.A00 == 0) {
            return 0;
        }
        int iA0I = A0I(i, c2628j4, c2635jB);
        String[] strArr = A0G;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A0G[3] = "CDnF1shpb";
        return iA0I;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final int A1r(C2635jB c2635jB) {
        return A0M(c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final int A1s(C2635jB c2635jB) {
        return A0N(c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final int A1t(C2635jB c2635jB) {
        return A0O(c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final int A1u(C2635jB c2635jB) {
        return A0M(c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final int A1v(C2635jB c2635jB) {
        return A0N(c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final int A1w(C2635jB c2635jB) {
        return A0O(c2635jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final Parcelable A1x() {
        if (this.A03 != null) {
            return new WrappedParcelable(new LinearLayoutManager$SavedState(this.A03));
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
        if (A1T() > 0) {
            A3E();
            boolean z = this.A08 ^ this.A05;
            linearLayoutManager$SavedState.A02 = z;
            if (z) {
                View viewA0S = A0S();
                linearLayoutManager$SavedState.A00 = this.A04.A07() - this.A04.A0D(viewA0S);
                linearLayoutManager$SavedState.A01 = A1o(viewA0S);
            } else {
                View viewA0T = A0T();
                linearLayoutManager$SavedState.A01 = A1o(viewA0T);
                linearLayoutManager$SavedState.A00 = this.A04.A0G(viewA0T) - this.A04.A0B();
            }
        } else {
            linearLayoutManager$SavedState.A00();
        }
        return new WrappedParcelable(linearLayoutManager$SavedState);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final View A1z(int i) {
        int iA1T = A1T();
        if (iA1T == 0) {
            return null;
        }
        int iA1o = i - A1o(A20(0));
        if (iA1o >= 0 && iA1o < iA1T) {
            View viewA20 = A20(iA1o);
            if (A1o(viewA20) == i) {
                return viewA20;
            }
        }
        return super.A1z(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public View A23(View view, int i, C2628j4 c2628j4, C2635jB c2635jB) {
        int iA3C;
        A0g();
        if (A1T() == 0 || (iA3C = A3C(i)) == Integer.MIN_VALUE) {
            return null;
        }
        A3E();
        A3E();
        A0k(iA3C, (int) (this.A04.A0C() * 0.33333334f), false, c2635jB);
        this.A07.A07 = Integer.MIN_VALUE;
        this.A07.A0B = false;
        A0L(c2628j4, this.A07, c2635jB, true);
        View viewA0Z = iA3C == -1 ? A0Z(c2628j4, c2635jB) : A0Y(c2628j4, c2635jB);
        View viewA0T = iA3C == -1 ? A0T() : A0S();
        boolean zHasFocusable = viewA0T.hasFocusable();
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38";
        strArr[4] = "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa";
        if (!zHasFocusable) {
            return viewA0Z;
        }
        if (viewA0Z == null) {
            return null;
        }
        return viewA0T;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public C2621ix A24() {
        return new C2621ix(-2, -2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public void A2B(int i) {
        this.A01 = i;
        this.A02 = Integer.MIN_VALUE;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A28();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2F(int i, int i2, C2635jB c2635jB, InterfaceC2618iu interfaceC2618iu) {
        if (this.A00 != 0) {
            i = i2;
        }
        if (A1T() == 0 || i == 0) {
            return;
        }
        A3E();
        A0k(i > 0 ? 1 : -1, Math.abs(i), true, c2635jB);
        A3J(c2635jB, this.A07, interfaceC2618iu);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2G(int i, InterfaceC2618iu interfaceC2618iu) {
        boolean z;
        int i2;
        if (this.A03 == null || !this.A03.A01()) {
            A0g();
            z = this.A05;
            int i3 = this.A01;
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[1] = "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM";
            i2 = i3 == -1 ? z ? i - 1 : 0 : this.A01;
        } else {
            z = this.A03.A02;
            i2 = this.A03.A01;
        }
        int i4 = z ? -1 : 1;
        for (int i5 = 0; i5 < this.A06 && i2 >= 0 && i2 < i; i5++) {
            interfaceC2618iu.A4S(i2, 0);
            i2 += i4;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2J(Parcelable parcelable) {
        if (parcelable instanceof WrappedParcelable) {
            ClassLoader classLoader = getClass().getClassLoader();
            if (A0G[1].charAt(30) == 'o') {
                A0G[1] = "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI";
                if (classLoader == null) {
                    return;
                }
                if (A0G[5].length() == 31) {
                    A0G[3] = "tm";
                    Parcelable parcelableUnwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
                    if (parcelableUnwrap instanceof LinearLayoutManager$SavedState) {
                        this.A03 = (LinearLayoutManager$SavedState) parcelableUnwrap;
                        A28();
                        return;
                    }
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2U(AccessibilityEvent accessibilityEvent) {
        super.A2U(accessibilityEvent);
        if (A1T() > 0) {
            accessibilityEvent.setFromIndex(A39());
            int iA3A = A3A();
            if (A0G[3].length() == 28) {
                throw new RuntimeException();
            }
            A0G[3] = "9E5bhv9RVKulu";
            accessibilityEvent.setToIndex(iA3A);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:79:0x020c  */
    /* JADX WARN: Code duplicated, block: B:80:0x020f  */
    /* JADX WARN: Code duplicated, block: B:81:0x0220  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public void A2Z(C2628j4 c2628j4, C2635jB c2635jB) {
        int i;
        int i2;
        int i3;
        View viewA1z;
        int iA0G;
        int iA07;
        String[] strArr;
        int i4 = -1;
        if (!(this.A03 == null && this.A01 == -1) && c2635jB.A03() == 0) {
            A2Y(c2628j4);
            return;
        }
        if (this.A03 != null && this.A03.A01()) {
            this.A01 = this.A03.A01;
        }
        A3E();
        this.A07.A0B = false;
        A0g();
        View viewA1y = A1y();
        if (!this.A0D.A03 || this.A01 != -1 || this.A03 != null) {
            this.A0D.A03();
            this.A0D.A02 = this.A05 ^ this.A0C;
            A0s(c2628j4, c2635jB, this.A0D);
            C2599iZ c2599iZ = this.A0D;
            if (A0G[3].length() == 28) {
                throw new RuntimeException();
            }
            A0G[0] = "pP9DXN24lJAGcvrzmJLzNvbz";
            c2599iZ.A03 = true;
        } else if (viewA1y != null && (this.A04.A0G(viewA1y) >= this.A04.A07() || this.A04.A0D(viewA1y) <= this.A04.A0B())) {
            this.A0D.A05(viewA1y);
        }
        int iA0P = A0P(c2635jB);
        if (this.A07.A04 >= 0) {
            i = 0;
        } else {
            i = iA0P;
            iA0P = 0;
        }
        int iA0B = i + this.A04.A0B();
        int iA08 = iA0P + this.A04.A08();
        if (c2635jB.A07()) {
            int i5 = this.A01;
            String[] strArr2 = A0G;
            if (strArr2[6].length() != strArr2[7].length()) {
                A0G[1] = "HnPzY03honFOjhYT25K5WFAFMhFIclok";
                if (i5 != -1) {
                    if (this.A02 != Integer.MIN_VALUE && (viewA1z = A1z(this.A01)) != null) {
                        if (this.A05) {
                            iA07 = this.A04.A07() - this.A04.A0D(viewA1z);
                            strArr = A0G;
                            if (strArr[2].charAt(4) != strArr[4].charAt(4)) {
                                A0G[5] = "r3FnQil1r32czyLALUutLd0XCkxYZ4G";
                                iA0G = iA07 - this.A02;
                            } else {
                                String[] strArr3 = A0G;
                                strArr3[2] = "sdmiyO1ExKOYMO2wbr6XNnW0K6t4WoaH";
                                strArr3[4] = "ty9AfnxQn4ghzZPCSImQPyrccPhuEwJu";
                                iA0G = iA07 - this.A02;
                            }
                        } else {
                            iA0G = this.A02 - (this.A04.A0G(viewA1z) - this.A04.A0B());
                        }
                        if (iA0G > 0) {
                            iA0B += iA0G;
                        } else {
                            iA08 -= iA0G;
                        }
                    }
                }
            } else {
                String[] strArr4 = A0G;
                strArr4[2] = "wwbDuuRcKwQkcLvBFtW9wuMbOUuGYFzY";
                strArr4[4] = "YequbpJjhMyIl9uyXvP2gytASLo9xZ7L";
                if (i5 != -1) {
                    if (this.A02 != Integer.MIN_VALUE) {
                        if (this.A05) {
                            iA07 = this.A04.A07() - this.A04.A0D(viewA1z);
                            strArr = A0G;
                            if (strArr[2].charAt(4) != strArr[4].charAt(4)) {
                                A0G[5] = "r3FnQil1r32czyLALUutLd0XCkxYZ4G";
                                iA0G = iA07 - this.A02;
                            } else {
                                String[] strArr5 = A0G;
                                strArr5[2] = "sdmiyO1ExKOYMO2wbr6XNnW0K6t4WoaH";
                                strArr5[4] = "ty9AfnxQn4ghzZPCSImQPyrccPhuEwJu";
                                iA0G = iA07 - this.A02;
                            }
                        } else {
                            iA0G = this.A02 - (this.A04.A0G(viewA1z) - this.A04.A0B());
                        }
                        if (iA0G > 0) {
                            iA0B += iA0G;
                        } else {
                            iA08 -= iA0G;
                        }
                    }
                }
            }
        }
        if (this.A0D.A02) {
            if (this.A05) {
                i4 = 1;
            }
        } else if (!this.A05) {
            i4 = 1;
        }
        A3H(c2628j4, c2635jB, this.A0D, i4);
        A2X(c2628j4);
        this.A07.A09 = A0u();
        this.A07.A0A = c2635jB.A07();
        if (this.A0D.A02) {
            A0m(this.A0D);
            this.A07.A02 = iA0B;
            A0L(c2628j4, this.A07, c2635jB, false);
            i3 = this.A07.A06;
            int i6 = this.A07.A01;
            if (this.A07.A00 > 0) {
                iA08 += this.A07.A00;
            }
            A0l(this.A0D);
            this.A07.A02 = iA08;
            this.A07.A01 += this.A07.A03;
            A0L(c2628j4, this.A07, c2635jB, false);
            i2 = this.A07.A06;
            if (this.A07.A00 > 0) {
                int i7 = this.A07.A00;
                A0j(i6, i3);
                this.A07.A02 = i7;
                A0L(c2628j4, this.A07, c2635jB, false);
                i3 = this.A07.A06;
            }
        } else {
            A0l(this.A0D);
            this.A07.A02 = iA08;
            A0L(c2628j4, this.A07, c2635jB, false);
            i2 = this.A07.A06;
            int i8 = this.A07.A01;
            if (this.A07.A00 > 0) {
                iA0B += this.A07.A00;
            }
            A0m(this.A0D);
            this.A07.A02 = iA0B;
            this.A07.A01 += this.A07.A03;
            A0L(c2628j4, this.A07, c2635jB, false);
            i3 = this.A07.A06;
            if (this.A07.A00 > 0) {
                int i9 = this.A07.A00;
                A0i(i8, i2);
                this.A07.A02 = i9;
                A0L(c2628j4, this.A07, c2635jB, false);
                i2 = this.A07.A06;
            }
        }
        if (A1T() > 0) {
            if (this.A05 ^ this.A0C) {
                int iA0J = A0J(i2, c2628j4, c2635jB, true);
                int i10 = i3 + iA0J;
                int i11 = i2 + iA0J;
                int iA0K = A0K(i10, c2628j4, c2635jB, false);
                i3 = i10 + iA0K;
                i2 = i11 + iA0K;
            } else {
                int iA0K2 = A0K(i3, c2628j4, c2635jB, true);
                int i12 = i3 + iA0K2;
                int i13 = i2 + iA0K2;
                int iA0J2 = A0J(i13, c2628j4, c2635jB, false);
                i3 = i12 + iA0J2;
                i2 = i13 + iA0J2;
            }
        }
        A0r(c2628j4, c2635jB, i3, i2);
        if (c2635jB.A07()) {
            this.A0D.A03();
        } else {
            this.A04.A0J();
        }
        this.A08 = this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public void A2d(C2635jB c2635jB) {
        super.A2d(c2635jB);
        this.A03 = null;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A0D.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2m(C7O c7o, C2628j4 c2628j4) {
        super.A2m(c7o, c2628j4);
        if (this.A09) {
            A2Y(c2628j4);
            c2628j4.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public void A2o(C7O c7o, C2635jB c2635jB, int i) {
        J5 j5 = new J5(c7o.getContext());
        j5.A0H(i);
        A2c(j5);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2p(String str) {
        if (this.A03 == null) {
            super.A2p(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final boolean A2u() {
        if (A1V() != 1073741824 && A1f() != 1073741824) {
            boolean zA2r = A2r();
            if (A0G[0].length() == 7) {
                throw new RuntimeException();
            }
            A0G[0] = "ZYU5Lu8KJdo1W8";
            if (zA2r) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final boolean A2v() {
        return this.A00 == 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final boolean A2w() {
        return this.A00 == 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public boolean A2x() {
        return this.A03 == null && this.A08 == this.A0C;
    }

    public final int A38() {
        View viewA0V = A0V(0, A1T(), true, false);
        if (viewA0V == null) {
            return -1;
        }
        return A1o(viewA0V);
    }

    public final int A39() {
        View viewA0V = A0V(0, A1T(), false, true);
        if (viewA0V == null) {
            return -1;
        }
        return A1o(viewA0V);
    }

    public final int A3A() {
        View viewA0V = A0V(A1T() - 1, -1, false, true);
        if (viewA0V == null) {
            return -1;
        }
        return A1o(viewA0V);
    }

    public final int A3B() {
        return this.A00;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0061, code lost:
    
        if (r4 == 1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006b, code lost:
    
        if (r4 == 1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0072, code lost:
    
        if (A3K() == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0074, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0075, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A3C(int r8) {
        /*
            r7 = this;
            r6 = -1
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1
            switch(r8) {
                case 1: goto L4d;
                case 2: goto L40;
                case 17: goto L38;
                case 33: goto L30;
                case 66: goto L2a;
                case 130: goto L8;
                default: goto L7;
            }
        L7:
            return r5
        L8:
            int r4 = r7.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.J7.A0G
            r0 = 1
            r1 = r1[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            r0 = 111(0x6f, float:1.56E-43)
            if (r1 == r0) goto L1f
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            java.lang.String r1 = "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"
            r0 = 3
            r2[r0] = r1
            if (r4 != r3) goto L29
            r5 = 1
        L29:
            return r5
        L2a:
            int r0 = r7.A00
            if (r0 != 0) goto L2f
            r5 = 1
        L2f:
            return r5
        L30:
            int r0 = r7.A00
            if (r0 != r3) goto L35
        L34:
            return r6
        L35:
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L34
        L38:
            int r0 = r7.A00
            if (r0 != 0) goto L3d
        L3c:
            return r6
        L3d:
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L3c
        L40:
            int r0 = r7.A00
            if (r0 != r3) goto L45
            return r3
        L45:
            boolean r0 = r7.A3K()
            if (r0 == 0) goto L4c
            return r6
        L4c:
            return r3
        L4d:
            int r4 = r7.A00
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            r0 = 6
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L64
            if (r4 != r3) goto L6e
        L63:
            return r6
        L64:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            java.lang.String r1 = "tdW2fzf"
            r0 = 3
            r2[r0] = r1
            if (r4 != r3) goto L6e
            goto L63
        L6e:
            boolean r0 = r7.A3K()
            if (r0 == 0) goto L75
            return r3
        L75:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.J7.A3C(int):int");
    }

    public View A3D(C2628j4 c2628j4, C2635jB c2635jB, int i, int i2, int i3) {
        A3E();
        View view = null;
        View view2 = null;
        int iA0B = this.A04.A0B();
        int iA07 = this.A04.A07();
        int i4 = i2 > i ? 1 : -1;
        while (i != i2) {
            View viewA20 = A20(i);
            int iA1o = A1o(viewA20);
            if (iA1o >= 0 && iA1o < i3) {
                if (((C2621ix) viewA20.getLayoutParams()).A02()) {
                    if (view == null) {
                        view = viewA20;
                    }
                } else {
                    if (this.A04.A0G(viewA20) < iA07 && this.A04.A0D(viewA20) >= iA0B) {
                        return viewA20;
                    }
                    if (view2 == null) {
                        view2 = viewA20;
                    }
                }
            }
            i += i4;
        }
        return view2 != null ? view2 : view;
    }

    public final void A3E() {
        if (this.A07 == null) {
            this.A07 = A0e();
        }
        if (this.A04 == null) {
            this.A04 = AbstractC2604ig.A02(this, this.A00);
        }
    }

    public final void A3F(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(A0f(0, 20, 1) + i);
        }
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[1] = "wMuOUB68W5cmyVCUMue198JFnL9Wkeot";
        A2p(null);
        if (i == this.A00) {
            return;
        }
        this.A00 = i;
        this.A04 = null;
        A28();
    }

    public final void A3G(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A28();
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[3] = "tDl3kZGUKMTs";
    }

    public void A3H(C2628j4 c2628j4, C2635jB c2635jB, C2599iZ c2599iZ, int i) {
    }

    public void A3I(C2628j4 c2628j4, C2635jB c2635jB, C2601ib c2601ib, C2600ia c2600ia) {
        int iA1d;
        int iA0F;
        int iA1b;
        int iA0F2;
        View viewA03 = c2601ib.A03(c2628j4);
        if (viewA03 == null) {
            c2600ia.A01 = true;
            return;
        }
        C2621ix c2621ix = (C2621ix) viewA03.getLayoutParams();
        if (c2601ib.A08 == null) {
            if (this.A05 == (c2601ib.A05 == -1)) {
                A2L(viewA03);
            } else {
                A2N(viewA03, 0);
            }
        } else {
            if (this.A05 == (c2601ib.A05 == -1)) {
                A2K(viewA03);
            } else {
                A2M(viewA03, 0);
            }
        }
        A2O(viewA03, 0, 0);
        c2600ia.A00 = this.A04.A0E(viewA03);
        if (this.A00 == 1) {
            if (A3K()) {
                iA0F2 = A1e() - A1c();
                iA1b = iA0F2 - this.A04.A0F(viewA03);
            } else {
                iA1b = A1b();
                iA0F2 = this.A04.A0F(viewA03) + iA1b;
            }
            if (c2601ib.A05 == -1) {
                iA0F = c2601ib.A06;
                iA1d = c2601ib.A06 - c2600ia.A00;
            } else {
                iA1d = c2601ib.A06;
                iA0F = c2601ib.A06 + c2600ia.A00;
            }
        } else {
            iA1d = A1d();
            iA0F = this.A04.A0F(viewA03) + iA1d;
            if (c2601ib.A05 == -1) {
                iA0F2 = c2601ib.A06;
                iA1b = c2601ib.A06 - c2600ia.A00;
            } else {
                iA1b = c2601ib.A06;
                iA0F2 = c2601ib.A06 + c2600ia.A00;
            }
        }
        A2P(viewA03, iA1b, iA1d, iA0F2, iA0F);
        if (c2621ix.A02() || c2621ix.A01()) {
            c2600ia.A03 = true;
        }
        c2600ia.A02 = viewA03.hasFocusable();
    }

    public void A3J(C2635jB c2635jB, C2601ib c2601ib, InterfaceC2618iu interfaceC2618iu) {
        int i = c2601ib.A01;
        if (i < 0 || i >= c2635jB.A03()) {
            return;
        }
        interfaceC2618iu.A4S(i, Math.max(0, c2601ib.A07));
    }

    public final boolean A3K() {
        return A1X() == 1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2632j8
    public final PointF A5f(int i) {
        if (A1T() == 0) {
            return null;
        }
        int i2 = (i < A1o(A20(0))) != this.A05 ? -1 : 1;
        int i3 = this.A00;
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        A0G[5] = "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN";
        return i3 == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }
}
