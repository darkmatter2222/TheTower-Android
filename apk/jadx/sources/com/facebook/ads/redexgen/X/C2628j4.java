package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2628j4 {
    public static byte[] A09;
    public static String[] A0A = {"ulA9tMpXJ0Fgz3L6", "kmBp6JcSqPlb9eogqvbvj6g5ppHVaWSS", "klPqAM4BpBJNr6xIOjiQhoS6UO4TrOHS", "7VyM9GgXJuu8YzSYQI3HrMroeBYRJajD", "jF2bnw6E6wYHKm8plX11kYiLrSAbSJmD", "6pBnRch9VxXRPJwtqH0gd323b09mKXXU", "Clk2oRExhn8z5HC1wWkAqM8aEwWEfAA8", "Myq33IQdIYqIzBMhSJhfspyke76FBM0c"};
    public C2627j3 A01;
    public AbstractC2636jC A04;
    public final /* synthetic */ C7O A08;
    public final ArrayList<AbstractC2638jE> A05 = new ArrayList<>();
    public ArrayList<AbstractC2638jE> A02 = null;
    public final ArrayList<AbstractC2638jE> A06 = new ArrayList<>();
    public final List<AbstractC2638jE> A07 = Collections.unmodifiableList(this.A05);
    public int A03 = 2;
    public int A00 = 2;

    static {
        A05();
    }

    public C2628j4(C7O c7o) {
        this.A08 = c7o;
    }

    private final View A00(int i, boolean z) {
        return A0J(i, z, Long.MAX_VALUE).A0H;
    }

    private final AbstractC2638jE A01(int i) {
        int size;
        int iA0D;
        if (this.A02 == null || (size = this.A02.size()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC2638jE abstractC2638jE = this.A02.get(i2);
            if (!abstractC2638jE.A0t() && abstractC2638jE.A0T() == i) {
                abstractC2638jE.A0e(32);
                return abstractC2638jE;
            }
        }
        if (this.A08.A04.A0O() && (iA0D = this.A08.A00.A0D(i)) > 0 && iA0D < this.A08.A04.A0B()) {
            long jA0D = this.A08.A04.A0D(iA0D);
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC2638jE abstractC2638jE2 = this.A02.get(i3);
                if (!abstractC2638jE2.A0t() && abstractC2638jE2.A0V() == jA0D) {
                    abstractC2638jE2.A0e(32);
                    return abstractC2638jE2;
                }
            }
        }
        return null;
    }

    private final AbstractC2638jE A02(int i, boolean z) {
        View viewA08;
        int size = this.A05.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC2638jE abstractC2638jE = this.A05.get(i2);
            if (!abstractC2638jE.A0t() && abstractC2638jE.A0T() == i && !abstractC2638jE.A0m() && (this.A08.A0s.A09 || !abstractC2638jE.A0n())) {
                abstractC2638jE.A0e(32);
                return abstractC2638jE;
            }
        }
        if (!z && (viewA08 = this.A08.A01.A08(i)) != null) {
            AbstractC2638jE abstractC2638jEA0F = C7O.A0F(viewA08);
            this.A08.A01.A0G(viewA08);
            int iA07 = this.A08.A01.A07(viewA08);
            if (iA07 == -1) {
                throw new IllegalStateException(A04(604, 52, 62) + abstractC2638jEA0F + this.A08.A1L());
            }
            this.A08.A01.A0C(iA07);
            A0X(viewA08);
            abstractC2638jEA0F.A0e(8224);
            return abstractC2638jEA0F;
        }
        int size2 = this.A06.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AbstractC2638jE abstractC2638jE2 = this.A06.get(i3);
            if (!abstractC2638jE2.A0m() && abstractC2638jE2.A0T() == i) {
                if (!z) {
                    this.A06.remove(i3);
                }
                return abstractC2638jE2;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009a  */
    /* JADX WARN: Code duplicated, block: B:31:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:49:0x0130  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ec A[SYNTHETIC] */
    private final AbstractC2638jE A03(long j, int i, boolean z) {
        ArrayList<AbstractC2638jE> arrayList;
        String[] strArr;
        String[] strArr2;
        for (int size = this.A05.size() - 1; size >= 0; size--) {
            AbstractC2638jE abstractC2638jE = this.A05.get(size);
            if (abstractC2638jE.A0V() == j && !abstractC2638jE.A0t()) {
                if (i == abstractC2638jE.A0S()) {
                    abstractC2638jE.A0e(32);
                    if (abstractC2638jE.A0n()) {
                        C7O c7o = this.A08;
                        if (A0A[4].charAt(3) == 'b') {
                            A0A[0] = "q3aWXTgT7NsVf007";
                            if (!c7o.A0s.A07()) {
                                String[] strArr3 = A0A;
                                if (strArr3[2].charAt(0) != strArr3[1].charAt(0)) {
                                    A0A[4] = "NC6bFXUosLdTEwJsXrsHGkbXBsQUMG7q";
                                    abstractC2638jE.A0f(2, 14);
                                } else {
                                    String[] strArr4 = A0A;
                                    strArr4[2] = "kBSMDIkt47Rx4hHhTamY1xnSrMWRxYxp";
                                    strArr4[1] = "kToZLwND7zKVFlbtf8XZb6UwHA5zPLAu";
                                    abstractC2638jE.A0f(2, 14);
                                }
                            }
                        }
                        throw new RuntimeException();
                    }
                    return abstractC2638jE;
                }
                if (!z) {
                    this.A05.remove(size);
                    this.A08.removeDetachedView(abstractC2638jE.A0H, false);
                    A0W(abstractC2638jE.A0H);
                }
            }
        }
        for (int size2 = this.A06.size() - 1; size2 >= 0; size2--) {
            AbstractC2638jE abstractC2638jE2 = this.A06.get(size2);
            if (abstractC2638jE2.A0V() == j) {
                int iA0S = abstractC2638jE2.A0S();
                if (A0A[0].length() != 16) {
                    String[] strArr5 = A0A;
                    strArr5[7] = "lrD7iCy3KBiO8gA6PsFToJiVZrW1xMAl";
                    strArr5[6] = "amz9CZtibeJcU8bEqG7a4ZYgRNeZgxWk";
                    if (i == iA0S) {
                        if (!z) {
                            arrayList = this.A06;
                            strArr = A0A;
                            if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                                String[] strArr6 = A0A;
                                strArr6[5] = "or4YmCu0ppqzW1VFAnuQtpcwvOCNSyKL";
                                strArr6[3] = "x7G8xrEgau2heO3LEdjWfX9qC3RDyC0d";
                                arrayList.remove(size2);
                            } else {
                                arrayList.remove(size2);
                            }
                        }
                        return abstractC2638jE2;
                    }
                    if (!z) {
                        A07(size2);
                        strArr2 = A0A;
                        if (strArr2[2].charAt(0) == strArr2[1].charAt(0)) {
                            A0A[4] = "2lrbY7WLbUziAPe6QkcwvBQ2VEr9QFta";
                            return null;
                        }
                        throw new RuntimeException();
                    }
                } else {
                    String[] strArr7 = A0A;
                    strArr7[2] = "kYzWBiiTSiU3KogqfJ4EJctPAodLTQqF";
                    strArr7[1] = "kIBKgO4naDZyukeXVXxcwMENrZxoY36q";
                    if (i == iA0S) {
                        if (!z) {
                            arrayList = this.A06;
                            strArr = A0A;
                            if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                                String[] strArr8 = A0A;
                                strArr8[5] = "or4YmCu0ppqzW1VFAnuQtpcwvOCNSyKL";
                                strArr8[3] = "x7G8xrEgau2heO3LEdjWfX9qC3RDyC0d";
                                arrayList.remove(size2);
                            } else {
                                arrayList.remove(size2);
                            }
                        }
                        return abstractC2638jE2;
                    }
                    if (!z) {
                        A07(size2);
                        strArr2 = A0A;
                        if (strArr2[2].charAt(0) == strArr2[1].charAt(0)) {
                            A0A[4] = "2lrbY7WLbUziAPe6QkcwvBQ2VEr9QFta";
                            return null;
                        }
                        throw new RuntimeException();
                    }
                }
            }
        }
        return null;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 58);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A09 = new byte[]{-91, -18, -8, -58, -7, -7, -26, -24, -19, -22, -23, -65, -59, -32, 39, Ascii.RS, Ascii.RS, 43, Ascii.GS, 44, -14, -53, -48, -62, -21, Ascii.SYN, 7, Ascii.SI, -62, 5, 17, Ascii.ETB, Ascii.DLE, Ascii.SYN, -36, -38, -33, 36, 37, Ascii.DC2, 37, Ascii.SYN, -21, -120, 122, -83, -50, -69, -50, -65, 122, -61, -50, -65, -57, 122, -67, -55, -49, -56, -50, 122, -61, -51, 122, -13, 17, Ascii.FS, Ascii.FS, Ascii.NAK, Ascii.DC4, -48, 35, 19, 34, 17, 32, -48, 38, Ascii.EM, Ascii.NAK, 39, -48, 39, Ascii.EM, 36, Ascii.CAN, -48, 17, Ascii.RS, -48, Ascii.EM, Ascii.RS, 38, 17, Ascii.FS, Ascii.EM, Ascii.DC4, -48, 38, Ascii.EM, Ascii.NAK, 39, -34, -48, -7, Ascii.RS, 38, 17, Ascii.FS, Ascii.EM, Ascii.DC4, -48, 38, Ascii.EM, Ascii.NAK, 39, 35, -48, 19, 17, Ascii.RS, Ascii.RS, Ascii.US, 36, -48, Ascii.DC2, Ascii.NAK, -48, 34, Ascii.NAK, 37, 35, Ascii.NAK, Ascii.DC4, -48, Ascii.SYN, 34, Ascii.US, Ascii.GS, -48, 35, 19, 34, 17, 32, -36, -48, 36, Ascii.CAN, Ascii.NAK, 41, -48, 35, Ascii.CAN, Ascii.US, 37, Ascii.FS, Ascii.DC4, -48, 34, Ascii.NAK, Ascii.DC2, Ascii.US, 37, Ascii.RS, Ascii.DC4, -48, Ascii.SYN, 34, Ascii.US, Ascii.GS, -48, 34, Ascii.NAK, 19, 41, 19, Ascii.FS, Ascii.NAK, 34, -48, 32, Ascii.US, Ascii.US, Ascii.FS, -34, -13, Ascii.CAN, Ascii.CR, Ascii.EM, Ascii.CAN, Ascii.GS, 19, Ascii.GS, Ascii.RS, Ascii.SI, Ascii.CAN, Ascii.CR, 35, -54, Ascii.SO, Ascii.SI, Ascii.RS, Ascii.SI, Ascii.CR, Ascii.RS, Ascii.SI, Ascii.SO, -40, -54, -13, Ascii.CAN, 32, Ascii.VT, Ascii.SYN, 19, Ascii.SO, -54, 19, Ascii.RS, Ascii.SI, Ascii.ETB, -54, Ascii.SUB, Ascii.EM, Ascii.GS, 19, Ascii.RS, 19, Ascii.EM, Ascii.CAN, -54, -125, -88, -99, -87, -88, -83, -93, -83, -82, -97, -88, -99, -77, 90, -98, -97, -82, -97, -99, -82, -97, -98, 104, 90, -125, -88, -80, -101, -90, -93, -98, 90, -80, -93, -97, -79, 90, -94, -87, -90, -98, -97, -84, 90, -101, -98, -101, -86, -82, -97, -84, 90, -86, -87, -83, -93, -82, -93, -87, -88, -73, -36, -28, -49, -38, -41, -46, -114, -41, -30, -45, -37, -114, -34, -35, -31, -41, -30, -41, -35, -36, -114, -36, -20, -5, -22, -7, -7, -18, -19, -87, -8, -5, -87, -22, -3, -3, -22, -20, -15, -18, -19, -87, -1, -14, -18, 0, -4, -87, -10, -22, 2, -87, -9, -8, -3, -87, -21, -18, -87, -5, -18, -20, 2, -20, -11, -18, -19, -73, -87, -14, -4, -36, -20, -5, -22, -7, -61, -102, -77, -74, 102, -86, -85, -70, -89, -87, -82, -85, -86, 102, -68, -81, -85, -67, 102, -71, -82, -75, -69, -78, -86, 102, -88, -85, 102, -72, -85, -77, -75, -68, -85, -86, 102, -84, -72, -75, -77, 102, -104, -85, -87, -65, -87, -78, -85, -72, -100, -81, -85, -67, 102, -88, -85, -84, -75, -72, -85, 102, -81, -70, 102, -87, -89, -76, 102, -88, -85, 102, -72, -85, -87, -65, -87, -78, -85, -86, -128, 102, -38, -8, -1, -17, -12, -19, -90, -6, -11, -90, -8, -21, -23, -1, -23, -14, -21, -90, -25, -12, -90, -17, -19, -12, -11, -8, -21, -22, -90, -4, -17, -21, -3, -90, -18, -11, -14, -22, -21, -8, -76, -90, -33, -11, -5, -90, -7, -18, -11, -5, -14, -22, -90, -20, -17, -8, -7, -6, -90, -23, -25, -14, -14, -90, -7, -6, -11, -10, -49, -19, -12, -11, -8, -17, -12, -19, -36, -17, -21, -3, -82, -4, -17, -21, -3, -81, -90, -24, -21, -20, -11, -8, -21, -90, -23, -25, -14, -14, -17, -12, -19, -90, -8, -21, -23, -1, -23, -14, -21, -76, -78, -80, -65, -95, -76, -80, -62, -111, -70, -67, -101, -70, -66, -76, -65, -76, -70, -71, -116, -71, -81, -97, -60, -69, -80, -66, -61, -53, -74, -63, -66, -71, 117, -59, -60, -56, -66, -55, -66, -60, -61, 117, -28, -39, -15, -25, -19, -20, -104, -31, -26, -36, -35, -16, -104, -21, -32, -25, -19, -28, -36, -104, -26, -25, -20, -104, -38, -35, -104, -91, -87, -104, -39, -34, -20, -35, -22, -104, -19, -26, -32, -31, -36, -31, -26, -33, -104, -39, -104, -18, -31, -35, -17, -78, -12, -13, -37, -18, -22, -4, -41, -22, -24, -2, -24, -15, -22, -23};
    }

    private final void A06() {
        for (int size = this.A06.size() - 1; size >= 0; size--) {
            A07(size);
        }
        this.A06.clear();
        if (C7O.A1E) {
            this.A08.A02.A02();
        }
    }

    private final void A07(int i) {
        A0e(this.A06.get(i), true);
        this.A06.remove(i);
    }

    private void A08(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                String[] strArr = A0A;
                if (strArr[7].charAt(8) == strArr[6].charAt(8)) {
                    throw new RuntimeException();
                }
                A0A[4] = "0ZJbYELQTNKw4GYvMFOIJ2JFgvUoupt2";
                A08((ViewGroup) childAt, true);
            }
        }
        if (z) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    private void A09(AbstractC2638jE abstractC2638jE) {
        if (this.A08.A1x()) {
            View view = abstractC2638jE.A0H;
            if (AbstractC2540hb.A00(view) == 0) {
                AbstractC2540hb.A09(view, 1);
            }
            if (AbstractC2540hb.A0F(view)) {
                return;
            }
            abstractC2638jE.A0e(16384);
            AbstractC2540hb.A0B(view, this.A08.A09.A0A());
        }
    }

    private void A0A(AbstractC2638jE abstractC2638jE) {
        if (abstractC2638jE.A0H instanceof ViewGroup) {
            A08((ViewGroup) abstractC2638jE.A0H, false);
        }
    }

    private final void A0B(AbstractC2638jE abstractC2638jE) {
        if (0 != 0) {
            throw new NullPointerException(A04(656, 14, 75));
        }
        if (this.A08.A04 != null) {
            this.A08.A04.A0K(abstractC2638jE);
        }
        if (this.A08.A0s != null) {
            this.A08.A0t.A0B(abstractC2638jE);
        }
    }

    private final boolean A0C(AbstractC2638jE abstractC2638jE) {
        if (abstractC2638jE.A0n()) {
            return this.A08.A0s.A07();
        }
        if (abstractC2638jE.A03 < 0 || abstractC2638jE.A03 >= this.A08.A04.A0B()) {
            throw new IndexOutOfBoundsException(A04(233, 60, 0) + abstractC2638jE + this.A08.A1L());
        }
        if (this.A08.A0s.A07() || this.A08.A04.A0C(abstractC2638jE.A03) == abstractC2638jE.A0S()) {
            return !this.A08.A04.A0O() || abstractC2638jE.A0V() == this.A08.A04.A0D(abstractC2638jE.A03);
        }
        return false;
    }

    private boolean A0D(AbstractC2638jE abstractC2638jE, int i, int i2, long j) {
        abstractC2638jE.A08 = this.A08;
        int iA0S = abstractC2638jE.A0S();
        long nanoTime = this.A08.getNanoTime();
        if (j != Long.MAX_VALUE) {
            C2627j3 c2627j3 = this.A01;
            String[] strArr = A0A;
            if (strArr[5].charAt(0) == strArr[3].charAt(0)) {
                throw new RuntimeException();
            }
            A0A[0] = "We3abAYlnqMpJzTP";
            if (!c2627j3.A0A(iA0S, nanoTime, j)) {
                return false;
            }
        }
        this.A08.A04.A0L(abstractC2638jE, i);
        this.A01.A05(abstractC2638jE.A0S(), this.A08.getNanoTime() - nanoTime);
        A09(abstractC2638jE);
        if (!this.A08.A0s.A07()) {
            return true;
        }
        abstractC2638jE.A04 = i2;
        return true;
    }

    public final int A0E() {
        return this.A05.size();
    }

    public final int A0F(int i) {
        if (i >= 0) {
            C7O c7o = this.A08;
            if (A0A[0].length() != 16) {
                throw new RuntimeException();
            }
            A0A[0] = "3KxCBQFQ0qPnaRqJ";
            if (i < c7o.A0s.A03()) {
                return !this.A08.A0s.A07() ? i : this.A08.A00.A0D(i);
            }
        }
        throw new IndexOutOfBoundsException(A04(587, 17, 27) + i + A04(43, 22, 32) + this.A08.A0s.A03() + this.A08.A1L());
    }

    public final View A0G(int i) {
        return this.A05.get(i).A0H;
    }

    public final View A0H(int i) {
        return A00(i, false);
    }

    public final C2627j3 A0I() {
        if (this.A01 == null) {
            this.A01 = new C2627j3();
        }
        return this.A01;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0246  */
    /* JADX WARN: Code duplicated, block: B:102:0x024c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0264  */
    /* JADX WARN: Code duplicated, block: B:106:0x026d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0273  */
    /* JADX WARN: Code duplicated, block: B:110:0x028f  */
    /* JADX WARN: Code duplicated, block: B:111:0x02a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0180 A[DONT_INVERT, PHI: r7 r9
  0x0180: PHI (r7v3 boolean) = (r7v2 boolean), (r7v4 boolean), (r7v4 boolean) binds: [B:24:0x0052, B:50:0x00c5, B:66:0x0173] A[DONT_GENERATE, DONT_INLINE]
  0x0180: PHI (r9v3 com.facebook.ads.redexgen.X.jE) = (r9v2 com.facebook.ads.redexgen.X.jE), (r9v5 com.facebook.ads.redexgen.X.jE), (r9v6 com.facebook.ads.redexgen.X.jE) binds: [B:24:0x0052, B:50:0x00c5, B:66:0x0173] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x0182  */
    /* JADX WARN: Code duplicated, block: B:74:0x019f  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cd A[PHI: r6
  0x01cd: PHI (r6v3 boolean) = (r6v2 boolean), (r6v1 boolean), (r6v1 boolean) binds: [B:110:0x028f, B:107:0x0271, B:79:0x01cb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:84:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x0206 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:92:0x020b  */
    /* JADX WARN: Code duplicated, block: B:93:0x020d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0215  */
    /* JADX WARN: Code duplicated, block: B:98:0x022f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0243  */
    public final AbstractC2638jE A0J(int i, boolean z, long j) {
        boolean zA0D;
        int iA0D;
        String[] strArr;
        boolean zA0r;
        String[] strArr2;
        View view;
        ViewGroup.LayoutParams layoutParams;
        C2621ix c2621ix;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        String[] strArr3;
        C7O c7oA0H;
        if (i < 0 || i >= this.A08.A0s.A03()) {
            throw new IndexOutOfBoundsException(A04(293, 22, 52) + i + A04(12, 1, 99) + i + A04(21, 14, 104) + this.A08.A0s.A03() + this.A08.A1L());
        }
        boolean z2 = false;
        AbstractC2638jE abstractC2638jEA0E = null;
        if (this.A08.A0s.A07()) {
            abstractC2638jEA0E = A01(i);
            z2 = abstractC2638jEA0E != null;
        }
        if (abstractC2638jEA0E == null && (abstractC2638jEA0E = A02(i, z)) != null) {
            if (A0C(abstractC2638jEA0E)) {
                z2 = true;
            } else {
                if (!z) {
                    abstractC2638jEA0E.A0e(4);
                    if (abstractC2638jEA0E.A0o()) {
                        this.A08.removeDetachedView(abstractC2638jEA0E.A0H, false);
                        abstractC2638jEA0E.A0d();
                    } else if (abstractC2638jEA0E.A0t()) {
                        abstractC2638jEA0E.A0Z();
                    }
                    A0c(abstractC2638jEA0E);
                }
                abstractC2638jEA0E = null;
            }
        }
        if (abstractC2638jEA0E != null) {
            if (z2 && !this.A08.A0s.A07() && abstractC2638jEA0E.A0v(8192)) {
                abstractC2638jEA0E.A0f(0, 8192);
                if (this.A08.A0s.A0C) {
                    this.A08.A1r(abstractC2638jEA0E, this.A08.A05.A0F(this.A08.A0s, abstractC2638jEA0E, AbstractC2616is.A06(abstractC2638jEA0E) | 4096, abstractC2638jEA0E.A0W()));
                }
            }
            zA0D = false;
            if (!this.A08.A0s.A07() && abstractC2638jEA0E.A0l()) {
                abstractC2638jEA0E.A04 = i;
            } else if (abstractC2638jEA0E.A0l()) {
                zA0r = abstractC2638jEA0E.A0r();
                strArr2 = A0A;
                if (strArr2[7].charAt(8) != strArr2[6].charAt(8)) {
                    A0A[0] = "CFgmPUuP3iY97c6j";
                    if (!zA0r) {
                        if (abstractC2638jEA0E.A0m()) {
                        }
                    }
                } else if (!zA0r) {
                    if (abstractC2638jEA0E.A0m()) {
                    }
                }
                iA0D = this.A08.A00.A0D(i);
                strArr = A0A;
                if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                    String[] strArr4 = A0A;
                    strArr4[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                    strArr4[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                    zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                }
            } else {
                iA0D = this.A08.A00.A0D(i);
                strArr = A0A;
                if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                    String[] strArr5 = A0A;
                    strArr5[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                    strArr5[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                    zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                }
            }
            view = abstractC2638jEA0E.A0H;
            if (A0A[4].charAt(3) == 'b') {
                String[] strArr6 = A0A;
                strArr6[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                strArr6[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                layoutParams = view.getLayoutParams();
                if (layoutParams == null) {
                    c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                } else if (this.A08.checkLayoutParams(layoutParams)) {
                    c2621ix = (C2621ix) layoutParams;
                } else {
                    layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                    strArr3 = A0A;
                    if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                        String[] strArr7 = A0A;
                        strArr7[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                        strArr7[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                        c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                    }
                }
                c2621ix.A00 = abstractC2638jEA0E;
                c2621ix.A02 = !z2 && zA0D;
                return abstractC2638jEA0E;
            }
        } else {
            int iA0D2 = this.A08.A00.A0D(i);
            if (iA0D2 < 0 || iA0D2 >= this.A08.A04.A0B()) {
                throw new IndexOutOfBoundsException(A04(187, 46, InterfaceC3669k1.d.b.j) + i + A04(13, 8, 126) + iA0D2 + A04(35, 8, 119) + this.A08.A0s.A03() + this.A08.A1L());
            }
            int iA0C = this.A08.A04.A0C(iA0D2);
            if (this.A08.A04.A0O() && (abstractC2638jEA0E = A03(this.A08.A04.A0D(iA0D2), iA0C, z)) != null) {
                abstractC2638jEA0E.A03 = iA0D2;
                z2 = true;
            }
            if (abstractC2638jEA0E == null && 0 != 0) {
                throw new NullPointerException(A04(562, 25, 17));
            }
            if (abstractC2638jEA0E == null && (abstractC2638jEA0E = A0I().A03(iA0C)) != null) {
                abstractC2638jEA0E.A0b();
                if (C7O.A1C) {
                    A0A(abstractC2638jEA0E);
                }
            }
            if (abstractC2638jEA0E == null) {
                long nanoTime = this.A08.getNanoTime();
                if (j == Long.MAX_VALUE || this.A01.A0B(iA0C, nanoTime, j)) {
                    abstractC2638jEA0E = this.A08.A04.A0E(this.A08, iA0C);
                    if (C7O.A1E && (c7oA0H = C7O.A0H(abstractC2638jEA0E.A0H)) != null) {
                        abstractC2638jEA0E.A09 = new WeakReference<>(c7oA0H);
                    }
                    this.A01.A06(iA0C, this.A08.getNanoTime() - nanoTime);
                    if (z2) {
                        abstractC2638jEA0E.A0f(0, 8192);
                        if (this.A08.A0s.A0C) {
                            this.A08.A1r(abstractC2638jEA0E, this.A08.A05.A0F(this.A08.A0s, abstractC2638jEA0E, AbstractC2616is.A06(abstractC2638jEA0E) | 4096, abstractC2638jEA0E.A0W()));
                        }
                    }
                    zA0D = false;
                    if (!this.A08.A0s.A07()) {
                        if (abstractC2638jEA0E.A0l()) {
                            zA0r = abstractC2638jEA0E.A0r();
                            strArr2 = A0A;
                            if (strArr2[7].charAt(8) != strArr2[6].charAt(8)) {
                                A0A[0] = "CFgmPUuP3iY97c6j";
                                if (!zA0r) {
                                    if (abstractC2638jEA0E.A0m()) {
                                        view = abstractC2638jEA0E.A0H;
                                        if (A0A[4].charAt(3) == 'b') {
                                            String[] strArr8 = A0A;
                                            strArr8[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                            strArr8[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                            layoutParams = view.getLayoutParams();
                                            if (layoutParams == null) {
                                                c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                                abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                            } else if (this.A08.checkLayoutParams(layoutParams)) {
                                                layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                                strArr3 = A0A;
                                                if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                                    String[] strArr9 = A0A;
                                                    strArr9[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                                    strArr9[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                                    c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                                }
                                            } else {
                                                c2621ix = (C2621ix) layoutParams;
                                            }
                                            c2621ix.A00 = abstractC2638jEA0E;
                                            c2621ix.A02 = !z2 && zA0D;
                                            return abstractC2638jEA0E;
                                        }
                                    }
                                }
                            } else if (!zA0r) {
                                if (abstractC2638jEA0E.A0m()) {
                                    view = abstractC2638jEA0E.A0H;
                                    if (A0A[4].charAt(3) == 'b') {
                                        String[] strArr10 = A0A;
                                        strArr10[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                        strArr10[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                        layoutParams = view.getLayoutParams();
                                        if (layoutParams == null) {
                                            c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        } else if (this.A08.checkLayoutParams(layoutParams)) {
                                            layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                            strArr3 = A0A;
                                            if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                                String[] strArr11 = A0A;
                                                strArr11[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                                strArr11[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                                c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                                abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                            }
                                        } else {
                                            c2621ix = (C2621ix) layoutParams;
                                        }
                                        c2621ix.A00 = abstractC2638jEA0E;
                                        c2621ix.A02 = !z2 && zA0D;
                                        return abstractC2638jEA0E;
                                    }
                                }
                            }
                            iA0D = this.A08.A00.A0D(i);
                            strArr = A0A;
                            if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                                String[] strArr12 = A0A;
                                strArr12[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                                strArr12[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                                zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                                view = abstractC2638jEA0E.A0H;
                                if (A0A[4].charAt(3) == 'b') {
                                    String[] strArr13 = A0A;
                                    strArr13[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                    strArr13[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                    layoutParams = view.getLayoutParams();
                                    if (layoutParams == null) {
                                        c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    } else if (this.A08.checkLayoutParams(layoutParams)) {
                                        layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                        strArr3 = A0A;
                                        if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                            String[] strArr14 = A0A;
                                            strArr14[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                            strArr14[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                            c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        }
                                    } else {
                                        c2621ix = (C2621ix) layoutParams;
                                    }
                                    c2621ix.A00 = abstractC2638jEA0E;
                                    c2621ix.A02 = !z2 && zA0D;
                                    return abstractC2638jEA0E;
                                }
                            }
                        } else {
                            iA0D = this.A08.A00.A0D(i);
                            strArr = A0A;
                            if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                                String[] strArr15 = A0A;
                                strArr15[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                                strArr15[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                                zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                                view = abstractC2638jEA0E.A0H;
                                if (A0A[4].charAt(3) == 'b') {
                                    String[] strArr16 = A0A;
                                    strArr16[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                    strArr16[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                    layoutParams = view.getLayoutParams();
                                    if (layoutParams == null) {
                                        c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    } else if (this.A08.checkLayoutParams(layoutParams)) {
                                        layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                        strArr3 = A0A;
                                        if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                            String[] strArr17 = A0A;
                                            strArr17[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                            strArr17[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                            c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        }
                                    } else {
                                        c2621ix = (C2621ix) layoutParams;
                                    }
                                    c2621ix.A00 = abstractC2638jEA0E;
                                    c2621ix.A02 = !z2 && zA0D;
                                    return abstractC2638jEA0E;
                                }
                            }
                        }
                    } else if (abstractC2638jEA0E.A0l()) {
                        zA0r = abstractC2638jEA0E.A0r();
                        strArr2 = A0A;
                        if (strArr2[7].charAt(8) != strArr2[6].charAt(8)) {
                            A0A[0] = "CFgmPUuP3iY97c6j";
                            if (!zA0r) {
                                if (abstractC2638jEA0E.A0m()) {
                                    view = abstractC2638jEA0E.A0H;
                                    if (A0A[4].charAt(3) == 'b') {
                                        String[] strArr18 = A0A;
                                        strArr18[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                        strArr18[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                        layoutParams = view.getLayoutParams();
                                        if (layoutParams == null) {
                                            c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        } else if (this.A08.checkLayoutParams(layoutParams)) {
                                            layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                            strArr3 = A0A;
                                            if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                                String[] strArr19 = A0A;
                                                strArr19[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                                strArr19[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                                c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                                abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                            }
                                        } else {
                                            c2621ix = (C2621ix) layoutParams;
                                        }
                                        c2621ix.A00 = abstractC2638jEA0E;
                                        c2621ix.A02 = !z2 && zA0D;
                                        return abstractC2638jEA0E;
                                    }
                                }
                            }
                        } else if (!zA0r) {
                            if (abstractC2638jEA0E.A0m()) {
                                view = abstractC2638jEA0E.A0H;
                                if (A0A[4].charAt(3) == 'b') {
                                    String[] strArr110 = A0A;
                                    strArr110[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                    strArr110[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                    layoutParams = view.getLayoutParams();
                                    if (layoutParams == null) {
                                        c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    } else if (this.A08.checkLayoutParams(layoutParams)) {
                                        layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                        strArr3 = A0A;
                                        if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                            String[] strArr111 = A0A;
                                            strArr111[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                            strArr111[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                            c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        }
                                    } else {
                                        c2621ix = (C2621ix) layoutParams;
                                    }
                                    c2621ix.A00 = abstractC2638jEA0E;
                                    c2621ix.A02 = !z2 && zA0D;
                                    return abstractC2638jEA0E;
                                }
                            }
                        }
                        iA0D = this.A08.A00.A0D(i);
                        strArr = A0A;
                        if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                            String[] strArr112 = A0A;
                            strArr112[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                            strArr112[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                            zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                            view = abstractC2638jEA0E.A0H;
                            if (A0A[4].charAt(3) == 'b') {
                                String[] strArr113 = A0A;
                                strArr113[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                strArr113[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                layoutParams = view.getLayoutParams();
                                if (layoutParams == null) {
                                    c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                } else if (this.A08.checkLayoutParams(layoutParams)) {
                                    layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                    strArr3 = A0A;
                                    if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                        String[] strArr114 = A0A;
                                        strArr114[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                        strArr114[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                        c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    }
                                } else {
                                    c2621ix = (C2621ix) layoutParams;
                                }
                                c2621ix.A00 = abstractC2638jEA0E;
                                c2621ix.A02 = !z2 && zA0D;
                                return abstractC2638jEA0E;
                            }
                        }
                    } else {
                        iA0D = this.A08.A00.A0D(i);
                        strArr = A0A;
                        if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                            String[] strArr115 = A0A;
                            strArr115[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                            strArr115[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                            zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                            view = abstractC2638jEA0E.A0H;
                            if (A0A[4].charAt(3) == 'b') {
                                String[] strArr116 = A0A;
                                strArr116[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                strArr116[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                layoutParams = view.getLayoutParams();
                                if (layoutParams == null) {
                                    c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                } else if (this.A08.checkLayoutParams(layoutParams)) {
                                    layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                    strArr3 = A0A;
                                    if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                        String[] strArr117 = A0A;
                                        strArr117[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                        strArr117[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                        c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    }
                                } else {
                                    c2621ix = (C2621ix) layoutParams;
                                }
                                c2621ix.A00 = abstractC2638jEA0E;
                                c2621ix.A02 = !z2 && zA0D;
                                return abstractC2638jEA0E;
                            }
                        }
                    }
                } else {
                    String[] strArr20 = A0A;
                    if (strArr20[7].charAt(8) != strArr20[6].charAt(8)) {
                        A0A[4] = "fdYbLns5cH4Uqi6qZhk44zURNmgZymnf";
                        return null;
                    }
                }
            } else {
                if (z2) {
                    abstractC2638jEA0E.A0f(0, 8192);
                    if (this.A08.A0s.A0C) {
                        this.A08.A1r(abstractC2638jEA0E, this.A08.A05.A0F(this.A08.A0s, abstractC2638jEA0E, AbstractC2616is.A06(abstractC2638jEA0E) | 4096, abstractC2638jEA0E.A0W()));
                    }
                }
                zA0D = false;
                if (!this.A08.A0s.A07()) {
                    if (abstractC2638jEA0E.A0l()) {
                        zA0r = abstractC2638jEA0E.A0r();
                        strArr2 = A0A;
                        if (strArr2[7].charAt(8) != strArr2[6].charAt(8)) {
                            A0A[0] = "CFgmPUuP3iY97c6j";
                            if (!zA0r) {
                                if (abstractC2638jEA0E.A0m()) {
                                    view = abstractC2638jEA0E.A0H;
                                    if (A0A[4].charAt(3) == 'b') {
                                        String[] strArr118 = A0A;
                                        strArr118[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                        strArr118[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                        layoutParams = view.getLayoutParams();
                                        if (layoutParams == null) {
                                            c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        } else if (this.A08.checkLayoutParams(layoutParams)) {
                                            layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                            strArr3 = A0A;
                                            if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                                String[] strArr119 = A0A;
                                                strArr119[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                                strArr119[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                                c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                                abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                            }
                                        } else {
                                            c2621ix = (C2621ix) layoutParams;
                                        }
                                        c2621ix.A00 = abstractC2638jEA0E;
                                        c2621ix.A02 = !z2 && zA0D;
                                        return abstractC2638jEA0E;
                                    }
                                }
                            }
                        } else if (!zA0r) {
                            if (abstractC2638jEA0E.A0m()) {
                                view = abstractC2638jEA0E.A0H;
                                if (A0A[4].charAt(3) == 'b') {
                                    String[] strArr1110 = A0A;
                                    strArr1110[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                    strArr1110[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                    layoutParams = view.getLayoutParams();
                                    if (layoutParams == null) {
                                        c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    } else if (this.A08.checkLayoutParams(layoutParams)) {
                                        layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                        strArr3 = A0A;
                                        if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                            String[] strArr1111 = A0A;
                                            strArr1111[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                            strArr1111[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                            c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        }
                                    } else {
                                        c2621ix = (C2621ix) layoutParams;
                                    }
                                    c2621ix.A00 = abstractC2638jEA0E;
                                    c2621ix.A02 = !z2 && zA0D;
                                    return abstractC2638jEA0E;
                                }
                            }
                        }
                        iA0D = this.A08.A00.A0D(i);
                        strArr = A0A;
                        if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                            String[] strArr1112 = A0A;
                            strArr1112[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                            strArr1112[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                            zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                            view = abstractC2638jEA0E.A0H;
                            if (A0A[4].charAt(3) == 'b') {
                                String[] strArr1113 = A0A;
                                strArr1113[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                strArr1113[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                layoutParams = view.getLayoutParams();
                                if (layoutParams == null) {
                                    c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                } else if (this.A08.checkLayoutParams(layoutParams)) {
                                    layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                    strArr3 = A0A;
                                    if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                        String[] strArr1114 = A0A;
                                        strArr1114[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                        strArr1114[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                        c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    }
                                } else {
                                    c2621ix = (C2621ix) layoutParams;
                                }
                                c2621ix.A00 = abstractC2638jEA0E;
                                c2621ix.A02 = !z2 && zA0D;
                                return abstractC2638jEA0E;
                            }
                        }
                    } else {
                        iA0D = this.A08.A00.A0D(i);
                        strArr = A0A;
                        if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                            String[] strArr1115 = A0A;
                            strArr1115[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                            strArr1115[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                            zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                            view = abstractC2638jEA0E.A0H;
                            if (A0A[4].charAt(3) == 'b') {
                                String[] strArr1116 = A0A;
                                strArr1116[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                strArr1116[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                layoutParams = view.getLayoutParams();
                                if (layoutParams == null) {
                                    c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                } else if (this.A08.checkLayoutParams(layoutParams)) {
                                    layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                    strArr3 = A0A;
                                    if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                        String[] strArr1117 = A0A;
                                        strArr1117[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                        strArr1117[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                        c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    }
                                } else {
                                    c2621ix = (C2621ix) layoutParams;
                                }
                                c2621ix.A00 = abstractC2638jEA0E;
                                c2621ix.A02 = !z2 && zA0D;
                                return abstractC2638jEA0E;
                            }
                        }
                    }
                } else if (abstractC2638jEA0E.A0l()) {
                    zA0r = abstractC2638jEA0E.A0r();
                    strArr2 = A0A;
                    if (strArr2[7].charAt(8) != strArr2[6].charAt(8)) {
                        A0A[0] = "CFgmPUuP3iY97c6j";
                        if (!zA0r) {
                            if (abstractC2638jEA0E.A0m()) {
                                view = abstractC2638jEA0E.A0H;
                                if (A0A[4].charAt(3) == 'b') {
                                    String[] strArr1118 = A0A;
                                    strArr1118[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                    strArr1118[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                    layoutParams = view.getLayoutParams();
                                    if (layoutParams == null) {
                                        c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    } else if (this.A08.checkLayoutParams(layoutParams)) {
                                        layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                        strArr3 = A0A;
                                        if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                            String[] strArr1119 = A0A;
                                            strArr1119[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                            strArr1119[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                            c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                            abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                        }
                                    } else {
                                        c2621ix = (C2621ix) layoutParams;
                                    }
                                    c2621ix.A00 = abstractC2638jEA0E;
                                    c2621ix.A02 = !z2 && zA0D;
                                    return abstractC2638jEA0E;
                                }
                            }
                        }
                    } else if (!zA0r) {
                        if (abstractC2638jEA0E.A0m()) {
                            view = abstractC2638jEA0E.A0H;
                            if (A0A[4].charAt(3) == 'b') {
                                String[] strArr11110 = A0A;
                                strArr11110[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                                strArr11110[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                                layoutParams = view.getLayoutParams();
                                if (layoutParams == null) {
                                    c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                } else if (this.A08.checkLayoutParams(layoutParams)) {
                                    layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                    strArr3 = A0A;
                                    if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                        String[] strArr11111 = A0A;
                                        strArr11111[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                        strArr11111[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                        c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                        abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                    }
                                } else {
                                    c2621ix = (C2621ix) layoutParams;
                                }
                                c2621ix.A00 = abstractC2638jEA0E;
                                c2621ix.A02 = !z2 && zA0D;
                                return abstractC2638jEA0E;
                            }
                        }
                    }
                    iA0D = this.A08.A00.A0D(i);
                    strArr = A0A;
                    if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                        String[] strArr11112 = A0A;
                        strArr11112[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                        strArr11112[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                        zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                        view = abstractC2638jEA0E.A0H;
                        if (A0A[4].charAt(3) == 'b') {
                            String[] strArr11113 = A0A;
                            strArr11113[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                            strArr11113[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                            layoutParams = view.getLayoutParams();
                            if (layoutParams == null) {
                                c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                            } else if (this.A08.checkLayoutParams(layoutParams)) {
                                layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                strArr3 = A0A;
                                if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                    String[] strArr11114 = A0A;
                                    strArr11114[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                    strArr11114[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                    c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                }
                            } else {
                                c2621ix = (C2621ix) layoutParams;
                            }
                            c2621ix.A00 = abstractC2638jEA0E;
                            c2621ix.A02 = !z2 && zA0D;
                            return abstractC2638jEA0E;
                        }
                    }
                } else {
                    iA0D = this.A08.A00.A0D(i);
                    strArr = A0A;
                    if (strArr[5].charAt(0) != strArr[3].charAt(0)) {
                        String[] strArr11115 = A0A;
                        strArr11115[7] = "X7QTRdk7uAM61axx4OEln6Aqdeva9JgC";
                        strArr11115[6] = "2m6xaCXVB1m17nX7qirmFmeuDGGSO6lD";
                        zA0D = A0D(abstractC2638jEA0E, iA0D, i, j);
                        view = abstractC2638jEA0E.A0H;
                        if (A0A[4].charAt(3) == 'b') {
                            String[] strArr11116 = A0A;
                            strArr11116[5] = "ymmTOXtQojU6rRVoJMbBfUBDtyf096Lh";
                            strArr11116[3] = "VCdUEMmmzbvfUZbBbNepcELfQrdDFyYX";
                            layoutParams = view.getLayoutParams();
                            if (layoutParams == null) {
                                c2621ix = (C2621ix) this.A08.generateDefaultLayoutParams();
                                abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                            } else if (this.A08.checkLayoutParams(layoutParams)) {
                                layoutParamsGenerateLayoutParams = this.A08.generateLayoutParams(layoutParams);
                                strArr3 = A0A;
                                if (strArr3[2].charAt(0) == strArr3[1].charAt(0)) {
                                    String[] strArr11117 = A0A;
                                    strArr11117[2] = "kqh2PWeHxAL2DpvJL4iRMn0O7hIhaGbv";
                                    strArr11117[1] = "kmhB7ilmrFE2abkLd0sKBmmWm2mWDiPj";
                                    c2621ix = (C2621ix) layoutParamsGenerateLayoutParams;
                                    abstractC2638jEA0E.A0H.setLayoutParams(c2621ix);
                                }
                            } else {
                                c2621ix = (C2621ix) layoutParams;
                            }
                            c2621ix.A00 = abstractC2638jEA0E;
                            c2621ix.A02 = !z2 && zA0D;
                            return abstractC2638jEA0E;
                        }
                    }
                }
            }
        }
        throw new RuntimeException();
    }

    public final List<AbstractC2638jE> A0K() {
        return this.A07;
    }

    public final void A0L() {
        int size = this.A06.size();
        for (int i = 0; i < size; i++) {
            this.A06.get(i).A0X();
        }
        int size2 = this.A05.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.A05.get(i2).A0X();
        }
        ArrayList<AbstractC2638jE> arrayList = this.A02;
        String[] strArr = A0A;
        if (strArr[2].charAt(0) != strArr[1].charAt(0)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[7] = "w7WcMXH384MQxArKBWq9tfOfmOANhXYh";
        strArr2[6] = "ji6HgViVTGyvfONq8Vqt8Uaju4D1iJHU";
        if (arrayList != null) {
            int size3 = this.A02.size();
            for (int i3 = 0; i3 < size3; i3++) {
                this.A02.get(i3).A0X();
            }
        }
    }

    public final void A0M() {
        this.A05.clear();
        if (this.A02 != null) {
            this.A02.clear();
        }
    }

    public final void A0N() {
        int size = this.A06.size();
        for (int i = 0; i < size; i++) {
            C2621ix c2621ix = (C2621ix) this.A06.get(i).A0H.getLayoutParams();
            if (c2621ix != null) {
                c2621ix.A01 = true;
            }
        }
    }

    public final void A0O() {
        if (this.A08.A04 == null || !this.A08.A04.A0O()) {
            A06();
            return;
        }
        int size = this.A06.size();
        for (int i = 0; i < size; i++) {
            AbstractC2638jE abstractC2638jE = this.A06.get(i);
            if (A0A[0].length() != 16) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[2] = "kx9etu5Uswf3mlSSd54JM5SDJxoMGNTv";
            strArr[1] = "kxxNK4Rys8aPJuu822sP3fs8sDM7v1G0";
            if (abstractC2638jE != null) {
                abstractC2638jE.A0e(6);
                abstractC2638jE.A0j(null);
            }
        }
    }

    public final void A0P() {
        int i;
        if (this.A08.A06 != null) {
            AbstractC2620iw abstractC2620iw = this.A08.A06;
            if (A0A[0].length() == 16) {
                String[] strArr = A0A;
                strArr[2] = "kSelswvDf1EbxUzrii1mBr6dHJR0d4zj";
                strArr[1] = "kcuGN1lunmBh6z5P1vsNJWvgiUTpOK0Q";
                i = abstractC2620iw.A00;
            }
            throw new RuntimeException();
        }
        i = 0;
        this.A00 = this.A03 + i;
        for (int size = this.A06.size() - 1; size >= 0; size--) {
            int size2 = this.A06.size();
            String[] strArr2 = A0A;
            if (strArr2[2].charAt(0) != strArr2[1].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr3 = A0A;
            strArr3[2] = "kpxxdOz3cEfo3MLV8RPQuR2Jasv2n6jF";
            strArr3[1] = "kgO1H2GjmHeLX2ZusVi9gFRUJKE1zGI0";
            if (size2 <= this.A00) {
                return;
            }
            A07(size);
        }
    }

    public final void A0Q() {
        this.A05.clear();
        A06();
    }

    public final void A0R(int i) {
        this.A03 = i;
        A0P();
    }

    public final void A0S(int i, int i2) {
        int size = this.A06.size();
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC2638jE abstractC2638jE = this.A06.get(i3);
            if (abstractC2638jE != null && abstractC2638jE.A03 >= i) {
                abstractC2638jE.A0h(i2, true);
            }
        }
    }

    public final void A0T(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (i < i2) {
            i3 = i;
            i4 = i2;
            i5 = -1;
        } else {
            i3 = i2;
            i4 = i;
            i5 = 1;
        }
        int size = this.A06.size();
        for (int i6 = 0; i6 < size; i6++) {
            AbstractC2638jE abstractC2638jE = this.A06.get(i6);
            if (abstractC2638jE != null && abstractC2638jE.A03 >= i3 && abstractC2638jE.A03 <= i4) {
                int i7 = abstractC2638jE.A03;
                String[] strArr = A0A;
                if (strArr[5].charAt(0) == strArr[3].charAt(0)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0A;
                strArr2[2] = "kvvW4F2OCwdEIl1qwIuxYVFpmp0ugJY5";
                strArr2[1] = "kzcCp2wTfEGQm2KGuN32b5oIYABnQWPG";
                if (i7 == i) {
                    abstractC2638jE.A0h(i2 - i, false);
                } else {
                    abstractC2638jE.A0h(i5, false);
                }
            }
        }
    }

    public final void A0U(int i, int i2) {
        int i3;
        int i4 = i + i2;
        for (int size = this.A06.size() - 1; size >= 0; size--) {
            AbstractC2638jE abstractC2638jE = this.A06.get(size);
            if (abstractC2638jE != null && (i3 = abstractC2638jE.A03) >= i && i3 < i4) {
                abstractC2638jE.A0e(2);
                A07(size);
            }
        }
    }

    public final void A0V(int i, int i2, boolean z) {
        int i3 = i + i2;
        for (int size = this.A06.size() - 1; size >= 0; size--) {
            AbstractC2638jE abstractC2638jE = this.A06.get(size);
            if (abstractC2638jE != null) {
                if (abstractC2638jE.A03 >= i3) {
                    abstractC2638jE.A0h(-i2, z);
                } else if (abstractC2638jE.A03 >= i) {
                    abstractC2638jE.A0e(8);
                    A07(size);
                }
            }
        }
    }

    public final void A0W(View view) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        abstractC2638jEA0F.A0F = null;
        abstractC2638jEA0F.A0G = false;
        abstractC2638jEA0F.A0Z();
        A0c(abstractC2638jEA0F);
    }

    public final void A0X(View view) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (!abstractC2638jEA0F.A0v(12) && abstractC2638jEA0F.A0q() && !this.A08.A25(abstractC2638jEA0F)) {
            if (this.A02 == null) {
                this.A02 = new ArrayList<>();
            }
            abstractC2638jEA0F.A0i(this, true);
            this.A02.add(abstractC2638jEA0F);
            return;
        }
        boolean zA0m = abstractC2638jEA0F.A0m();
        if (A0A[0].length() != 16) {
            throw new RuntimeException();
        }
        String[] strArr = A0A;
        strArr[5] = "cscHAR4ImnAFzAxZJ9yqjMNa91RcN8Vb";
        strArr[3] = "pspTzLDNU823NSI2ymIgIumCpfqVQlal";
        if (zA0m && !abstractC2638jEA0F.A0n() && !this.A08.A04.A0O()) {
            throw new IllegalArgumentException(A04(65, 122, 118) + this.A08.A1L());
        }
        abstractC2638jEA0F.A0i(this, false);
        this.A05.add(abstractC2638jEA0F);
    }

    public final void A0Y(View view) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F.A0p()) {
            this.A08.removeDetachedView(view, false);
        }
        if (abstractC2638jEA0F.A0o()) {
            abstractC2638jEA0F.A0d();
        } else if (abstractC2638jEA0F.A0t()) {
            abstractC2638jEA0F.A0Z();
        }
        A0c(abstractC2638jEA0F);
    }

    public final void A0Z(AbstractC2608ik abstractC2608ik, AbstractC2608ik abstractC2608ik2, boolean z) {
        A0Q();
        A0I().A08(abstractC2608ik, abstractC2608ik2, z);
    }

    public final void A0a(C2627j3 c2627j3) {
        if (this.A01 != null) {
            C2627j3 c2627j4 = this.A01;
            String[] strArr = A0A;
            if (strArr[7].charAt(8) == strArr[6].charAt(8)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[5] = "eg5celMCH5XhNc8VzkIGx3YtNAPnP9H4";
            strArr2[3] = "1J6YUmXidV7MMEP0bzwuQdNnIs5cPq10";
            c2627j4.A04();
        }
        this.A01 = c2627j3;
        if (c2627j3 != null) {
            this.A01.A07(this.A08.getAdapter());
        }
    }

    public final void A0b(AbstractC2636jC abstractC2636jC) {
        this.A04 = abstractC2636jC;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:58:0x0128 A[LOOP:0: B:45:0x00f3->B:58:0x0128, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x0109 A[EDGE_INSN: B:68:0x0109->B:48:0x0109 BREAK  A[LOOP:0: B:45:0x00f3->B:58:0x0128], SYNTHETIC] */
    public final void A0c(AbstractC2638jE abstractC2638jE) {
        int size;
        int i;
        if (abstractC2638jE.A0o() || abstractC2638jE.A0H.getParent() != null) {
            throw new IllegalArgumentException(A04(315, 56, 79) + abstractC2638jE.A0o() + A04(0, 12, 75) + (abstractC2638jE.A0H.getParent() != null) + this.A08.A1L());
        }
        boolean zA0p = abstractC2638jE.A0p();
        String[] strArr = A0A;
        if (strArr[2].charAt(0) != strArr[1].charAt(0)) {
            throw new RuntimeException();
        }
        A0A[4] = "QZZbfikyhDCMiV1imXgamooHNWBI4VfH";
        if (zA0p) {
            throw new IllegalArgumentException(A04(371, 81, 12) + abstractC2638jE + this.A08.A1L());
        }
        if (abstractC2638jE.A0s()) {
            throw new IllegalArgumentException(A04(452, 110, 76) + this.A08.A1L());
        }
        boolean zA0K = abstractC2638jE.A0K();
        boolean z = false;
        boolean z2 = false;
        if ((this.A08.A04 != null && zA0K && this.A08.A04.A0P(abstractC2638jE)) || abstractC2638jE.A0u()) {
            int i2 = this.A00;
            String[] strArr2 = A0A;
            if (strArr2[2].charAt(0) != strArr2[1].charAt(0)) {
                A0A[4] = "JXkbPmQXP2BcwiEI3FqqjfiGok6rwhAB";
                if (i2 > 0) {
                    if (!abstractC2638jE.A0v(IronSourceError.ERROR_CAPPED_PER_SESSION)) {
                        size = this.A06.size();
                        if (size >= this.A00 && size > 0) {
                            A07(0);
                            size--;
                        }
                        if (C7O.A1E && size > 0 && !this.A08.A02.A05(abstractC2638jE.A03)) {
                            i = size - 1;
                            while (i >= 0) {
                                if (!this.A08.A02.A05(this.A06.get(i).A03)) {
                                    break;
                                } else {
                                    i--;
                                }
                            }
                            size = i + 1;
                        }
                        this.A06.add(size, abstractC2638jE);
                        z = true;
                    }
                }
            } else {
                A0A[4] = "iMRb6lH7bzEtCSJD4TfZYArDATXy6kqw";
                if (i2 > 0) {
                    if (!abstractC2638jE.A0v(IronSourceError.ERROR_CAPPED_PER_SESSION)) {
                        size = this.A06.size();
                        if (size >= this.A00) {
                            A07(0);
                            size--;
                        }
                        if (C7O.A1E) {
                            i = size - 1;
                            while (i >= 0) {
                                if (!this.A08.A02.A05(this.A06.get(i).A03)) {
                                    break;
                                    break;
                                }
                                i--;
                            }
                            size = i + 1;
                        }
                        this.A06.add(size, abstractC2638jE);
                        z = true;
                    }
                }
            }
            if (!z) {
                A0e(abstractC2638jE, true);
                z2 = true;
            }
        }
        this.A08.A0t.A0B(abstractC2638jE);
        if (z || z2 || !zA0K) {
            return;
        }
        abstractC2638jE.A08 = null;
    }

    public final void A0d(AbstractC2638jE abstractC2638jE) {
        if (abstractC2638jE.A0G) {
            this.A02.remove(abstractC2638jE);
        } else {
            this.A05.remove(abstractC2638jE);
        }
        abstractC2638jE.A0F = null;
        abstractC2638jE.A0G = false;
        abstractC2638jE.A0Z();
    }

    public final void A0e(AbstractC2638jE abstractC2638jE, boolean z) {
        C7O.A0t(abstractC2638jE);
        if (abstractC2638jE.A0v(16384)) {
            abstractC2638jE.A0f(0, 16384);
            AbstractC2540hb.A0B(abstractC2638jE.A0H, null);
        }
        if (z) {
            A0B(abstractC2638jE);
        }
        abstractC2638jE.A08 = null;
        A0I().A09(abstractC2638jE);
    }
}
