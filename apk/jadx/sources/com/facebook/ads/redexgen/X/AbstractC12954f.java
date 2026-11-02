package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC12954f<K, V> extends AbstractC14269x<K, V> implements Serializable {
    public static byte[] A02 = null;
    public static String[] A03 = {"CFqdYrNFqozxVsEXuclWp5kj7BTcigVB", "3CwrOYcAVgjpR6iTz4fC", "UCIF93wXvJTfTAT1flu1ESoYD0usKOB", "cw", "hv", "dpJjIkRheSEpuKg7anQr689e1pRAvWlR", "r0FFbjKWsYq", "e4S8qg31usv4K8KGEqP3ThmJHIH8eUlE"};
    public static final long serialVersionUID = 2447537837011683357L;
    public transient int A00;
    public transient Map<K, Collection<V>> A01;

    static {
        A08();
    }

    public AbstractC12954f(Map<K, Collection<V>> map) {
        AbstractC1995Wu.A0C(map.isEmpty());
        this.A01 = map;
    }

    public static /* synthetic */ int A00(AbstractC12954f abstractC12954f) {
        int i = abstractC12954f.A00;
        abstractC12954f.A00 = i + 1;
        return i;
    }

    public static /* synthetic */ int A01(AbstractC12954f abstractC12954f) {
        int i = abstractC12954f.A00;
        abstractC12954f.A00 = i - 1;
        return i;
    }

    public static /* synthetic */ int A02(AbstractC12954f abstractC12954f, int i) {
        int i2 = abstractC12954f.A00 + i;
        abstractC12954f.A00 = i2;
        return i2;
    }

    public static /* synthetic */ int A03(AbstractC12954f abstractC12954f, int i) {
        int i2 = abstractC12954f.A00 - i;
        abstractC12954f.A00 = i2;
        return i2;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 119);
        }
        return new String(bArrCopyOfRange);
    }

    public static <E> Iterator<E> A05(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public static void A08() {
        A02 = new byte[]{Ascii.SO, 37, 55, 96, 3, 47, 44, 44, 37, 35, 52, 41, 47, 46, 96, 54, 41, 47, 44, 33, 52, 37, 36, 96, 52, 40, 37, 96, 3, 47, 44, 44, 37, 35, 52, 41, 47, 46, 96, 51, 48, 37, 35};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A(@CheckForNull Object obj) {
        Collection collection = (Collection) AbstractC1960Vj.A06(this.A01, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.A00 -= size;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14269x
    public final Collection<V> A0B() {
        return new W8(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14269x
    public Iterator<V> A0C() {
        return new A1(this);
    }

    public abstract Collection<V> A0D();

    public Collection<V> A0E(@ParametricNullness K k) {
        return A0D();
    }

    public abstract Collection<V> A0F(@ParametricNullness K k, Collection<V> collection);

    public abstract <E> Collection<E> A0G(Collection<E> collection);

    /* JADX WARN: Incorrect inner types in method signature: (TK;Ljava/util/List<TV;>;Lcom/facebook/ads/redexgen/X/4f<TK;TV;>.WrappedCollection;)Ljava/util/List<TV;>; */
    public final List A0H(@ParametricNullness Object obj, @CheckForNull List list, WA wa) {
        return list instanceof RandomAccess ? new C12974h(this, obj, list, wa) : new C14279y(this, obj, list, wa);
    }

    public Map<K, Collection<V>> A0I() {
        return this.A01;
    }

    public final Map<K, Collection<V>> A0J() {
        if (this.A01 instanceof NavigableMap) {
            return new C12673c(this, (NavigableMap) this.A01);
        }
        return this.A01 instanceof SortedMap ? new C12964g(this, (SortedMap) this.A01) : new A0(this, this.A01);
    }

    public final Set<K> A0K() {
        if (this.A01 instanceof NavigableMap) {
            return new C3R(this, (NavigableMap) this.A01);
        }
        return this.A01 instanceof SortedMap ? new C3b(this, (SortedMap) this.A01) : new C12984i(this, this.A01);
    }

    public final void A0L(Map<K, Collection<V>> map) {
        this.A01 = map;
        this.A00 = 0;
        for (Collection<V> collection : map.values()) {
            AbstractC1995Wu.A0C(!collection.isEmpty());
            this.A00 += collection.size();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public boolean AIR(@ParametricNullness K k, @ParametricNullness V v) {
        Collection<V> collection = this.A01.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.A00++;
            return true;
        }
        Collection<V> collectionA0E = A0E(k);
        if (!collectionA0E.add(v)) {
            throw new AssertionError(A04(0, 43, 55));
        }
        int i = this.A00 + 1;
        if (A03[6].length() == 10) {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[5] = "ChrSn2a1QTE4YKBA4wCmw8huk0G5mxlS";
        strArr[7] = "eqR5HWIv3WFZu0owXdjhPSRllQGx9dlV";
        this.A00 = i;
        this.A01.put(k, collectionA0E);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public void clear() {
        Iterator<Collection<V>> it = this.A01.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.A01.clear();
        this.A00 = 0;
        if (A03[6].length() == 10) {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[5] = "osYd2Adb7UzfwvNeM6F0OGAG4u191OlP";
        strArr[7] = "g3XaS2AWzMjDIPwUkus9IC2iuVkk2Rld";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public int size() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14269x, com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public Collection<V> values() {
        return super.values();
    }
}
