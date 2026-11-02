package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.TextView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0820 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static C0820 f3069;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3070 = StringFog.decrypt("aAdaSBa6SJxaCF1mHqVolkEOR3kSpGqaTA4=\n", "L2s1KnfWHPM=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public C0902 f3073;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final WeakHashMap f3072 = new WeakHashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public C0231 f3071 = new C0231(-1, -1, -1, -1);

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C0820 m2278() {
        if (f3069 == null) {
            f3069 = new C0820();
        }
        return f3069;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2279(C0820 c0820, MotionEvent motionEvent) {
        c0820.getClass();
        try {
            AbstractC0340.m2054(new C0821(c0820, MotionEvent.obtain(motionEvent)));
        } catch (Throwable th) {
            AbstractC1071.m2435(f3070, StringFog.decrypt("dccRKbErsS1EwQoopCuiJ0XWC2axaqEQENoRZrFqoRE=\n", "MLVjRsML1kg=\n"), th, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2280(C0820 c0820, ViewGroup viewGroup, ViewOnLayoutChangeListenerC0876 viewOnLayoutChangeListenerC0876) {
        JSONObject jSONObject;
        c0820.getClass();
        if (viewGroup != null) {
            try {
                if (viewGroup.getChildCount() != 0) {
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        if (viewGroup.getChildAt(i) instanceof TextView) {
                        }
                    }
                    return;
                }
            } catch (Throwable th) {
                String str = f3070;
                AbstractC0250.m1999(str, str, StringFog.decrypt("7ZMi2nSwwH/NgjvcaPeDfs7BBtxj5+Rlx5QglWX/zWPJiD7GJv/Ne9HBBNB+5PV+zZYj\n", "qOFQtQaQoxc=\n"), th, null, false);
            }
            C0961 c0961 = (C0961) AbstractC0953.m2334();
            synchronized (c0961) {
                jSONObject = c0961.f2613;
            }
            if (jSONObject.optBoolean(StringFog.decrypt("nF7Z\n", "7zGun0NoEFI=\n"), false)) {
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof WindowManager.LayoutParams) {
                    WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
                    int i2 = layoutParams2.type;
                    if ((layoutParams2.flags & 16) != 0 || i2 == 2005 || i2 == 2003 || i2 == 2038) {
                        return;
                    }
                }
            }
            Activity activityM1821 = C.m1821(viewGroup);
            if (C0232.m1979().m1982(activityM1821)) {
                if (viewGroup.findViewById(160766228) == null) {
                    c0820.m2284(viewGroup, viewOnLayoutChangeListenerC0876);
                }
            } else if (C0232.m1979().m1980(activityM1821)) {
                new Handler(Looper.getMainLooper()).post(new C0822(c0820, viewGroup, new C0823(c0820), viewOnLayoutChangeListenerC0876));
            }
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized void m2281() {
        if (this.f3073 != null) {
            for (ViewGroup viewGroup : this.f3072.keySet()) {
                ViewParent parent = viewGroup.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(viewGroup);
                }
            }
            this.f3072.clear();
            C0733.m2256().m2257(this.f3073);
            this.f3073 = null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized void m2282() {
        if (this.f3073 == null) {
            this.f3073 = new C0902(this);
            C0733.m2256().m2258(this.f3073);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized C0231 m2283() {
        return this.f3071;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2284(ViewGroup viewGroup, ViewOnLayoutChangeListenerC0876 viewOnLayoutChangeListenerC0876) {
        C0857 c0857 = new C0857(this, viewGroup.getContext(), AbstractC0953.m2334().mo2339());
        c0857.setAlpha(0.0f);
        synchronized (this) {
            this.f3072.put(c0857, new Object());
        }
        c0857.setId(160766228);
        new Handler(Looper.getMainLooper()).post(new C0842(viewGroup, c0857, viewOnLayoutChangeListenerC0876));
    }
}
