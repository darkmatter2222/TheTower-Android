package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Po, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1819Po extends AbstractC2054Zg {
    public static byte[] A06;
    public static String[] A07 = {"VXQzmafGpgtWhEkBLcCTQ3OOINcBIoFq", "Q5AhDM", "cCcAJxXI", "N5", "HRzWeWWLcDAAUqorlOIbyKZ5OoUiaA3G", "XJ", "WYSOyGJw2Wt", "4TFKrJ4oALacLHu9H2K32UZjEBwm9O"};
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final C1744Mk A04;
    public final C1744Mk A05;

    static {
        A01();
    }

    public C1819Po(ZP zp) {
        super(zp);
        this.A05 = new C1744Mk(ZE.A03);
        this.A04 = new C1744Mk(4);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{Ascii.SUB, 37, 40, 41, 35, 108, 42, 35, 62, 33, 45, 56, 108, 34, 35, 56, 108, 63, 57, 60, 60, 35, 62, 56, 41, 40, 118, 108, 101, 122, 119, 118, 124, 60, 114, 101, 112};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2054Zg
    public final boolean A0B(C1744Mk c1744Mk) throws C1820Pp {
        int iA0I = c1744Mk.A0I();
        int i = (iA0I >> 4) & 15;
        int i2 = iA0I & 15;
        if (i2 != 7) {
            throw new C1820Pp(A00(0, 28, 51) + i2);
        }
        this.A00 = i;
        return i != 5;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2054Zg
    public final boolean A0C(C1744Mk c1744Mk, long j) throws L9 {
        int iA0I = c1744Mk.A0I();
        long jA0D = j + (((long) c1744Mk.A0D()) * 1000);
        if (iA0I == 0 && !this.A02) {
            C1744Mk c1744Mk2 = new C1744Mk(new byte[c1744Mk.A07()]);
            c1744Mk.A0k(c1744Mk2.A0l(), 0, c1744Mk.A07());
            C2030Yh c2030YhA00 = C2030Yh.A00(c1744Mk2);
            this.A01 = c2030YhA00.A02;
            super.A00.A7E(new C1689Ke().A11(A00(28, 9, 108)).A0w(c2030YhA00.A04).A0r(c2030YhA00.A03).A0f(c2030YhA00.A01).A0Y(c2030YhA00.A00).A12(c2030YhA00.A05).A14());
            this.A02 = true;
            return false;
        }
        if (iA0I == 1) {
            boolean z = this.A02;
            String[] strArr = A07;
            if (strArr[5].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A07[4] = "kazTvJC8QQO7VkcBkDWHPauriRsGawQM";
            if (z) {
                boolean z2 = this.A00 == 1;
                if (!this.A03 && !z2) {
                    return false;
                }
                byte[] bArrA0l = this.A04.A0l();
                bArrA0l[0] = 0;
                bArrA0l[1] = 0;
                bArrA0l[2] = 0;
                int i = 4 - this.A01;
                int i2 = 0;
                while (true) {
                    int iA07 = c1744Mk.A07();
                    String[] strArr2 = A07;
                    if (strArr2[5].length() == strArr2[3].length()) {
                        A07[2] = "eW229L4";
                        if (iA07 <= 0) {
                            break;
                        }
                        c1744Mk.A0k(this.A04.A0l(), i, this.A01);
                        this.A04.A0f(0);
                        int iA0L = this.A04.A0L();
                        this.A05.A0f(0);
                        super.A00.AK9(this.A05, 4);
                        super.A00.AK9(c1744Mk, iA0L);
                        i2 = i2 + 4 + iA0L;
                    } else {
                        A07[2] = "wZG7HldhCNqJ3oZTqOCPmxjXNK";
                        if (iA07 <= 0) {
                            break;
                        }
                        c1744Mk.A0k(this.A04.A0l(), i, this.A01);
                        this.A04.A0f(0);
                        int iA0L2 = this.A04.A0L();
                        this.A05.A0f(0);
                        super.A00.AK9(this.A05, 4);
                        super.A00.AK9(c1744Mk, iA0L2);
                        i2 = i2 + 4 + iA0L2;
                    }
                }
                super.A00.AKC(jA0D, z2 ? 1 : 0, i2, 0, null);
                this.A03 = true;
                return true;
            }
        }
        return false;
    }
}
