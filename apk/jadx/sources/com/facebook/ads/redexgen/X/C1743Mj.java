package com.facebook.ads.redexgen.X;

import androidx.core.view.MotionEventCompat;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1743Mj {
    public static String[] A04 = {"rMt1I356ueIBDE68MYXbn2EVnvts", "wU", "v2Yv3LzPKZXJhbMNQixR4IBvtNHFoSFU", "6OUSCbqiAH8R5VVPkyB4KttvyMfPytLK", "IemrjtbdoaI1kypKaNW4j3lqR9iFNGi3", "zeNTu4R0nEhCkOkh", "jbfJ1c3LKvoINt", "hdOOjyZmlcyyz5KLyPzSXlLetjOh9QLA"};
    public byte[] A00;
    public int A01;
    public int A02;
    public int A03;

    public C1743Mj() {
    }

    public C1743Mj(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C1743Mj(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A02 = i;
    }

    private void A00() {
        boolean z;
        if (this.A03 < 0) {
            z = false;
        } else {
            if (this.A03 >= this.A02) {
                if (this.A03 == this.A02) {
                    int i = this.A01;
                    if (A04[7].charAt(22) != 'L') {
                        throw new RuntimeException();
                    }
                    A04[7] = "pJ56PwA6laSZx6xCuhYEOMLokYheYDwQ";
                    if (i == 0) {
                    }
                }
                z = false;
            }
            z = true;
        }
        AbstractC1722Ln.A08(z);
    }

    public final int A01() {
        return ((this.A02 - this.A03) * 8) - this.A01;
    }

    public final int A02() {
        AbstractC1722Ln.A08(this.A01 == 0);
        return this.A03;
    }

    public final int A03() {
        return (this.A03 * 8) + this.A01;
    }

    public final int A04(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = 0;
        this.A01 += i;
        while (this.A01 > 8) {
            this.A01 -= 8;
            byte[] bArr = this.A00;
            int i3 = this.A03;
            this.A03 = i3 + 1;
            int i4 = bArr[i3] & 255;
            String[] strArr = A04;
            if (strArr[4].charAt(27) != strArr[2].charAt(27)) {
                throw new RuntimeException();
            }
            A04[3] = "Kphbx3dUgKBlMUErkgsMwgfxOw85NZFA";
            i2 |= i4 << this.A01;
        }
        int i5 = (i2 | ((this.A00[this.A03] & 255) >> (8 - this.A01))) & ((-1) >>> (32 - i));
        if (this.A01 == 8) {
            this.A01 = 0;
            this.A03++;
        }
        A00();
        return i5;
    }

    public final long A05(int i) {
        return i <= 32 ? N1.A0M(A04(i)) : N1.A0N(A04(i - 32), A04(32));
    }

    public final void A06() {
        if (this.A01 == 0) {
            return;
        }
        this.A01 = 0;
        this.A03++;
        A00();
    }

    public final void A07() {
        int i = this.A01 + 1;
        this.A01 = i;
        if (i == 8) {
            this.A01 = 0;
            this.A03++;
        }
        A00();
    }

    public final void A08(int i) {
        this.A03 = i / 8;
        this.A01 = i - (this.A03 * 8);
        A00();
    }

    public final void A09(int i) {
        int i2 = i / 8;
        this.A03 += i2;
        this.A01 += i - (i2 * 8);
        if (this.A01 > 7) {
            this.A03++;
            this.A01 -= 8;
        }
        A00();
    }

    public final void A0A(int i) {
        AbstractC1722Ln.A08(this.A01 == 0);
        this.A03 += i;
        A00();
    }

    public final void A0B(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int iMin = Math.min(8 - this.A01, i2);
        int i3 = (8 - this.A01) - iMin;
        this.A00[this.A03] = (byte) (this.A00[this.A03] & ((MotionEventCompat.ACTION_POINTER_INDEX_MASK >> this.A01) | ((1 << i3) - 1)));
        this.A00[this.A03] = (byte) (this.A00[this.A03] | ((i >>> (i2 - iMin)) << i3));
        int i4 = i2 - iMin;
        int i5 = this.A03 + 1;
        while (i4 > 8) {
            this.A00[i5] = (byte) (i >>> (i4 - 8));
            i4 -= 8;
            i5++;
        }
        int i6 = 8 - i4;
        this.A00[i5] = (byte) (this.A00[i5] & ((1 << i6) - 1));
        this.A00[i5] = (byte) (this.A00[i5] | ((i & ((1 << i4) - 1)) << i6));
        A09(i2);
        A00();
    }

    public final void A0C(C1744Mk c1744Mk) {
        A0E(c1744Mk.A0l(), c1744Mk.A0A());
        A08(c1744Mk.A09() * 8);
    }

    public final void A0D(byte[] bArr) {
        A0E(bArr, bArr.length);
    }

    public final void A0E(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A03 = 0;
        this.A01 = 0;
        this.A02 = i;
    }

    public final void A0F(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.A00;
            int i4 = this.A03;
            this.A03 = i4 + 1;
            bArr[i] = (byte) (bArr2[i4] << this.A01);
            bArr[i] = (byte) (((255 & this.A00[this.A03]) >> (8 - this.A01)) | bArr[i]);
            i++;
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i5));
        if (this.A01 + i5 > 8) {
            byte b = bArr[i3];
            byte[] bArr3 = this.A00;
            int i6 = this.A03;
            this.A03 = i6 + 1;
            bArr[i3] = (byte) (b | ((bArr3[i6] & 255) << this.A01));
            this.A01 -= 8;
        }
        this.A01 += i5;
        bArr[i3] = (byte) (bArr[i3] | ((byte) (((255 & this.A00[this.A03]) >> (8 - this.A01)) << (8 - i5))));
        if (this.A01 == 8) {
            this.A01 = 0;
            this.A03++;
        }
        A00();
    }

    public final void A0G(byte[] bArr, int i, int i2) {
        AbstractC1722Ln.A08(this.A01 == 0);
        System.arraycopy(this.A00, this.A03, bArr, i, i2);
        int i3 = this.A03 + i2;
        if (A04[3].charAt(16) != 'k') {
            throw new RuntimeException();
        }
        A04[7] = "YNzhZr5BwzwXOMmsuEZqMlLYdAQhAUBX";
        this.A03 = i3;
        A00();
    }

    public final boolean A0H() {
        boolean z = (this.A00[this.A03] & (128 >> this.A01)) != 0;
        A07();
        return z;
    }
}
