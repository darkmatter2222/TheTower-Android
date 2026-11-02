package com.ironsource.adqualitysdk.sdk.i;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0543 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractRunnableC0757 f2254;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ AtomicBoolean f2255;

    public C0543(AtomicBoolean atomicBoolean, AbstractRunnableC0757 abstractRunnableC0757) {
        this.f2255 = atomicBoolean;
        this.f2254 = abstractRunnableC0757;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (this.f2255.compareAndSet(false, true)) {
            this.f2254.run();
        }
    }
}
