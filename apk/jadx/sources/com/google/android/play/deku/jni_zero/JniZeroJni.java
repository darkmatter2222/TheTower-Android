package com.google.android.play.deku.jni_zero;

/* JADX INFO: loaded from: classes.dex */
class JniZeroJni implements JniZero.Natives {
    private static JniTestInstanceHolder sOverride;

    JniZeroJni() {
    }

    public static JniZero.Natives get() {
        Object obj;
        JniTestInstanceHolder jniTestInstanceHolder = sOverride;
        return (jniTestInstanceHolder == null || (obj = jniTestInstanceHolder.value) == null) ? new JniZeroJni() : (JniZero.Natives) obj;
    }

    private static native void nativeSetJniClassLoader(Object obj);

    public static void setInstanceForTesting(JniZero.Natives natives) {
        JniTestInstanceHolder jniTestInstanceHolderCreate = sOverride;
        if (jniTestInstanceHolderCreate == null) {
            jniTestInstanceHolderCreate = JniTestInstanceHolder.create();
            sOverride = jniTestInstanceHolderCreate;
        }
        jniTestInstanceHolderCreate.value = natives;
    }

    @Override // com.google.android.play.deku.jni_zero.JniZero.Natives
    public void setJniClassLoader(ClassLoader classLoader) {
        nativeSetJniClassLoader(classLoader);
    }
}
