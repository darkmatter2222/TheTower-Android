package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1731Lx {
    public boolean A00;
    public final InterfaceC1729Lu A01;

    public C1731Lx() {
        this(InterfaceC1729Lu.A00);
    }

    public C1731Lx(InterfaceC1729Lu interfaceC1729Lu) {
        this.A01 = interfaceC1729Lu;
    }

    public final synchronized void A00() throws InterruptedException {
        while (!this.A00) {
            wait();
        }
    }

    public final synchronized void A01() {
        boolean z = false;
        while (!this.A00) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean A02() {
        boolean z;
        z = this.A00;
        this.A00 = false;
        return z;
    }

    public final synchronized boolean A03() {
        return this.A00;
    }

    public final synchronized boolean A04() {
        if (this.A00) {
            return false;
        }
        this.A00 = true;
        notifyAll();
        return true;
    }

    public final synchronized boolean A05(long j) throws InterruptedException {
        try {
            if (j <= 0) {
                return this.A00;
            }
            long jA6s = this.A01.A6s();
            long j2 = jA6s + j;
            if (j2 < jA6s) {
                A00();
            } else {
                while (!this.A00 && jA6s < j2) {
                    wait(j2 - jA6s);
                    jA6s = this.A01.A6s();
                }
            }
            return this.A00;
        } catch (Throwable th) {
            throw th;
        }
    }
}
