package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VC implements InterfaceC1678Jt {
    public static byte[] A0Z;
    public static String[] A0a = {"qGOchCJllOLBbt", "pUd3NyO4RtPx3Y", "Uuw8py", "d0u3F879rfvUz2Wi4yi0kJTujXANnPkU", "b5mXRkiQKj0CBYWrCQmO9pUTcSlmphfm", "UnyAxyvogaCmtv8YgLsWCT4CmFNsYN0R", "Q8MHHNxqvFcKyVKHaVBTDC3TQFoLF2Y", "EINMRxZAGwlX9VfBefivR2NAqOTbxPqw"};
    public static final InterfaceC1677Js<VC> A0b;
    public static final VC A0c;
    public static final String A0d;
    public static final String A0e;
    public static final String A0f;
    public static final String A0g;
    public static final String A0h;
    public static final String A0i;
    public static final String A0j;
    public static final String A0k;
    public static final String A0l;
    public static final String A0m;
    public static final String A0n;
    public static final String A0o;
    public static final String A0p;
    public static final String A0q;
    public static final String A0r;
    public static final String A0s;
    public static final String A0t;
    public static final String A0u;
    public static final String A0v;
    public static final String A0w;
    public static final String A0x;
    public static final String A0y;
    public static final String A0z;
    public static final String A10;
    public static final String A11;
    public static final String A12;
    public static final String A13;
    public static final String A14;
    public static final String A15;
    public static final String A16;
    public static final String A17;
    public static final String A18;
    public int A00;
    public final float A01;
    public final float A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final int A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final int A0L;
    public final long A0M;
    public final ColorInfo A0N;
    public final DrmInitData A0O;
    public final Metadata A0P;
    public final Object A0Q;
    public final String A0R;
    public final String A0S;
    public final String A0T;
    public final String A0U;
    public final String A0V;
    public final String A0W;
    public final List<byte[]> A0X;
    public final byte[] A0Y;

    static {
        A05();
        A0c = new C1689Ke().A14();
        A0p = N1.A0h(0);
        A0r = N1.A0h(1);
        A0s = N1.A0h(2);
        A13 = N1.A0h(3);
        A0z = N1.A0h(4);
        A0e = N1.A0h(5);
        A0w = N1.A0h(6);
        A0g = N1.A0h(7);
        A0u = N1.A0h(8);
        A0i = N1.A0h(9);
        A11 = N1.A0h(10);
        A0t = N1.A0h(11);
        A0q = N1.A0h(12);
        A0k = N1.A0h(13);
        A15 = N1.A0h(14);
        A18 = N1.A0h(15);
        A0o = N1.A0h(16);
        A0n = N1.A0h(17);
        A10 = N1.A0h(18);
        A0x = N1.A0h(19);
        A0y = N1.A0h(20);
        A14 = N1.A0h(21);
        A0h = N1.A0h(22);
        A0f = N1.A0h(23);
        A12 = N1.A0h(24);
        A0v = N1.A0h(25);
        A0l = N1.A0h(26);
        A0m = N1.A0h(27);
        A0d = N1.A0h(28);
        A0j = N1.A0h(29);
        A16 = N1.A0h(30);
        A17 = N1.A0h(31);
        A0b = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.VD
            @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
            public final InterfaceC1678Jt A7F(Bundle bundle) {
                return VC.A00(bundle);
            }
        };
    }

    @MetaExoPlayerCustomization
    public VC(C1689Ke c1689Ke) {
        this.A0T = c1689Ke.A0R;
        this.A0U = c1689Ke.A0S;
        if (XL.A03(XQ.A14)) {
            this.A0V = N1.A0k(c1689Ke.A0T);
        } else {
            this.A0V = c1689Ke.A0T;
        }
        this.A0H = c1689Ke.A0F;
        this.A0E = c1689Ke.A0C;
        this.A04 = c1689Ke.A03;
        this.A0D = c1689Ke.A0B;
        this.A05 = this.A0D != -1 ? this.A0D : this.A04;
        this.A0R = c1689Ke.A0P;
        this.A0P = c1689Ke.A0N;
        this.A0Q = c1689Ke.A0O;
        this.A0S = c1689Ke.A0Q;
        this.A0W = c1689Ke.A0U;
        this.A0B = c1689Ke.A09;
        this.A0X = c1689Ke.A0V == null ? Collections.emptyList() : c1689Ke.A0V;
        this.A0O = c1689Ke.A0M;
        this.A0M = c1689Ke.A0K;
        this.A0L = c1689Ke.A0J;
        this.A0A = c1689Ke.A08;
        this.A01 = c1689Ke.A00;
        this.A0F = c1689Ke.A0D == -1 ? 0 : c1689Ke.A0D;
        this.A02 = c1689Ke.A01 == -1.0f ? 1.0f : c1689Ke.A01;
        this.A0Y = c1689Ke.A0W;
        this.A0I = c1689Ke.A0G;
        this.A0N = c1689Ke.A0L;
        this.A06 = c1689Ke.A04;
        this.A0G = c1689Ke.A0E;
        this.A0C = c1689Ke.A0A;
        this.A08 = c1689Ke.A06 == -1 ? 0 : c1689Ke.A06;
        this.A09 = c1689Ke.A07 != -1 ? c1689Ke.A07 : 0;
        this.A03 = c1689Ke.A02;
        this.A0J = c1689Ke.A0H;
        this.A0K = c1689Ke.A0I;
        if (c1689Ke.A05 != 0 || this.A0O == null) {
            this.A07 = c1689Ke.A05;
        } else {
            this.A07 = 1;
        }
    }

    public static VC A00(Bundle bundle) {
        C1689Ke c1689Ke = new C1689Ke();
        C1728Lt.A02(bundle);
        c1689Ke.A0y((String) A02(bundle.getString(A0p), A0c.A0T)).A0z((String) A02(bundle.getString(A0r), A0c.A0U)).A10((String) A02(bundle.getString(A0s), A0c.A0V)).A0n(bundle.getInt(A13, A0c.A0H)).A0k(bundle.getInt(A0z, A0c.A0E)).A0a(bundle.getInt(A0e, A0c.A04)).A0j(bundle.getInt(A0w, A0c.A0D)).A0w((String) A02(bundle.getString(A0g), A0c.A0R)).A0v((Metadata) A02((Metadata) bundle.getParcelable(A0u), A0c.A0P)).A0x((String) A02(bundle.getString(A0i), A0c.A0S)).A11((String) A02(bundle.getString(A11), A0c.A0W)).A0h(bundle.getInt(A0t, A0c.A0B));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            byte[] byteArray = bundle.getByteArray(A03(i));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i++;
        }
        c1689Ke.A12(arrayList).A0u((DrmInitData) bundle.getParcelable(A0k)).A0s(bundle.getLong(A15, A0c.A0M)).A0r(bundle.getInt(A18, A0c.A0L)).A0f(bundle.getInt(A0o, A0c.A0A)).A0X(bundle.getFloat(A0n, A0c.A01)).A0l(bundle.getInt(A10, A0c.A0F)).A0Y(bundle.getFloat(A0x, A0c.A02)).A13(bundle.getByteArray(A0y)).A0o(bundle.getInt(A14, A0c.A0I));
        Bundle bundle2 = bundle.getBundle(A0h);
        if (bundle2 != null) {
            c1689Ke.A0t((ColorInfo) ColorInfo.A08.A7F(bundle2));
        }
        c1689Ke.A0b(bundle.getInt(A0f, A0c.A06)).A0m(bundle.getInt(A12, A0c.A0G)).A0i(bundle.getInt(A0v, A0c.A0C)).A0d(bundle.getInt(A0l, A0c.A08)).A0e(bundle.getInt(A0m, A0c.A09)).A0Z(bundle.getInt(A0d, A0c.A03)).A0p(bundle.getInt(A16, A0c.A0J)).A0q(bundle.getInt(A17, A0c.A0K)).A0c(bundle.getInt(A0j, A0c.A07));
        return c1689Ke.A14();
    }

    public static <T> T A02(T t, T t2) {
        return t != null ? t : t2;
    }

    public static String A03(int i) {
        return A0q + A04(18, 1, 120) + Integer.toString(i, 36);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0Z = new byte[]{-58, -70, -26, -38, Ascii.NAK, -99, -58, -55, -60, -72, -53, 127, -10, -62, -56, -105, -117, -58, Ascii.EM};
    }

    public final int A06() {
        if (this.A0L == -1 || this.A0A == -1) {
            return -1;
        }
        return this.A0A * this.A0L;
    }

    public final C1689Ke A07() {
        return new C1689Ke(this);
    }

    public final VC A08(int i) {
        return A07().A0c(i).A14();
    }

    @Deprecated
    public final VC A09(DrmInitData drmInitData) {
        return A07().A0u(drmInitData).A14();
    }

    public final boolean A0A(VC vc) {
        if (this.A0X.size() != vc.A0X.size()) {
            return false;
        }
        for (int i = 0; i < this.A0X.size(); i++) {
            if (!Arrays.equals(this.A0X.get(i), vc.A0X.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:70:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:90:0x016c  */
    /* JADX WARN: Code duplicated, block: B:96:0x017e  */
    public final boolean equals(Object obj) {
        boolean zA0A;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            Class<?> cls2 = obj.getClass();
            if (A0a[5].charAt(13) != 'v') {
                throw new RuntimeException();
            }
            A0a[0] = "WiJMLVtL4v6aNZ";
            if (cls == cls2) {
                VC vc = (VC) obj;
                if ((this.A00 == 0 || vc.A00 == 0 || this.A00 == vc.A00) && this.A0H == vc.A0H && this.A0E == vc.A0E && this.A04 == vc.A04 && this.A0D == vc.A0D && this.A0B == vc.A0B && this.A0M == vc.A0M && this.A0L == vc.A0L && this.A0A == vc.A0A && this.A0F == vc.A0F && this.A0I == vc.A0I && this.A06 == vc.A06) {
                    int i = this.A0G;
                    int i2 = vc.A0G;
                    if (A0a[0].length() != 14) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0a;
                    strArr[7] = "K0LYRLSwU7NMM9yboYBLZsFHSddrNPyN";
                    strArr[3] = "kiYQqIY5Z6IZhm1bKUxWd9sMtpD2XPJ6";
                    if (i == i2 && this.A0C == vc.A0C && this.A08 == vc.A08 && this.A09 == vc.A09 && this.A03 == vc.A03 && this.A0J == vc.A0J && this.A0K == vc.A0K && this.A07 == vc.A07 && Float.compare(this.A01, vc.A01) == 0 && Float.compare(this.A02, vc.A02) == 0) {
                        boolean zA1E = N1.A1E(this.A0T, vc.A0T);
                        if (A0a[4].charAt(15) == 'r') {
                            A0a[2] = "NNi8GU";
                            if (zA1E) {
                                if (N1.A1E(this.A0U, vc.A0U)) {
                                    zA0A = A0A(vc);
                                    if (A0a[5].charAt(13) != 'v') {
                                        throw new RuntimeException();
                                    }
                                    A0a[4] = "PMnMLB3RijMqe0mrN2MtHWg0ymxPO1TR";
                                    if (!zA0A) {
                                    }
                                }
                            }
                        } else if (zA1E) {
                            if (N1.A1E(this.A0U, vc.A0U) && N1.A1E(this.A0R, vc.A0R) && N1.A1E(this.A0S, vc.A0S) && N1.A1E(this.A0W, vc.A0W) && N1.A1E(this.A0V, vc.A0V) && Arrays.equals(this.A0Y, vc.A0Y) && N1.A1E(this.A0P, vc.A0P) && N1.A1E(this.A0N, vc.A0N) && N1.A1E(this.A0O, vc.A0O)) {
                                zA0A = A0A(vc);
                                if (A0a[5].charAt(13) != 'v') {
                                    throw new RuntimeException();
                                }
                                A0a[4] = "PMnMLB3RijMqe0mrN2MtHWg0ymxPO1TR";
                                if (!zA0A && N1.A1E(this.A0Q, vc.A0Q)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2;
        if (this.A00 == 0) {
            int iHashCode3 = (((((((17 * 31) + (this.A0T == null ? 0 : this.A0T.hashCode())) * 31) + (this.A0U != null ? this.A0U.hashCode() : 0)) * 31) + (this.A0V == null ? 0 : this.A0V.hashCode())) * 31) + this.A0H;
            if (A0a[4].charAt(15) != 'r') {
                throw new RuntimeException();
            }
            String[] strArr = A0a;
            strArr[7] = "LfBnVfcTlPHc672IU0EnXXuiB26syPrL";
            strArr[3] = "61MzOwjqlQTxYmHI5DyOS3ucNL30lPsY";
            int iHashCode4 = ((((((((((iHashCode3 * 31) + this.A0E) * 31) + this.A04) * 31) + this.A0D) * 31) + (this.A0R == null ? 0 : this.A0R.hashCode())) * 31) + (this.A0P == null ? 0 : this.A0P.hashCode())) * 31;
            if (this.A0Q == null) {
                iHashCode = 0;
            } else {
                Object obj = this.A0Q;
                String[] strArr2 = A0a;
                if (strArr2[7].charAt(29) != strArr2[3].charAt(29)) {
                    String[] strArr3 = A0a;
                    strArr3[6] = "deXu6sCVEC0OkQAtws66nesVSjVeMAK";
                    strArr3[1] = "lGz0CcyxibEIyA";
                    iHashCode = obj.hashCode();
                } else {
                    A0a[0] = "chzPyWMpWUud59";
                    iHashCode = obj.hashCode();
                }
            }
            int i = (iHashCode4 + iHashCode) * 31;
            if (this.A0S == null) {
                iHashCode2 = 0;
            } else {
                String str = this.A0S;
                String[] strArr4 = A0a;
                if (strArr4[6].length() != strArr4[1].length()) {
                    A0a[0] = "7apyZvXCvACueh";
                    iHashCode2 = str.hashCode();
                } else {
                    String[] strArr5 = A0a;
                    strArr5[7] = "ljmIur39FAzt9rIRtwxCY5GdKCMDKPBc";
                    strArr5[3] = "sEqqL8ExxOwTdDLDH3rJ6t3hqkihJP7S";
                    iHashCode2 = str.hashCode();
                }
            }
            this.A00 = ((((((((((((((((((((((((((((((((((((i + iHashCode2) * 31) + (this.A0W != null ? this.A0W.hashCode() : 0)) * 31) + this.A0B) * 31) + ((int) this.A0M)) * 31) + this.A0L) * 31) + this.A0A) * 31) + Float.floatToIntBits(this.A01)) * 31) + this.A0F) * 31) + Float.floatToIntBits(this.A02)) * 31) + this.A0I) * 31) + this.A06) * 31) + this.A0G) * 31) + this.A0C) * 31) + this.A08) * 31) + this.A09) * 31) + this.A03) * 31) + this.A0J) * 31) + this.A0K) * 31) + this.A07;
        }
        return this.A00;
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder().append(A04(5, 7, 21)).append(this.A0T);
        String strA04 = A04(0, 2, 88);
        return sbAppend.append(strA04).append(this.A0U).append(strA04).append(this.A0S).append(strA04).append(this.A0W).append(strA04).append(this.A0R).append(strA04).append(this.A05).append(strA04).append(this.A0V).append(A04(2, 3, 120)).append(this.A0L).append(strA04).append(this.A0A).append(strA04).append(this.A01).append(A04(14, 4, 41)).append(this.A06).append(strA04).append(this.A0G).append(A04(12, 2, 87)).toString();
    }
}
