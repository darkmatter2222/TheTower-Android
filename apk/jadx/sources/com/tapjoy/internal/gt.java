package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class gt {
    public static RuntimeException a(Throwable th) {
        b((Throwable) gr.a(th));
        throw new RuntimeException(th);
    }

    private static <X extends Throwable> void a(Throwable th, Class<X> cls) {
        if (th == null || !cls.isInstance(th)) {
            return;
        }
        try {
            throw cls.cast(th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private static void b(Throwable th) {
        a(th, Error.class);
        a(th, RuntimeException.class);
    }
}
