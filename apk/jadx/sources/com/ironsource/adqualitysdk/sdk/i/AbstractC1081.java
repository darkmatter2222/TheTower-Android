package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1081 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static AbstractC1081 f3815;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f3817 = false;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashSet f3816 = new HashSet();

    static {
        StringFog.decrypt("Asd5s/VL+B4jznWo90vROyzYYrT6QsYkINlguPdC\n", "RasW0ZQntHc=\n");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static synchronized AbstractC1081 m2437() {
        if (f3815 == null) {
            f3815 = new C0104();
        }
        return f3815;
    }

    /* JADX INFO: renamed from: ﻛ */
    public abstract boolean mo1893();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized ArrayList m2438() {
        return new ArrayList(this.f3816);
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract Activity mo1895();

    /* JADX INFO: renamed from: ﾒ */
    public abstract void mo1897(Application application, Activity activity);

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2439(C0707 c0707) {
        this.f3816.add(c0707);
    }
}
