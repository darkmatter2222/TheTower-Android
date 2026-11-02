package com.tapjoy.internal;

import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes5.dex */
public class jn {
    public static final jn a = new jn() { // from class: com.tapjoy.internal.jn.1
        @Override // com.tapjoy.internal.jn
        public final void a() {
        }
    };
    private boolean b;
    private long c;

    public void a() throws InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.b && this.c - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
