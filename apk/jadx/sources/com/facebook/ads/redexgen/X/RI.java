package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RI extends WT<RI> implements Comparable<RI> {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;

    public RI(int i, U8 u8, int i2, C14008i c14008i, int i3, String str) {
        super(i, u8, i2);
        int i4 = 0;
        this.A08 = C13998h.A0S(i3, false);
        int i5 = super.A02.A0H & (~((U1) c14008i).A00);
        this.A06 = (i5 & 1) != 0;
        this.A07 = (i5 & 2) != 0;
        int i6 = Integer.MAX_VALUE;
        int i7 = 0;
        List<String> listA03 = c14008i.A0K.isEmpty() ? XR.A03("") : c14008i.A0K;
        for (int i8 = 0; i8 < listA03.size(); i8++) {
            int iA02 = C13998h.A02(super.A02, listA03.get(i8), c14008i.A0P);
            if (iA02 > 0) {
                i6 = i8;
                i7 = iA02;
                break;
            }
        }
        this.A00 = i6;
        this.A01 = i7;
        this.A02 = C13998h.A00(super.A02.A0E, ((U1) c14008i).A0C);
        this.A05 = (super.A02.A0E & 1088) != 0;
        this.A03 = C13998h.A02(super.A02, str, C13998h.A0K(str) == null);
        boolean z = this.A01 > 0 || (c14008i.A0K.isEmpty() && this.A02 > 0) || this.A06 || (this.A07 && this.A03 > 0);
        if (C13998h.A0S(i3, c14008i.A0B) && z) {
            i4 = 1;
        }
        this.A04 = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(RI ri) {
        AbstractC1974Vy abstractC1974VyA06 = AbstractC1974Vy.A01().A09(this.A08, ri.A08).A08(Integer.valueOf(this.A00), Integer.valueOf(ri.A00), AbstractC1954Vc.A03().A06()).A06(this.A01, ri.A01).A06(this.A02, ri.A02).A09(this.A06, ri.A06).A08(Boolean.valueOf(this.A07), Boolean.valueOf(ri.A07), this.A01 == 0 ? AbstractC1954Vc.A03() : AbstractC1954Vc.A03().A06()).A06(this.A03, ri.A03);
        if (this.A02 == 0) {
            abstractC1974VyA06 = abstractC1974VyA06.A0A(this.A05, ri.A05);
        }
        return abstractC1974VyA06.A05();
    }

    public static int A01(List<RI> list, List<RI> list2) {
        return list.get(0).compareTo(list2.get(0));
    }

    public static AbstractC14149l<RI> A02(int i, U8 u8, C14008i c14008i, int[] iArr, String str) {
        C12944e c12944eA01 = AbstractC14149l.A01();
        for (int i2 = 0; i2 < u8.A01; i2++) {
            c12944eA01.A04(new RI(i, u8, i2, c14008i, iArr[i2], str));
        }
        return c12944eA01.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.WT
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final boolean A09(RI ri) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.WT
    public final int A08() {
        return this.A04;
    }
}
