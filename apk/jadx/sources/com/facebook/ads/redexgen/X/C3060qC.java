package com.facebook.ads.redexgen.X;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3060qC implements Closeable {
    public C3059qB A00;
    public boolean A01;
    public final C3058qA A02;
    public final Runnable A03;

    public C3060qC(long j, Runnable runnable) {
        this.A02 = new C3058qA(j);
        this.A02.A02();
        this.A03 = runnable;
        this.A01 = false;
    }

    private final synchronized void A03() {
        if (this.A00 == null && !this.A01) {
            this.A00 = new C3059qB(this);
        }
    }

    public final C3058qA A04() {
        return this.A02;
    }

    public final synchronized void A05() {
        if (this.A01) {
            return;
        }
        if (this.A00 == null) {
            this.A00 = new C3059qB(this);
        }
        this.A00.A00();
    }

    public final synchronized void A06() {
        if (this.A02.A05() && !this.A01) {
            A03();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        C3059qB c3059qB;
        synchronized (this) {
            this.A01 = true;
            c3059qB = this.A00;
        }
        if (c3059qB != null) {
            c3059qB.close();
        }
    }
}
