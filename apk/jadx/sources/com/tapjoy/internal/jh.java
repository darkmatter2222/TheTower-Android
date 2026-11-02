package com.tapjoy.internal;

import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
final class jh implements jd {
    public final jb a = new jb();
    public final jm b;
    boolean c;

    jh(jm jmVar) {
        if (jmVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.b = jmVar;
    }

    @Override // com.tapjoy.internal.jd
    public final void a(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (this.a.b < j) {
            if (this.b.b(this.a, 8192L) == -1) {
                throw new EOFException();
            }
        }
    }

    @Override // com.tapjoy.internal.jm
    public final long b(jb jbVar, long j) {
        if (jbVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (this.a.b == 0 && this.b.b(this.a, 8192L) == -1) {
            return -1L;
        }
        return this.a.b(jbVar, Math.min(j, this.a.b));
    }

    @Override // com.tapjoy.internal.jd
    public final je b(long j) throws EOFException {
        a(j);
        return this.a.b(j);
    }

    @Override // com.tapjoy.internal.jd
    public final boolean b() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        return this.a.b() && this.b.b(this.a, 8192L) == -1;
    }

    @Override // com.tapjoy.internal.jd
    public final String c(long j) throws EOFException {
        a(j);
        return this.a.c(j);
    }

    @Override // com.tapjoy.internal.jm, java.lang.AutoCloseable
    public final void close() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.b.close();
        jb jbVar = this.a;
        try {
            jbVar.d(jbVar.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.tapjoy.internal.jd
    public final byte d() throws EOFException {
        a(1L);
        return this.a.d();
    }

    @Override // com.tapjoy.internal.jd
    public final void d(long j) throws EOFException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.a.b == 0 && this.b.b(this.a, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.a.b);
            this.a.d(jMin);
            j -= jMin;
        }
    }

    @Override // com.tapjoy.internal.jd
    public final int f() throws EOFException {
        a(4L);
        return jo.a(this.a.e());
    }

    @Override // com.tapjoy.internal.jd
    public final long g() throws EOFException {
        a(8L);
        return this.a.g();
    }

    public final String toString() {
        return "buffer(" + this.b + ")";
    }
}
