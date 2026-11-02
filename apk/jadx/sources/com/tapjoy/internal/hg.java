package com.tapjoy.internal;

import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public final class hg {
    public static boolean a;

    public static void a(String str) {
        if (a) {
            w.a(4, "Tapjoy", str, (Throwable) null);
        }
    }

    public static void a(String str, String str2, String str3) {
        if (a) {
            w.a("Tapjoy", "{}: {} {}", str, str2, str3);
        }
    }

    public static void a(String str, Object... objArr) {
        if (a) {
            w.a(4, "Tapjoy", str, objArr);
        }
    }

    public static boolean a(Object obj, String str) {
        if (obj != null) {
            return true;
        }
        if (!a) {
            return false;
        }
        b(str);
        return false;
    }

    public static boolean a(boolean z, String str) {
        if (!a || z) {
            return z;
        }
        b(str);
        throw new IllegalStateException(str);
    }

    public static void b(String str) {
        if (a) {
            w.a("Tapjoy", str);
        }
    }

    public static void b(String str, Object... objArr) {
        if (a) {
            w.a("Tapjoy", str, objArr);
        }
    }

    static boolean c(String str) {
        return a(Looper.myLooper() == Looper.getMainLooper(), str + ": Must be called on the main/ui thread");
    }

    static void d(String str) {
        if (a) {
            b(str + ": Should be called after initializing the SDK");
        }
    }

    static void e(String str) {
        if (a) {
            b(str + ": Should be called after initializing the SDK");
        }
    }
}
