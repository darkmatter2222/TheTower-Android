package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ZG {
    public static String[] A04 = {"6cfK2SEhcNY0t6O61IIkSh1cdjy9AVTs", "S6FRotj9S3LxkYZUIYwX0cdvC", "aXgbMraHzHmVfTDwRL7UINjwNdtKq6Qj", "iwRpyNVSDVb4jhaYl22seJzB5", "e1e9fmI8GHnDflnZGyuKFj4jIKXXBLJn", "dhtXRyTgGs6WTpWM7DETJJzdxUR7SZQj", "eCD6AOTXSD0hJrKWNappBoXtCFtNYv7T", "WMy6pEJ0P9VZ7a"};
    public int A00;
    public int A01;
    public int A02;
    public byte[] A03;

    public ZG(byte[] bArr, int i, int i2) {
        A08(bArr, i, i2);
    }

    private int A00() {
        int i = 0;
        while (true) {
            boolean zA0A = A0A();
            if (A04[4].charAt(18) == 't') {
                throw new RuntimeException();
            }
            A04[7] = "eugSG2kUTvqB10uBRDPWNd";
            if (zA0A) {
                return ((1 << i) - 1) + (i > 0 ? A05(i) : 0);
            }
            i++;
        }
    }

    private void A01() {
        AbstractC1722Ln.A08(this.A02 >= 0 && (this.A02 < this.A01 || (this.A02 == this.A01 && this.A00 == 0)));
    }

    private boolean A02(int i) {
        return 2 <= i && i < this.A01 && this.A03[i] == 3 && this.A03[i + (-2)] == 0 && this.A03[i + (-1)] == 0;
    }

    public final int A03() {
        int iA00 = A00();
        return (iA00 % 2 == 0 ? -1 : 1) * ((iA00 + 1) / 2);
    }

    public final int A04() {
        return A00();
    }

    public final int A05(int i) {
        int i2 = 0;
        this.A00 += i;
        while (true) {
            int i3 = 2;
            if (this.A00 <= 8) {
                break;
            }
            this.A00 -= 8;
            i2 |= (this.A03[this.A02] & 255) << this.A00;
            int i4 = this.A02;
            if (!A02(this.A02 + 1)) {
                i3 = 1;
            }
            this.A02 = i4 + i3;
        }
        int i5 = (i2 | ((this.A03[this.A02] & 255) >> (8 - this.A00))) & ((-1) >>> (32 - i));
        if (this.A00 == 8) {
            this.A00 = 0;
            this.A02 += A02(this.A02 + 1) ? 2 : 1;
        }
        A01();
        return i5;
    }

    public final void A06() {
        int i = this.A00 + 1;
        this.A00 = i;
        if (i == 8) {
            this.A00 = 0;
            this.A02 += A02(this.A02 + 1) ? 2 : 1;
        }
        A01();
    }

    public final void A07(int i) {
        int i2 = this.A02;
        int i3 = i / 8;
        this.A02 += i3;
        this.A00 += i - (i3 * 8);
        if (this.A00 > 7) {
            this.A02++;
            this.A00 -= 8;
        }
        int i4 = i2 + 1;
        while (i4 <= this.A02) {
            if (A02(i4)) {
                this.A02++;
                i4 += 2;
            }
            i4++;
        }
        A01();
    }

    public final void A08(byte[] bArr, int i, int i2) {
        this.A03 = bArr;
        this.A02 = i;
        this.A01 = i2;
        this.A00 = 0;
        A01();
    }

    public final boolean A09() {
        int i = this.A02;
        int i2 = this.A00;
        int i3 = 0;
        while (this.A02 < this.A01 && !A0A()) {
            i3++;
        }
        boolean z = this.A02 == this.A01;
        this.A02 = i;
        this.A00 = i2;
        if (A04[7].length() == 20) {
            throw new RuntimeException();
        }
        A04[4] = "qlgz1R2XdR7h8Rrer08PAKYmOrQRjfIL";
        return !z && A0B((i3 * 2) + 1);
    }

    public final boolean A0A() {
        boolean z = (this.A03[this.A02] & (128 >> this.A00)) != 0;
        A06();
        return z;
    }

    public final boolean A0B(int i) {
        int i2 = this.A02;
        int i3 = i / 8;
        int i4 = this.A02 + i3;
        int i5 = (this.A00 + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        int i6 = i2 + 1;
        while (i6 <= i4 && i4 < this.A01) {
            if (A02(i6)) {
                i4++;
                if (A04[5].charAt(21) == 'u') {
                    throw new RuntimeException();
                }
                String[] strArr = A04;
                strArr[2] = "qNIfVaT7niohBV4nPcXHWNnwvet2BOdk";
                strArr[6] = "8WraZM4RorbcJSgLTXU1u2Z8JWtChySX";
                i6 += 2;
            }
            i6++;
        }
        if (i4 >= this.A01) {
            return i4 == this.A01 && i5 == 0;
        }
        return true;
    }
}
