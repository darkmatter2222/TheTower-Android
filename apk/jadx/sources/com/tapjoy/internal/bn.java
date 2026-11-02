package com.tapjoy.internal;

import com.ironsource.C3510b4;
import java.io.Closeable;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes5.dex */
public final class bn implements Closeable {
    final Writer a;
    private final List<bk> b;
    private String c;
    private String d;
    private boolean e;

    /* JADX INFO: renamed from: com.tapjoy.internal.bn$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[bk.values().length];
            a = iArr;
            try {
                iArr[bk.EMPTY_DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[bk.EMPTY_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[bk.NONEMPTY_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[bk.DANGLING_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[bk.NONEMPTY_DOCUMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public bn(Writer writer) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(bk.EMPTY_DOCUMENT);
        this.d = ":";
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.a = writer;
    }

    private bn a(double d) throws IOException {
        if (!this.e && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(d)));
        }
        b(false);
        this.a.append((CharSequence) Double.toString(d));
        return this;
    }

    private bn a(bk bkVar, bk bkVar2, String str) throws IOException {
        bk bkVarE = e();
        if (bkVarE != bkVar2 && bkVarE != bkVar) {
            throw new IllegalStateException("Nesting problem: " + this.b);
        }
        List<bk> list = this.b;
        list.remove(list.size() - 1);
        if (bkVarE == bkVar2) {
            g();
        }
        this.a.write(str);
        return this;
    }

    private bn a(bk bkVar, String str) throws IOException {
        b(true);
        this.b.add(bkVar);
        this.a.write(str);
        return this;
    }

    private bn a(Date date) {
        return date == null ? f() : b(v.a(date));
    }

    private bn a(boolean z) throws IOException {
        b(false);
        this.a.write(z ? "true" : "false");
        return this;
    }

    private bn a(Object[] objArr) {
        if (objArr == null) {
            return f();
        }
        a();
        for (Object obj : objArr) {
            a(obj);
        }
        b();
        return this;
    }

    private void a(bk bkVar) {
        List<bk> list = this.b;
        list.set(list.size() - 1, bkVar);
    }

    private bn b(Map map) {
        return a((Map<Object, Object>) map);
    }

    private void b(boolean z) throws IOException {
        int i = AnonymousClass1.a[e().ordinal()];
        if (i == 1) {
            if (!this.e && !z) {
                throw new IllegalStateException("JSON must start with an array or an object.");
            }
            a(bk.NONEMPTY_DOCUMENT);
            return;
        }
        if (i == 2) {
            a(bk.NONEMPTY_ARRAY);
            g();
        } else if (i == 3) {
            this.a.append(AbstractJsonLexerKt.COMMA);
            g();
        } else {
            if (i != 4) {
                if (i == 5) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                throw new IllegalStateException("Nesting problem: " + this.b);
            }
            this.a.append((CharSequence) this.d);
            a(bk.NONEMPTY_OBJECT);
        }
    }

    private void c(String str) throws IOException {
        this.a.write("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\f') {
                this.a.write("\\f");
            } else if (cCharAt != '\r') {
                if (cCharAt == '\"' || cCharAt == '\\') {
                    this.a.write(92);
                } else if (cCharAt != 8232 && cCharAt != 8233) {
                    switch (cCharAt) {
                        case '\b':
                            this.a.write("\\b");
                            continue;
                        case '\t':
                            this.a.write("\\t");
                            continue;
                        case '\n':
                            this.a.write("\\n");
                            continue;
                        default:
                            if (cCharAt <= 31) {
                                this.a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                            }
                            break;
                    }
                } else {
                    this.a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                }
                this.a.write(cCharAt);
            } else {
                this.a.write("\\r");
            }
        }
        this.a.write("\"");
    }

    private bk e() {
        List<bk> list = this.b;
        return list.get(list.size() - 1);
    }

    private bn f() throws IOException {
        b(false);
        this.a.write(AbstractJsonLexerKt.NULL);
        return this;
    }

    private void g() throws IOException {
        if (this.c == null) {
            return;
        }
        this.a.write("\n");
        for (int i = 1; i < this.b.size(); i++) {
            this.a.write(this.c);
        }
    }

    private void h() throws IOException {
        bk bkVarE = e();
        if (bkVarE == bk.NONEMPTY_OBJECT) {
            this.a.write(44);
        } else if (bkVarE != bk.EMPTY_OBJECT) {
            throw new IllegalStateException("Nesting problem: " + this.b);
        }
        g();
        a(bk.DANGLING_NAME);
    }

    public final bn a() {
        return a(bk.EMPTY_ARRAY, C3510b4.j.d);
    }

    public final bn a(long j) throws IOException {
        b(false);
        this.a.write(Long.toString(j));
        return this;
    }

    public final bn a(bf bfVar) throws IOException {
        b(false);
        bfVar.a(this.a);
        return this;
    }

    public final bn a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        String string = number.toString();
        if (!this.e && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
        }
        b(false);
        this.a.append((CharSequence) string);
        return this;
    }

    public final bn a(Object obj) {
        if (obj == null) {
            return f();
        }
        if (obj instanceof bl) {
            if (this.b.size() == this.b.size()) {
                return this;
            }
            throw new IllegalStateException(obj.getClass().getName() + ".writeToJson(JsonWriter) wrote incomplete value");
        }
        if (obj instanceof Boolean) {
            return a(((Boolean) obj).booleanValue());
        }
        if (obj instanceof Number) {
            if (obj instanceof Long) {
                return a(((Number) obj).longValue());
            }
            return obj instanceof Double ? a(((Number) obj).doubleValue()) : a((Number) obj);
        }
        if (obj instanceof String) {
            return b((String) obj);
        }
        if (obj instanceof bf) {
            return a((bf) obj);
        }
        if (obj instanceof Collection) {
            return a((Collection) obj);
        }
        if (obj instanceof Map) {
            return b((Map) obj);
        }
        if (obj instanceof Date) {
            return a((Date) obj);
        }
        if (obj instanceof Object[]) {
            return a((Object[]) obj);
        }
        throw new IllegalArgumentException("Unknown type: " + obj.getClass().getName());
    }

    public final bn a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        h();
        c(str);
        return this;
    }

    public final bn a(Collection collection) {
        if (collection == null) {
            return f();
        }
        a();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        b();
        return this;
    }

    final bn a(Map<Object, Object> map) throws IOException {
        if (map == null) {
            return f();
        }
        c();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            a(String.valueOf(entry.getKey()));
            a(entry.getValue());
        }
        d();
        return this;
    }

    public final bn b() {
        return a(bk.EMPTY_ARRAY, bk.NONEMPTY_ARRAY, C3510b4.j.e);
    }

    public final bn b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        b(false);
        c(str);
        return this;
    }

    public final bn c() {
        return a(bk.EMPTY_OBJECT, "{");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
        if (e() != bk.NONEMPTY_DOCUMENT) {
            throw new IOException("Incomplete document");
        }
    }

    public final bn d() {
        return a(bk.EMPTY_OBJECT, bk.NONEMPTY_OBJECT, "}");
    }
}
