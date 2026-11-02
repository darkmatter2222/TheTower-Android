package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1094 extends AbstractC1081 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public Context f3862;

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1081
    /* JADX INFO: renamed from: ﻛ */
    public final boolean mo1893() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f3862.getSystemService(StringFog.decrypt("b3OkW4B8nyI=\n", "DhDQMvYV61s=\n"))).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = this.f3862.getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1081
    /* JADX INFO: renamed from: ﾒ */
    public final Activity mo1895() {
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1081
    /* JADX INFO: renamed from: ﾒ */
    public final synchronized void mo1897(Application application, Activity activity) {
        try {
            if (application != null) {
                this.f3862 = application.getApplicationContext();
            } else if (activity != null) {
                this.f3862 = activity.getApplicationContext();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
