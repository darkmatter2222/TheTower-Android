package com.facebook.ads.redexgen.X;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.h6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2510h6<K, V> {

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/h6<TK;TV;>.EntrySet; */
    @Nullable
    public C2506h2 A00;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/h6<TK;TV;>.KeySet; */
    @Nullable
    public C2507h3 A01;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/h6<TK;TV;>.ValuesCollection; */
    @Nullable
    public C2509h5 A02;

    public static <K, V> boolean A00(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean A01(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean A02(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public static <T> boolean A03(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException unused) {
            return false;
        } catch (NullPointerException unused2) {
            return false;
        }
    }

    public abstract int A04();

    public abstract int A05(Object obj);

    public abstract int A06(Object obj);

    public abstract Map<K, V> A07();

    public final Set<Map.Entry<K, V>> A08() {
        if (this.A00 == null) {
            this.A00 = new C2506h2(this);
        }
        return this.A00;
    }

    public final Set<K> A09() {
        if (this.A01 == null) {
            this.A01 = new C2507h3(this);
        }
        return this.A01;
    }

    public final Collection<V> A0A() {
        if (this.A02 == null) {
            this.A02 = new C2509h5(this);
        }
        return this.A02;
    }

    public abstract Object A0B(int i, int i2);

    public abstract V A0C(int i, V v);

    public abstract void A0D();

    public abstract void A0E(int i);

    public abstract void A0F(K k, V v);

    public final Object[] A0G(int i) {
        int iA04 = A04();
        Object[] objArr = new Object[iA04];
        for (int i2 = 0; i2 < iA04; i2++) {
            objArr[i2] = A0B(i2, i);
        }
        return objArr;
    }

    public final <T> T[] A0H(T[] tArr, int i) {
        int iA04 = A04();
        if (tArr.length < iA04) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iA04));
        }
        for (int i2 = 0; i2 < iA04; i2++) {
            tArr[i2] = A0B(i2, i);
        }
        if (tArr.length > iA04) {
            tArr[iA04] = null;
        }
        return tArr;
    }
}
