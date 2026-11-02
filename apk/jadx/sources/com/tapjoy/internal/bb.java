package com.tapjoy.internal;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class bb implements bf {
    private final StringWriter a;
    private final bn b;

    public bb() {
        StringWriter stringWriter = new StringWriter();
        this.a = stringWriter;
        this.b = new bn(stringWriter);
    }

    public static String a(Object obj) {
        return new bb().b(obj).toString();
    }

    private bb b(Object obj) {
        try {
            this.b.a(obj);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a() {
        try {
            this.b.a();
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a(long j) {
        try {
            this.b.a(j);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a(bf bfVar) {
        try {
            this.b.a(bfVar);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a(Number number) {
        try {
            this.b.a(number);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a(String str) {
        try {
            this.b.a(str);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a(Collection collection) {
        try {
            this.b.a(collection);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb a(Map map) {
        try {
            this.b.a((Map<Object, Object>) map);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    @Override // com.tapjoy.internal.bf
    public final void a(Writer writer) {
        try {
            this.b.a.flush();
            writer.write(this.a.toString());
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb b() {
        try {
            this.b.b();
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb b(String str) {
        try {
            this.b.b(str);
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb c() {
        try {
            this.b.c();
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final bb d() {
        try {
            this.b.d();
            return this;
        } catch (IOException e) {
            throw gt.a(e);
        }
    }

    public final String toString() {
        try {
            this.b.a.flush();
            return this.a.toString();
        } catch (IOException e) {
            throw gt.a(e);
        }
    }
}
