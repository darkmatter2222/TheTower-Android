package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9x, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC14269x<K, V> implements InterfaceC1959Vi<K, V> {
    public static String[] A03 = {"pY59XPRp4tNirWz1ghoixW58NFg7RI0c", "IyOT8Z", "l8UXh6cOE74up", "OhSNgvBU0sczpivHlA4QJ0H7Gb6AO2y8", "VYCH2plaLeDfltW1Vx0kde4", "r6WRZMQ3CPYBEcCkL2xb4DrsBMNhEfcD", "zFwMVxB0AIJD6f3TMpWk78EUOZdSz4zC", "7i6eS7dJDtTa0Yo20PDIjfK"};

    @CheckForNull
    @LazyInit
    public transient Collection<V> A00;

    @CheckForNull
    @LazyInit
    public transient Map<K, Collection<V>> A01;

    @CheckForNull
    @LazyInit
    public transient Set<K> A02;

    public abstract Map<K, Collection<V>> A00();

    public Set<K> A01() {
        Set<K> set = this.A02;
        if (set != null) {
            return set;
        }
        Set<K> setA02 = A02();
        this.A02 = setA02;
        return setA02;
    }

    public abstract Set<K> A02();

    public boolean A03(@CheckForNull Object obj) {
        Iterator<Collection<V>> it = A4i().values().iterator();
        do {
            boolean zHasNext = it.hasNext();
            if (A03[1].length() == 4) {
                throw new RuntimeException();
            }
            A03[5] = "IYywPR8rxmf4UqfAt6QZVL84Q8I7eUCK";
            if (!zHasNext) {
                return false;
            }
        } while (!it.next().contains(obj));
        return true;
    }

    public abstract Collection<V> A0B();

    public abstract Iterator<V> A0C();

    @Override // com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public Map<K, Collection<V>> A4i() {
        Map<K, Collection<V>> map = this.A01;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapA00 = A00();
        this.A01 = mapA00;
        return mapA00;
    }

    public boolean equals(@CheckForNull Object obj) {
        return AbstractC1956Vf.A01(this, obj);
    }

    public int hashCode() {
        return A4i().hashCode();
    }

    public String toString() {
        return A4i().toString();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public Collection<V> values() {
        Collection<V> collection = this.A00;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionA0B = A0B();
        this.A00 = collectionA0B;
        return collectionA0B;
    }
}
