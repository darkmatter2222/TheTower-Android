package com.facebook.ads.redexgen.X;

import com.google.errorprone.annotations.DoNotMock;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@DoNotMock
public class C1968Vr<K, V> {
    public static String[] A05 = {"F2S7Aotfo7CbhOuAIKMJALM7hFsxad", "KI15cP5Bwq6dkpulwZn8yttLTQkLf0", "3", "F4ekZtPYozqLvPAH6e7sh", "W", "wTLMsV24TBK7Lz5LF0Ec9fx0rD1Ydpz", "66voupMpBNoG1Mm69eqsiYvIQjuy0sR", "j"};
    public int A00;
    public C1969Vs A01;

    @CheckForNull
    public Comparator<? super V> A02;
    public boolean A03;
    public Object[] A04;

    public C1968Vr() {
        this(4);
    }

    public C1968Vr(int i) {
        this.A04 = new Object[i * 2];
        this.A00 = 0;
        this.A03 = false;
    }

    private AbstractC1967Vq<K, V> A00(boolean z) {
        Object[] objArrA03;
        if (z && this.A01 != null) {
            throw this.A01.A02();
        }
        int length = this.A00;
        if (this.A02 == null) {
            objArrA03 = this.A04;
        } else {
            boolean z2 = this.A03;
            if (A05[7].length() == 10) {
                throw new RuntimeException();
            }
            A05[7] = "rrVih42sPPGeO8shhCL3DehMK";
            if (z2) {
                this.A04 = Arrays.copyOf(this.A04, this.A00 * 2);
            }
            objArrA03 = this.A04;
            if (!z) {
                objArrA03 = A03(objArrA03, this.A00);
                if (objArrA03.length < this.A04.length) {
                    length = objArrA03.length >>> 1;
                }
            }
            A02(objArrA03, length, this.A02);
        }
        this.A03 = true;
        C9X c9xA00 = C9X.A00(length, objArrA03, this);
        if (!z || this.A01 == null) {
            return c9xA00;
        }
        throw this.A01.A02();
    }

    private void A01(int i) {
        if (i * 2 > this.A04.length) {
            this.A04 = Arrays.copyOf(this.A04, AbstractC1971Vu.A03(this.A04.length, i * 2));
            this.A03 = false;
        }
    }

    public static <V> void A02(Object[] objArr, int i, Comparator<? super V> comparator) {
        Map.Entry[] entryArr = new Map.Entry[i];
        for (int i2 = 0; i2 < i; i2++) {
            entryArr[i2] = new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(objArr[i2 * 2]), Objects.requireNonNull(objArr[(i2 * 2) + 1]));
        }
        Arrays.sort(entryArr, 0, i, AbstractC1954Vc.A04(comparator).A05(AbstractC1960Vj.A04()));
        for (int i3 = 0; i3 < i; i3++) {
            objArr[i3 * 2] = entryArr[i3].getKey();
            int i4 = (i3 * 2) + 1;
            Object value = entryArr[i3].getValue();
            String[] strArr = A05;
            if (strArr[1].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A05[7] = "5GzKj";
            objArr[i4] = value;
        }
    }

    private Object[] A03(Object[] objArr, int i) {
        HashSet hashSet = new HashSet();
        BitSet bitSet = new BitSet();
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (!hashSet.add(Objects.requireNonNull(objArr[i2 * 2]))) {
                bitSet.set(i2);
            }
        }
        if (bitSet.isEmpty()) {
            return objArr;
        }
        Object[] objArr2 = new Object[(i - bitSet.cardinality()) * 2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i * 2) {
            if (bitSet.get(i3 >>> 1)) {
                i3 += 2;
            } else {
                int i5 = i4 + 1;
                int i6 = i3 + 1;
                objArr2[i4] = Objects.requireNonNull(objArr[i3]);
                i4 = i5 + 1;
                i3 = i6 + 1;
                objArr2[i5] = Objects.requireNonNull(objArr[i6]);
            }
        }
        return objArr2;
    }

    public C1968Vr<K, V> A04(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        if (iterable instanceof Collection) {
            A01(this.A00 + ((Collection) iterable).size());
        }
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            A06(it.next());
        }
        return this;
    }

    public C1968Vr<K, V> A05(K k, V v) {
        A01(this.A00 + 1);
        W7.A03(k, v);
        this.A04[this.A00 * 2] = k;
        this.A04[(this.A00 * 2) + 1] = v;
        this.A00++;
        return this;
    }

    public C1968Vr<K, V> A06(Map.Entry<? extends K, ? extends V> entry) {
        return A05(entry.getKey(), entry.getValue());
    }

    public AbstractC1967Vq<K, V> A07() {
        return A08();
    }

    public AbstractC1967Vq<K, V> A08() {
        return A00(true);
    }
}
