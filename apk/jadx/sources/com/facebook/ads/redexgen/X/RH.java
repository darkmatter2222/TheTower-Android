package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RH extends WT<RH> {
    public static String[] A0H = {"M", "eiCoMS0B1NS75IHdkKjmmSEk8V7XJo6R", "MHaFb4K7cS0D09ebPHFZEdXLD", com.ironsource.Nc.e, "H", "edZGWAqUUBsDDpq2lfAjvFAJjKauvcUn", "h8RIemLK21YaGGwPwjZOAzN", "bo2sNdf3z"};
    public final int A00;
    public final int A01;
    public final int A02;

    @MetaExoPlayerCustomization
    public final int A03;

    @MetaExoPlayerCustomization
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final C14008i A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean A0E;
    public final boolean A0F;
    public final boolean A0G;

    @MetaExoPlayerCustomization
    public RH(int i, U8 u8, int i2, C14008i c14008i, int i3, String str, int i4, boolean z) {
        super(i, u8, i2);
        this.A09 = c14008i;
        int i5 = c14008i.A07 ? 24 : 16;
        this.A0A = c14008i.A06 && (i4 & i5) != 0;
        this.A0C = z && (super.A02.A0L == -1 || super.A02.A0L <= ((U1) c14008i).A06) && ((super.A02.A0A == -1 || super.A02.A0A <= ((U1) c14008i).A05) && ((super.A02.A01 == -1.0f || super.A02.A01 <= ((float) ((U1) c14008i).A04)) && (super.A02.A05 == -1 || super.A02.A05 <= ((U1) c14008i).A03)));
        this.A0D = z && (super.A02.A0L == -1 || super.A02.A0L >= ((U1) c14008i).A0A) && ((super.A02.A0A == -1 || super.A02.A0A >= ((U1) c14008i).A09) && ((super.A02.A01 == -1.0f || super.A02.A01 >= ((float) ((U1) c14008i).A08)) && (super.A02.A05 == -1 || super.A02.A05 >= ((U1) c14008i).A07)));
        this.A0E = C13998h.A0S(i3, false);
        int i6 = 0;
        int i7 = Integer.MAX_VALUE;
        for (int i8 = 0; i8 < c14008i.A0L.size(); i8++) {
            int iA02 = C13998h.A02(super.A02, c14008i.A0L.get(i8), false);
            if (iA02 > 0) {
                i7 = i8;
                i6 = iA02;
                break;
            }
        }
        this.A03 = i7;
        this.A04 = i6;
        this.A00 = super.A02.A05;
        this.A02 = super.A02.A06();
        this.A06 = C13998h.A00(super.A02.A0E, ((U1) c14008i).A0D);
        this.A0B = super.A02.A0E == 0 || (super.A02.A0E & 1) != 0;
        this.A07 = C13998h.A02(super.A02, str, C13998h.A0K(str) == null);
        int i9 = Integer.MAX_VALUE;
        for (int i10 = 0; i10 < c14008i.A0M.size(); i10++) {
            if (super.A02.A0W != null && super.A02.A0W.equals(c14008i.A0M.get(i10))) {
                i9 = i10;
                break;
            }
        }
        this.A05 = i9;
        this.A0G = PX.A02(i3) == 128;
        this.A0F = PX.A04(i3) == 64;
        this.A01 = C13998h.A07(super.A02.A0W);
        this.A08 = A00(i3, i5);
    }

    private int A00(int i, int i2) {
        if ((super.A02.A0E & 16384) != 0 || !C13998h.A0S(i, this.A09.A0B)) {
            return 0;
        }
        if (!this.A0C && !this.A09.A0C) {
            return 0;
        }
        if (C13998h.A0S(i, false) && this.A0D) {
            boolean z = this.A0C;
            if (A0H[4].length() == 29) {
                throw new RuntimeException();
            }
            A0H[4] = "cQBv6Gw35";
            if (z && super.A02.A05 != -1 && !this.A09.A0N && !this.A09.A0O && (i & i2) != 0) {
                return 2;
            }
        }
        return 1;
    }

    @MetaExoPlayerCustomization
    public static int A01(RH rh, RH rh2) {
        AbstractC1974Vy abstractC1974VyA09 = AbstractC1974Vy.A01().A09(rh.A0E, rh2.A0E).A08(Integer.valueOf(rh.A03), Integer.valueOf(rh2.A03), AbstractC1954Vc.A03().A06()).A06(rh.A04, rh2.A04).A06(rh.A06, rh2.A06).A09(rh.A0B, rh2.A0B).A06(rh.A07, rh2.A07).A09(rh.A0C, rh2.A0C).A09(rh.A0D, rh2.A0D).A08(Integer.valueOf(rh.A05), Integer.valueOf(rh2.A05), AbstractC1954Vc.A03().A06()).A09(rh.A0G, rh2.A0G).A09(rh.A0F, rh2.A0F);
        if (rh.A0G && rh.A0F) {
            abstractC1974VyA09 = abstractC1974VyA09.A06(rh.A01, rh2.A01);
        }
        return abstractC1974VyA09.A05();
    }

    public static int A02(RH rh, RH rh2) {
        AbstractC1954Vc abstractC1954VcA06;
        if (rh.A0C && rh.A0E) {
            abstractC1954VcA06 = C13998h.A09;
        } else {
            AbstractC1954Vc abstractC1954Vc = C13998h.A09;
            if (A0H[4].length() != 29) {
                String[] strArr = A0H;
                strArr[3] = "6";
                strArr[0] = "u";
                abstractC1954VcA06 = abstractC1954Vc.A06();
            } else {
                abstractC1954VcA06 = abstractC1954Vc.A06();
            }
        }
        AbstractC1974Vy abstractC1974VyA01 = AbstractC1974Vy.A01();
        Integer numValueOf = Integer.valueOf(rh.A00);
        Integer numValueOf2 = Integer.valueOf(rh2.A00);
        C14008i c14008i = rh.A09;
        if (A0H[1].charAt(14) == 'b') {
            throw new RuntimeException();
        }
        String[] strArr2 = A0H;
        strArr2[7] = "nzfXK0yQO";
        strArr2[2] = "LhwujyBI8CJgLxGyr3cmCtWqM";
        return abstractC1974VyA01.A08(numValueOf, numValueOf2, c14008i.A0O ? C13998h.A09.A06() : C13998h.A0A).A08(Integer.valueOf(rh.A02), Integer.valueOf(rh2.A02), abstractC1954VcA06).A08(Integer.valueOf(rh.A00), Integer.valueOf(rh2.A00), abstractC1954VcA06).A05();
    }

    public static int A05(List<RH> list, List<RH> list2) {
        return AbstractC1974Vy.A01().A08((RH) Collections.max(list, new Comparator() { // from class: com.facebook.ads.redexgen.X.WU
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A01((RH) obj, (RH) obj2);
            }
        }), (RH) Collections.max(list2, new Comparator() { // from class: com.facebook.ads.redexgen.X.WU
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A01((RH) obj, (RH) obj2);
            }
        }), new Comparator() { // from class: com.facebook.ads.redexgen.X.WU
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A01((RH) obj, (RH) obj2);
            }
        }).A06(list.size(), list2.size()).A08((RH) Collections.max(list, new Comparator() { // from class: com.facebook.ads.redexgen.X.WV
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A02((RH) obj, (RH) obj2);
            }
        }), (RH) Collections.max(list2, new Comparator() { // from class: com.facebook.ads.redexgen.X.WV
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A02((RH) obj, (RH) obj2);
            }
        }), new Comparator() { // from class: com.facebook.ads.redexgen.X.WV
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A02((RH) obj, (RH) obj2);
            }
        }).A05();
    }

    public static AbstractC14149l<RH> A06(int i, U8 u8, C14008i c14008i, int[] iArr, String str, int i2) {
        int iA03 = C13998h.A03(u8, ((U1) c14008i).A0F, ((U1) c14008i).A0E, c14008i.A0Q);
        C12944e c12944eA01 = AbstractC14149l.A01();
        for (int i3 = 0; i3 < u8.A01; i3++) {
            int iA06 = u8.A08(i3).A06();
            c12944eA01.A04(new RH(i, u8, i3, c14008i, iArr[i3], str, i2, iA03 == Integer.MAX_VALUE || (iA06 != -1 && iA06 <= iA03)));
        }
        return c12944eA01.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.WT
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public final boolean A09(RH rh) {
        return (this.A0A || N1.A1E(super.A02.A0W, ((WT) rh).A02.A0W)) && (this.A09.A05 || (this.A0G == rh.A0G && this.A0F == rh.A0F));
    }

    @Override // com.facebook.ads.redexgen.X.WT
    public final int A08() {
        return this.A08;
    }
}
