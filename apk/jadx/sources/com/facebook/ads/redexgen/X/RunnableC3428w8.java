package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.w8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3428w8 implements Runnable {
    public final /* synthetic */ C13405y A00;

    public RunnableC3428w8(C13405y c13405y) {
        this.A00 = c13405y;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0A == null || this.A00.getResources().getConfiguration().orientation != 1) {
                return;
            }
            this.A00.A0A.A0A();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
