package com.facebook.ads.redexgen.X;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RM {
    public static String[] A0M = {"AsOQHQyPwaOkGB0tHV3DxhddAi8JF3fa", "wn1RdRCWX0uZAFqoX4WMx1dmxjtrW8UK", "UhlBbcyqt8s2tw9sZFeDx3", "CtSzZ5BSuSB4t8c0maUBfXqe0fi1fVnW", "QiMQju9A8GOt9Rvph2vF5Qjs7K4rDFDM", "q8Ff7XK0VCuOlmafXMBGs1qyJ0FPUycz", "w1T3jQ1hC68tYJwirQ3qGfFMsKaa8LMd", "3dmI4Q1C3axFDdKpJJPSnIqtcddzXWU2"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public short[] A0A;
    public short[] A0B;
    public short[] A0C;
    public final float A0D;
    public final float A0E;
    public final float A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final short[] A0L;

    public RM(int i, int i2, float f, float f2, int i3) {
        this.A0H = i;
        this.A0G = i2;
        this.A0F = f;
        this.A0D = f2;
        this.A0E = i / i3;
        this.A0K = i / 400;
        this.A0I = i / 65;
        this.A0J = this.A0I * 2;
        this.A0L = new short[this.A0J];
        this.A0A = new short[this.A0J * i2];
        this.A0B = new short[this.A0J * i2];
        this.A0C = new short[this.A0J * i2];
    }

    private int A00(int i) {
        int iMin = Math.min(this.A0J, this.A09);
        A0D(this.A0A, i, iMin);
        this.A09 -= iMin;
        return iMin;
    }

    private int A01(short[] sArr, int i) {
        int iA04;
        int i2 = this.A0H > 4000 ? this.A0H / 4000 : 1;
        if (this.A0G == 1 && i2 == 1) {
            iA04 = A04(sArr, i, this.A0K, this.A0I);
        } else {
            A0E(sArr, i, i2);
            short[] sArr2 = this.A0L;
            int i3 = this.A0K / i2;
            int i4 = this.A0I / i2;
            if (A0M[2].length() != 22) {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[5] = "INXLClnPP4M6OK2Itq8yZMkYfP8R6IzN";
            strArr[6] = "o5zDPpHh7SEUdXaB8CYCtTJxAd9UWR3b";
            iA04 = A04(sArr2, 0, i3, i4);
            if (i2 != 1) {
                int i5 = iA04 * i2;
                int i6 = i5 - (i2 * 4);
                int i7 = (i2 * 4) + i5;
                if (i6 < this.A0K) {
                    i6 = this.A0K;
                }
                if (i7 > this.A0I) {
                    i7 = this.A0I;
                }
                if (this.A0G == 1) {
                    iA04 = A04(sArr, i, i6, i7);
                } else {
                    A0E(sArr, i, 1);
                    short[] sArr3 = this.A0L;
                    String[] strArr2 = A0M;
                    if (strArr2[5].charAt(13) != strArr2[6].charAt(13)) {
                        String[] strArr3 = A0M;
                        strArr3[1] = "2PPfl4gsW6s2boZuku44zkWlkI9rtCDb";
                        strArr3[4] = "S3up9flYQJeBpTuEywLxcThkdn4ruowA";
                        iA04 = A04(sArr3, 0, i6, i7);
                    } else {
                        iA04 = A04(sArr3, 0, i6, i7);
                    }
                }
            }
        }
        int i8 = this.A02;
        String[] strArr4 = A0M;
        if (strArr4[5].charAt(13) == strArr4[6].charAt(13)) {
            throw new RuntimeException();
        }
        String[] strArr5 = A0M;
        strArr5[1] = "pRdF0XFoVgt2LLbrGWyHpjCDNAIrrS7K";
        strArr5[4] = "bSZbGRGyCJLrEEPsQKDVeFxYy82r1Kvw";
        int i9 = A0F(i8, this.A01) ? this.A08 : iA04;
        this.A07 = this.A02;
        this.A08 = iA04;
        return i9;
    }

    private int A02(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            i3 = i2;
            this.A09 = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
        }
        this.A0B = A0G(this.A0B, this.A05, i2 + i3);
        System.arraycopy(sArr, this.A0G * i, this.A0B, this.A05 * this.A0G, this.A0G * i2);
        A0C(i3, this.A0G, this.A0B, this.A05 + i2, sArr, i + i2, sArr, i);
        this.A05 += i2 + i3;
        return i3;
    }

    private int A03(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.A09 = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        this.A0B = A0G(this.A0B, this.A05, i3);
        A0C(i3, this.A0G, this.A0B, this.A05, sArr, i, sArr, i + i2);
        this.A05 += i3;
        return i3;
    }

    private int A04(short[] sArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 255;
        int i6 = 1;
        int i7 = 0;
        int i8 = i * this.A0G;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += Math.abs(sArr[i8 + i9] - sArr[(i8 + i2) + i9]);
            }
            int i10 = iAbs * i4;
            String[] strArr = A0M;
            if (strArr[1].charAt(27) != strArr[4].charAt(27)) {
                throw new RuntimeException();
            }
            A0M[3] = "4JfhlNduFCIpqdCXeyGleX4OcuqVOx5J";
            if (i10 < i6 * i2) {
                i6 = iAbs;
                i4 = i2;
            }
            if (iAbs * i5 > i7 * i2) {
                i7 = iAbs;
                i5 = i2;
            }
            i2++;
        }
        this.A02 = i6 / i4;
        this.A01 = i7 / i5;
        return i4;
    }

    private short A05(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[this.A0G + i];
        int i4 = this.A03 * i2;
        int i5 = this.A04 * i3;
        int i6 = (this.A04 + 1) * i3;
        int i7 = i6 - i4;
        int i8 = i6 - i5;
        return (short) (((i7 * s) + ((i8 - i7) * s2)) / i8);
    }

    private void A06() {
        int i = this.A05;
        float f = this.A0F / this.A0D;
        float f2 = this.A0E * this.A0D;
        if (f > 1.00001d || f < 0.99999d) {
            A07(f);
        } else {
            A0D(this.A0A, 0, this.A00);
            this.A00 = 0;
        }
        if (f2 != 1.0f) {
            A08(f2, i);
        }
    }

    private void A07(float f) {
        if (this.A00 < this.A0J) {
            return;
        }
        int i = this.A00;
        int iA03 = 0;
        do {
            if (this.A09 > 0) {
                iA03 += A00(iA03);
            } else {
                int iA01 = A01(this.A0A, iA03);
                iA03 = ((double) f) > 1.0d ? iA03 + A03(this.A0A, iA03, f, iA01) + iA01 : iA03 + A02(this.A0A, iA03, f, iA01);
            }
        } while (this.A0J + iA03 <= i);
        A0B(iA03);
    }

    private void A08(float f, int i) {
        if (this.A05 == i) {
            return;
        }
        float f2 = this.A0H / f;
        if (A0M[2].length() != 22) {
            throw new RuntimeException();
        }
        A0M[2] = "UqqkNkLs9COBsOho0ObELq";
        int i2 = (int) f2;
        int i3 = this.A0H;
        while (true) {
            if (i2 <= 16384 && i3 <= 16384) {
                break;
            }
            i2 /= 2;
            i3 /= 2;
        }
        A09(i);
        int i4 = 0;
        while (true) {
            if (i4 >= this.A06 - 1) {
                A0A(this.A06 - 1);
                return;
            }
            while ((this.A04 + 1) * i2 > this.A03 * i3) {
                this.A0B = A0G(this.A0B, this.A05, 1);
                for (int i5 = 0; i5 < this.A0G; i5++) {
                    this.A0B[(this.A05 * this.A0G) + i5] = A05(this.A0C, (this.A0G * i4) + i5, i3, i2);
                }
                this.A03++;
                this.A05++;
            }
            this.A04++;
            if (this.A04 == i3) {
                this.A04 = 0;
                AbstractC1722Ln.A08(this.A03 == i2);
                String[] strArr = A0M;
                if (strArr[1].charAt(27) != strArr[4].charAt(27)) {
                    A0M[3] = "gB7A014mzjBv1poy77XOkeUK2nyMBQu5";
                    this.A03 = 0;
                } else {
                    String[] strArr2 = A0M;
                    strArr2[5] = "JeVgu8rjAd0OF8OVXMf3KJykNXdfJjPG";
                    strArr2[6] = "thT5nYm22sNq73C1o8CLYl4UHSvFZBs6";
                    this.A03 = 0;
                }
            }
            i4++;
        }
    }

    private void A09(int i) {
        int i2 = this.A05 - i;
        this.A0C = A0G(this.A0C, this.A06, i2);
        System.arraycopy(this.A0B, this.A0G * i, this.A0C, this.A06 * this.A0G, this.A0G * i2);
        this.A05 = i;
        this.A06 += i2;
    }

    private void A0A(int i) {
        if (i == 0) {
            return;
        }
        System.arraycopy(this.A0C, this.A0G * i, this.A0C, 0, (this.A06 - i) * this.A0G);
        this.A06 -= i;
    }

    private void A0B(int i) {
        int i2 = this.A00 - i;
        System.arraycopy(this.A0A, this.A0G * i, this.A0A, 0, this.A0G * i2);
        this.A00 = i2;
    }

    public static void A0C(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                short s = sArr2[i9];
                int i11 = i - i10;
                String[] strArr = A0M;
                if (strArr[5].charAt(13) == strArr[6].charAt(13)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0M;
                strArr2[1] = "mlyh9fclpAA3xQGQNQNugm7A1eorXIoU";
                strArr2[4] = "UIasnW6PCxNtbKnkiDP3Xk5iIAJr60Sz";
                sArr[i7] = (short) (((s * i11) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private void A0D(short[] sArr, int i, int i2) {
        this.A0B = A0G(this.A0B, this.A05, i2);
        System.arraycopy(sArr, this.A0G * i, this.A0B, this.A05 * this.A0G, this.A0G * i2);
        this.A05 += i2;
    }

    private void A0E(short[] sArr, int i, int i2) {
        int i3 = this.A0J / i2;
        int i4 = this.A0G * i2;
        int i5 = i * this.A0G;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                i7 += sArr[(i6 * i4) + i5 + i8];
            }
            this.A0L[i6] = (short) (i7 / i4);
        }
    }

    private boolean A0F(int i, int i2) {
        if (i == 0 || this.A08 == 0) {
            return false;
        }
        int i3 = i * 3;
        if (A0M[2].length() != 22) {
            throw new RuntimeException();
        }
        String[] strArr = A0M;
        strArr[1] = "3IzBgwzZAspesLCV3jjb7Dosm9irr8sO";
        strArr[4] = "b2WAxAr1tqExmwQ89kWoo3VIQSYrQQMT";
        return i2 <= i3 && i * 2 > this.A07 * 3;
    }

    private short[] A0G(short[] sArr, int i, int i2) {
        int length = sArr.length / this.A0G;
        if (i + i2 <= length) {
            return sArr;
        }
        int i3 = length * 3;
        String[] strArr = A0M;
        if (strArr[1].charAt(27) != strArr[4].charAt(27)) {
            throw new RuntimeException();
        }
        A0M[2] = "8QrvwtFNh8hPD4XoRidnoD";
        return Arrays.copyOf(sArr, this.A0G * ((i3 / 2) + i2));
    }

    public final int A0H() {
        return this.A05 * this.A0G * 2;
    }

    public final int A0I() {
        return this.A00 * this.A0G * 2;
    }

    public final void A0J() {
        this.A00 = 0;
        this.A05 = 0;
        this.A06 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A09 = 0;
        this.A08 = 0;
        this.A07 = 0;
        this.A02 = 0;
        this.A01 = 0;
    }

    public final void A0K() {
        int i = this.A00;
        int i2 = this.A05 + ((int) ((((i / (this.A0F / this.A0D)) + this.A06) / (this.A0E * this.A0D)) + 0.5f));
        this.A0A = A0G(this.A0A, this.A00, (this.A0J * 2) + i);
        for (int i3 = 0; i3 < this.A0J * 2 * this.A0G; i3++) {
            this.A0A[(this.A0G * i) + i3] = 0;
        }
        this.A00 += this.A0J * 2;
        A06();
        if (this.A05 > i2) {
            this.A05 = i2;
        }
        this.A00 = 0;
        this.A09 = 0;
        this.A06 = 0;
    }

    public final void A0L(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.A0G, this.A05);
        shortBuffer.put(this.A0B, 0, this.A0G * iMin);
        this.A05 -= iMin;
        System.arraycopy(this.A0B, this.A0G * iMin, this.A0B, 0, this.A05 * this.A0G);
    }

    public final void A0M(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining() / this.A0G;
        int i = this.A0G * iRemaining * 2;
        this.A0A = A0G(this.A0A, this.A00, iRemaining);
        shortBuffer.get(this.A0A, this.A00 * this.A0G, i / 2);
        this.A00 += iRemaining;
        A06();
    }
}
