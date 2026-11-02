package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1976Wa {
    public final int A00;
    public final RY A01;
    public final int[] A02;
    public final int[] A03;
    public final RY[] A04;
    public final String[] A05;
    public final int[][][] A06;

    public C1976Wa(String[] strArr, int[] iArr, RY[] ryArr, int[] iArr2, int[][][] iArr3, RY ry) {
        this.A05 = strArr;
        this.A03 = iArr;
        this.A04 = ryArr;
        this.A06 = iArr3;
        this.A02 = iArr2;
        this.A01 = ry;
        this.A00 = iArr.length;
    }

    private final int A00(int i, int i2, int i3) {
        return this.A06[i][i2][i3];
    }

    private final int A01(int i, int i2, int[] iArr) {
        int i3 = 0;
        int iMin = 16;
        boolean z = false;
        String str = null;
        int i4 = 0;
        while (i4 < iArr.length) {
            String str2 = this.A04[i].A05(i2).A08(iArr[i4]).A0W;
            int i5 = i3 + 1;
            if (i3 == 0) {
                str = str2;
            } else {
                z = (!N1.A1E(str, str2)) | z;
            }
            iMin = Math.min(iMin, PX.A01(this.A06[i][i2][i4]));
            i4++;
            i3 = i5;
        }
        return z ? Math.min(iMin, this.A02[i]) : iMin;
    }

    public final int A02() {
        return this.A00;
    }

    public final int A03(int i) {
        return this.A03[i];
    }

    public final int A04(int i, int i2, int i3) {
        return PX.A03(A00(i, i2, i3));
    }

    public final int A05(int i, int i2, boolean z) {
        int i3 = this.A04[i].A05(i2).A01;
        int[] iArr = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int iA04 = A04(i, i2, i5);
            if (iA04 == 4 || (z && iA04 == 3)) {
                iArr[i4] = i5;
                i4++;
            }
        }
        return A01(i, i2, Arrays.copyOf(iArr, i4));
    }

    public final RY A06() {
        return this.A01;
    }

    public final RY A07(int i) {
        return this.A04[i];
    }
}
