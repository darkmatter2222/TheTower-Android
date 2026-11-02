package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2172bb {
    public static byte[] A0M;
    public static String[] A0N = {"ArNd5eFfRZBBWsuTOVj5CRKaXWYTk2BH", "BEFwit5856KS1", "sWOqBaFhx5HMLQa9Bqo230gF4aYqQzJy", "DJhnQv4i2rnTuSYSjfTShuEcyWa8rb5o", "CTsavOjyUFmVQYpprKq7uh86hk2X", "xVIRrqY9FWl1ASu3qmZC25YViKmcP7Gl", "fEGsdBhBDzJu", "TK872Kar81pWrXrBTqpL0M91e8VlYjUb"};
    public static final int A0O;
    public static final int A0P;
    public static final int A0Q;
    public static final int[] A0R;
    public static final int[] A0S;
    public static final int[] A0T;
    public static final int[] A0U;
    public static final int[] A0V;
    public static final int[] A0W;
    public static final int[] A0X;
    public static final boolean[] A0Y;
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
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public final List<SpannableString> A0L = new ArrayList();
    public final SpannableStringBuilder A0K = new SpannableStringBuilder();

    static {
        A04();
        A0P = A01(2, 2, 2, 0);
        A0O = A01(0, 0, 0, 0);
        A0Q = A01(0, 0, 0, 3);
        A0V = new int[]{0, 0, 0, 0, 0, 2, 0};
        A0W = new int[]{0, 0, 0, 0, 0, 0, 2};
        A0X = new int[]{3, 3, 3, 3, 3, 3, 1};
        A0Y = new boolean[]{false, false, false, true, true, true, false};
        A0U = new int[]{A0O, A0Q, A0O, A0O, A0Q, A0O, A0O};
        A0T = new int[]{0, 1, 2, 3, 4, 3, 4};
        A0S = new int[]{0, 0, 0, 0, 0, 3, 3};
        A0R = new int[]{A0O, A0O, A0O, A0O, A0O, A0Q, A0Q};
    }

    public C2172bb() {
        A08();
    }

    public static int A00(int i, int i2, int i3) {
        return A01(i, i2, i3, 0);
    }

    public static int A01(int i, int i2, int i3, int i4) {
        int i5;
        AbstractC1722Ln.A00(i, 0, 4);
        AbstractC1722Ln.A00(i2, 0, 4);
        AbstractC1722Ln.A00(i3, 0, 4);
        AbstractC1722Ln.A00(i4, 0, 4);
        switch (i4) {
            case 0:
            case 1:
                i5 = 255;
                break;
            case 2:
                i5 = 127;
                break;
            case 3:
                i5 = 0;
                break;
            default:
                i5 = 255;
                break;
        }
        return Color.argb(i5, i > 1 ? 255 : 0, i2 > 1 ? 255 : 0, i3 > 1 ? 255 : 0);
    }

    private final SpannableString A02() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.A0K);
        int length = spannableStringBuilder.length();
        if (length > 0) {
            if (this.A06 != -1) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.A06, length, 33);
            }
            if (this.A0C != -1) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), this.A0C, length, 33);
            }
            if (this.A04 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.A03), this.A04, length, 33);
            }
            if (this.A02 != -1) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.A01), this.A02, length, 33);
            }
        }
        return new SpannableString(spannableStringBuilder);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0M, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 89);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0M = new byte[]{-19, 6, -3, Ascii.DLE, 8, -3, -5, Ascii.FF, -3, -4, -72, 2, Ascii.CR, Ascii.VT, Ascii.FF, 1, -2, 1, -5, -7, Ascii.FF, 1, 7, 6, -72, Ascii.SO, -7, 4, Ascii.CR, -3, -46, -72};
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0062  */
    /* JADX WARN: Code duplicated, block: B:20:0x007c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0096  */
    /* JADX WARN: Code duplicated, block: B:26:0x009d  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:48:0x0107  */
    /* JADX WARN: Code duplicated, block: B:49:0x0119  */
    public final C2171ba A05() {
        Layout.Alignment alignment;
        float f;
        float f2;
        float f3;
        int i;
        int i2;
        boolean z;
        int i3;
        String[] strArr;
        if (A0H()) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i4 = 0; i4 < this.A0L.size(); i4++) {
            spannableStringBuilder.append((CharSequence) this.A0L.get(i4));
            spannableStringBuilder.append('\n');
        }
        spannableStringBuilder.append((CharSequence) A02());
        switch (this.A07) {
            case 0:
            case 3:
                alignment = Layout.Alignment.ALIGN_NORMAL;
                if (this.A0H) {
                    f2 = this.A05 / 99.0f;
                    i3 = this.A0D;
                    strArr = A0N;
                    if (strArr[6].length() != strArr[4].length()) {
                        A0N[3] = "XSEqDsrxmPYtiSwohhXeIwmwCtZ6B8mV";
                        f3 = i3 / 99.0f;
                    }
                    throw new RuntimeException();
                }
                f = this.A05;
                if (A0N[7].charAt(13) != 't') {
                    A0N[5] = "k21zHcXflW0U4JhufvFegY4pSXmn4QVf";
                    f2 = f / 209.0f;
                    f3 = this.A0D / 74.0f;
                } else {
                    String[] strArr2 = A0N;
                    strArr2[6] = "oGU0LgIASHma";
                    strArr2[4] = "dS3mtnN1rWlWqNJqRoD6xdpzPUbm";
                    f2 = f / 30.967285f;
                    f3 = this.A0D / 2.1131198E-35f;
                }
                float f4 = (f2 * 0.9f) + 0.05f;
                float f5 = (0.9f * f3) + 0.05f;
                if (this.A00 / 3 == 0) {
                    i = 0;
                } else if (this.A00 / 3 == 1) {
                    i = 1;
                } else {
                    i = 2;
                }
                if (this.A00 % 3 == 0) {
                    i2 = 0;
                } else if (this.A00 % 3 == 1) {
                    i2 = 1;
                } else {
                    i2 = 2;
                }
                if (this.A0E != A0O) {
                    z = true;
                } else {
                    z = false;
                }
                return new C2171ba(spannableStringBuilder, alignment, f5, 0, i, f4, i2, -3.4028235E38f, z, this.A0E, this.A09);
            case 1:
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                String[] strArr3 = A0N;
                if (strArr3[2].charAt(26) == strArr3[0].charAt(26)) {
                    String[] strArr4 = A0N;
                    strArr4[2] = "gY2wVxa0145iB596FPo2BDWqtYYDpcKE";
                    strArr4[0] = "igJbCG59JYSEJf0P44QU5S9yXPY6ig2p";
                    if (this.A0H) {
                        f2 = this.A05 / 99.0f;
                        i3 = this.A0D;
                        strArr = A0N;
                        if (strArr[6].length() != strArr[4].length()) {
                            A0N[3] = "XSEqDsrxmPYtiSwohhXeIwmwCtZ6B8mV";
                            f3 = i3 / 99.0f;
                        }
                    } else {
                        f = this.A05;
                        if (A0N[7].charAt(13) != 't') {
                            A0N[5] = "k21zHcXflW0U4JhufvFegY4pSXmn4QVf";
                            f2 = f / 209.0f;
                            f3 = this.A0D / 74.0f;
                        } else {
                            String[] strArr5 = A0N;
                            strArr5[6] = "oGU0LgIASHma";
                            strArr5[4] = "dS3mtnN1rWlWqNJqRoD6xdpzPUbm";
                            f2 = f / 30.967285f;
                            f3 = this.A0D / 2.1131198E-35f;
                        }
                    }
                    float f6 = (f2 * 0.9f) + 0.05f;
                    float f7 = (0.9f * f3) + 0.05f;
                    if (this.A00 / 3 == 0) {
                        i = 0;
                    } else if (this.A00 / 3 == 1) {
                        i = 1;
                    } else {
                        i = 2;
                    }
                    if (this.A00 % 3 == 0) {
                        i2 = 0;
                    } else if (this.A00 % 3 == 1) {
                        i2 = 1;
                    } else {
                        i2 = 2;
                    }
                    if (this.A0E != A0O) {
                        z = true;
                    } else {
                        z = false;
                    }
                    return new C2171ba(spannableStringBuilder, alignment, f7, 0, i, f6, i2, -3.4028235E38f, z, this.A0E, this.A09);
                }
                throw new RuntimeException();
            case 2:
                alignment = Layout.Alignment.ALIGN_CENTER;
                if (this.A0H) {
                    f2 = this.A05 / 99.0f;
                    i3 = this.A0D;
                    strArr = A0N;
                    if (strArr[6].length() != strArr[4].length()) {
                        A0N[3] = "XSEqDsrxmPYtiSwohhXeIwmwCtZ6B8mV";
                        f3 = i3 / 99.0f;
                    }
                    throw new RuntimeException();
                }
                f = this.A05;
                if (A0N[7].charAt(13) != 't') {
                    A0N[5] = "k21zHcXflW0U4JhufvFegY4pSXmn4QVf";
                    f2 = f / 209.0f;
                    f3 = this.A0D / 74.0f;
                } else {
                    String[] strArr6 = A0N;
                    strArr6[6] = "oGU0LgIASHma";
                    strArr6[4] = "dS3mtnN1rWlWqNJqRoD6xdpzPUbm";
                    f2 = f / 30.967285f;
                    f3 = this.A0D / 2.1131198E-35f;
                }
                float f8 = (f2 * 0.9f) + 0.05f;
                float f9 = (0.9f * f3) + 0.05f;
                if (this.A00 / 3 == 0) {
                    i = 0;
                } else if (this.A00 / 3 == 1) {
                    i = 1;
                } else {
                    i = 2;
                }
                if (this.A00 % 3 == 0) {
                    i2 = 0;
                } else if (this.A00 % 3 == 1) {
                    i2 = 1;
                } else {
                    i2 = 2;
                }
                if (this.A0E != A0O) {
                    z = true;
                } else {
                    z = false;
                }
                return new C2171ba(spannableStringBuilder, alignment, f9, 0, i, f8, i2, -3.4028235E38f, z, this.A0E, this.A09);
            default:
                throw new IllegalArgumentException(A03(0, 32, 63) + this.A07);
        }
    }

    public final void A06() {
        int length = this.A0K.length();
        if (length > 0) {
            this.A0K.delete(length - 1, length);
        }
    }

    public final void A07() {
        this.A0L.clear();
        this.A0K.clear();
        this.A06 = -1;
        this.A0C = -1;
        this.A04 = -1;
        this.A02 = -1;
        this.A0A = 0;
    }

    public final void A08() {
        A07();
        this.A0G = false;
        this.A0J = false;
        this.A09 = 4;
        this.A0H = false;
        this.A0D = 0;
        this.A05 = 0;
        this.A00 = 0;
        this.A0B = 15;
        this.A0I = true;
        this.A07 = 0;
        this.A0F = 0;
        this.A08 = 0;
        this.A0E = A0O;
        this.A03 = A0P;
        this.A01 = A0O;
    }

    public final void A09(char c) {
        if (c != '\n') {
            this.A0K.append(c);
            return;
        }
        this.A0L.add(A02());
        this.A0K.clear();
        if (this.A06 != -1) {
            this.A06 = 0;
        }
        int i = this.A0C;
        if (A0N[5].charAt(21) == 'A') {
            throw new RuntimeException();
        }
        String[] strArr = A0N;
        strArr[2] = "yiMP5uMgRhWf0DhXWWpw71X57ZY0bktO";
        strArr[0] = "Vb811ABrn5MKph1zfNz3zyooE6YLHKmU";
        if (i != -1) {
            this.A0C = 0;
        }
        if (this.A04 != -1) {
            this.A04 = 0;
        }
        if (this.A02 != -1) {
            this.A02 = 0;
        }
        while (true) {
            if ((!this.A0I || this.A0L.size() < this.A0B) && this.A0L.size() < 15) {
                return;
            } else {
                this.A0L.remove(0);
            }
        }
    }

    public final void A0A(int i, int i2) {
        if (this.A0A != i) {
            A09('\n');
        }
        this.A0A = i;
    }

    public final void A0B(int i, int i2, int i3) {
        if (this.A04 != -1 && this.A03 != i) {
            this.A0K.setSpan(new ForegroundColorSpan(this.A03), this.A04, this.A0K.length(), 33);
        }
        if (i != A0P) {
            int length = this.A0K.length();
            String[] strArr = A0N;
            if (strArr[6].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A0N[3] = "0Vb0MNxPa5nWYYVLmQvHqg2UywhwN7LO";
            this.A04 = length;
            this.A03 = i;
        }
        if (this.A02 != -1 && this.A01 != i2) {
            this.A0K.setSpan(new BackgroundColorSpan(this.A01), this.A02, this.A0K.length(), 33);
        }
        if (i2 != A0O) {
            this.A02 = this.A0K.length();
            this.A01 = i2;
        }
    }

    public final void A0C(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
        if (this.A06 != -1) {
            if (!z) {
                this.A0K.setSpan(new StyleSpan(2), this.A06, this.A0K.length(), 33);
                this.A06 = -1;
            }
        } else if (z) {
            this.A06 = this.A0K.length();
        }
        if (this.A0C == -1) {
            if (z2) {
                this.A0C = this.A0K.length();
            }
        } else {
            if (z2) {
                return;
            }
            this.A0K.setSpan(new UnderlineSpan(), this.A0C, this.A0K.length(), 33);
            this.A0C = -1;
        }
    }

    public final void A0D(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        this.A0E = i;
        this.A07 = i6;
    }

    public final void A0E(boolean z) {
        this.A0J = z;
    }

    public final void A0F(boolean z, boolean z2, boolean z3, int i, boolean z4, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.A0G = true;
        this.A0J = z;
        this.A0I = z2;
        this.A09 = i;
        this.A0H = z4;
        this.A0D = i2;
        this.A05 = i3;
        this.A00 = i6;
        if (this.A0B != i4 + 1) {
            this.A0B = i4 + 1;
            while (true) {
                if ((!z2 || this.A0L.size() < this.A0B) && this.A0L.size() < 15) {
                    break;
                } else {
                    this.A0L.remove(0);
                }
            }
        }
        if (i7 != 0 && this.A0F != i7) {
            this.A0F = i7;
            int i9 = i7 - 1;
            A0D(A0U[i9], A0Q, A0Y[i9], 0, A0W[i9], A0X[i9], A0V[i9]);
        }
        if (i8 == 0 || this.A08 == i8) {
            return;
        }
        this.A08 = i8;
        int i10 = i8 - 1;
        A0C(0, 1, 1, false, false, A0S[i10], A0T[i10]);
        A0B(A0P, A0R[i10], A0O);
    }

    public final boolean A0G() {
        return this.A0G;
    }

    public final boolean A0H() {
        return !A0G() || (this.A0L.isEmpty() && this.A0K.length() == 0);
    }

    public final boolean A0I() {
        return this.A0J;
    }
}
