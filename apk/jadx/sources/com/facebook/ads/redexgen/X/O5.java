package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O5 implements InterfaceC2240ch {
    public static byte[] A06;
    public static String[] A07 = {"vtEqmAk", "YIkCn0D8Ke1twsuZCTMNKlnb83ot9wWC", "2fgIgZToA", "AJxy", "ri50siERTUQGyQdlM7E3sxFZIKq6cMIu", "ktdx77aRJs8dvCrbODsVjHge1bjyCENV", "1avsMHI1PWMPXFGr8VriyDjLvosBq34", "vAKt3tqJZNBTuvyOu0CyTnClZKABuKjs"};
    public int A00;
    public int A01;
    public ZP A03;
    public boolean A04;
    public final C1744Mk A05 = new C1744Mk(10);
    public long A02 = -9223372036854775807L;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{-91, -54, -44, -60, -62, -45, -59, -54, -49, -56, -127, -54, -49, -41, -62, -51, -54, -59, -127, -86, -91, -108, -127, -43, -62, -56, -28, -1, -50, -19, 0, -4, -1, 0, Ascii.CR, 0, Ascii.SI, Ascii.SI, Ascii.VT, 8, 2, 0, 19, 8, Ascii.SO, Ascii.CR, -50, 8, 3, -46};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        AbstractC1722Ln.A02(this.A03);
        if (this.A04) {
            int iA07 = c1744Mk.A07();
            if (this.A00 < 10) {
                int iMin = Math.min(iA07, 10 - this.A00);
                System.arraycopy(c1744Mk.A0l(), c1744Mk.A09(), this.A05.A0l(), this.A00, iMin);
                if (this.A00 + iMin == 10) {
                    this.A05.A0f(0);
                    if (73 != this.A05.A0I() || 68 != this.A05.A0I() || 51 != this.A05.A0I()) {
                        MV.A07(A00(26, 9, 87), A00(0, 26, 29));
                        this.A04 = false;
                        return;
                    } else {
                        this.A05.A0g(3);
                        this.A01 = this.A05.A0H() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA07, this.A01 - this.A00);
            this.A03.AK9(c1744Mk, iMin2);
            int i = this.A00 + iMin2;
            if (A07[2].length() == 2) {
                throw new RuntimeException();
            }
            A07[0] = "WOz";
            this.A00 = i;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A03 = interfaceC2044Yw.ALm(c2261d2.A03(), 5);
        this.A03.A7E(new C1689Ke().A0y(c2261d2.A04()).A11(A00(35, 15, 91)).A14());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
        AbstractC1722Ln.A02(this.A03);
        if (this.A04 && this.A01 != 0 && this.A00 == this.A01) {
            long j = this.A02;
            if (A07[2].length() == 2) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[4] = "oG5I0s1vIi9gluwY0RcQoE0mKr55Q907";
            strArr[5] = "O1K8o3uFcng9Bw4QgcvJobHTy0Ai1MIu";
            if (j != -9223372036854775807L) {
                this.A03.AKC(this.A02, 1, this.A01, 0, null);
            }
            this.A04 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.A04 = true;
        if (j != -9223372036854775807L) {
            this.A02 = j;
        }
        this.A01 = 0;
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A04 = false;
        this.A02 = -9223372036854775807L;
    }
}
