package com.ironsource.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ףּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0933 extends AbstractC0306 implements InterfaceC0511 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public C0942 f3331;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public boolean f3332;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public boolean f3333;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public boolean f3334;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public boolean f3335;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public Class f3336;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public C1034 f3337;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f3330 = StringFog.decrypt("UtSM9CGb1O1S07D8OZbM8WE=\n", "E7f4nVfyoJQ=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f3329 = StringFog.decrypt("MaC9tatLjCQhoKXpoVzNKza+pfquUJczIau7tbFdiGQTq4PzrU6N\n", "Us/Qm8I540o=\n");

    public C0933(JSONObject jSONObject, C0692 c0692) {
        super(c0692);
        this.f3335 = false;
        this.f3334 = false;
        this.f3333 = false;
        this.f3332 = false;
        C0942 c0942 = new C0942(jSONObject);
        this.f1543 = c0942;
        this.f3331 = c0942;
        AbstractC0340.m2054(new C1025(this));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m2303(C0933 c0933, Activity activity) {
        c0933.getClass();
        Class<?> cls = activity.getClass();
        Class cls2 = c0933.f3336;
        if (cls2 != null) {
            return c0933.f3331.f3356 ? cls2.equals(cls) : cls2.isAssignableFrom(cls);
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C1007 c1007 = new C1007(this, activity, bundle);
        if (this.f3331.f3355) {
            AbstractC0340.m2053(c1007);
        } else {
            AbstractC0340.m2055(c1007);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        C1048 c1048 = new C1048(this, activity);
        if (this.f3331.f3355) {
            AbstractC0340.m2053(c1048);
        } else {
            AbstractC0340.m2055(c1048);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        AbstractC0340.m2057(new C0963(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C0967 c0967 = new C0967(this, activity);
        if (this.f3331.f3355) {
            AbstractC0340.m2053(c0967);
        } else {
            AbstractC0340.m2055(c0967);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C0966 c0966 = new C0966(this, activity, bundle);
        if (this.f3331.f3355) {
            AbstractC0340.m2053(c0966);
        } else {
            AbstractC0340.m2055(c0966);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        AbstractC0340.m2057(new C0979(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        C0954 c0954 = new C0954(this, activity);
        if (this.f3331.f3355) {
            AbstractC0340.m2053(c0954);
        } else {
            AbstractC0340.m2055(c0954);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾇ */
    public final View mo1813(Object obj) {
        return ((Activity) obj).findViewById(R.id.content);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾇ */
    public final AbstractViewOnLayoutChangeListenerC3462b0 mo1814() {
        return new C3464c0();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾇ */
    public final void mo2033(Activity activity) {
        AbstractC0340.m2057(new C1023(this, activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1816(Object obj, ArrayList arrayList) {
        Activity activity = (Activity) obj;
        C0942 c0942 = this.f3331;
        C.m1823(activity, WebView.class, c0942.f3357, c0942.f3358, false, false, null, c0942.f1583, arrayList);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾒ */
    public final InterfaceC0522 mo1817() {
        return this;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2034(Activity activity) {
        AbstractC0340.m2057(new C1024(this, activity));
    }
}
