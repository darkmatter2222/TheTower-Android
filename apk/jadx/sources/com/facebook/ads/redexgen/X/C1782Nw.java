package com.facebook.ads.redexgen.X;

import androidx.core.view.InputDeviceCompat;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1782Nw implements InterfaceC2262d3 {
    public static String[] A06 = {"DHB0POcPulic", "MmhVBmvLGTSAZOkR6rxXtA", "LuLWJ4grSGFWkIPrirGcW9gmkc", "", "rwUzpbX9RfbTCC", "HTgeiwQw48de", "C6i9nNWVCFzdPdraWB8iBbfITiLjcqTl", ""};
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final C1744Mk A04 = new C1744Mk(32);
    public final InterfaceC2253cu A05;

    public C1782Nw(InterfaceC2253cu interfaceC2253cu) {
        this.A05 = interfaceC2253cu;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2262d3
    public final void A5k(C1744Mk c1744Mk, int i) {
        boolean z = (i & 1) != 0;
        int iA09 = -1;
        if (z) {
            iA09 = c1744Mk.A09() + c1744Mk.A0I();
        }
        if (this.A03) {
            if (!z) {
                return;
            }
            this.A03 = false;
            c1744Mk.A0f(iA09);
            this.A00 = 0;
        }
        while (c1744Mk.A07() > 0) {
            int i2 = this.A00;
            if (A06[2].length() != 26) {
                throw new RuntimeException();
            }
            A06[6] = "fZodozjggLqNFu6LL9x0Aapv2nTgyMll";
            if (i2 < 3) {
                if (this.A00 == 0) {
                    int iA0I = c1744Mk.A0I();
                    c1744Mk.A0f(c1744Mk.A09() - 1);
                    if (iA0I == 255) {
                        this.A03 = true;
                        return;
                    }
                }
                int iMin = Math.min(c1744Mk.A07(), 3 - this.A00);
                c1744Mk.A0k(this.A04.A0l(), this.A00, iMin);
                this.A00 += iMin;
                if (this.A00 == 3) {
                    this.A04.A0f(0);
                    this.A04.A0e(3);
                    this.A04.A0g(1);
                    int iA0I2 = this.A04.A0I();
                    int iA0I3 = this.A04.A0I();
                    this.A02 = (iA0I2 & 128) != 0;
                    this.A01 = (((iA0I2 & 15) << 8) | iA0I3) + 3;
                    if (this.A04.A08() < this.A01) {
                        this.A04.A0c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(this.A01, this.A04.A08() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(c1744Mk.A07(), this.A01 - this.A00);
                c1744Mk.A0k(this.A04.A0l(), this.A00, iMin2);
                this.A00 += iMin2;
                if (this.A00 != this.A01) {
                    continue;
                } else {
                    if (!this.A02) {
                        this.A04.A0e(this.A01);
                    } else {
                        if (N1.A0I(this.A04.A0l(), 0, this.A01, -1) != 0) {
                            this.A03 = true;
                            return;
                        }
                        this.A04.A0e(this.A01 - 4);
                    }
                    this.A04.A0f(0);
                    this.A05.A5j(this.A04);
                    this.A00 = 0;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2262d3
    public final void AAo(C1752Ms c1752Ms, InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        this.A05.AAo(c1752Ms, interfaceC2044Yw, c2261d2);
        this.A03 = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2262d3
    public final void AKN() {
        this.A03 = true;
    }
}
