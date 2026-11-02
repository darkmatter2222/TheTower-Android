package com.unity3d.player;

import android.content.Context;
import com.google.android.gms.tasks.OnSuccessListener;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes5.dex */
class AndroidAppSetIdHelper {
    AndroidAppSetIdHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeOnAndroidAppSetIdResult(String str);

    public static void requestAppSetId(Context context) {
        try {
            Class<?> cls = Class.forName("com.google.android.gms.appset.AppSet");
            Object objInvoke = cls.getMethod("getClient", Context.class).invoke(cls, context);
            if (objInvoke == null) {
                nativeOnAndroidAppSetIdResult(null);
                return;
            }
            Object objInvoke2 = objInvoke.getClass().getMethod("getAppSetIdInfo", null).invoke(objInvoke, null);
            if (objInvoke2 == null) {
                nativeOnAndroidAppSetIdResult(null);
            } else {
                objInvoke2.getClass().getMethod("addOnSuccessListener", OnSuccessListener.class).invoke(objInvoke2, Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{OnSuccessListener.class}, new C4084a()));
            }
        } catch (Exception unused) {
            nativeOnAndroidAppSetIdResult(null);
        }
    }
}
