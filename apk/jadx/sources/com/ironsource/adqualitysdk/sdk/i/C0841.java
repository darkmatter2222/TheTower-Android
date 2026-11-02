package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ΐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0841 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Handler f3106;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0389 f3107;

    public C0841(Context context, String str, String str2) {
        this.f3107 = new C0389(context, str, str2);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Handler m2289() {
        Handler handler;
        synchronized (C0841.class) {
            if (f3106 == null) {
                HandlerThread handlerThread = new HandlerThread(StringFog.decrypt("29brBMDxulLDx/0gwPqq\n", "kLOSUqGdzzc=\n"));
                handlerThread.start();
                f3106 = new Handler(handlerThread.getLooper());
            }
            handler = f3106;
        }
        return handler;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m2290(String str) {
        C0389 c0389 = this.f3107;
        c0389.getClass();
        try {
            C0320 c0320 = c0389.f1887;
            synchronized (c0320) {
                c0320.f1570.delete(C0320.f1569, StringFog.decrypt("uK6XB4Y=\n", "08vuOrkwJ7Y=\n"), new String[]{str});
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2291(String str) {
        C0389 c0389 = this.f3107;
        c0389.getClass();
        try {
            String strM2050 = c0389.f1887.m2050(str);
            if (strM2050 == null || TextUtils.isEmpty(strM2050)) {
                return strM2050;
            }
            try {
                return c0389.f1888.m2089(strM2050);
            } catch (C0437 unused) {
                return "";
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2292(String str, String str2) {
        C0389 c0389 = this.f3107;
        c0389.getClass();
        try {
            c0389.f1887.m2052(str, c0389.f1888.m2090(str2));
        } catch (Throwable unused) {
        }
    }
}
