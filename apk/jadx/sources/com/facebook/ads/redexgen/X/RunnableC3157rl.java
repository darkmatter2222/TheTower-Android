package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3157rl implements Runnable {
    public final /* synthetic */ C1491Ck A00;

    public RunnableC3157rl(C1491Ck c1491Ck) {
        this.A00 = c1491Ck;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A0J(EnumC2891nN.A0b);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
