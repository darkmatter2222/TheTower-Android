package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
final class jg implements jc {
    public final jb a = new jb();
    public final jl b;
    boolean c;

    jg(jl jlVar) {
        if (jlVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.b = jlVar;
    }

    private jc b() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long jC = this.a.c();
        if (jC > 0) {
            this.b.a(this.a, jC);
        }
        return this;
    }

    @Override // com.tapjoy.internal.jc
    public final jc a() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long j = this.a.b;
        if (j > 0) {
            this.b.a(this.a, j);
        }
        return this;
    }

    @Override // com.tapjoy.internal.jl
    public final void a(jb jbVar, long j) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.a(jbVar, j);
        b();
    }

    @Override // com.tapjoy.internal.jc
    public final jc b(je jeVar) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.b(jeVar);
        return b();
    }

    @Override // com.tapjoy.internal.jc
    public final jc b(String str) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.b(str);
        return b();
    }

    @Override // com.tapjoy.internal.jl, java.io.Closeable, java.lang.AutoCloseable, com.tapjoy.internal.jm
    public final void close() throws Throwable {
        if (this.c) {
            return;
        }
        if (this.a.b > 0) {
            jl jlVar = this.b;
            jb jbVar = this.a;
            jlVar.a(jbVar, jbVar.b);
        }
        th = null;
        try {
            this.b.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.c = true;
        if (th != null) {
            jo.a(th);
        }
    }

    @Override // com.tapjoy.internal.jc
    public final jc d(int i) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.d(i);
        return b();
    }

    @Override // com.tapjoy.internal.jc
    public final jc e(int i) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.e(i);
        return b();
    }

    @Override // com.tapjoy.internal.jc
    public final jc f(long j) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.a.f(j);
        return b();
    }

    @Override // com.tapjoy.internal.jl, java.io.Flushable
    public final void flush() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (this.a.b > 0) {
            jl jlVar = this.b;
            jb jbVar = this.a;
            jlVar.a(jbVar, jbVar.b);
        }
        this.b.flush();
    }

    public final String toString() {
        return "buffer(" + this.b + ")";
    }
}
