package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8j, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class C8j implements RA {
    public int A00;

    @MetaExoPlayerCustomization
    public boolean A01;
    public final int A02;
    public final long[] A03;
    public final VC[] A04;
    public final int A05;
    public final U8 A06;
    public final int[] A07;

    public C8j(U8 u8, int[] iArr, int i) {
        AbstractC1722Ln.A08(iArr.length > 0);
        this.A02 = i;
        this.A06 = (U8) AbstractC1722Ln.A01(u8);
        this.A05 = iArr.length;
        this.A04 = new VC[this.A05];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.A04[i2] = u8.A08(iArr[i2]);
        }
        Arrays.sort(this.A04, new Comparator() { // from class: com.facebook.ads.redexgen.X.WH
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C8j.A07((VC) obj, (VC) obj2);
            }
        });
        this.A07 = new int[this.A05];
        for (int i3 = 0; i3 < this.A05; i3++) {
            this.A07[i3] = u8.A07(this.A04[i3]);
        }
        this.A03 = new long[this.A05];
        this.A01 = false;
    }

    public static /* synthetic */ int A07(VC vc, VC vc2) {
        return vc2.A05 - vc.A05;
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public void A6W() {
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public void A6t() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1978Wc
    public final VC A8m(int i) {
        return this.A04[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1978Wc
    public final int A8t(int i) {
        return this.A07[i];
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public final VC A9f() {
        return this.A04[A9g()];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1978Wc
    public final U8 A9y() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1978Wc
    public final int AAk(int i) {
        for (int i2 = 0; i2 < this.A05; i2++) {
            if (this.A07[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public void AGO(float f) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C8j c8j = (C8j) obj;
        return this.A06 == c8j.A06 && Arrays.equals(this.A07, c8j.A07);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            this.A00 = (System.identityHashCode(this.A06) * 31) + Arrays.hashCode(this.A07);
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1978Wc
    public final int length() {
        return this.A07.length;
    }
}
