package kotlin;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ju1<K, V> extends LinkedHashMap<K, V> {
    private static final ju1<?, ?> b;
    private boolean a;

    static {
        ju1<?, ?> ju1Var = new ju1<>();
        b = ju1Var;
        ju1Var.e();
    }

    private ju1() {
        this.a = true;
    }

    private ju1(Map<K, V> map) {
        super(map);
        this.a = true;
    }

    private static int a(Object obj) {
        if (obj instanceof byte[]) {
            return yh1.a((byte[]) obj);
        }
        if (obj instanceof yh1.a) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    public static <K, V> int a(Map<K, V> map) {
        int iA = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            iA += a(entry.getValue()) ^ a(entry.getKey());
        }
        return iA;
    }

    private static boolean a(Object obj, Object obj2) {
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }

    public static <K, V> boolean a(Map<K, V> map, Map<K, V> map2) {
        if (map == map2) {
            return true;
        }
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (!map2.containsKey(entry.getKey()) || !a(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> ju1<K, V> b() {
        return (ju1<K, V>) b;
    }

    private static void b(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            yh1.a(obj);
            yh1.a(map.get(obj));
        }
    }

    private void c() {
        if (!d()) {
            throw new UnsupportedOperationException();
        }
    }

    public void a(ju1<K, V> ju1Var) {
        c();
        if (ju1Var.isEmpty()) {
            return;
        }
        putAll(ju1Var);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        c();
        super.clear();
    }

    public boolean d() {
        return this.a;
    }

    public void e() {
        this.a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && a((Map) this, (Map) obj);
    }

    public ju1<K, V> f() {
        return isEmpty() ? new ju1<>() : new ju1<>(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return a((Map) this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        c();
        yh1.a(k);
        yh1.a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        c();
        b(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        c();
        return (V) super.remove(obj);
    }
}
