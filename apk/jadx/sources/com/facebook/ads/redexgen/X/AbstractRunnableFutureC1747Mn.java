package com.facebook.ads.redexgen.X;

import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractRunnableFutureC1747Mn<R, E extends Exception> implements RunnableFuture<R> {
    public Exception A00;
    public R A01;
    public Thread A02;
    public boolean A03;
    public final C1731Lx A05 = new C1731Lx();
    public final C1731Lx A04 = new C1731Lx();
    public final Object A06 = new Object();

    private R A00() throws ExecutionException {
        if (this.A03) {
            throw new CancellationException();
        }
        if (this.A00 == null) {
            return this.A01;
        }
        throw new ExecutionException(this.A00);
    }

    public abstract R A01() throws Exception;

    public final void A02() {
        this.A04.A01();
    }

    public abstract void A03();

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this.A06) {
            if (this.A03 || this.A04.A03()) {
                return false;
            }
            this.A03 = true;
            A03();
            Thread thread = this.A02;
            if (thread == null) {
                this.A05.A04();
                this.A04.A04();
            } else if (z) {
                thread.interrupt();
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public final R get() throws ExecutionException, InterruptedException {
        this.A04.A00();
        return A00();
    }

    @Override // java.util.concurrent.Future
    public final R get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.A04.A05(TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            return A00();
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.A03;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.A04.A03();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0039 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0050 */
    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = com.facebook.ads.redexgen.X.AbstractC2971oi.A02(r5)
            if (r0 == 0) goto L7
            return
        L7:
            r4 = r5
            java.lang.Object r1 = r4.A06     // Catch: java.lang.Throwable -> L69
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L69
            boolean r0 = r4.A03     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L14
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L11
            goto L13
        L11:
            r0 = move-exception
            goto L67
        L13:
            return
        L14:
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L66
            r4.A02 = r0     // Catch: java.lang.Throwable -> L66
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L66
            com.facebook.ads.redexgen.X.Lx r0 = r4.A05     // Catch: java.lang.Throwable -> L69
            r0.A04()     // Catch: java.lang.Throwable -> L69
            r3 = 0
            java.lang.Object r0 = r4.A01()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L53
            r4.A01 = r0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L53
            java.lang.Object r1 = r4.A06     // Catch: java.lang.Throwable -> L69
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L69
            com.facebook.ads.redexgen.X.Lx r0 = r4.A04     // Catch: java.lang.Throwable -> L36
            r0.A04()     // Catch: java.lang.Throwable -> L36
            r4.A02 = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L36
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L36
            goto L4c
        L36:
            r0 = move-exception
        L37:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L39
            goto L52
        L39:
            r0 = move-exception
            goto L37
        L3b:
            r0 = move-exception
            r4.A00 = r0     // Catch: java.lang.Throwable -> L53
            java.lang.Object r1 = r4.A06     // Catch: java.lang.Throwable -> L69
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L69
            com.facebook.ads.redexgen.X.Lx r0 = r4.A04     // Catch: java.lang.Throwable -> L4d
            r0.A04()     // Catch: java.lang.Throwable -> L4d
            r4.A02 = r3     // Catch: java.lang.Throwable -> L4d
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L4d
        L4c:
            return
        L4d:
            r0 = move-exception
        L4e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L50
            goto L52
        L50:
            r0 = move-exception
            goto L4e
        L52:
            throw r0     // Catch: java.lang.Throwable -> L69
        L53:
            r2 = move-exception
            java.lang.Object r1 = r4.A06     // Catch: java.lang.Throwable -> L69
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L69
            com.facebook.ads.redexgen.X.Lx r0 = r4.A04     // Catch: java.lang.Throwable -> L63
            r0.A04()     // Catch: java.lang.Throwable -> L63
            r4.A02 = r3     // Catch: java.lang.Throwable -> L63
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L63
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L63
            throw r2     // Catch: java.lang.Throwable -> L69
        L63:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L63
            throw r0     // Catch: java.lang.Throwable -> L69
        L66:
            r0 = move-exception
        L67:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L66
            throw r0     // Catch: java.lang.Throwable -> L69
        L69:
            r0 = move-exception
            com.facebook.ads.redexgen.X.AbstractC2971oi.A00(r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractRunnableFutureC1747Mn.run():void");
    }
}
