package com.facebook.ads.redexgen.X;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1962Vl<K, V> extends AbstractCollection<V> {
    public static String[] A01 = {"yTUnBulZIuqrpxE40JtgUcuNUcMyNK25", "l3QC8ioujHC2mSRp22Ox2jXzgpDB5mpm", "ongFSNZ10OVOdC8aFspIFRy5RUteCevl", "HFHufBUHu7gmla9DTawnZmfE", "Cx0f6OdQuQKVsJSHFjhC5IpJndBb881", "kVc1ZeJ", "M2QUPgeXONzviQzvNt6CFqre3UEoj", "2DUqhKjtgEUdjtiVCBn8hKtQVfsSs"};
    public final Map<K, V> A00;

    public C1962Vl(Map<K, V> map) {
        this.A00 = (Map) AbstractC1995Wu.A04(map);
    }

    private final Map<K, V> A00() {
        return this.A00;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        A00().clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return A00().containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return A00().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<V> iterator() {
        return AbstractC1960Vj.A03(A00().entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(@CheckForNull Object obj) {
        Map.Entry<K, V> next;
        try {
            return super.remove(obj);
        } catch (UnsupportedOperationException unused) {
            Iterator<Map.Entry<K, V>> it = A00().entrySet().iterator();
            do {
                boolean zHasNext = it.hasNext();
                if (A01[2].length() != 32) {
                    throw new RuntimeException();
                }
                A01[5] = "JKGkCDAmqM2PrB";
                if (!zHasNext) {
                    return false;
                }
                next = it.next();
            } while (!A6.A01(obj, next.getValue()));
            A00().remove(next.getKey());
            return true;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            return super.removeAll((Collection) AbstractC1995Wu.A04(collection));
        } catch (UnsupportedOperationException unused) {
            HashSet hashSetA05 = VX.A05();
            for (Map.Entry<K, V> entry : A00().entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSetA05.add(entry.getKey());
                }
            }
            return A00().keySet().removeAll(hashSetA05);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        try {
            return super.retainAll((Collection) AbstractC1995Wu.A04(collection));
        } catch (UnsupportedOperationException unused) {
            HashSet hashSetA05 = VX.A05();
            Set<Map.Entry<K, V>> setEntrySet = A00().entrySet();
            if (A01[4].length() == 15) {
                throw new RuntimeException();
            }
            A01[3] = "2VaRJAwe6sXEgYvWjxM9k4jY";
            for (Map.Entry<K, V> entry : setEntrySet) {
                if (collection.contains(entry.getValue())) {
                    hashSetA05.add(entry.getKey());
                }
            }
            return A00().keySet().retainAll(hashSetA05);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return A00().size();
    }
}
