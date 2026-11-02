package kotlin;

/* JADX INFO: loaded from: classes.dex */
public abstract class kq2 {
    public static Object a(Object obj) {
        obj.getClass();
        return obj;
    }

    public static void a(Object obj, Class cls) {
        if (obj == null) {
            throw new IllegalStateException(cls.getCanonicalName() + " must be set");
        }
    }

    public static Object b(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("Cannot return null from a non- @Provides method");
    }
}
