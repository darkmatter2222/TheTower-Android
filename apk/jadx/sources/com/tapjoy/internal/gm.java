package com.tapjoy.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;

/* JADX INFO: loaded from: classes5.dex */
public class gm extends Observable {
    public final List<a> b = new ArrayList();

    public class a {
        public final String a;
        public volatile Map<String, Object> b;

        a(String str) {
            this.a = str;
        }

        public final Object a(String str) {
            Map<String, Object> map = this.b;
            if (map != null) {
                return map.get(str);
            }
            return null;
        }
    }

    private static long a(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj instanceof String) {
            return Long.parseLong((String) obj);
        }
        throw new IllegalArgumentException();
    }

    protected final a a(String str) {
        a aVar = new a(str);
        this.b.add(aVar);
        return aVar;
    }

    public final boolean a(String str, boolean z) {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            Object objA = it.next().a(str);
            if (objA != null) {
                if (objA instanceof Boolean) {
                    return ((Boolean) objA).booleanValue();
                }
                if (!(objA instanceof String)) {
                    continue;
                } else {
                    if ("true".equals(objA)) {
                        return true;
                    }
                    if ("false".equals(objA)) {
                        return false;
                    }
                }
            }
        }
        return z;
    }

    public final long b(String str) {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            Object objA = it.next().a(str);
            if (objA != null) {
                if (objA instanceof Number) {
                    return ((Number) objA).longValue();
                }
                if (objA instanceof String) {
                    try {
                        return Long.parseLong((String) objA);
                    } catch (IllegalArgumentException unused) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return 0L;
    }

    public final gl c(String str) {
        double dDoubleValue;
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            Object objA = it.next().a(str);
            if (objA instanceof List) {
                List list = (List) objA;
                try {
                    long jA = a(list.get(0));
                    long jA2 = a(list.get(1));
                    long jA3 = a(list.get(2));
                    Object obj = list.get(3);
                    if (obj instanceof Number) {
                        dDoubleValue = ((Number) obj).doubleValue();
                    } else {
                        if (!(obj instanceof String)) {
                            throw new IllegalArgumentException();
                        }
                        dDoubleValue = Double.parseDouble((String) obj);
                    }
                    return new gl(jA, jA2, jA3, dDoubleValue);
                } catch (RuntimeException unused) {
                }
            }
        }
        return gl.a;
    }

    @Override // java.util.Observable
    protected void setChanged() {
        super.setChanged();
        notifyObservers();
    }
}
