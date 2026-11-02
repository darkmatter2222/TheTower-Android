package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z9 {
    public static String[] A07 = {"H36HcLaxF38XTsQOIZbXCMke929zqq", "NifLK6W5JAns6", "3HculwX5Pe3we4NQdSwPwSD5xWKuED", "ci8GVrFppkZzKJWrV3ieWOUC0NHCe", "Q4vB", "072U0bOB2ztteVk0idOAcweZv7G", "m40vzsscLn7M739", "yMBCfHltFaaiNDRy1RhjUba"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public String A06;

    public final boolean A00(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (!ZA.A06(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return false;
        }
        int i6 = i >>> 12;
        String[] strArr = A07;
        if (strArr[3].length() != strArr[6].length()) {
            A07[7] = "t9UspXq4NPvdnWYpGp7ClOoZH44Hb";
            int i7 = i6 & 15;
            if (i7 == 0 || i7 == 15 || (i4 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.A05 = i2;
            this.A06 = ZA.A0E()[3 - i3];
            int i8 = ZA.A07[i4];
            if (A07[5].length() != 31) {
                A07[5] = "hpswFXU9T0LHMCU";
                this.A03 = i8;
                if (i2 == 2) {
                    this.A03 /= 2;
                } else if (i2 == 0) {
                    int i9 = this.A03;
                    if (A07[5].length() != 31) {
                        A07[1] = "2DPwYcGCozIJ3e";
                        this.A03 = i9 / 4;
                    } else {
                        A07[7] = "wOloMDesjBEul8Xbl5XToEJNuV0";
                        this.A03 = i9 / 4;
                    }
                }
                int i10 = (i >>> 9) & 1;
                this.A04 = ZA.A02(i2, i3);
                if (i3 == 3) {
                    this.A00 = i2 == 3 ? ZA.A02[i7 - 1] : ZA.A06[i7 - 1];
                    this.A02 = (((this.A00 * 12) / this.A03) + i10) * 4;
                } else {
                    if (i2 == 3) {
                        if (i3 == 2) {
                            int[] iArr = ZA.A03;
                            int i11 = i7 - 1;
                            String[] strArr2 = A07;
                            if (strArr2[3].length() == strArr2[6].length()) {
                                throw new RuntimeException();
                            }
                            String[] strArr3 = A07;
                            strArr3[3] = "fMJa0M3gqz7Uu2uN0pBMSgobsWAon";
                            strArr3[6] = "D6wMUiwF6Fmm0Mg";
                            i5 = iArr[i11];
                        } else {
                            i5 = ZA.A04[i7 - 1];
                        }
                        this.A00 = i5;
                        int i12 = this.A00;
                        if (A07[1].length() != 23) {
                            A07[1] = "KBaewzUuvOSlh04MRpNeSQB8JMVH";
                            this.A02 = ((i12 * 144) / this.A03) + i10;
                        } else {
                            this.A02 = ((i12 * 144) / this.A03) + i10;
                        }
                    } else {
                        this.A00 = ZA.A05[i7 - 1];
                        int i13 = (i3 == 1 ? 72 : 144) * this.A00;
                        String[] strArr4 = A07;
                        if (strArr4[3].length() != strArr4[6].length()) {
                            A07[7] = "4Rryzjp9bZzoX9e6s47E0ik3l6Dl";
                            this.A02 = (i13 / this.A03) + i10;
                        } else {
                            this.A02 = (i13 / this.A03) + i10;
                        }
                    }
                }
                this.A01 = ((i >> 6) & 3) == 3 ? 1 : 2;
                return true;
            }
        }
        throw new RuntimeException();
    }
}
