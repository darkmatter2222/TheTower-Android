package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1780Nu extends Thread {
    public final /* synthetic */ T0 A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1780Nu(T0 t0, String str) {
        super(str);
        this.A00 = t0;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0R();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
