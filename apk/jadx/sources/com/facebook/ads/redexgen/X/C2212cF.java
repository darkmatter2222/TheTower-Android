package com.facebook.ads.redexgen.X;

import android.text.Layout;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2212cF {
    public static byte[] A0J;
    public static String[] A0K = {"GXKgEWfHvG7", "GqbyvuJGG2MKM5jnqtiNiJAasHHmqFT9", "lPYLPsU2I0JSxgwheh3ik", "2nmNY1piJTFydJJKWeHf6tV21yZ5RpcT", "tKePLQ4mCbBKoYGrN92L9PVA35GsWYPs", "TaDh8u46Xc3SRCZW6ZVVRJltgL2Rqqh0", "GuPetQpVTDou938KQIEGIzuV91PeTIB9", "q0urYbenhW9dsivG3Xt9PT50M1"};
    public float A00;
    public int A02;
    public int A04;
    public Layout.Alignment A0C;
    public Layout.Alignment A0D;
    public C2201c4 A0E;
    public String A0F;
    public String A0G;
    public boolean A0H;
    public boolean A0I;
    public int A07 = -1;
    public int A0B = -1;
    public int A03 = -1;
    public int A06 = -1;
    public int A05 = -1;
    public int A09 = -1;
    public int A08 = -1;
    public int A0A = -1;
    public float A01 = Float.MAX_VALUE;

    static {
        A02();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0094  */
    /* JADX WARN: Code duplicated, block: B:43:0x0098  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:76:0x013f  */
    private C2212cF A00(C2212cF c2212cF, boolean z) {
        Layout.Alignment alignment;
        String[] strArr;
        if (c2212cF != null) {
            if (!this.A0I && c2212cF.A0I) {
                A0H(c2212cF.A04);
            }
            if (this.A03 == -1) {
                this.A03 = c2212cF.A03;
            }
            if (this.A06 == -1) {
                this.A06 = c2212cF.A06;
            }
            if (this.A0F == null) {
                String str = c2212cF.A0F;
                String[] strArr2 = A0K;
                if (strArr2[6].charAt(5) == strArr2[4].charAt(5)) {
                    String[] strArr3 = A0K;
                    strArr3[6] = "H02bgQyexS7m2mwUtl7srHYu2GQcRVBz";
                    strArr3[4] = "qWjUuQaC8QKPF1WbUZaum7EfarEslz5x";
                    if (str != null) {
                        this.A0F = c2212cF.A0F;
                    }
                }
                throw new RuntimeException();
            }
            if (this.A07 == -1) {
                this.A07 = c2212cF.A07;
            }
            if (this.A0B == -1) {
                this.A0B = c2212cF.A0B;
            }
            if (this.A08 == -1) {
                this.A08 = c2212cF.A08;
            }
            if (this.A0D == null && c2212cF.A0D != null) {
                this.A0D = c2212cF.A0D;
            }
            Layout.Alignment alignment2 = this.A0C;
            if (A0K[3].charAt(25) != 'X') {
                String[] strArr4 = A0K;
                strArr4[1] = "oMN0xgON7O8lqyXK4VjfvoF3UpiUPahK";
                strArr4[5] = "q3LB8OC5KgSfBZrEoWF45g5YFqlpijDP";
                if (alignment2 == null) {
                    if (c2212cF.A0C != null) {
                        alignment = c2212cF.A0C;
                        strArr = A0K;
                        if (strArr[6].charAt(5) != strArr[4].charAt(5)) {
                            String[] strArr5 = A0K;
                            strArr5[1] = "NSnvIkmHdti12yejssrz870tQtOyVJqU";
                            strArr5[5] = "fO7Ea2oIuriaEjFRqBPaK08SsWKXYggu";
                            this.A0C = alignment;
                        } else {
                            String[] strArr6 = A0K;
                            strArr6[2] = "aaIbBUtoeVGzsBM3LY2OT";
                            strArr6[0] = "OVs37zAMTGW";
                            this.A0C = alignment;
                        }
                    }
                }
            } else {
                A0K[7] = "xxseb1ffWU1aVfvH0H";
                if (alignment2 == null) {
                    if (c2212cF.A0C != null) {
                        alignment = c2212cF.A0C;
                        strArr = A0K;
                        if (strArr[6].charAt(5) != strArr[4].charAt(5)) {
                            String[] strArr7 = A0K;
                            strArr7[1] = "NSnvIkmHdti12yejssrz870tQtOyVJqU";
                            strArr7[5] = "fO7Ea2oIuriaEjFRqBPaK08SsWKXYggu";
                            this.A0C = alignment;
                        } else {
                            String[] strArr8 = A0K;
                            strArr8[2] = "aaIbBUtoeVGzsBM3LY2OT";
                            strArr8[0] = "OVs37zAMTGW";
                            this.A0C = alignment;
                        }
                    }
                }
            }
            if (this.A0A == -1) {
                this.A0A = c2212cF.A0A;
            }
            if (this.A05 == -1) {
                this.A05 = c2212cF.A05;
                this.A00 = c2212cF.A00;
            }
            if (this.A0E == null) {
                this.A0E = c2212cF.A0E;
            }
            if (this.A01 == Float.MAX_VALUE) {
                this.A01 = c2212cF.A01;
            }
            if (z && !this.A0H) {
                boolean z2 = c2212cF.A0H;
                if (A0K[3].charAt(25) != 'X') {
                    String[] strArr9 = A0K;
                    strArr9[6] = "4ufxzQXQFD0Dbjwxm6uNuqygYv71Hn9D";
                    strArr9[4] = "dwLOtQ5Gu2Va22WHl1mu8dmfNpbxO0AT";
                    if (z2) {
                        A0G(c2212cF.A02);
                    }
                }
                throw new RuntimeException();
            }
            if (z && this.A09 == -1 && c2212cF.A09 != -1) {
                int i = c2212cF.A09;
                String[] strArr10 = A0K;
                if (strArr10[6].charAt(5) != strArr10[4].charAt(5)) {
                    this.A09 = i;
                } else {
                    String[] strArr11 = A0K;
                    strArr11[2] = "oHDxiDeIhl30nkMDqvKjM";
                    strArr11[0] = "kvUtUzE0aFy";
                    this.A09 = i;
                }
            }
        }
        return this;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0J = new byte[]{-14, 17, 19, Ascii.ESC, Ascii.ETB, 34, Ascii.US, 37, Ascii.RS, Ascii.DC4, -48, 19, Ascii.US, Ascii.FS, Ascii.US, 34, -48, Ascii.CAN, 17, 35, -48, Ascii.RS, Ascii.US, 36, -48, Ascii.DC2, Ascii.NAK, Ascii.NAK, Ascii.RS, -48, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.EM, Ascii.RS, Ascii.NAK, Ascii.DC4, -34, -36, 5, 4, 10, -74, -7, 5, 2, 5, 8, -74, -2, -9, 9, -74, 4, 5, 10, -74, -8, -5, -5, 4, -74, -6, -5, -4, -1, 4, -5, -6, -60};
    }

    public final float A03() {
        return this.A00;
    }

    public final float A04() {
        return this.A01;
    }

    public final int A05() {
        if (this.A0H) {
            return this.A02;
        }
        throw new IllegalStateException(A01(0, 38, 122));
    }

    public final int A06() {
        if (this.A0I) {
            return this.A04;
        }
        throw new IllegalStateException(A01(38, 32, 96));
    }

    public final int A07() {
        return this.A05;
    }

    public final int A08() {
        return this.A08;
    }

    public final int A09() {
        return this.A09;
    }

    public final int A0A() {
        if (this.A03 == -1 && this.A06 == -1) {
            return -1;
        }
        return (this.A03 == 1 ? 1 : 0) | (this.A06 == 1 ? 2 : 0);
    }

    public final Layout.Alignment A0B() {
        return this.A0C;
    }

    public final Layout.Alignment A0C() {
        return this.A0D;
    }

    public final C2201c4 A0D() {
        return this.A0E;
    }

    public final C2212cF A0E(float f) {
        this.A00 = f;
        return this;
    }

    public final C2212cF A0F(float f) {
        this.A01 = f;
        return this;
    }

    public final C2212cF A0G(int i) {
        this.A02 = i;
        this.A0H = true;
        return this;
    }

    public final C2212cF A0H(int i) {
        this.A04 = i;
        this.A0I = true;
        return this;
    }

    public final C2212cF A0I(int i) {
        this.A05 = i;
        return this;
    }

    public final C2212cF A0J(int i) {
        this.A08 = i;
        return this;
    }

    public final C2212cF A0K(int i) {
        this.A09 = i;
        return this;
    }

    public final C2212cF A0L(Layout.Alignment alignment) {
        this.A0C = alignment;
        return this;
    }

    public final C2212cF A0M(Layout.Alignment alignment) {
        this.A0D = alignment;
        return this;
    }

    public final C2212cF A0N(C2201c4 c2201c4) {
        this.A0E = c2201c4;
        return this;
    }

    public final C2212cF A0O(C2212cF c2212cF) {
        return A00(c2212cF, true);
    }

    public final C2212cF A0P(String str) {
        this.A0F = str;
        return this;
    }

    public final C2212cF A0Q(String str) {
        this.A0G = str;
        return this;
    }

    public final C2212cF A0R(boolean z) {
        this.A03 = z ? 1 : 0;
        return this;
    }

    public final C2212cF A0S(boolean z) {
        this.A06 = z ? 1 : 0;
        return this;
    }

    public final C2212cF A0T(boolean z) {
        this.A07 = z ? 1 : 0;
        return this;
    }

    public final C2212cF A0U(boolean z) {
        this.A0A = z ? 1 : 0;
        return this;
    }

    public final C2212cF A0V(boolean z) {
        this.A0B = z ? 1 : 0;
        return this;
    }

    public final String A0W() {
        return this.A0F;
    }

    public final String A0X() {
        return this.A0G;
    }

    public final boolean A0Y() {
        return this.A0A == 1;
    }

    public final boolean A0Z() {
        return this.A0H;
    }

    public final boolean A0a() {
        return this.A0I;
    }

    public final boolean A0b() {
        return this.A07 == 1;
    }

    public final boolean A0c() {
        return this.A0B == 1;
    }
}
