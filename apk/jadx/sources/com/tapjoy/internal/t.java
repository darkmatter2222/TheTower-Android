package com.tapjoy.internal;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public final class t {
    private static Handler a;

    public static synchronized Handler a() {
        if (a == null) {
            a = new Handler(Looper.getMainLooper());
        }
        return a;
    }

    public static au a(final Handler handler) {
        return new au() { // from class: com.tapjoy.internal.t.1
            @Override // com.tapjoy.internal.au
            public final boolean a(Runnable runnable) {
                return handler.post(runnable);
            }
        };
    }
}
