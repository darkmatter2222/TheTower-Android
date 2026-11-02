package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class hu {
    protected static a a;
    private static hu b;

    public static class a {
        public final String a;
        public final String b;
        public final fk c;
    }

    public static void a(hu huVar) {
        synchronized (hu.class) {
            b = huVar;
            a aVar = a;
            if (aVar != null) {
                a = null;
                huVar.a(aVar);
            }
        }
    }

    public static boolean c() {
        hu huVar = b;
        if (huVar != null && huVar.b()) {
            return true;
        }
        a aVar = a;
        return (aVar == null || aVar.c.a()) ? false : true;
    }

    protected abstract void a(a aVar);

    protected abstract boolean b();
}
