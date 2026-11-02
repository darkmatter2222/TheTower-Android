package com.tapjoy.internal;

import android.app.Activity;

/* JADX INFO: loaded from: classes5.dex */
public abstract class hd {
    public static hd a;

    public static void b(Activity activity) {
        hd hdVar = a;
        if (hdVar != null) {
            hdVar.a(activity);
        }
    }

    protected abstract void a(Activity activity);
}
