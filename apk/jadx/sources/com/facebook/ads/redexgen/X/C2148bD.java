package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class C2148bD {
    public final int A00;
    public final int A01;
    public final long A02;
    public final C2145bA A03;
    public final int[] A04;
    public final int[] A05;
    public final long[] A06;
    public final long[] A07;

    public C2148bD(C2145bA c2145bA, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        AbstractC1722Ln.A07(iArr.length == jArr2.length);
        AbstractC1722Ln.A07(jArr.length == jArr2.length);
        AbstractC1722Ln.A07(iArr2.length == jArr2.length);
        this.A03 = c2145bA;
        this.A06 = jArr;
        this.A05 = iArr;
        this.A00 = i;
        this.A07 = jArr2;
        this.A04 = iArr2;
        this.A02 = j;
        this.A01 = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public final int A00(long j) {
        for (int iA0L = N1.A0L(this.A07, j, true, false); iA0L >= 0; iA0L--) {
            if ((this.A04[iA0L] & 1) != 0) {
                return iA0L;
            }
        }
        return -1;
    }

    public final int A01(long j) {
        for (int iA0K = N1.A0K(this.A07, j, true, false); iA0K < this.A07.length; iA0K++) {
            if ((this.A04[iA0K] & 1) != 0) {
                return iA0K;
            }
        }
        return -1;
    }
}
