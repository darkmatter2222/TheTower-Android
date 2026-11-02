package com.tapjoy.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class al<K, V> extends ak<K, V> {
    private final LinkedHashMap<K, ag<K, V>> a = new LinkedHashMap<>(0, 0.75f, true);
    private int b = 10;

    private void a() {
        int size = this.a.size() - this.b;
        if (size > 0) {
            Iterator<Map.Entry<K, ag<K, V>>> it = this.a.entrySet().iterator();
            while (size > 0 && it.hasNext()) {
                size--;
                it.next();
                it.remove();
            }
        }
    }

    @Override // com.tapjoy.internal.ak
    protected final ai<V> a(K k, boolean z) {
        ag<K, V> agVar = this.a.get(k);
        if (agVar != null || !z) {
            return agVar;
        }
        ag<K, V> agVar2 = new ag<>(k);
        this.a.put(k, agVar2);
        a();
        return agVar2;
    }

    @Override // com.tapjoy.internal.ak, com.tapjoy.internal.ah
    public final void a(K k, V v) {
        super.a(k, v);
        a();
    }
}
