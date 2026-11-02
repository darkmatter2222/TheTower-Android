package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RO extends WT<RO> implements Comparable<RO> {
    public static String[] A0I = {"P4R9wJWAYyqjrhbRHbCv636JXConZvq3", "2Mzg6q2Xp5b4khmgCkCieu53qULwPG8h", "vaNfeANqbrnyfhHcxrjF", "bXOhXzPgHRErXS", "IXcEGBsao5qVdUmFKQjcY19rlhxnx5lS", "LTRkc", "Beig4rKsYLcGqimXZb647yryWj8XuJuc", "KdGkG"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final C14008i A0A;
    public final String A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean A0E;
    public final boolean A0F;
    public final boolean A0G;
    public final boolean A0H;

    public RO(int i, U8 u8, int i2, C14008i c14008i, int i3, boolean z, InterfaceC1994Wt<VC> interfaceC1994Wt) {
        super(i, u8, i2);
        this.A0A = c14008i;
        this.A0B = C13998h.A0K(super.A02.A0V);
        this.A0F = C13998h.A0S(i3, false);
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < c14008i.A0I.size(); i6++) {
            int iA02 = C13998h.A02(super.A02, c14008i.A0I.get(i6), false);
            if (iA02 > 0) {
                i5 = i6;
                i4 = iA02;
                break;
            }
        }
        this.A04 = i5;
        this.A05 = i4;
        this.A07 = C13998h.A00(super.A02.A0E, ((U1) c14008i).A0B);
        this.A0C = super.A02.A0E == 0 || (super.A02.A0E & 1) != 0;
        this.A0D = (super.A02.A0H & 1) != 0;
        this.A01 = super.A02.A06;
        this.A08 = super.A02.A0G;
        this.A00 = super.A02.A05;
        this.A0E = (super.A02.A05 == -1 || super.A02.A05 <= ((U1) c14008i).A01) && (super.A02.A06 == -1 || super.A02.A06 <= ((U1) c14008i).A02) && interfaceC1994Wt.A4d(super.A02);
        String[] strArrA1L = N1.A1L();
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        for (int i9 = 0; i9 < strArrA1L.length; i9++) {
            int iA03 = C13998h.A02(super.A02, strArrA1L[i9], false);
            if (iA03 > 0) {
                i7 = i9;
                i8 = iA03;
                break;
            }
        }
        this.A02 = i7;
        this.A03 = i8;
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < c14008i.A0J.size(); i11++) {
            if (super.A02.A0W != null && super.A02.A0W.equals(c14008i.A0J.get(i11))) {
                i10 = i11;
                break;
            }
        }
        this.A06 = i10;
        this.A0H = PX.A02(i3) == 128;
        this.A0G = PX.A04(i3) == 64;
        this.A09 = A00(i3, z);
    }

    private int A00(int i, boolean z) {
        if (!C13998h.A0S(i, this.A0A.A0B)) {
            return 0;
        }
        if (!this.A0E && !this.A0A.A09) {
            return 0;
        }
        boolean zA0S = C13998h.A0S(i, false);
        String[] strArr = A0I;
        if (strArr[6].charAt(14) != strArr[4].charAt(14)) {
            throw new RuntimeException();
        }
        A0I[3] = "V5hK0VSk3dhSjP";
        return (!zA0S || !this.A0E || super.A02.A05 == -1 || this.A0A.A0N || this.A0A.A0O || (!this.A0A.A04 && z)) ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final int compareTo(RO ro) {
        AbstractC1954Vc abstractC1954VcA06;
        AbstractC1954Vc abstractC1954VcA07 = (this.A0E && this.A0F) ? C13998h.A09 : C13998h.A09.A06();
        AbstractC1974Vy abstractC1974VyA08 = AbstractC1974Vy.A01().A09(this.A0F, ro.A0F).A08(Integer.valueOf(this.A04), Integer.valueOf(ro.A04), AbstractC1954Vc.A03().A06()).A06(this.A05, ro.A05).A06(this.A07, ro.A07).A09(this.A0D, ro.A0D).A09(this.A0C, ro.A0C).A08(Integer.valueOf(this.A02), Integer.valueOf(ro.A02), AbstractC1954Vc.A03().A06()).A06(this.A03, ro.A03).A09(this.A0E, ro.A0E).A08(Integer.valueOf(this.A06), Integer.valueOf(ro.A06), AbstractC1954Vc.A03().A06());
        Integer numValueOf = Integer.valueOf(this.A00);
        Integer numValueOf2 = Integer.valueOf(ro.A00);
        if (this.A0A.A0O) {
            AbstractC1954Vc abstractC1954Vc = C13998h.A09;
            String[] strArr = A0I;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[0] = "uf4QuxhNclx1RplB85CZ2PCc23e9qoPA";
            strArr2[1] = "vBsICpyRH4MkJ3FKcDCosYbe40sdLBiY";
            abstractC1954VcA06 = abstractC1954Vc.A06();
        } else {
            abstractC1954VcA06 = C13998h.A0A;
        }
        AbstractC1974Vy abstractC1974VyA09 = abstractC1974VyA08.A08(numValueOf, numValueOf2, abstractC1954VcA06).A09(this.A0H, ro.A0H).A09(this.A0G, ro.A0G).A08(Integer.valueOf(this.A01), Integer.valueOf(ro.A01), abstractC1954VcA07).A08(Integer.valueOf(this.A08), Integer.valueOf(ro.A08), abstractC1954VcA07);
        Integer numValueOf3 = Integer.valueOf(this.A00);
        Integer numValueOf4 = Integer.valueOf(ro.A00);
        if (!N1.A1E(this.A0B, ro.A0B)) {
            abstractC1954VcA07 = C13998h.A0A;
        }
        int iA05 = abstractC1974VyA09.A08(numValueOf3, numValueOf4, abstractC1954VcA07).A05();
        if (A0I[2].length() != 20) {
            return iA05;
        }
        A0I[3] = "0hmH2ynyvjQ4qO";
        return iA05;
    }

    public static int A02(List<RO> list, List<RO> list2) {
        return ((RO) Collections.max(list)).compareTo((RO) Collections.max(list2));
    }

    public static AbstractC14149l<RO> A03(int i, U8 u8, C14008i c14008i, int[] iArr, boolean z, InterfaceC1994Wt<VC> interfaceC1994Wt) {
        C12944e c12944eA01 = AbstractC14149l.A01();
        for (int i2 = 0; i2 < u8.A01; i2++) {
            c12944eA01.A04(new RO(i, u8, i2, c14008i, iArr[i2], z, interfaceC1994Wt));
        }
        return c12944eA01.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.WT
    /* JADX INFO: renamed from: A04, reason: merged with bridge method [inline-methods] */
    public final boolean A09(RO ro) {
        if ((this.A0A.A00 || (super.A02.A06 != -1 && super.A02.A06 == ((WT) ro).A02.A06)) && (this.A0A.A02 || (super.A02.A0W != null && TextUtils.equals(super.A02.A0W, ((WT) ro).A02.A0W)))) {
            boolean z = this.A0A.A03;
            String[] strArr = A0I;
            if (strArr[0].charAt(18) != strArr[1].charAt(18)) {
                throw new RuntimeException();
            }
            A0I[2] = "h02XvMyQLjLLGXpJVBMi";
            if ((z || (super.A02.A0G != -1 && super.A02.A0G == ((WT) ro).A02.A0G)) && (this.A0A.A01 || (this.A0H == ro.A0H && this.A0G == ro.A0G))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.WT
    public final int A08() {
        return this.A09;
    }
}
