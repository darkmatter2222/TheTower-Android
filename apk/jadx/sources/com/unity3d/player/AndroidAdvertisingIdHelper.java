package com.unity3d.player;

import android.content.Context;
import com.ironsource.C3510b4;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
class AndroidAdvertisingIdHelper {
    AndroidAdvertisingIdHelper() {
    }

    private static native void nativeOnAndroidAdvertisingIdResult(String str);

    public static void requestGoogleAdId(Context context) {
        try {
            Method method = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class);
            if (method == null) {
                nativeOnAndroidAdvertisingIdResult(null);
                return;
            }
            Object objInvoke = method.invoke(null, context);
            if (objInvoke == null) {
                nativeOnAndroidAdvertisingIdResult(null);
                return;
            }
            Class<?> cls = objInvoke.getClass();
            Method method2 = cls.getMethod("getId", null);
            if (method2 == null) {
                nativeOnAndroidAdvertisingIdResult(null);
                return;
            }
            String str = (String) method2.invoke(objInvoke, null);
            Method method3 = cls.getMethod(C3510b4.j.M, null);
            if (method3 == null) {
                nativeOnAndroidAdvertisingIdResult(null);
            } else if (((Boolean) method3.invoke(objInvoke, null)).booleanValue()) {
                nativeOnAndroidAdvertisingIdResult(null);
            } else {
                nativeOnAndroidAdvertisingIdResult(str);
            }
        } catch (Exception unused) {
            nativeOnAndroidAdvertisingIdResult(null);
        }
    }
}
