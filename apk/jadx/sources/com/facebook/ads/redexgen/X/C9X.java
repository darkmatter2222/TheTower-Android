package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
import p005kotlin.UShort;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9X, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C9X<K, V> extends AbstractC1967Vq<K, V> {
    public static String[] A03 = {"0JCoK4PZ0IyrSLrhpLXDGtW7CYJKFavd", "vVp4yGiG2pwrs9hfFSq954qopQZNS2M3", "8rm8KVIKfejszq0ftKxTGSKW9n8zRxxE", "puOB3grMAVT2N8OXlFYYxiuBKlP5LhF3", "0LpmPtXY5Q", "SzRgaK4USjqb7fE", "4VC6aP0VXaxjT", "XOemoKi8sXB6M"};
    public static final AbstractC1967Vq<Object, Object> A04 = new C9X(null, new Object[0], 0);
    public static final long serialVersionUID = 0;
    public final transient Object[] A00;
    public final transient int A01;

    @CheckForNull
    public final transient Object A02;

    public C9X(@CheckForNull Object obj, Object[] objArr, int i) {
        this.A02 = obj;
        this.A00 = objArr;
        this.A01 = i;
    }

    public static <K, V> C9X<K, V> A00(int i, Object[] objArr, C1968Vr<K, V> c1968Vr) {
        Object obj;
        if (i == 0) {
            return (C9X) A04;
        }
        if (i == 1) {
            W7.A03(Objects.requireNonNull(objArr[0]), Objects.requireNonNull(objArr[1]));
            return new C9X<>(null, objArr, 1);
        }
        AbstractC1995Wu.A01(i, objArr.length >> 1);
        Object objA02 = A02(objArr, i, AbstractC14139k.A03(i), 0);
        if (objA02 instanceof Object[]) {
            Object[] objArr2 = (Object[]) objA02;
            C1969Vs c1969Vs = (C1969Vs) objArr2[2];
            if (c1968Vr == null) {
                throw c1969Vs.A02();
            }
            c1968Vr.A01 = c1969Vs;
            obj = objArr2[0];
            i = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, i * 2);
        } else {
            obj = objA02;
        }
        return new C9X<>(obj, objArr, i);
    }

    @CheckForNull
    public static Object A01(@CheckForNull Object obj, @CheckForNull Object[] objArr, int i, int i2, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i == 1) {
            if (!Objects.requireNonNull(objArr[i2]).equals(obj2)) {
                return null;
            }
            Object obj3 = objArr[i2 ^ 1];
            if (A03[0].charAt(0) == 't') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[7] = "m74HwlRwKK5qs";
            strArr[6] = "QzZAHk8R722Mu";
            return Objects.requireNonNull(obj3);
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iA00 = AbstractC1972Vv.A00(obj2.hashCode());
            while (true) {
                int i3 = iA00 & length;
                int i4 = bArr[i3] & 255;
                if (i4 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i4])) {
                    return objArr[i4 ^ 1];
                }
                iA00 = i3 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iA01 = AbstractC1972Vv.A00(obj2.hashCode());
            while (true) {
                int i5 = iA01 & length2;
                int i6 = sArr[i5] & UShort.MAX_VALUE;
                if (i6 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i6])) {
                    return objArr[i6 ^ 1];
                }
                iA01 = i5 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iA02 = AbstractC1972Vv.A00(obj2.hashCode());
            while (true) {
                int i7 = iA02 & length3;
                int i8 = iArr[i7];
                if (i8 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i8])) {
                    return objArr[i8 ^ 1];
                }
                iA02 = i7 + 1;
            }
        }
    }

    @CheckForNull
    public static Object A02(Object[] objArr, int i, int i2, int i3) {
        Object objRequireNonNull;
        int iA00;
        if (i == 1) {
            W7.A03(Objects.requireNonNull(objArr[i3]), Objects.requireNonNull(objArr[i3 ^ 1]));
            return null;
        }
        int i4 = i2 - 1;
        C1969Vs c1969Vs = null;
        int i5 = -1;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            int i6 = 0;
            for (int i7 = 0; i7 < i; i7++) {
                int i8 = (i7 * 2) + i3;
                int i9 = (i6 * 2) + i3;
                Object objRequireNonNull2 = Objects.requireNonNull(objArr[i8]);
                Object objRequireNonNull3 = Objects.requireNonNull(objArr[i8 ^ 1]);
                W7.A03(objRequireNonNull2, objRequireNonNull3);
                int iA01 = AbstractC1972Vv.A00(objRequireNonNull2.hashCode());
                while (true) {
                    int i10 = iA01 & i4;
                    int i11 = bArr[i10] & 255;
                    if (i11 == 255) {
                        bArr[i10] = (byte) i9;
                        if (i6 < i7) {
                            objArr[i9] = objRequireNonNull2;
                            objArr[i9 ^ 1] = objRequireNonNull3;
                        }
                        i6++;
                        break;
                    }
                    if (objRequireNonNull2.equals(objArr[i11])) {
                        c1969Vs = new C1969Vs(objRequireNonNull2, objRequireNonNull3, Objects.requireNonNull(objArr[i11 ^ 1]));
                        objArr[i11 ^ 1] = objRequireNonNull3;
                        break;
                    }
                    iA01 = i10 + 1;
                }
            }
            return i6 == i ? bArr : new Object[]{bArr, Integer.valueOf(i6), c1969Vs};
        }
        if (i2 > 32768) {
            int[] iArr = new int[i2];
            Arrays.fill(iArr, -1);
            int i12 = 0;
            int i13 = 0;
            while (i13 < i) {
                int i14 = (i13 * 2) + i3;
                int i15 = (i12 * 2) + i3;
                Object objRequireNonNull4 = Objects.requireNonNull(objArr[i14]);
                Object obj = objArr[i14 ^ 1];
                if (A03[4].length() != 7) {
                    String[] strArr = A03;
                    strArr[3] = "znNdX2XpfWsTkrLTozQqyBdhAAOJURRo";
                    strArr[1] = "JfodrNQWZAXgkCQeLodduPbNZlM3VrbX";
                    objRequireNonNull = Objects.requireNonNull(obj);
                    W7.A03(objRequireNonNull4, objRequireNonNull);
                    iA00 = AbstractC1972Vv.A00(objRequireNonNull4.hashCode());
                } else {
                    objRequireNonNull = Objects.requireNonNull(obj);
                    W7.A03(objRequireNonNull4, objRequireNonNull);
                    iA00 = AbstractC1972Vv.A00(objRequireNonNull4.hashCode());
                }
                while (true) {
                    int i16 = iA00 & i4;
                    int i17 = iArr[i16];
                    if (i17 == i5) {
                        iArr[i16] = i15;
                        if (i12 < i13) {
                            objArr[i15] = objRequireNonNull4;
                            objArr[i15 ^ 1] = objRequireNonNull;
                        }
                        i12++;
                        break;
                    }
                    if (objRequireNonNull4.equals(objArr[i17])) {
                        c1969Vs = new C1969Vs(objRequireNonNull4, objRequireNonNull, Objects.requireNonNull(objArr[i17 ^ 1]));
                        objArr[i17 ^ 1] = objRequireNonNull;
                        break;
                    }
                    iA00 = i16 + 1;
                    i5 = -1;
                }
                i13++;
                i5 = -1;
            }
            return i12 == i ? iArr : new Object[]{iArr, Integer.valueOf(i12), c1969Vs};
        }
        short[] sArr = new short[i2];
        Arrays.fill(sArr, (short) -1);
        int i18 = 0;
        for (int i19 = 0; i19 < i; i19++) {
            int i20 = (i19 * 2) + i3;
            int i21 = (i18 * 2) + i3;
            Object objRequireNonNull5 = Objects.requireNonNull(objArr[i20]);
            Object objRequireNonNull6 = Objects.requireNonNull(objArr[i20 ^ 1]);
            W7.A03(objRequireNonNull5, objRequireNonNull6);
            int iA02 = AbstractC1972Vv.A00(objRequireNonNull5.hashCode());
            while (true) {
                int i22 = iA02 & i4;
                int i23 = sArr[i22] & UShort.MAX_VALUE;
                if (i23 == 65535) {
                    short s = (short) i21;
                    String[] strArr2 = A03;
                    if (strArr2[7].length() == strArr2[6].length()) {
                        String[] strArr3 = A03;
                        strArr3[3] = "RYUuWOHldm0v9FSj6rxkYBJp8GLKyfZS";
                        strArr3[1] = "WhyHqWlMlW7EEzIF7xPF9ZB4dwDOPtto";
                        sArr[i22] = s;
                        if (i18 < i19) {
                            objArr[i21] = objRequireNonNull5;
                            objArr[i21 ^ 1] = objRequireNonNull6;
                        }
                        i18++;
                        break;
                    }
                    throw new RuntimeException();
                }
                Object obj2 = objArr[i23];
                if (A03[4].length() == 7) {
                    throw new RuntimeException();
                }
                A03[2] = "132H5NZsZrg6Xqi7jtE1e9rwUTzIYkqc";
                if (objRequireNonNull5.equals(obj2)) {
                    c1969Vs = new C1969Vs(objRequireNonNull5, objRequireNonNull6, Objects.requireNonNull(objArr[i23 ^ 1]));
                    objArr[i23 ^ 1] = objRequireNonNull6;
                    break;
                }
                iA02 = i22 + 1;
            }
        }
        return i18 == i ? sArr : new Object[]{sArr, Integer.valueOf(i18), c1969Vs};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1967Vq
    public final AbstractC1970Vt<V> A0A() {
        return new C4U(this.A00, 1, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1967Vq
    public final AbstractC14139k<Map.Entry<K, V>> A0D() {
        return new C4W(this, this.A00, 0, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1967Vq
    public final AbstractC14139k<K> A0E() {
        final C4U c4u = new C4U(this.A00, 0, this.A01);
        return new AbstractC14139k<K>(this, c4u) { // from class: com.facebook.ads.redexgen.X.4V
            public final transient AbstractC14149l<K> A00;
            public final transient AbstractC1967Vq<K, ?> A01;

            {
                this.A01 = this;
                this.A00 = c4u;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
            public final int A0I(Object[] objArr, int i) {
                return A0J().A0I(objArr, i);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC14139k, com.facebook.ads.redexgen.X.AbstractC1970Vt
            public final AbstractC14149l<K> A0J() {
                return this.A00;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
            public final boolean A0K() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            /* JADX INFO: renamed from: A0N */
            public final VV<K> iterator() {
                return A0J().iterator();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(@CheckForNull Object obj) {
                return this.A01.get(obj) != null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                return this.A01.size();
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1967Vq
    public final boolean A0F() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1967Vq, java.util.Map
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        V v = (V) A01(this.A02, this.A00, this.A01, 0, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override // java.util.Map
    public final int size() {
        return this.A01;
    }
}
