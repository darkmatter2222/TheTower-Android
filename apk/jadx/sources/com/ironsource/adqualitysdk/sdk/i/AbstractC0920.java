package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.בּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0920 {
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2300(Application application, Activity activity) {
        AbstractC1081.m2437().mo1897(application, activity);
        C0125 c0125M1912 = C0125.m1912();
        synchronized (c0125M1912) {
            AbstractC0340.m2054(new C0252(c0125M1912));
        }
        C0820.m2278().m2282();
    }
}
