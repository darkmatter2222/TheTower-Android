package com.ironsource.adqualitysdk.sdk.i;

import android.os.Process;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ọ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0814 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0690 f3061;

    public C0814(C0690 c0690) {
        this.f3061 = c0690;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            AbstractC1071.m2434(StringFog.decrypt("mvTZwiAkOyOo\n", "25q4rllQUkA=\n"), StringFog.decrypt("0Wphq1QBdNGkYXqpRBZozOtq\n", "hAQCyiFmHKU=\n"), StringFog.decrypt("6lRPbQrb+WDV\n", "viYuDm+5mAM=\n"), th, null, null, false, false, false);
        } catch (Throwable unused) {
        }
        this.f3061.m2239();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3061.f2625;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (SecurityException unused2) {
        }
    }
}
