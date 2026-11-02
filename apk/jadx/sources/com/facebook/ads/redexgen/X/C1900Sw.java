package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1900Sw implements InterfaceC1809Ox {
    public static byte[] A07;
    public static String[] A08 = {"rzHoui5FCY2txYmQPhBR8KnZrt2k1zHf", "kW", "8UoYFvsA4YH9hERzKy4kjiF0B8fM71vZ", "7438j8GJ5chy", "sA9yRk9BDkS1eIgMaGcl0fZ", "UZ01", "BvFRsFBpXh8z621x1ZIYqzzWo02vyFBW", "8X7U"};
    public InterfaceC1809Ox A00;
    public InterfaceC1884Sg A01;
    public boolean A04;
    public final OE A05;
    public final C1880Sc A06;
    public boolean A03 = true;

    @MetaExoPlayerCustomization
    public boolean A02 = XL.A03(XQ.A2K);

    static {
        A01();
    }

    public C1900Sw(OE oe, InterfaceC1729Lu interfaceC1729Lu) {
        this.A05 = oe;
        this.A06 = new C1880Sc(interfaceC1729Lu);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{-83, -43, -52, -44, -55, -48, -52, -59, -128, -46, -59, -50, -60, -59, -46, -59, -46, -128, -51, -59, -60, -55, -63, -128, -61, -52, -49, -61, -53, -45, -128, -59, -50, -63, -62, -52, -59, -60, -114};
    }

    private void A02(boolean z) {
        if (A03(z)) {
            this.A03 = true;
            if (this.A04) {
                this.A06.A00();
                return;
            }
            return;
        }
        InterfaceC1809Ox interfaceC1809Ox = (InterfaceC1809Ox) AbstractC1722Ln.A01(this.A00);
        long jA9S = interfaceC1809Ox.A9S();
        if (this.A03) {
            if (jA9S < this.A06.A9S()) {
                this.A06.A01();
                return;
            } else {
                this.A03 = false;
                if (this.A04) {
                    this.A06.A00();
                }
            }
        }
        this.A06.A02(jA9S);
        UW uwA9P = interfaceC1809Ox.A9P();
        if (uwA9P.equals(this.A06.A9P())) {
            return;
        }
        this.A06.AKv(uwA9P);
        this.A05.AGN(uwA9P);
    }

    private boolean A03(boolean z) {
        return this.A01 == null || this.A01.AB7() || (!this.A01.ABM() && (z || this.A01.AAT()));
    }

    public final long A04(boolean z) {
        A02(z);
        return A9S();
    }

    public final void A05() {
        this.A04 = true;
        this.A06.A00();
    }

    public final void A06() {
        this.A04 = false;
        this.A06.A01();
    }

    public final void A07(long j) {
        this.A06.A02(j);
    }

    public final void A08(InterfaceC1884Sg interfaceC1884Sg) {
        if (interfaceC1884Sg == this.A01) {
            this.A00 = null;
            this.A01 = null;
            this.A03 = true;
        }
    }

    public final void A09(InterfaceC1884Sg interfaceC1884Sg) throws AnonymousClass96 {
        InterfaceC1809Ox interfaceC1809OxA95 = interfaceC1884Sg.A95();
        if (interfaceC1809OxA95 == null || interfaceC1809OxA95 == this.A00) {
            return;
        }
        if (this.A00 != null) {
            throw AnonymousClass96.A02(new IllegalStateException(A00(0, 39, 39)));
        }
        this.A00 = interfaceC1809OxA95;
        this.A01 = interfaceC1884Sg;
        this.A00.AKv(this.A06.A9P());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1809Ox
    public final UW A9P() {
        return this.A00 != null ? this.A00.A9P() : this.A06.A9P();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1809Ox
    public final long A9S() {
        if (!this.A03) {
            return ((InterfaceC1809Ox) AbstractC1722Ln.A01(this.A00)).A9S();
        }
        C1880Sc c1880Sc = this.A06;
        if (A08[4].length() != 23) {
            throw new RuntimeException();
        }
        A08[0] = "haFfgiF2A5A3793S64y9oZunablguEEE";
        return c1880Sc.A9S();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1809Ox
    @MetaExoPlayerCustomization
    public final void AKv(UW uw) {
        if (this.A00 != null) {
            this.A00.AKv(uw);
            uw = this.A00.A9P();
        }
        this.A06.AKv(uw);
        if (this.A02) {
            this.A05.AGN(uw);
        }
    }
}
