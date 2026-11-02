package com.tapjoy.internal;

import android.os.SystemClock;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gi {
    private static gi c;
    private static final ThreadLocal<Map<String, a>> b = new ThreadLocal<Map<String, a>>() { // from class: com.tapjoy.internal.gi.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ Map<String, a> initialValue() {
            return new HashMap();
        }
    };
    private static volatile boolean d = false;

    @Nullable
    static Set<String> a = null;

    public static final class a {
        final String a;
        private final TreeMap<String, Object> b = new TreeMap<>();
        private final Map<String, Long> c = new HashMap();
        private volatile long d;

        a(String str) {
            this.a = str;
        }

        public final a a() {
            try {
                this.d = SystemClock.elapsedRealtime();
                return this;
            } catch (NullPointerException unused) {
                this.d = -1L;
                return this;
            }
        }

        public final a a(String str) {
            this.b.put("failure", str);
            return this;
        }

        public final a a(String str, long j) {
            this.c.put(str, Long.valueOf(j));
            return this;
        }

        public final a a(String str, Object obj) {
            this.b.put(str, obj);
            return this;
        }

        public final a a(Map<String, Object> map) {
            if (map != null) {
                this.b.putAll(map);
            }
            return this;
        }

        public final a b() {
            long j = this.d;
            if (j != -1) {
                try {
                    a("spent_time", SystemClock.elapsedRealtime() - j);
                } catch (NullPointerException unused) {
                }
            }
            return this;
        }

        public final a b(String str) {
            this.b.put("misuse", str);
            return this;
        }

        public final a b(Map<String, Long> map) {
            if (map != null) {
                this.c.putAll(map);
            }
            return this;
        }

        public final void c() {
            gi.b(this.a, this.b.size() > 0 ? bb.a((Object) this.b) : null, this.c.size() > 0 ? this.c : null);
        }
    }

    public static a a(String str) {
        a aVarA = new a(str).a();
        b.get().put(str, aVarA);
        return aVarA;
    }

    public static void a(gk gkVar) {
        if (c == null) {
            c = gkVar;
            if (d) {
                gkVar.a(u.b());
            }
        }
    }

    public static void a(String str, a aVar) {
        if (aVar == null) {
            new Object[]{str};
        } else if (str.equals(aVar.a)) {
            b.get().put(str, aVar);
        } else {
            new Object[]{str, aVar.a};
        }
    }

    public static void a(String str, @Nullable TreeMap<String, Object> treeMap, @Nullable Map<String, Long> map) {
        b(str, treeMap != null ? bb.a((Object) treeMap) : null, map);
    }

    public static void a(Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            a = null;
        } else {
            a = new HashSet(collection);
        }
    }

    public static void a(boolean z) {
        if (d != z) {
            d = z;
            gi giVar = c;
            if (giVar != null) {
                if (z) {
                    giVar.a(u.b());
                } else {
                    giVar.a();
                }
            }
        }
    }

    public static a b(String str) {
        a aVarRemove = b.get().remove(str);
        return aVarRemove != null ? aVarRemove.b() : new a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, @Nullable String str2, @Nullable Map<String, Long> map) {
        gi giVar;
        Set<String> set = a;
        if ((set == null || !set.contains(str)) && d && (giVar = c) != null) {
            giVar.a(u.b(), str, str2, map);
        }
    }

    public static a c(String str) {
        return b.get().get(str);
    }

    public static a d(String str) {
        return b.get().remove(str);
    }

    public static a e(String str) {
        return new a(str);
    }

    protected abstract void a();

    protected abstract void a(long j);

    protected abstract void a(long j, String str, @Nullable String str2, @Nullable Map<String, Long> map);
}
