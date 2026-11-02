package com.google.android.play.deku.jni_zero;

import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class JniZero {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static boolean sInitialized;
    private static ClassLoader sPendingJniClassLoader;

    interface Natives {
        void setJniClassLoader(ClassLoader classLoader);
    }

    private static void crashIfMultiplexingMisaligned(long j, long j2) {
        try {
            long j3 = Class.forName("J.N").getField("WHOLE_HASH").getLong(null);
            long j4 = Class.forName("J.N").getField("PRIORITY_HASH").getLong(null);
            if (j3 != j && j3 != j2 && j4 != j) {
                throw new RuntimeException("JNI Zero multiplexing hashes do not align. Native: " + j + " or " + j2 + " Java: " + j3 + " or " + j4);
            }
        } catch (ReflectiveOperationException unused) {
        }
    }

    private static Object[] init() {
        sInitialized = true;
        ClassLoader classLoader = sPendingJniClassLoader;
        if (classLoader != null) {
            sPendingJniClassLoader = null;
        } else {
            classLoader = JniZero.class.getClassLoader();
        }
        return new Object[]{Collections.EMPTY_LIST, Collections.EMPTY_MAP, classLoader};
    }

    public static void setJniClassLoader(ClassLoader classLoader) {
        if (sInitialized) {
            JniZeroJni.get().setJniClassLoader(classLoader);
        } else {
            sPendingJniClassLoader = classLoader;
        }
    }
}
