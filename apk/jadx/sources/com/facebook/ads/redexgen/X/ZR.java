package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ZR {
    public int A00;
    public int A01;
    public final int A02;
    public final byte[] A03;

    public ZR(byte[] bArr) {
        this.A03 = bArr;
        this.A02 = bArr.length;
    }

    private void A00() {
        AbstractC1722Ln.A08(this.A01 >= 0 && (this.A01 < this.A02 || (this.A01 == this.A02 && this.A00 == 0)));
    }

    public final int A01() {
        return (this.A01 * 8) + this.A00;
    }

    public final int A02(int i) {
        int i2 = this.A01;
        int iMin = Math.min(i, 8 - this.A00);
        int i3 = i2 + 1;
        int i4 = ((this.A03[i2] & 255) >> this.A00) & (255 >> (8 - iMin));
        while (iMin < i) {
            i4 |= (this.A03[i3] & 255) << iMin;
            iMin += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        A03(i);
        return i5;
    }

    public final void A03(int i) {
        int i2 = i / 8;
        this.A01 += i2;
        this.A00 += i - (i2 * 8);
        if (this.A00 > 7) {
            this.A01++;
            this.A00 -= 8;
        }
        A00();
    }

    public final boolean A04() {
        boolean z = (((this.A03[this.A01] & 255) >> this.A00) & 1) == 1;
        A03(1);
        return z;
    }
}
