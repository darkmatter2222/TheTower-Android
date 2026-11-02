package com.ironsource.adqualitysdk.sdk.i;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class RunnableC0428 implements Runnable {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ CountDownLatch f1971;

    public RunnableC0428(CountDownLatch countDownLatch) {
        this.f1971 = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1971.countDown();
    }
}
