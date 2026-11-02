package com.ironsource;

import android.app.Activity;
import android.content.MutableContextWrapper;

/* JADX INFO: renamed from: com.ironsource.e4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3565e4 {
    MutableContextWrapper a;

    public Activity a() {
        return (Activity) this.a.getBaseContext();
    }

    public synchronized void a(Activity activity) {
        if (this.a == null) {
            this.a = new MutableContextWrapper(activity);
        }
        this.a.setBaseContext(activity);
    }

    public synchronized void b() {
        this.a = null;
    }
}
