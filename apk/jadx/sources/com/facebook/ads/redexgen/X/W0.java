package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public class W0<K, V> extends AbstractMap<K, V> implements Serializable {
    public static byte[] A09;
    public static String[] A0A = {"UsCaWrpdB1tTF77WGTK8mFGQ0Mib8oUf", "3s3aN8tYra1e31e7A7NVf3fajE95FwLN", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "BgqZmAdPBvt7gecTqu2inC67kC4iiPhA", "u", "HTdVpPx1o5", "kYQl8LVoex1ahuHtTMzHI9ZfeCqPvw6a", "NGnZ5pZhlRv718VqGStD7Z9"};
    public static final Object A0B;

    @CheckForNull
    public transient int[] A00;

    @CheckForNull
    public transient Object[] A01;

    @CheckForNull
    public transient Object[] A02;
    public transient int A03;
    public transient int A04;

    @CheckForNull
    public transient Object A05;

    @CheckForNull
    @LazyInit
    public transient Collection<V> A06;

    @CheckForNull
    @LazyInit
    public transient Set<Map.Entry<K, V>> A07;

    @CheckForNull
    @LazyInit
    public transient Set<K> A08;

    static {
        A0M();
        A0B = new Object();
    }

    public W0() {
        A0l(3);
    }

    public W0(int i) {
        A0l(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A00() {
        return (1 << (this.A03 & 31)) - 1;
    }

    private int A01(int i) {
        return A0T()[i];
    }

    private int A02(int i, int i2, int i3, int i4) {
        Object objA07 = AbstractC1975Vz.A07(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            AbstractC1975Vz.A0B(objA07, i3 & i5, i4 + 1);
        }
        Object objA0C = A0C();
        int[] iArrA0T = A0T();
        for (int i6 = 0; i6 <= i; i6++) {
            int iA05 = AbstractC1975Vz.A05(objA0C, i6);
            while (iA05 != 0) {
                int i7 = iA05 - 1;
                int i8 = iArrA0T[i7];
                int iA02 = AbstractC1975Vz.A02(i8, i) | i6;
                int i9 = iA02 & i5;
                int iA06 = AbstractC1975Vz.A05(objA07, i9);
                AbstractC1975Vz.A0B(objA07, i9, iA05);
                iArrA0T[i7] = AbstractC1975Vz.A04(iA02, iA06, i5);
                iA05 = AbstractC1975Vz.A03(i8, i);
            }
        }
        this.A05 = objA07;
        A0O(i5);
        return i5;
    }

    public static /* synthetic */ int A04(W0 w0) {
        int i = w0.A04;
        w0.A04 = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A07(@CheckForNull Object obj) {
        if (A0p()) {
            return -1;
        }
        int iA02 = AbstractC1972Vv.A02(obj);
        int iA00 = A00();
        int iA05 = AbstractC1975Vz.A05(A0C(), iA02 & iA00);
        if (iA05 == 0) {
            return -1;
        }
        int iA03 = AbstractC1975Vz.A02(iA02, iA00);
        do {
            int i = iA05 - 1;
            int iA01 = A01(i);
            if (AbstractC1975Vz.A02(iA01, iA00) == iA03) {
                K kA0E = A0E(i);
                if (A0A[7].length() != 23) {
                    throw new RuntimeException();
                }
                String[] strArr = A0A;
                strArr[0] = "PEzGMTL5BCkQPricWMENMzLCtYEroNn0";
                strArr[3] = "jB1dvidXB0hgraUTqBacXOglJ6BP9uJD";
                if (A6.A01(obj, kA0E)) {
                    return i;
                }
            }
            iA05 = AbstractC1975Vz.A03(iA01, iA00);
        } while (iA05 != 0);
        return -1;
    }

    private final Set<Map.Entry<K, V>> A08() {
        return new W4(this);
    }

    private final Set<K> A09() {
        return new W2(this);
    }

    private final Collection<V> A0A() {
        return new W1(this);
    }

    public static <K, V> W0<K, V> A0B(int i) {
        return new W0<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object A0C() {
        return Objects.requireNonNull(this.A05);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K A0E(int i) {
        return (K) A0V()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V A0F(int i) {
        return (V) A0W()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object A0K(@CheckForNull Object obj) {
        if (A0p()) {
            return A0B;
        }
        int iA00 = A00();
        Object objA0C = A0C();
        int[] iArrA0T = A0T();
        Object[] objArrA0V = A0V();
        String[] strArr = A0A;
        if (strArr[0].charAt(8) != strArr[3].charAt(8)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[0] = "2dOGJDLEBwCbV7U3v9dBzdAkFKwBrrZx";
        strArr2[3] = "uaP3M6whB8wVrGKee0wzJxkh8mE5mkCc";
        int iA06 = AbstractC1975Vz.A06(obj, null, iA00, objA0C, iArrA0T, objArrA0V, null);
        if (iA06 == -1) {
            return A0B;
        }
        V vA0F = A0F(iA06);
        String[] strArr3 = A0A;
        if (strArr3[0].charAt(8) != strArr3[3].charAt(8)) {
            A0A[7] = "4EfZxyziITZrCVNwevuOvtz";
            A0n(iA06, iA00);
            this.A04--;
            A0j();
            return vA0F;
        }
        A0A[7] = "CVeuuyzdAxMOtDfTHNbTRt4";
        A0n(iA06, iA00);
        this.A04--;
        A0j();
        return vA0F;
    }

    public static String A0L(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0M() {
        String[] strArr = A0A;
        if (strArr[4].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[4] = com.ironsource.Nc.e;
        strArr2[2] = "J";
        A09 = new byte[]{-124, -75, -75, -92, -68, -74, 99, -92, -81, -75, -88, -92, -89, -68, 99, -92, -81, -81, -78, -90, -92, -73, -88, -89, 125, -80, -88, -99, -101, -84, -99, -100, 88, -85, -95, -78, -99, 88, -91, -83, -85, -84, 88, -102, -99, 88, 118, 117, 88, 104, -101, -64, -56, -77, -66, -69, -74, 114, -59, -69, -52, -73, -116, 114};
    }

    private void A0N(int i) {
        int iMin;
        int length = A0T().length;
        if (i <= length || (iMin = Math.min(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        A0m(iMin);
    }

    private void A0O(int i) {
        this.A03 = AbstractC1975Vz.A04(this.A03, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    private void A0P(int i, int i2) {
        A0T()[i] = i2;
    }

    private void A0Q(int i, K k) {
        A0V()[i] = k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R(int i, V v) {
        A0W()[i] = v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] A0T() {
        return (int[]) Objects.requireNonNull(this.A00);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] A0V() {
        return (Object[]) Objects.requireNonNull(this.A01);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] A0W() {
        return (Object[]) Objects.requireNonNull(this.A02);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException(A0L(50, 14, 27) + i);
        }
        A0l(i);
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itA0d = A0d();
        while (itA0d.hasNext()) {
            Map.Entry<K, V> next = itA0d.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public int A0Z() {
        AbstractC1995Wu.A0F(A0p(), A0L(0, 24, 12));
        int i = this.A03;
        int iA01 = AbstractC1975Vz.A01(i);
        this.A05 = AbstractC1975Vz.A07(iA01);
        A0O(iA01 - 1);
        this.A00 = new int[i];
        this.A01 = new Object[i];
        this.A02 = new Object[i];
        return i;
    }

    public int A0a() {
        return isEmpty() ? -1 : 0;
    }

    public int A0b(int i) {
        if (i + 1 < this.A04) {
            return i + 1;
        }
        return -1;
    }

    public int A0c(int i, int i2) {
        return i - 1;
    }

    public final Iterator<Map.Entry<K, V>> A0d() {
        Map<K, V> mapA0h = A0h();
        return mapA0h != null ? mapA0h.entrySet().iterator() : new W0<K, V>.Itr<Map.Entry<K, V>>() { // from class: com.facebook.ads.redexgen.X.9u
            {
                super(this.A00, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final Map.Entry<K, V> A03(int i) {
                return new W9<K, V>(i) { // from class: com.facebook.ads.redexgen.X.9s
                    public static String[] A03 = {"5HV08nfivpuF2eIXtCYynApnrHInEgXm", "S0CYH", "Ox0", "O5yTfQQSp", "P8DtKUwo9FLdaPpyJyJxB8WXnRTz3nie", "p7TMPbd2l0YsDmKAosKD3ZfifhLQqvYM", "dnU8s", "9fQ0aDK3mHVsJ1NLC1qlrD"};
                    public int A00;

                    @ParametricNullness
                    public final K A01;

                    {
                        this.A01 = (K) this.A02.A0E(i);
                        this.A00 = i;
                    }

                    private void A00() {
                        if (this.A00 == -1 || this.A00 >= this.A02.size() || !A6.A01(this.A01, this.A02.A0E(this.A00))) {
                            W0 w0 = this.A02;
                            String[] strArr = A03;
                            if (strArr[4].length() == strArr[7].length()) {
                                throw new RuntimeException();
                            }
                            A03[3] = "rF";
                            this.A00 = w0.A07(this.A01);
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.W9, java.util.Map.Entry
                    @ParametricNullness
                    public final K getKey() {
                        return this.A01;
                    }

                    @Override // com.facebook.ads.redexgen.X.W9, java.util.Map.Entry
                    @ParametricNullness
                    public final V getValue() {
                        Map<K, V> mapA0h2 = this.A02.A0h();
                        if (mapA0h2 != null) {
                            return (V) Ve.A01(mapA0h2.get(this.A01));
                        }
                        A00();
                        return this.A00 == -1 ? (V) Ve.A00() : (V) this.A02.A0F(this.A00);
                    }

                    @Override // com.facebook.ads.redexgen.X.W9, java.util.Map.Entry
                    @ParametricNullness
                    public final V setValue(@ParametricNullness V v) {
                        Map<K, V> mapA0h2 = this.A02.A0h();
                        if (mapA0h2 != null) {
                            V v2 = (V) Ve.A01(mapA0h2.put(this.A01, v));
                            if (A03[2].length() == 8) {
                                throw new RuntimeException();
                            }
                            A03[2] = "2v2w2kMa6sbMxB8mHbrluY4Y";
                            return v2;
                        }
                        A00();
                        if (this.A00 == -1) {
                            this.A02.put(this.A01, v);
                            return (V) Ve.A00();
                        }
                        V v3 = (V) this.A02.A0F(this.A00);
                        this.A02.A0R(this.A00, v);
                        return v3;
                    }
                };
            }
        };
    }

    public final Iterator<K> A0e() {
        Map<K, V> mapA0h = A0h();
        if (mapA0h == null) {
            return new W0<K, V>.Itr<K>() { // from class: com.facebook.ads.redexgen.X.9v
                {
                    super(this.A00, null);
                }

                @ParametricNullness
                public final K A03(int i) {
                    return (K) this.A00.A0E(i);
                }
            };
        }
        Iterator<K> it = mapA0h.keySet().iterator();
        if (A0A[5].length() != 10) {
            throw new RuntimeException();
        }
        String[] strArr = A0A;
        strArr[0] = "5hoqquUsBOpyCTFMYsXqFIKVC8F5JZ4x";
        strArr[3] = "3KFyYZ54BaIItHukIWtc8ZgRFtiEzDrv";
        return it;
    }

    public final Iterator<V> A0f() {
        Map<K, V> mapA0h = A0h();
        return mapA0h != null ? mapA0h.values().iterator() : new W0<K, V>.Itr<V>() { // from class: com.facebook.ads.redexgen.X.9t
            {
                super(this.A00, null);
            }

            @ParametricNullness
            public final V A03(int i) {
                return (V) this.A00.A0F(i);
            }
        };
    }

    public Map<K, V> A0g() {
        Map<K, V> mapA0i = A0i(A00() + 1);
        int iA0a = A0a();
        while (iA0a >= 0) {
            mapA0i.put(A0E(iA0a), A0F(iA0a));
            if (A0A[7].length() != 23) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[0] = "c3M4jpS2BzPh3fY9HrYVv7MOn3pA4wzC";
            strArr[3] = "duOZhIUEB6vfWFeN9fWBClK5buuxXwSC";
            iA0a = A0b(iA0a);
        }
        this.A05 = mapA0i;
        this.A00 = null;
        this.A01 = null;
        this.A02 = null;
        A0j();
        return mapA0i;
    }

    @CheckForNull
    public final Map<K, V> A0h() {
        if (this.A05 instanceof Map) {
            return (Map) this.A05;
        }
        return null;
    }

    public Map<K, V> A0i(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    public final void A0j() {
        this.A03 += 32;
    }

    public void A0k(int i) {
    }

    public void A0l(int i) {
        AbstractC1995Wu.A0E(i >= 0, A0L(24, 26, 1));
        this.A03 = AnonymousClass19.A01(i, 1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
    }

    public void A0m(int i) {
        this.A00 = Arrays.copyOf(A0T(), i);
        this.A01 = Arrays.copyOf(A0V(), i);
        this.A02 = Arrays.copyOf(A0W(), i);
    }

    public void A0n(int i, int i2) {
        int i3;
        int i4;
        Object objA0C = A0C();
        int[] iArrA0T = A0T();
        Object[] objArrA0V = A0V();
        Object[] objArrA0W = A0W();
        int size = size() - 1;
        if (i >= size) {
            objArrA0V[i] = null;
            objArrA0W[i] = null;
            iArrA0T[i] = 0;
            return;
        }
        Object obj = objArrA0V[size];
        objArrA0V[i] = obj;
        objArrA0W[i] = objArrA0W[size];
        objArrA0V[size] = null;
        objArrA0W[size] = null;
        iArrA0T[i] = iArrA0T[size];
        iArrA0T[size] = 0;
        int iA02 = AbstractC1972Vv.A02(obj) & i2;
        int iA05 = AbstractC1975Vz.A05(objA0C, iA02);
        int i5 = size + 1;
        if (iA05 == i5) {
            AbstractC1975Vz.A0B(objA0C, iA02, i + 1);
            return;
        }
        do {
            i3 = iA05 - 1;
            i4 = iArrA0T[i3];
            iA05 = AbstractC1975Vz.A03(i4, i2);
        } while (iA05 != i5);
        iArrA0T[i3] = AbstractC1975Vz.A04(i4, i + 1, i2);
    }

    public void A0o(@ParametricNullness int i, @ParametricNullness K k, V v, int i2, int i3) {
        A0P(i, AbstractC1975Vz.A04(i2, 0, i3));
        A0Q(i, k);
        A0R(i, v);
    }

    public final boolean A0p() {
        return this.A05 == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (A0p()) {
            return;
        }
        A0j();
        Map<K, V> mapA0h = A0h();
        if (mapA0h == null) {
            Arrays.fill(A0V(), 0, this.A04, (Object) null);
            Arrays.fill(A0W(), 0, this.A04, (Object) null);
            AbstractC1975Vz.A0A(A0C());
            Arrays.fill(A0T(), 0, this.A04, 0);
            this.A04 = 0;
            return;
        }
        this.A03 = AnonymousClass19.A01(size(), 3, LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
        mapA0h.clear();
        if (A0A[5].length() != 10) {
            throw new RuntimeException();
        }
        A0A[5] = "7UyVTLp39D";
        this.A05 = null;
        this.A04 = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        Map<K, V> mapA0h = A0h();
        if (mapA0h != null) {
            return mapA0h.containsKey(obj);
        }
        return A07(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        Map<K, V> mapA0h = A0h();
        if (mapA0h != null) {
            return mapA0h.containsValue(obj);
        }
        for (int i = 0; i < this.A04; i++) {
            V vA0F = A0F(i);
            String[] strArr = A0A;
            if (strArr[4].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0A[7] = "jhK3uk1fEgjelnfpKfXV873";
            if (A6.A01(obj, vA0F)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.A07 != null) {
            return this.A07;
        }
        Set<Map.Entry<K, V>> setA08 = A08();
        this.A07 = setA08;
        return setA08;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        Map<K, V> mapA0h = A0h();
        if (mapA0h != null) {
            return mapA0h.get(obj);
        }
        int iA07 = A07(obj);
        if (A0A[5].length() != 10) {
            throw new RuntimeException();
        }
        A0A[5] = "VoGkazUuID";
        if (iA07 == -1) {
            return null;
        }
        A0k(iA07);
        return A0F(iA07);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        if (this.A08 != null) {
            return this.A08;
        }
        Set<K> setA09 = A09();
        this.A08 = setA09;
        return setA09;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V put(@ParametricNullness K k, @ParametricNullness V v) {
        int i;
        int i2;
        if (A0p()) {
            A0Z();
        }
        Map<K, V> mapA0h = A0h();
        if (mapA0h != null) {
            return mapA0h.put(k, v);
        }
        int[] iArrA0T = A0T();
        Object[] objArrA0V = A0V();
        Object[] objArrA0W = A0W();
        int i3 = this.A04;
        int i4 = i3 + 1;
        int iA02 = AbstractC1972Vv.A02(k);
        int iA00 = A00();
        int i5 = iA02 & iA00;
        int iA05 = AbstractC1975Vz.A05(A0C(), i5);
        if (iA05 != 0) {
            int iA03 = AbstractC1975Vz.A02(iA02, iA00);
            int i6 = 0;
            do {
                i = iA05 - 1;
                i2 = iArrA0T[i];
                if (AbstractC1975Vz.A02(i2, iA00) == iA03 && A6.A01(k, objArrA0V[i])) {
                    V v2 = (V) objArrA0W[i];
                    objArrA0W[i] = v;
                    A0k(i);
                    return v2;
                }
                iA05 = AbstractC1975Vz.A03(i2, iA00);
                i6++;
            } while (iA05 != 0);
            if (i6 >= 9) {
                V vPut = A0g().put(k, v);
                if (A0A[7].length() != 23) {
                    throw new RuntimeException();
                }
                String[] strArr = A0A;
                strArr[0] = "A7LBJNyTByumJxPJbJj7vdrx0LSH2pwL";
                strArr[3] = "wP0aYqOOB84oVOZQj8DGwQj7CYv0t5Ri";
                return vPut;
            }
            if (i4 > iA00) {
                iA00 = A02(iA00, AbstractC1975Vz.A00(iA00), iA02, i3);
            } else {
                iArrA0T[i] = AbstractC1975Vz.A04(i2, i3 + 1, iA00);
            }
        } else if (i4 > iA00) {
            iA00 = A02(iA00, AbstractC1975Vz.A00(iA00), iA02, i3);
        } else {
            AbstractC1975Vz.A0B(A0C(), i5, i3 + 1);
        }
        A0N(i4);
        A0o(i3, k, v, iA02, iA00);
        this.A04 = i4;
        A0j();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V remove(@CheckForNull Object obj) {
        Map<K, V> mapA0h = A0h();
        if (mapA0h != null) {
            return mapA0h.remove(obj);
        }
        V v = (V) A0K(obj);
        if (v == A0B) {
            return null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> mapA0h = A0h();
        return mapA0h != null ? mapA0h.size() : this.A04;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        if (this.A06 != null) {
            return this.A06;
        }
        Collection<V> collectionA0A = A0A();
        this.A06 = collectionA0A;
        return collectionA0A;
    }
}
