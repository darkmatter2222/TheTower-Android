package com.unity3d.player.a;

import android.app.Activity;
import android.os.Build;
import com.unity3d.player.UnityPlayer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class Q implements Thread.UncaughtExceptionHandler {
    public volatile Thread.UncaughtExceptionHandler a;
    public String b;

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        String strValueOf;
        try {
            StringBuilder sbAppend = new StringBuilder().append("FATAL EXCEPTION [" + thread.getName() + "]\n").append("Unity version     : 6000.3.15f1\n").append("Device model      : " + Build.MANUFACTURER + " " + Build.MODEL + "\n");
            String str = Build.FINGERPRINT;
            StringBuilder sb = new StringBuilder("Device fingerprint: ");
            sb.append(str);
            sb.append("\n");
            StringBuilder sbAppend2 = sbAppend.append(sb.toString()).append("CPU supported ABI : " + Arrays.toString(Build.SUPPORTED_ABIS) + "\n").append("Build Type        : Release\nScripting Backend : IL2CPP\n").append("Libs loaded from  : " + this.b + "\n");
            try {
                Activity activity = UnityPlayer.currentActivity;
                strValueOf = String.valueOf(activity.getPackageManager().getApplicationInfo(activity.getPackageName(), 128).metaData.getBoolean("unity.strip-engine-code"));
            } catch (Exception unused) {
                strValueOf = "Undefined";
            }
            Error error = new Error(sbAppend2.append("Strip Engine Code : " + strValueOf + "\n").toString());
            error.setStackTrace(new StackTraceElement[0]);
            error.initCause(th);
            this.a.uncaughtException(thread, error);
        } catch (Throwable unused2) {
            this.a.uncaughtException(thread, th);
        }
    }
}
