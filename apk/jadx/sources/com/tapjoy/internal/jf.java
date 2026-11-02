package com.tapjoy.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class jf {
    static final Logger a = Logger.getLogger(jf.class.getName());

    private jf() {
    }

    public static jc a(jl jlVar) {
        if (jlVar != null) {
            return new jg(jlVar);
        }
        throw new IllegalArgumentException("sink == null");
    }

    public static jd a(jm jmVar) {
        if (jmVar != null) {
            return new jh(jmVar);
        }
        throw new IllegalArgumentException("source == null");
    }

    public static jl a(final OutputStream outputStream) {
        final jn jnVar = new jn();
        if (outputStream != null) {
            return new jl() { // from class: com.tapjoy.internal.jf.1
                @Override // com.tapjoy.internal.jl
                public final void a(jb jbVar, long j) throws IOException {
                    jo.a(jbVar.b, 0L, j);
                    while (j > 0) {
                        jnVar.a();
                        ji jiVar = jbVar.a;
                        int iMin = (int) Math.min(j, jiVar.c - jiVar.b);
                        outputStream.write(jiVar.a, jiVar.b, iMin);
                        jiVar.b += iMin;
                        long j2 = iMin;
                        j -= j2;
                        jbVar.b -= j2;
                        if (jiVar.b == jiVar.c) {
                            jbVar.a = jiVar.a();
                            jj.a(jiVar);
                        }
                    }
                }

                @Override // com.tapjoy.internal.jl, java.io.Closeable, java.lang.AutoCloseable, com.tapjoy.internal.jm
                public final void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.tapjoy.internal.jl, java.io.Flushable
                public final void flush() throws IOException {
                    outputStream.flush();
                }

                public final String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("out == null");
    }

    public static jm a(final InputStream inputStream) {
        final jn jnVar = new jn();
        if (inputStream != null) {
            return new jm() { // from class: com.tapjoy.internal.jf.2
                @Override // com.tapjoy.internal.jm
                public final long b(jb jbVar, long j) throws IOException {
                    if (j < 0) {
                        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
                    }
                    if (j == 0) {
                        return 0L;
                    }
                    try {
                        jnVar.a();
                        ji jiVarC = jbVar.c(1);
                        int i = inputStream.read(jiVarC.a, jiVarC.c, (int) Math.min(j, 8192 - jiVarC.c));
                        if (i == -1) {
                            return -1L;
                        }
                        jiVarC.c += i;
                        long j2 = i;
                        jbVar.b += j2;
                        return j2;
                    } catch (AssertionError e) {
                        if (jf.a(e)) {
                            throw new IOException(e);
                        }
                        throw e;
                    }
                }

                @Override // com.tapjoy.internal.jm, java.lang.AutoCloseable
                public final void close() throws IOException {
                    inputStream.close();
                }

                public final String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("in == null");
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
