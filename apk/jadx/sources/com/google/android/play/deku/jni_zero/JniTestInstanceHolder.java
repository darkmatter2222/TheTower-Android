package com.google.android.play.deku.jni_zero;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class JniTestInstanceHolder {
    static ArrayList sAllOverrides;
    public Object value;

    private JniTestInstanceHolder() {
    }

    public static synchronized JniTestInstanceHolder create() {
        JniTestInstanceHolder jniTestInstanceHolder;
        if (sAllOverrides == null) {
            sAllOverrides = new ArrayList();
        }
        jniTestInstanceHolder = new JniTestInstanceHolder();
        sAllOverrides.add(jniTestInstanceHolder);
        return jniTestInstanceHolder;
    }
}
