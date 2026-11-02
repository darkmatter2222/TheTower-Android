package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ľ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0125 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static C0125 f807;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public C0288 f808;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public ChoreographerFrameCallbackC0163 f809;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f812;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashMap f811 = new HashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Handler f810 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C0125 m1912() {
        if (f807 == null) {
            f807 = new C0125();
        }
        return f807;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1913(C0125 c0125) {
        if (c0125.f812 || new HashMap(c0125.f811).isEmpty()) {
            return;
        }
        c0125.f812 = true;
        AbstractC0340.m2054(new C0151(c0125));
    }
}
