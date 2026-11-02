package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.צּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0934 extends ThreadPoolExecutor implements InterfaceC0513 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3338;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0943 f3339;

    /* JADX WARN: Illegal instructions before constructor call */
    public C0934(C0909 c0909, ThreadPoolExecutor threadPoolExecutor, C0943 c0943) {
        this.f3338 = c0909;
        int corePoolSize = threadPoolExecutor.getCorePoolSize();
        int maximumPoolSize = threadPoolExecutor.getMaximumPoolSize();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        super(corePoolSize, maximumPoolSize, threadPoolExecutor.getKeepAliveTime(timeUnit), timeUnit, threadPoolExecutor.getQueue());
        this.f3339 = c0943;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f3338.m2030(this, this.f3339, StringFog.decrypt("VeyaacEClhhu3Ix01heKD2SAumnBApYYZA==\n", "Aa7fEaRh42w=\n"), runnable);
        super.execute(runnable);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1868() {
        return this;
    }
}
