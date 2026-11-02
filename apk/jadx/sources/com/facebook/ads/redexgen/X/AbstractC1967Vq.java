package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.errorprone.annotations.DoNotMock;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@DoNotMock
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1967Vq<K, V> implements Map<K, V>, Serializable {
    public static byte[] A03 = null;
    public static String[] A04 = {"RbFvzwdJEDOKyx8H1hRwr", "gLvi", "wJ4SG4DiMC070d1W", "PXkywC9TsqaxthLd", "RjnCDL70BkhAf2WJnrMAr66K4ZNhbVA1", "6uBDV4rzP2JvdhUhMQE7yjU5q6AF3V0d", "uAyDx2lRXdmrkzhY", "7PuuOn72NJ8xuE5lhqBHD629fv8hvq"};
    public static final Map.Entry<?, ?>[] A05;
    public static final long serialVersionUID = 912559;

    @CheckForNull
    @LazyInit
    public transient AbstractC1970Vt<V> A00;

    @CheckForNull
    @LazyInit
    public transient AbstractC14139k<Map.Entry<K, V>> A01;

    @CheckForNull
    @LazyInit
    public transient AbstractC14139k<K> A02;

    static {
        A08();
        A05 = new Map.Entry[0];
    }

    public static <K, V> C1968Vr<K, V> A03() {
        return new C1968Vr<>();
    }

    public static <K, V> AbstractC1967Vq<K, V> A04() {
        AbstractC1967Vq<K, V> abstractC1967Vq = (AbstractC1967Vq<K, V>) C9X.A04;
        if (A04[6].length() != 16) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[2] = "KczvPZKCOxXZmzsX";
        strArr[3] = "z6iwHJiMzCNPGuEM";
        return abstractC1967Vq;
    }

    public static <K, V> AbstractC1967Vq<K, V> A05(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        C1968Vr c1968Vr = new C1968Vr(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        c1968Vr.A04(iterable);
        return c1968Vr.A07();
    }

    public static <K, V> AbstractC1967Vq<K, V> A06(Map<? extends K, ? extends V> map) {
        if ((map instanceof AbstractC1967Vq) && !(map instanceof SortedMap)) {
            AbstractC1967Vq<K, V> abstractC1967Vq = (AbstractC1967Vq) map;
            if (!abstractC1967Vq.A0F()) {
                return abstractC1967Vq;
            }
        }
        return A05(map.entrySet());
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 112;
            if (A04[7].length() != 30) {
                throw new RuntimeException();
            }
            A04[1] = "jPE";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A03 = new byte[]{-50, -20, -34, -103, -52, -34, -21, -30, -38, -27, -30, -13, -34, -35, -65, -24, -21, -26};
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException(A07(0, 18, 9));
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: A09, reason: merged with bridge method [inline-methods] */
    public AbstractC1970Vt<V> values() {
        AbstractC1970Vt<V> abstractC1970Vt = this.A00;
        if (abstractC1970Vt != null) {
            return abstractC1970Vt;
        }
        AbstractC1970Vt<V> abstractC1970VtA0A = A0A();
        this.A00 = abstractC1970VtA0A;
        return abstractC1970VtA0A;
    }

    public abstract AbstractC1970Vt<V> A0A();

    @Override // java.util.Map
    /* JADX INFO: renamed from: A0B, reason: merged with bridge method [inline-methods] */
    public AbstractC14139k<Map.Entry<K, V>> entrySet() {
        AbstractC14139k<Map.Entry<K, V>> abstractC14139k = this.A01;
        if (abstractC14139k != null) {
            return abstractC14139k;
        }
        AbstractC14139k<Map.Entry<K, V>> abstractC14139kA0D = A0D();
        this.A01 = abstractC14139kA0D;
        return abstractC14139kA0D;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: A0C, reason: merged with bridge method [inline-methods] */
    public AbstractC14139k<K> keySet() {
        AbstractC14139k<K> abstractC14139k = this.A02;
        if (abstractC14139k != null) {
            return abstractC14139k;
        }
        AbstractC14139k<K> abstractC14139kA0E = A0E();
        this.A02 = abstractC14139kA0E;
        return abstractC14139kA0E;
    }

    public abstract AbstractC14139k<Map.Entry<K, V>> A0D();

    public abstract AbstractC14139k<K> A0E();

    public abstract boolean A0F();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public boolean equals(@CheckForNull Object obj) {
        return AbstractC1960Vj.A0B(this, obj);
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract V get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final V getOrDefault(@CheckForNull Object obj, @CheckForNull V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return VX.A00(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return AbstractC1960Vj.A08(this);
    }
}
