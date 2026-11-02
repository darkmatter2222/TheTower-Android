package com.tapjoy.internal;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class bh implements be, bj {
    private HashMap<String, Object> a;

    /* JADX INFO: renamed from: com.tapjoy.internal.bh$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[bm.values().length];
            a = iArr;
            try {
                iArr[bm.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[bm.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[bm.NULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[bm.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[bm.NUMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[bm.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static abstract class a {
        private static a a;

        public static a a() {
            a aVar = a;
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = bi.a;
            a = aVar2;
            return aVar2;
        }

        public final bh a(InputStream inputStream) {
            return a(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
        }

        public bh a(Reader reader) {
            return a(go.a(reader).toString());
        }

        public bh a(String str) {
            return a(new ByteArrayInputStream(str.getBytes("UTF-8")));
        }
    }

    public static bh a(InputStream inputStream) {
        return a.a().a(inputStream);
    }

    private void a(List list) {
        f();
        while (j()) {
            list.add(u());
        }
        g();
    }

    public static bh b(String str) {
        return a.a().a(str);
    }

    private static URI d(String str) throws bp {
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new bp(e);
        }
    }

    private boolean t() {
        if (k() != bm.NULL) {
            return false;
        }
        o();
        return true;
    }

    private Object u() {
        bm bmVarK = k();
        switch (AnonymousClass1.a[bmVarK.ordinal()]) {
            case 1:
                return c();
            case 2:
                return d();
            case 3:
                o();
                return null;
            case 4:
                return Boolean.valueOf(n());
            case 5:
                return new cc(m());
            case 6:
                return m();
            default:
                throw new IllegalStateException("Expected a value but was ".concat(String.valueOf(bmVarK)));
        }
    }

    @Nullable
    public final <T> T a(bc<T> bcVar) {
        if (t()) {
            return null;
        }
        return bcVar.a(this);
    }

    @Override // com.tapjoy.internal.be
    public final Object a(String str) {
        HashMap<String, Object> map = this.a;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    @Override // com.tapjoy.internal.be
    public final void a(String str, Object obj) {
        if (this.a == null) {
            this.a = new HashMap<>();
        }
        this.a.put(str, obj);
    }

    public final <T> void a(List<T> list, bc<T> bcVar) {
        f();
        while (j()) {
            list.add(bcVar.a(this));
        }
        g();
    }

    public final void a(Map map) {
        h();
        while (j()) {
            map.put(l(), u());
        }
        i();
    }

    public final boolean a() {
        return k() == bm.BEGIN_OBJECT;
    }

    public final String b() {
        if (t()) {
            return null;
        }
        return m();
    }

    public final String c(String str) {
        return t() ? str : m();
    }

    public final <E> List<E> c() {
        LinkedList linkedList = new LinkedList();
        a(linkedList);
        return linkedList;
    }

    public final Map<String, Object> d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        a(linkedHashMap);
        return linkedHashMap;
    }

    public final URL e() {
        URI uri = (URI) a("BASE_URI");
        return uri != null ? uri.resolve(d(m())).toURL() : new URL(m());
    }
}
