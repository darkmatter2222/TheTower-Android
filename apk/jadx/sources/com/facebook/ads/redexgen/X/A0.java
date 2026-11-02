package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class A0<K, V> extends AbstractC1961Vk<K, Collection<V>> {
    public static String[] A02 = {"1zW1u388zuzGyhMuMzs3oivw7wochIWY", "jnUfZ58N5wHVQnYSRb", "g", "9tzpVYV6coB4HDeDmOKgWYaPOfRBTrER", "x6ru3GW0ey7gIsLkoWFiPV2pltA863QY", "1RvHULj5Fnt35CqaccWf9yltGIitj2uw", "D8UCDKgUWClzfEB1azVrkyvbFoEj9kF8", "XnO6jOZJ79d9MfY79AgITZOyNOx"};
    public final transient Map<K, Collection<V>> A00;
    public final /* synthetic */ AbstractC12954f A01;

    public A0(AbstractC12954f abstractC12954f, Map<K, Collection<V>> map) {
        this.A01 = abstractC12954f;
        this.A00 = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public final Collection<V> get(@CheckForNull Object obj) {
        Collection<V> collection = (Collection) AbstractC1960Vj.A05(this.A00, obj);
        if (collection == null) {
            return null;
        }
        return this.A01.A0F(obj, collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    /* JADX INFO: renamed from: A08, reason: merged with bridge method [inline-methods] */
    public final Collection<V> remove(@CheckForNull Object obj) {
        Collection<V> collectionRemove = this.A00.remove(obj);
        if (collectionRemove == null) {
            return null;
        }
        AbstractC12954f abstractC12954f = this.A01;
        if (A02[4].charAt(7) != '0') {
            throw new RuntimeException();
        }
        A02[3] = "eLCmSzstXWgN5PgJDOx4epK2D7opO4DE";
        Collection<V> collectionA0D = abstractC12954f.A0D();
        collectionA0D.addAll(collectionRemove);
        AbstractC12954f.A03(this.A01, collectionRemove.size());
        collectionRemove.clear();
        return collectionA0D;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1961Vk
    public final Set<Map.Entry<K, Collection<V>>> A09() {
        return new AbstractC14079e<K, Collection<V>>() { // from class: com.facebook.ads.redexgen.X.4j
            @Override // com.facebook.ads.redexgen.X.AbstractC14079e
            public final Map<K, Collection<V>> A00() {
                return this.A00;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(@CheckForNull Object obj) {
                return W5.A03(this.A00.A00.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new WW(this.A00);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(@CheckForNull Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                this.A00.A01.A0A(((Map.Entry) Objects.requireNonNull((Map.Entry) obj)).getKey());
                return true;
            }
        };
    }

    public final Map.Entry<K, Collection<V>> A0A(Map.Entry<K, Collection<V>> entry) {
        K key = entry.getKey();
        return AbstractC1960Vj.A01(key, this.A01.A0F(key, entry.getValue()));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (this.A00 != this.A01.A01) {
            AbstractC1964Vn.A09(new WW(this));
            return;
        }
        AbstractC12954f abstractC12954f = this.A01;
        String[] strArr = A02;
        if (strArr[0].charAt(12) == strArr[6].charAt(12)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[0] = "m6HJJRfAGZhiIxyke3hlcjdWYhHcU4vo";
        strArr2[6] = "5qDNUyxtlCQ6d2lWPTkfAZ6v5z79leRg";
        abstractC12954f.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return AbstractC1960Vj.A0C(this.A00, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        return this == obj || this.A00.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.A00.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        return this.A01.A01();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.A00.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.A00.toString();
    }
}
