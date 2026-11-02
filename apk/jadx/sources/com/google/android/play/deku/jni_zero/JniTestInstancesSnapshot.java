package com.google.android.play.deku.jni_zero;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class JniTestInstancesSnapshot {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Object[] mValues;

    private JniTestInstancesSnapshot(Object[] objArr) {
        this.mValues = objArr;
    }

    public static void clearAllForTesting() {
        restoreSnapshotForTesting(new JniTestInstancesSnapshot(new Object[0]));
    }

    public static void restoreSnapshotForTesting(JniTestInstancesSnapshot jniTestInstancesSnapshot) {
        synchronized (JniTestInstanceHolder.class) {
            Object[] objArr = jniTestInstancesSnapshot.mValues;
            ArrayList arrayList = JniTestInstanceHolder.sAllOverrides;
            int length = objArr.length;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i = 0; i < length; i++) {
                    ((JniTestInstanceHolder) arrayList.get(i)).value = objArr[i];
                }
                while (length < size) {
                    ((JniTestInstanceHolder) arrayList.get(length)).value = null;
                    length++;
                }
            }
        }
    }

    public static JniTestInstancesSnapshot snapshotOverridesForTesting() {
        JniTestInstancesSnapshot jniTestInstancesSnapshot;
        synchronized (JniTestInstanceHolder.class) {
            ArrayList arrayList = JniTestInstanceHolder.sAllOverrides;
            if (arrayList == null) {
                jniTestInstancesSnapshot = new JniTestInstancesSnapshot(new Object[0]);
            } else {
                Object[] objArr = new Object[arrayList.size()];
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    objArr[i] = ((JniTestInstanceHolder) arrayList.get(i)).value;
                }
                jniTestInstancesSnapshot = new JniTestInstancesSnapshot(objArr);
            }
        }
        return jniTestInstancesSnapshot;
    }
}
