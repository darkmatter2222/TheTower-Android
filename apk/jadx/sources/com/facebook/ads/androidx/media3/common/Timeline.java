package com.facebook.ads.androidx.media3.common;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.ads.redexgen.X.AbstractBinderC1676Jr;
import com.facebook.ads.redexgen.X.AbstractC14149l;
import com.facebook.ads.redexgen.X.AbstractC1722Ln;
import com.facebook.ads.redexgen.X.AbstractC1727Ls;
import com.facebook.ads.redexgen.X.C12944e;
import com.facebook.ads.redexgen.X.C9K;
import com.facebook.ads.redexgen.X.InterfaceC1677Js;
import com.facebook.ads.redexgen.X.InterfaceC1678Jt;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.UK;
import com.facebook.ads.redexgen.X.UM;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class Timeline implements InterfaceC1678Jt {
    public static String[] A00 = {"iXz9IdViaxesDvssZDMrU2", "902jBKsSGCUy3GN03syyWTT3P53HwN8i", "cpamzQxdPpEvHFLmNkiAWbWRCL8TRkXJ", "Q95qgWchppvAnnzyy7qtE", "ojHuVzavOvlzwT6yHvUIJXrejcAKIS2c", "owXJpSDSE9XS1nP6QheBZ461E5xkAMaW", "5XYUbYlnz0mvHoIalWBa3KrJNUzF58ks", "KAfJIHYhk4n7AndF2A7YvQ2XejzsQ4OX"};
    public static final Timeline A02 = new Timeline() { // from class: com.facebook.ads.redexgen.X.9L
        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final int A06() {
            return 0;
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final int A07() {
            return 0;
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final int A0A(Object obj) {
            return -1;
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final UM A0I(int i, UM um, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final UK A0L(int i, UK uk, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final Object A0M(int i) {
            throw new IndexOutOfBoundsException();
        }
    };
    public static final String A05 = N1.A0h(0);
    public static final String A03 = N1.A0h(1);
    public static final String A04 = N1.A0h(2);
    public static final InterfaceC1677Js<Timeline> A01 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.UP
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return Timeline.A02(bundle);
        }
    };

    /* JADX WARN: Type inference failed for: r0v5, types: [com.facebook.ads.redexgen.X.9K] */
    public static C9K A02(Bundle bundle) {
        final AbstractC14149l abstractC14149lA04 = A04(UK.A0J, AbstractC1727Ls.A00(bundle, A05));
        final AbstractC14149l abstractC14149lA05 = A04(UM.A08, AbstractC1727Ls.A00(bundle, A03));
        final int[] intArray = bundle.getIntArray(A04);
        if (intArray == null) {
            intArray = A05(abstractC14149lA04.size());
        }
        return new Timeline(abstractC14149lA04, abstractC14149lA05, intArray) { // from class: com.facebook.ads.redexgen.X.9K
            public static String[] A04 = {"uBgQio", "BYm52oHJK3K", "aC01MgvsXa2yvH2jZk1eLEUf5g1fQm", "dn7YJpAg", "QHSiiMsdXe3k6n4vo0Wi", "WNSDwkVSK8kZwmOeTNY4kXKP6W06Ao6M", "hbGNqKOTwKI4Q8X2puB7gM5ZpNhmTHBB", "7QF2VbCSr34FyhrEo9OWyWNwtq4W3379"};
            public final AbstractC14149l<UM> A00;
            public final AbstractC14149l<UK> A01;
            public final int[] A02;
            public final int[] A03;

            {
                AbstractC1722Ln.A07(abstractC14149lA04.size() == intArray.length);
                this.A01 = abstractC14149lA04;
                this.A00 = abstractC14149lA05;
                this.A02 = intArray;
                this.A03 = new int[intArray.length];
                for (int i = 0; i < intArray.length; i++) {
                    this.A03[intArray[i]] = i;
                }
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A06() {
                return this.A00.size();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A07() {
                return this.A01.size();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A08(int i, int i2, boolean z) {
                if (i2 == 1) {
                    return i;
                }
                if (i != A0C(z)) {
                    return z ? this.A02[this.A03[i] + 1] : i + 1;
                }
                if (i2 == 2) {
                    return A0B(z);
                }
                return -1;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A0A(Object obj) {
                throw new UnsupportedOperationException();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A0B(boolean z) {
                if (!A0N()) {
                    if (z) {
                        return this.A02[0];
                    }
                    return 0;
                }
                String[] strArr = A04;
                if (strArr[1].length() == strArr[4].length()) {
                    throw new RuntimeException();
                }
                A04[6] = "JpAqLo2lciu93y1MBP3JR416ima75clG";
                return -1;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A0C(boolean z) {
                if (A0N()) {
                    if (A04[3].length() != 21) {
                        A04[3] = "ypl0k4EuIoZsPyyA88VrOXk6";
                        return -1;
                    }
                } else {
                    if (!z) {
                        int iA07 = A07();
                        if (A04[3].length() == 21) {
                            A04[3] = "H0VdlkE";
                            return iA07 - 1;
                        }
                        String[] strArr = A04;
                        strArr[0] = "7y8oZz";
                        strArr[2] = "TKlFQF19R4AdRia15QYaSHM3DbFakK";
                        return iA07 - 1;
                    }
                    int[] iArr = this.A02;
                    if (A04[3].length() != 21) {
                        A04[6] = "HmcEDHf8AIECQzXJLgFXbL9gu7RTC3MH";
                        return iArr[A07() - 1];
                    }
                }
                throw new RuntimeException();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final UM A0I(int i, UM um, boolean z) {
                UM um2 = this.A00.get(i);
                um.A0G(um2.A03, um2.A04, um2.A00, um2.A01, um2.A02, um2.A06, um2.A05);
                return um;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final UK A0L(int i, UK uk, long j) {
                UK uk2 = this.A01.get(i);
                uk.A07(uk2.A0C, uk2.A09, uk2.A0A, uk2.A06, uk2.A07, uk2.A04, uk2.A0G, uk2.A0D, uk2.A08, uk2.A02, uk2.A03, uk2.A00, uk2.A01, uk2.A05);
                uk.A0F = uk2.A0F;
                return uk;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final Object A0M(int i) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public static <T extends InterfaceC1678Jt> AbstractC14149l<T> A04(InterfaceC1677Js<T> interfaceC1677Js, IBinder iBinder) {
        if (iBinder == null) {
            return AbstractC14149l.A03();
        }
        C12944e c12944e = new C12944e();
        AbstractC14149l<Bundle> abstractC14149lA00 = AbstractBinderC1676Jr.A00(iBinder);
        for (int i = 0; i < abstractC14149lA00.size(); i++) {
            c12944e.A04(interfaceC1677Js.A7F(abstractC14149lA00.get(i)));
        }
        return c12944e.A05();
    }

    public static int[] A05(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    public abstract int A06();

    public abstract int A07();

    public int A08(int i, int i2, boolean z) {
        switch (i2) {
            case 0:
                if (i == A0C(z)) {
                    return -1;
                }
                return i + 1;
            case 1:
                return i;
            case 2:
                return i == A0C(z) ? A0B(z) : i + 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final int A09(int i, UM um, UK uk, int i2, boolean z) {
        int i3 = A0H(i, um).A00;
        if (A0K(i3, uk).A01 != i) {
            return i + 1;
        }
        int iA08 = A08(i3, i2, z);
        if (iA08 == -1) {
            return -1;
        }
        return A0K(iA08, uk).A00;
    }

    public abstract int A0A(Object obj);

    public int A0B(boolean z) {
        return A0N() ? -1 : 0;
    }

    public int A0C(boolean z) {
        if (A0N()) {
            return -1;
        }
        return A07() - 1;
    }

    @Deprecated
    public final Pair<Object, Long> A0D(UK uk, UM um, int i, long j) {
        return A0E(uk, um, i, j);
    }

    public final Pair<Object, Long> A0E(UK uk, UM um, int i, long j) {
        return (Pair) AbstractC1722Ln.A01(A0G(uk, um, i, j, 0L));
    }

    @Deprecated
    public final Pair<Object, Long> A0F(UK uk, UM um, int i, long j, long j2) {
        return A0G(uk, um, i, j, j2);
    }

    public final Pair<Object, Long> A0G(UK uk, UM um, int i, long j, long j2) {
        AbstractC1722Ln.A00(i, 0, A07());
        A0L(i, uk, j2);
        if (j == -9223372036854775807L) {
            j = uk.A05();
            if (j == -9223372036854775807L) {
                if (A00[0].length() != 22) {
                    throw new RuntimeException();
                }
                A00[3] = "r7iFKwGABjGBgt08xi8xh";
                return null;
            }
        }
        int i2 = uk.A00;
        A0H(i2, um);
        while (i2 < uk.A01 && um.A02 != j && A0H(i2 + 1, um).A02 <= j) {
            i2++;
        }
        A0I(i2, um, true);
        long jMin = j - um.A02;
        if (um.A01 != -9223372036854775807L) {
            jMin = Math.min(jMin, um.A01 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = um.A04;
        if (A00[0].length() != 22) {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[2] = "cpwMXKROxgxWbDhlucA1RyCwbmQORN5S";
        strArr[4] = "qnIho8OZsEdG5rtbX5zMjqcNhamTc68f";
        return Pair.create(AbstractC1722Ln.A01(obj), Long.valueOf(jMax));
    }

    public final UM A0H(int i, UM um) {
        return A0I(i, um, false);
    }

    public abstract UM A0I(int i, UM um, boolean z);

    public UM A0J(Object obj, UM um) {
        return A0I(A0A(obj), um, true);
    }

    public final UK A0K(int i, UK uk) {
        return A0L(i, uk, 0L);
    }

    public abstract UK A0L(int i, UK uk, long j);

    public abstract Object A0M(int i);

    public final boolean A0N() {
        return A07() == 0;
    }

    public final boolean A0O(int i, UM um, UK uk, int i2, boolean z) {
        return A09(i, um, uk, i2, z) == -1;
    }

    public final boolean equals(Object obj) {
        int iA0C;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.A07() != A07() || timeline.A06() != A06()) {
            return false;
        }
        UK uk = new UK();
        UM um = new UM();
        UK uk2 = new UK();
        UM um2 = new UM();
        for (int i = 0; i < A07(); i++) {
            if (!A0K(i, uk).equals(timeline.A0K(i, uk2))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < A06(); i2++) {
            if (!A0I(i2, um, true).equals(timeline.A0I(i2, um2, true))) {
                return false;
            }
        }
        int iA0B = A0B(true);
        if (iA0B != timeline.A0B(true) || (iA0C = A0C(true)) != timeline.A0C(true)) {
            return false;
        }
        while (iA0B != iA0C) {
            int iA08 = A08(iA0B, 0, true);
            if (iA08 != timeline.A08(iA0B, 0, true)) {
                return false;
            }
            iA0B = iA08;
        }
        return true;
    }

    public final int hashCode() {
        UK uk = new UK();
        UM um = new UM();
        int iA07 = (7 * 31) + A07();
        for (int i = 0; i < A07(); i++) {
            iA07 = (iA07 * 31) + A0K(i, uk).hashCode();
        }
        int iA06 = (iA07 * 31) + A06();
        for (int i2 = 0; i2 < A06(); i2++) {
            iA06 = (iA06 * 31) + A0I(i2, um, true).hashCode();
        }
        int iA0B = A0B(true);
        while (iA0B != -1) {
            iA06 = (iA06 * 31) + iA0B;
            iA0B = A08(iA0B, 0, true);
        }
        return iA06;
    }
}
